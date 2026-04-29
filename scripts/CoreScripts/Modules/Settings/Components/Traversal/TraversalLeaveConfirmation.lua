local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local DataHydration = require(CorePackages.Workspace.Packages.DataHydration)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local Localization = require(CorePackages.Workspace.Packages.Localization)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)

local View = Foundation.View
local getGameInfoStore = DataHydration.Game.getGameInfoStore
local Traversal = CoreScriptsRoactCommon.Traversal
local TraversalConstants = Traversal.Constants
local TeleportLeaveConfirmation = Traversal.TeleportLeaveConfirmation
local useLocalization = Localization.Hooks.useLocalization
local GetInputModeStore = Responsive.GetInputModeStore
local Input = Responsive.Input

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
		local disposeFocus = Signals.createEffect(function(scope)
			local lastInputType = UserInputService:GetLastInputType()
			local inputMode = GetInputModeStore(scope).getLastInputType(scope)
			local isUsingFocus = inputMode == Input.Directional or inputMode == Input.Pointer and lastInputType == Enum.UserInputType.Keyboard
			if placeId ~= nil and placeId > TraversalConstants.NO_PLACE_ID then
				if isUsingFocus then
					ContextActionService:BindCoreAction(FREEZE_CONTROLLER, function() end, false, Enum.UserInputType.Gamepad1)
					ContextActionService:BindCoreAction(EXIT_DIALOG, onGamepadBack, false, Enum.KeyCode.ButtonB)
					GuiService.SelectedCoreObject = ref.current
				end
			else
				if isUsingFocus then
					ContextActionService:UnbindCoreAction(FREEZE_CONTROLLER)
					ContextActionService:UnbindCoreAction(EXIT_DIALOG)
				end
			end
		end)
		return function()
			disposeFocus()
		end
	end, { placeId })

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
