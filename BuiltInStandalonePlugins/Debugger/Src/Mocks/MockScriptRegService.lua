local MockScriptRegService = {}
MockScriptRegService.__index = MockScriptRegService

function MockScriptRegService.new(guidMapping) 
	local self = {}
	self.guidMapping = guidMapping
	setmetatable(self, MockScriptRegService)
	return self
end

function MockScriptRegService:GetSourceContainerByScriptGuid(guid : string)
	return self.guidMapping[guid]
end

return MockScriptRegService
