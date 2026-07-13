local CorePackages = game:GetService("CorePackages")
local AppUserLayers = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers

game:DefineFastString("ExitModalIXPLayer", AppUserLayers.ExperienceMenuExitModalLayer)

return function()
	return game:GetFastString("ExitModalIXPLayer")
end
