local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_VIDEO_RECORDING", function (recording)
	return {
		recording = recording,
	}
end)
