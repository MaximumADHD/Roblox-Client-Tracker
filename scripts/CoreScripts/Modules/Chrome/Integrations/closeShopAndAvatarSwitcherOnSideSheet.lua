local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local Signals = require(CorePackages.Packages.Signals)
local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)

local ChromeService = require(Chrome.Service)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local getSideSheetVisibility = InExperienceSideSheet.getSideSheetVisibility

-- Shop registers its own menu key, so GuiService.MenuOpened cannot close it:
-- that signal also fires for the Shop window itself. Switch Avatar never
-- subscribes to it. Watch the sidesheet directly instead.
local TRACKED_WINDOW_IDS = {
	Constants.IN_EXPERIENCE_SHOP_ID,
	Constants.AVATAR_SWITCHER_ID,
}

-- Signal observers are weak keys. The sidesheet effect lives only as long as
-- something else holds its cleanup. Integrations initializes this once, so one
-- retained cleanup is enough to keep the effect alive.
local retainedCleanup: (() -> ())? = nil

local function bindCloseShopAndAvatarSwitcherOnSideSheet(): () -> ()
	local function canToggleWindow(windowId: string): boolean
		local integration = ChromeService:integrations()[windowId]
		local components = if integration then integration.components else nil
		return components ~= nil and components.Window ~= nil
	end

	local function closeIfOpen(windowId: string)
		if not canToggleWindow(windowId) or not ChromeService:isWindowOpen(windowId) then
			return
		end

		ChromeService:toggleWindow(windowId)
	end

	local disposeEffect = Signals.createEffect(function(scope)
		if not getSideSheetVisibility(scope) then
			return
		end

		for _, windowId in TRACKED_WINDOW_IDS do
			closeIfOpen(windowId)
		end
	end)

	local cleanup: () -> ()
	cleanup = function()
		if retainedCleanup == cleanup then
			retainedCleanup = nil
		end
		disposeEffect()
	end
	retainedCleanup = cleanup

	return cleanup
end

return bindCloseShopAndAvatarSwitcherOnSideSheet
