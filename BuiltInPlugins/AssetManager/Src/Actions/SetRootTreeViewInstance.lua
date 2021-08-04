local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(assetId, rootTreeViewInstance)
    assert(type(assetId) == "number",
        string.format("SetRootTreeViewInstance requires assetId to be a number, not %s", type(assetId)))
	assert(typeof(rootTreeViewInstance) == "Instance",
		string.format("SetRootTreeViewInstance requires rootTreeViewInstance a String, not %s", type(rootTreeViewInstance)))

	return {
        assetId = assetId,
		rootTreeViewInstance = rootTreeViewInstance,
	}
end)
