local MockDebuggerUIService = {}
MockDebuggerUIService.__index = MockDebuggerUIService

function MockDebuggerUIService.new() 
	local self = {}
	setmetatable(self, MockDebuggerUIService)
	self.openScripts = {}
	self.showingArrow = false
	return self
end

function MockDebuggerUIService:OpenScriptAtLine(guid : string, debuggerConnectionId : number, line : number) 
	self.openScripts[guid] = true
end

function MockDebuggerUIService:SetScriptLineMarker(guid : string, debuggerConnectionId : number, line : number, isMainMarker : boolean)  
	if isMainMarker then
		self.showingArrow = true
	end
end

function MockDebuggerUIService:RemoveScriptLineMarkers(debuggerConnectionId : number, fullClear: boolean)
	if fullClear then
		self.showingArrow = false
	end
end

return MockDebuggerUIService
