local InGameMenu = script.Parent.Parent
local LocalStoreIGM = require(InGameMenu.Utility.LocalStoreIGM)
game:DefineFastFlag("EducationTooltipPolicyDisableAll", false)

local PREFIX = "etp_"

local NAV_BAR_IDENT = game:DefineFastString("TooltipIdNavBar", "navbar-v1")
local QUICK_ACTION_IDENT = game:DefineFastString("TooltipIdQuickAction", "quickactions-v1")

local activeTooltipIdentifiers = {
	NAV_BAR_IDENT,
	QUICK_ACTION_IDENT,
}

return {
	NAV_BAR_IDENT = NAV_BAR_IDENT,
	QUICK_ACTION_IDENT = QUICK_ACTION_IDENT,
	activeTooltipIdentifiers = activeTooltipIdentifiers,

	canShow = function(identifier:string)
		local tooltipsDisabled = game:GetFastFlag("EducationTooltipPolicyDisableAll")
		if LocalStoreIGM.isEnabled() and not tooltipsDisabled then
			identifier = PREFIX .. identifier
			local val = LocalStoreIGM.loadForLocalPlayer(identifier);
			return val == nil or val == ""
		else
			return false
		end
	end,
	dismissForever = function(identifier:string)
		if LocalStoreIGM.isEnabled() then
			identifier = PREFIX .. identifier
			LocalStoreIGM.storeForLocalPlayer(identifier, "true")
		end
	end,
	-- test helper
	reset = function(identifier:string)
		if LocalStoreIGM.isEnabled() then
			identifier = PREFIX .. identifier
			LocalStoreIGM.storeForLocalPlayer(identifier, nil)
		end
	end,

	isEnabled = function()
		return LocalStoreIGM.isEnabled()
	end
}
