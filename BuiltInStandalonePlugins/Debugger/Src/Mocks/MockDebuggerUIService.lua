local MockDebuggerUIService = {}
MockDebuggerUIService.__index = MockDebuggerUIService

function MockDebuggerUIService.new() 
	local self = {}
	setmetatable(self, MockDebuggerUIService)
    self.openScripts = {}
	return self
end

function MockDebuggerUIService:OpenScriptAtLine(guid : string, debuggerConnectionId : number, line : number) 
	self.openScripts[guid] = true
end

return MockDebuggerUIService
