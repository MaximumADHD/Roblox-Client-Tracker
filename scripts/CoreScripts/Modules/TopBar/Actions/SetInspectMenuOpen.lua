-- Remove with FFlagTopBarSignalizeMenuOpen
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen

return if FFlagTopBarSignalizeMenuOpen then nil :: never else Action(script.Name, function(inspectMenuOpen)
	return {
		inspectMenuOpen = inspectMenuOpen,
	}
end)
