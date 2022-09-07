local getDeepValue = require(script.Parent.Parent.Dictionary.getDeepValue)

return function(config: {
	layerName: string,
	variantName: string,
})
	return function(layers: any?)
		local layersWithDefault = layers or {}

		return getDeepValue(layersWithDefault[config.layerName] or {}, config.variantName) or false
	end
end
