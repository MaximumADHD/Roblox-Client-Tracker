--[[
	Builds the What's New ScopeActions for the in-game onboarding tour, wiring the
	nested TiltMenu open/close keys to the side sheet and binding its open signal
	so external open/close advances or ends the tour.
]]

local CorePackages = game:GetService("CorePackages")

local WhatsNew = require(CorePackages.Workspace.Packages.WhatsNew)
local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)

-- Action keys must match ScopeMetadata.openActionKey / closeActionKey in the
-- bundled registry (WhatsNew registry/Updates.lua, TiltMenu scope).
local OPEN_TILT_MENU = "OpenTiltMenu"
local CLOSE_TILT_MENU = "CloseTiltMenu"

local function createInGameScopeActions()
	local toggleSideSheet = InExperienceSideSheet.toggleSideSheet
	local scopeActions = WhatsNew.scopeActions.createScopeActions()

	scopeActions:register(OPEN_TILT_MENU, function()
		toggleSideSheet(true)
	end)
	scopeActions:register(CLOSE_TILT_MENU, function()
		toggleSideSheet(false)
	end)
	scopeActions:bindOpenState({
		openActionKey = OPEN_TILT_MENU,
		closeActionKey = CLOSE_TILT_MENU,
		getIsOpen = InExperienceSideSheet.getSideSheetVisibility,
	})

	return scopeActions
end

return createInGameScopeActions
