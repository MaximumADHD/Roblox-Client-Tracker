--[[
	Generic trailing badge (e.g. "New") for a submenu row.

	Any integration opts in by setting `menuTrailingBadgeConfig` on its `register`
	props -- see `IntegrationRegisterProps.menuTrailingBadgeConfig`. The badge renders
	as the last item in the row's list layout; the host row (`MenuRow`) reserves
	label width so the badge sits at the right edge. This component owns the
	visual, localization, and dismissal behavior.

	Dismissal behavior: hides permanently the first time the integration is
	activated from the menu (`onIntegrationActivated`), by persisting `maxViewCount`
	as the view count. Dismissal persists across sessions (via `LocalStore`) under
	the required `localStorageKey`, and is kept sticky across menu reopen within a
	session by a module-scoped table.

	The badge also hides once it has been shown `maxViewCount` times (one view
	per menu open), independent of activation dismissal. `0` means it is never
	shown.
]]
local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local Foundation = require(CorePackages.Packages.Foundation)
local Badge = Foundation.Badge
local View = Foundation.View
local BadgeVariant = Foundation.Enums.BadgeVariant
local BadgeShape = Foundation.Enums.BadgeShape

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local ChromeService = require(Root.Service)
local LocalStore = require(Root.Service.LocalStore)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)

-- Label is fixed to "New"; MenuRow reserves a narrow slot that does not fit longer copy.
-- TODO(DMP-2908): Change this to a different key with shorter translation
local BADGE_TEXT_KEY = "Feature.Catalog.Label.New"

export type MenuTrailingBadgeProps = {
	-- Id of the owning integration; used to match dismissal events.
	integrationId: string,
	config: ChromePackage.MenuTrailingBadge,
	-- Layout order within the host row's list layout.
	layoutOrder: number?,
}

-- Session-scoped dismissal memory keyed by integration id. Module scope so a
-- dismissal survives the badge unmounting when the submenu closes and reopens
-- within the same play session; it resets naturally on rejoin.
local sessionDismissed: { [string]: boolean } = {}

local function hasBeenDismissed(integrationId: string, config: ChromePackage.MenuTrailingBadge): boolean
	if sessionDismissed[integrationId] then
		return true
	end

	local maxViewCount = config.maxViewCount
	if maxViewCount <= 0 then
		return true
	end

	local stored = LocalStore.getValue(config.localStorageKey)
	local count = if type(stored) == "number" then stored else 0
	return count >= maxViewCount
end

-- Increments the persisted view count for one menu open. Called from the
-- useState lazy initializer when the badge will be shown; no-op when the badge
-- is disabled or already permanently dismissed.
local function recordView(config: ChromePackage.MenuTrailingBadge)
	if config.maxViewCount <= 0 then
		return
	end
	local stored = LocalStore.getValue(config.localStorageKey)
	local count = if type(stored) == "number" then stored else 0
	LocalStore.storeForLocalPlayer(config.localStorageKey, count + 1)
end

local function MenuTrailingBadge(props: MenuTrailingBadgeProps): any?
	local integrationId = props.integrationId
	local config = props.config

	local visible, setVisible = React.useState(function()
		-- Count one impression per mount (one menu open). Runs in the lazy initializer
		-- so it fires exactly once; a badge with `maxViewCount = N` is shown N times.
		local shouldShow = not hasBeenDismissed(integrationId, config)
		if shouldShow then
			recordView(config)
		end
		return shouldShow
	end)

	local localized = useLocalization({
		text = BADGE_TEXT_KEY,
	})

	React.useEffect(function()
		if not visible then
			return
		end

		local connection = ChromeService:onIntegrationActivated():connect(function(activatedId)
			if activatedId ~= integrationId then
				return
			end
			sessionDismissed[integrationId] = true
			LocalStore.storeForLocalPlayer(config.localStorageKey, config.maxViewCount)
			setVisible(false)
		end)

		return function()
			connection:disconnect()
		end
	end, { integrationId, config.localStorageKey, config.maxViewCount, visible } :: { any })

	if not visible then
		return nil
	end

	return React.createElement(View, {
		tag = "auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Badge = React.createElement(Badge, {
			text = localized.text,
			variant = BadgeVariant.Emphasis,
			shape = BadgeShape.Box,
		}),
	})
end

return MenuTrailingBadge
