local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableInExperienceHandheldControls = SharedFlags.FFlagEnableInExperienceHandheldControls
local FFlagRemoveExperienceMenuABTestManager = SharedFlags.FFlagRemoveExperienceMenuABTestManager

local Modules = script.Parent.Parent.Parent
local Chrome = Modules.Chrome
local FFlagUnibarMenuOpenHamburger = require(Chrome.Flags.FFlagUnibarMenuOpenHamburger)
local FFlagUnibarMenuOpenSubmenu = require(Chrome.Flags.FFlagUnibarMenuOpenSubmenu)

local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(script.Parent.Parent.Parent.ExperienceMenuABTestManager)

local enrolledInConsoleExperienceControlsIXP = FFlagUnibarMenuOpenHamburger
	or FFlagUnibarMenuOpenSubmenu
	or (
		not FFlagRemoveExperienceMenuABTestManager
		and ExperienceMenuABTestManager.default:showConsoleExpControlsMenuNotAvailable()
	)

return (IsExperienceMenuABTestEnabled() and enrolledInConsoleExperienceControlsIXP)
	or FFlagEnableInExperienceHandheldControls
