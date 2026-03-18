local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableInExperienceHandheldControls = SharedFlags.FFlagEnableInExperienceHandheldControls

local Modules = script.Parent.Parent.Parent
local Chrome = Modules.Chrome
local FFlagUnibarMenuOpenHamburger = require(Chrome.Flags.FFlagUnibarMenuOpenHamburger)
local FFlagUnibarMenuOpenSubmenu = require(Chrome.Flags.FFlagUnibarMenuOpenSubmenu)

local enrolledInConsoleExperienceControlsIXP = FFlagUnibarMenuOpenHamburger or FFlagUnibarMenuOpenSubmenu

return enrolledInConsoleExperienceControlsIXP or FFlagEnableInExperienceHandheldControls
