local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

-- previewModel is a model that contains the assetInstances we need to
-- be previewing in the mainView.
return Action(script.Name, function(previewModel)
	return {
		previewModel = previewModel,
	}
end)