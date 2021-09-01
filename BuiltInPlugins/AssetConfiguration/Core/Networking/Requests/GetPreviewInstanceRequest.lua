local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local PreviewModelGetter = require(Util.PreviewModelGetter)

local SetPreviewModel = require(Plugin.Core.Actions.SetPreviewModel)

return function(assetId, assetTypeId)
	return function(store)
		return PreviewModelGetter(assetId, assetTypeId):andThen(function(result)
			store:dispatch(SetPreviewModel(result))
		end)
	end
end
