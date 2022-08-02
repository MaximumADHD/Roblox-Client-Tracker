--[[
    Clones and sets the preview instance
]]
local Plugin = script.Parent.Parent.Parent

local SetPreviewInstance = require(Plugin.Src.Actions.SetPreviewInstance)

return function(previewInstance)
	return function(store)
        if previewInstance then
            store:dispatch(SetPreviewInstance(previewInstance:Clone()))
        else
            store:dispatch(SetPreviewInstance(nil))
        end
	end
end
