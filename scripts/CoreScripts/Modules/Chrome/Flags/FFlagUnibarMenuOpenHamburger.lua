local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagUnibarMenuOpenHamburgerGamepadIXP = SharedFlags.FFlagUnibarMenuOpenHamburgerGamepadIXP
local FFlagRemoveExperienceMenuABTestManager = SharedFlags.FFlagRemoveExperienceMenuABTestManager
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)
local FFlagUnibarMenuOpenHamburger = game:DefineFastFlag("UnibarMenuOpenHamburger", false)

return FFlagEnableConsoleExpControls
	and (
		not FFlagRemoveExperienceMenuABTestManager
			and IsExperienceMenuABTestEnabled()
			and ExperienceMenuABTestManager.default:showConsoleExpControlsMenuOpenHamburger()
		or FFlagUnibarMenuOpenHamburgerGamepadIXP
		or FFlagUnibarMenuOpenHamburger
	)
