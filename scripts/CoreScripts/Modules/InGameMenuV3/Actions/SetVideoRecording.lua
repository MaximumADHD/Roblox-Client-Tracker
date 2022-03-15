local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_VIDEO_RECORDING", function (recording)
	return {
		recording = recording,
	}
end)