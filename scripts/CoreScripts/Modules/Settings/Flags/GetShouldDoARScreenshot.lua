local GetFFlagIGMv1ARFlowRAv1Experience = require(script.Parent.GetFFlagIGMv1ARFlowRAv1Experience)
local GetFFlagIGMv1ARFlowRAv1Other = require(script.Parent.GetFFlagIGMv1ARFlowRAv1Other)

return function()
	return GetFFlagIGMv1ARFlowRAv1Experience() or GetFFlagIGMv1ARFlowRAv1Other()
end
