game:DefineFastFlag("IGMGamepadSelectionHistory", false)
local Flags = script.Parent
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)

return function()
	return GetFFlagInGameMenuControllerDevelopmentOnly() and GetFFlagUseIGMControllerBar() and game:GetFastFlag("IGMGamepadSelectionHistory")
end
