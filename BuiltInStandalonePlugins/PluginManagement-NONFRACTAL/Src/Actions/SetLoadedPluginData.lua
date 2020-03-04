local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

-- pluginData : (map<assetId, pluginData>)
return Action(script.Name, function(pluginData)
	assert(type(pluginData)=="table", "Expected pluginData to be a map.")
	assert(next(pluginData)~=nil, "Expected more than pluginData")
	return {
		pluginData = pluginData,
	}
end)
