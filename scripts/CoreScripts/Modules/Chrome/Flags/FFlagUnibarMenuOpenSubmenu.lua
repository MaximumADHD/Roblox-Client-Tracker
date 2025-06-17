local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagUnibarMenuOpenSubmenuGamepadIXP = SharedFlags.FFlagUnibarMenuOpenSubmenuGamepadIXP
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)
local FFlagUnibarMenuOpenSubmenu = game:DefineFastFlag("UnibarMenuOpenSubmenu", false)

return FFlagEnableConsoleExpControls
	and (
		IsExperienceMenuABTestEnabled()
			and ExperienceMenuABTestManager.default:showConsoleExpControlsMenuOpenSubmenu()
		or FFlagUnibarMenuOpenSubmenuGamepadIXP
		or FFlagUnibarMenuOpenSubmenu
	)
