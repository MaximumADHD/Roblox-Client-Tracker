game:DefineFastFlag("IGMGamepadSelectionHistory", false)
local Flags = script.Parent
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)

return function()
	return GetFFlagUseIGMControllerBar() and game:GetFastFlag("IGMGamepadSelectionHistory")
end
