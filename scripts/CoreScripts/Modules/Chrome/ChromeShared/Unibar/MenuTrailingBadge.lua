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
	
	Custom copy: an integration that also sets `customText` lends the slot to that
	signal's copy whenever it yields a string, and the default label returns once
	it yields nil again. This module does not know what drives the signal -- the
	integration owns that. Dismissal keeps running underneath, so activating the
	integration while custom copy is showing still retires the default label for
	good, and a label the user never saw does not spend one of its views.

	Custom copy is gated by `FFlagEnableCustomTextInMenuTrailingBadge`; at flag-off
	`customText` is ignored entirely and only the default label behavior above
	applies.
]]
local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local Foundation = require(CorePackages.Packages.Foundation)
local Badge = Foundation.Badge
local View = Foundation.View
local BadgeVariant = Foundation.Enums.BadgeVariant
local BadgeShape = Foundation.Enums.BadgeShape

local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableCustomTextInMenuTrailingBadge = SharedFlags.FFlagEnableCustomTextInMenuTrailingBadge

local ChromeService = require(Root.Service)
local LocalStore = require(Root.Service.LocalStore)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)

-- Stands in for a config that supplies no `customText`, so the subscription below
-- is unconditional and hook order cannot vary with the config. A real signal
-- rather than a function returning nil: `useSignalState` registers a dependency
-- source by calling the getter with a scope, which a plain function ignores.
-- Annotated because `createSignal`'s `(() -> T) | T` initial value makes Luau
-- infer `T` as `nil` from a bare `nil`.
local NO_CUSTOM_TEXT: Signals.getter<string?> = Signals.createSignal(nil :: string?)

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

local function renderBadge(text: string, layoutOrder: number?)
	return React.createElement(View, {
		tag = "auto-xy",
		LayoutOrder = layoutOrder,
	}, {
		Badge = React.createElement(Badge, {
			text = text,
			variant = BadgeVariant.Emphasis,
			shape = BadgeShape.Box,
		}),
	})
end

local function MenuTrailingBadge(props: MenuTrailingBadgeProps): any?
	local integrationId = props.integrationId
	local config = props.config

	-- nil unless this integration lent the slot to a custom-copy signal and that
	-- signal currently yields text. Read before the view count because custom copy
	-- must not spend a view on the default label. Both operands are stable
	-- references, so this never resubscribes on re-render.
	--
	-- Branching on a flag whose value is fixed for the process, so hook order is
	-- still identical on every render of a given badge. At flag-off nothing is
	-- subscribed and the component behaves exactly as it did before the slot
	-- existed, which is what makes this a usable kill switch.
	local customText = if FFlagEnableCustomTextInMenuTrailingBadge
		then SignalsReact.useSignalState(config.customText or NO_CUSTOM_TEXT)
		else nil

	-- Tracks whether the default label has been dismissed, not whether anything is
	-- on screen. Keeping those apart is what lets the listener below keep running
	-- while custom copy owns the slot.
	local visible, setVisible = React.useState(function()
		-- Count one impression per mount (one menu open). Runs in the lazy initializer
		-- so it fires exactly once; a badge with `maxViewCount = N` is shown N times.
		local shouldShow = not hasBeenDismissed(integrationId, config)
		if shouldShow and customText == nil then
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

	if customText ~= nil then
		return renderBadge(customText, props.layoutOrder)
	end

	if not visible then
		return nil
	end

	return renderBadge(localized.text, props.layoutOrder)
end

return MenuTrailingBadge
