game:DefineFastFlag("SideNavControllerBar", false)

local GetFFlagIGMGamepadSelectionHistory = require(script.Parent.GetFFlagIGMGamepadSelectionHistory)

return function()
	return game:GetFastFlag("SideNavControllerBar") and GetFFlagIGMGamepadSelectionHistory()
end
