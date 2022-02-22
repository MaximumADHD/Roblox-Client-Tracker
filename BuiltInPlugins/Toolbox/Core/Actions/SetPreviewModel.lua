local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

-- previewModel is a model that contains the assetInstances we need to
-- be previewing in the mainView.
return Action(script.Name, function(previewModel)
	return {
		previewModel = previewModel,
	}
end)
