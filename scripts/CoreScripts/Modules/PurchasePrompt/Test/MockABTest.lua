--[[
	Mocks ABTest services so we can test the purchase prompt's
	behavior under various ABTest.
]]
local MockExternalSettings = {}

type LayerData = {[string]: any}

function MockExternalSettings.new(optionalLayerData: LayerData?)
	local service = {}

	local layerData: LayerData = optionalLayerData or {}

	function service.getLayerData(layerName)
		return layerData[layerName]
	end

	function service.logUserLayerExposure(layerName)
		return layerData[layerName]
	end

	return service
end

return MockExternalSettings
