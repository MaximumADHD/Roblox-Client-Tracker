local LuaSourceContainer = {}
LuaSourceContainer.__index = LuaSourceContainer

function LuaSourceContainer:GetFullName()
	return self.FileName
end

function LuaSourceContainer.new(guid : string, fileName : string)	
	local self = {
		ScriptGuid = guid,
		FileName = fileName,
	}
	setmetatable(self, LuaSourceContainer)
	return self
end

export type LuaSourceContainer = typeof(LuaSourceContainer.new("TestGuid1", "Test.lua"))
return LuaSourceContainer
