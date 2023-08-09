--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetSettings", function(settings)
	return {
		preferredTransparency = settings.preferredTransparency,
		reducedMotion = settings.reducedMotion,
	}
end)