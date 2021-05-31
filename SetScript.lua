local setscript; do
    local scripts = {}
    local mt = getrawmetatable(game)
    setreadonly(mt, false)
    setscript = function(script, source, disable_original)
        local func = loadstring(string.format([[
            local script = %s    
        ]], 'game.'..script:GetFullName())..source)
        getfenv(func).script = script
        scripts[script] = source
        if disable_original ~= false then
            script.Disabled = true
        end
        return func()
    end
    if _G.old then mt.__index = _G.old end
    local old;old=hookfunc(mt.__index, function(self,i)
        if not checkcaller() and i == 'Disabled' and scripts[self] then
            return false 
        end
        return old(self, i)
    end)
    _G.old = old
end
return setscript
