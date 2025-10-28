local CorePackages = game:GetService("CorePackages")
local TeleportService = game:GetService("TeleportService")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local Localization = require(CorePackages.Workspace.Packages.Localization)

local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local Traversal = CoreScriptsRoactCommon.Traversal
local TraversalConstants = Traversal.Constants
local TeleportBackButton = Traversal.TeleportBackButton
local TraversalTelemetry = Traversal.TraversalTelemetry
local useHistoryItems = Traversal.useHistoryItems
local useLocalization = Localization.Hooks.useLocalization

local FFlagUseTeleportTraversalHistory = Traversal.Flags.FFlagUseTeleportTraversalHistory
local FFlagUseLocalTraversalHistory = Traversal.Flags.FFlagUseLocalTraversalHistory

local function TraversalBackButton(props: {}, ref: React.Ref<GuiObject>?): React.React_Node
	local prevUniverseId, prevPlaceId = TeleportService:GetThirdPartyTeleportInfo(false)
	-- don't render on no prevs, for example on first time joins
	if prevUniverseId <= TraversalConstants.NO_UNIVERSE_ID or prevPlaceId <= TraversalConstants.NO_PLACE_ID then
		return nil
	end

	TraversalTelemetry.sendBackButtonActionEvent({
		integration_id = "back_button",
		destination_universe_id = prevUniverseId,
		event_type = "impression",
	})

	local localized = useLocalization({
		defaultBackButtonText = "CoreScripts.TopBar.Traversal.BackButtonDefault",
	})

	local tokens = useTokens()
	local historyItems = useHistoryItems(2)
	local placeName
	if FFlagUseLocalTraversalHistory and typeof(historyItems[2]) == "table" and historyItems[2].name then
		placeName = historyItems[2].name
	elseif FFlagUseTeleportTraversalHistory and typeof(historyItems[1]) == "table" and historyItems[1].name then
		placeName = historyItems[1].name
	else
		placeName = localized.defaultBackButtonText
	end

	-- shrink because button width may get to large even with text limits
	return React.createElement(View, {
		tag = "auto-xy shrink",
	}, {
		TraversalBackButton = React.createElement(TeleportBackButton, {
			text = placeName,
			textLimitWidth = tokens.Size.Size_2500 * 2,

			-- pass through props
			ref = ref,
		}),
	})
end

return React.memo(React.forwardRef(TraversalBackButton))
