local MockCalloutService = {}
MockCalloutService.__index = MockCalloutService

function MockCalloutService.new()
	return setmetatable({}, MockCalloutService)
end

function MockCalloutService:DefineCallout() end

function MockCalloutService:AttachCallout() end

function MockCalloutService:DetachCalloutsByDefinitionId() end

return MockCalloutService
