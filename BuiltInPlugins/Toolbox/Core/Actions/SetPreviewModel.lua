local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

-- previewModel is a model that contains the assetInstances we need to
-- be previewing in the mainView.
return Action(script.Name, function(previewModel)
	return {
		previewModel = previewModel,
	}
end)