local Plugin = script.Parent.Parent.Parent.Parent

local ResumePreviewSound = require(Plugin.Core.Actions.ResumePreviewSound)

return function()
	return function(store)
		store:dispatch(ResumePreviewSound())
	end
end