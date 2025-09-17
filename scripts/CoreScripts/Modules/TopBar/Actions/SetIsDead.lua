-- Remove with FFlagTopBarSignalizeHealthBar
local CorePackages = game:GetService("CorePackages")

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return if FFlagTopBarSignalizeHealthBar then nil :: never else Action(script.Name, function(isDead)
	return {
		isDead = isDead,
	}
end)
