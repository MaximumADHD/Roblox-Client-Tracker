local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

-- pluginData : (map<assetId, pluginData>)
return Action(script.Name, function(pluginData)
	assert(type(pluginData)=="table", "Expected pluginData to be a table.")
	if next(pluginData) ~= nil then
		assert(type(next(pluginData)) == "number", "Expected pluginData to be a map.")
	end

	return {
		pluginData = pluginData,
	}
end)
