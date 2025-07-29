-- Remove with FFlagTopBarSignalizeKeepOutAreas2
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas

return if FFlagTopBarSignalizeKeepOutAreas 
	then nil :: never 
	else Action(script.Name, function(id)
	return {
		id = id,
	}
end)
