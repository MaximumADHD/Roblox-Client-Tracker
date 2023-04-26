game:DefineFastFlag("IGMGamepadSelectionHistory", true)
local Flags = script.Parent
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)

return function()
	return GetFFlagUseIGMControllerBar() and game:GetFastFlag("IGMGamepadSelectionHistory")
end
