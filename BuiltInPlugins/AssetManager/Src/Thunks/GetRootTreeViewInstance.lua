local Plugin = script.Parent.Parent.Parent

local PreviewModelGetter = require(Plugin.Src.Util.PreviewModelGetter)

local SetRootTreeViewInstance = require(Plugin.Src.Actions.SetRootTreeViewInstance)

return function(assetId, assetTypeId)
	return function(store)
		return PreviewModelGetter(assetId, assetTypeId):andThen(function(result)
			if type(result) == "string" then
				-- failed to get the object
				store:dispatch(SetRootTreeViewInstance(assetId, nil))
			else
				store:dispatch(SetRootTreeViewInstance(assetId, result))
			end
		end)
	end
end
