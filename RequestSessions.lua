local RequestSession = {}
RequestSession.__index = RequestSession

local root_folder_name = 'request_sessions'

if not isfolder(root_folder_name) then
    makefolder(root_folder_name)
end

local function json_encode(tbl)
    return game:GetService("HttpService"):JSONEncode(tbl)
end
local function json_decode(str)
    return game:GetService("HttpService"):JSONDecode(str)
end


function RequestSession.new(url, session_encryption_lock)
    local new = {
        url = url,
        urlhash = syn.crypt.hash(url)
    }
    setmetatable(new, RequestSession)

    new.SessionFileName = root_folder_name .. '/' .. new.urlhash .. '.session'
    new.EncryptionIV = syn.crypt.derive(session_encryption_lock, 12)
    new.EncryptionLock = syn.crypt.derive(session_encryption_lock, 32)

    return new
end

function RequestSession:SetData(data)
    local encrypted = syn.crypt.custom.encrypt(
        "aes-gcm",
        json_encode(data),
        self.EncryptionLock,
        self.EncryptionIV
    )

    writefile(self.SessionFileName, syn.crypt.base64.encode(encrypted))

    return encrypted
end

function RequestSession:GetData()
    if not isfile(self.SessionFileName) then
        return {} -- No data has been set yet.
    end
    local data = readfile(self.SessionFileName)
    local encrypted = syn.crypt.base64.decode(data)

    return json_decode(syn.crypt.custom.decrypt(
        "aes-gcm",
        encrypted,
        self.EncryptionLock,
        self.EncryptionIV
    ))
end

function RequestSession:GetKey(key)
    if not key then return false end
    return self:GetData()[key]
end

function RequestSession:SetKey(key, value)
    if not key then return false end
    if not value then return false end
    do
        local data = self:GetData()
        data[key] = value
        self:SetData(data)
    end
    return true
end

return RequestSession
