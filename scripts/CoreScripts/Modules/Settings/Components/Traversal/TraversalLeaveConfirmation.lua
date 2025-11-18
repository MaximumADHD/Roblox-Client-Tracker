local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local DataHydration = require(CorePackages.Workspace.Packages.DataHydration)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local Localization = require(CorePackages.Workspace.Packages.Localization)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)

local View = Foundation.View
local getGameInfoStore = DataHydration.Game.getGameInfoStore
local Traversal = CoreScriptsRoactCommon.Traversal
local useLastInputMode = FocusNavigationUtils.useLastInputMode
local TraversalConstants = Traversal.Constants
local TeleportLeaveConfirmation = Traversal.TeleportLeaveConfirmation
local useLocalization = Localization.Hooks.useLocalization
local useLastInput = Responsive.useLastInput

local FFlagTraversalUseFocusNavLastInput = require(script.Parent.FFlagTraversalUseFocusNavLastInput)

export type Props = {
	universeId: number,
	isDialogOpen: boolean,
	source: string,
	onCancel: () -> (),
	onClose: ((reason: Foundation.OnCloseCallbackReason?) -> ())?,
}

local FREEZE_CONTROLLER = "FREEZE_CONTROLLER"
local EXIT_DIALOG = "EXIT_DIALOG"

local function TraversalLeaveConfirmation(props: Props): React.React_Node
	local ref = React.useRef(nil)
	local lastInput
	if FFlagTraversalUseFocusNavLastInput then 
		lastInput = useLastInputMode()
	else
		lastInput = useLastInput()
	end

	local localized = useLocalization({
		previous = "CoreScripts.TopBar.Traversal.BackButtonDefault"
	})

	local historyItem = SignalsReact.useSignalState(getGameInfoStore(false).getAndFetchGameInfo(tostring(props.universeId)).data)
	local placeName
	local placeId
	if typeof(historyItem) == "table" then
		placeName = historyItem.name
		placeId = tonumber(historyItem.rootPlaceId)
	else
		placeName = localized.previous
	end

	local onGamepadBack = React.useCallback(function(_, inputState: Enum.UserInputState)
		if inputState == Enum.UserInputState.End then
			props.onCancel()
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end, { props.onCancel })

	React.useEffect(function()
		local isUsingFocus = if FFlagTraversalUseFocusNavLastInput then lastInput == "Focus" else lastInput == Responsive.Input.Directional
		if placeId ~= nil and placeId > TraversalConstants.NO_PLACE_ID then
			if isUsingFocus then
				ContextActionService:BindCoreAction(FREEZE_CONTROLLER, function() end, false, Enum.UserInputType.Gamepad1)
				ContextActionService:BindCoreAction(EXIT_DIALOG, onGamepadBack, false, Enum.KeyCode.ButtonB)
				GuiService.SelectedCoreObject = if ref.current then ref.current else nil
			end
		else
			if isUsingFocus then
				ContextActionService:UnbindCoreAction(FREEZE_CONTROLLER)
				ContextActionService:UnbindCoreAction(EXIT_DIALOG)
			end
		end
	end, { placeId, lastInput } :: { unknown })

	return props.isDialogOpen and placeId and React.createElement("ScreenGui", {
		DisplayOrder = 10,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		NoEscapeZone = React.createElement(View, {
			tag = "auto-xy size-full",
			selectionGroup = {
				SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
				SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
				SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
				SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			},
		}, {
			Dialog = React.createElement(TeleportLeaveConfirmation, {
				onCancel = props.onCancel,
				onClose = props.onClose,
				placeId = placeId,
				teleportName = placeName,
				source = props.source,
				ref = ref,
			})
		})
	})
end

return React.memo(TraversalLeaveConfirmation)
