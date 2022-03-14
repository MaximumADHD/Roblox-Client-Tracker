--[[
	Mocks ABTest services so we can test the purchase prompt's
	behavior under various ABTest.
]]
local MockExternalSettings = {}

function MockExternalSettings.new(layerData)
	local service = {}

	layerData = layerData or {}

	function service.getLayerData(layerName)
		return layerData[layerName]
	end

	return service
end

return MockExternalSettings
