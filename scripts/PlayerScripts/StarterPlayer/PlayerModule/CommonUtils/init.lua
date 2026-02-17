--!strict
--[[
    Basic package manager
--]]

export type UtilClass = {
    get: (string) -> any,
    mock: (string, ModuleScript) -> (),

    _mocks: {[string]: ModuleScript}
}

local Utils: UtilClass = {} :: UtilClass
Utils._mocks = {}

function Utils.mock(name, script)
    Utils._mocks[name] = script
end

function Utils.get(name: string)
    if Utils._mocks[name] then
        return require(Utils._mocks[name])
    end
    
    if script:FindFirstChild(name) then
        return require(script:FindFirstChild(name))
    end

   assert(false, "Util does not exist: " .. name) 
end

return Utils
