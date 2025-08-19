-- Remove with FFlagTopBarSignalizeScreenSize
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

return if FFlagTopBarSignalizeScreenSize 
	then nil :: never 
	else Action(script.Name, function(screenSize)
		return {
			screenSize = screenSize,
		}
	end)
