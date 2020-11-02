local mt = getrawmetatable(game)
local ot = mt.__namecall
setreadonly(mt, false)
local Bypasses = loadstring(game:HttpGet("https://pastebin.com/raw/zDxDdHyb"))()
mt.__namecall = function(...)
	local args = {...}
	local method = tostring(getnamecallmethod())
	if method == 'FireServer' and tostring(args[1]) == 'SayMessageRequest' then 
		local message = tostring(args[2])
		for i,v in pairs(Bypasses) do
		    if message:find(i:lower()) then
		        message = message:gsub(i, v)
		    elseif message:find(i:upper()) then
		        message = message:gsub(i:upper(), v:upper())
		    end
		end
        args[2] = message
		return ot(unpack(args))
	end
	return ot(...)
end
setreadonly(mt, true)
