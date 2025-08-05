--# selene: allow(denylist_filter)
--!strict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local utility = require(RobloxGui.Modules.Settings.Utility)
local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)
local React = require(CorePackages.Packages.React)
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local Constants =
	require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local isTenFootInterface = require(RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")):IsEnabled()
local Foundation = require(CorePackages.Packages.Foundation)

local Telemetry = require(script.Parent.Telemetry)
local NextUpState = require(script.Parent.NextUpState)

local useFocusGuiObject = ReactFocusNavigation.useFocusGuiObject
local useLastInputMode = FocusNavigationUtils.useLastInputMode
local Button = Foundation.Button
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize = Foundation.Enums.InputSize
local Text = Foundation.Text
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local FFlagEnableNextUpImageLatencyTelemetry = require(script.Parent.Flags.FFlagEnableNextUpImageLatencyTelemetry)

local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local ChromeService = if ChromeEnabled then require(RobloxGui.Modules.Chrome.Service) else nil
local ChromeConstants = if ChromeEnabled then require(RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants) else nil
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableChromeShortcutBar = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagChromeShortcutRemoveRespawnOnLeavePage = SharedFlags.FFlagChromeShortcutRemoveRespawnOnLeavePage

local LEAVE_GAME_ACTION = "LeaveGameCancelAction"

type Props = {
	onDontLeave: (isUsingGamepad: boolean) -> (),
	buttonSize: number,
}

local function LeaveButtonsContainer(props: Props)
	local tokens = useTokens()
	local leaveButtonRef = React.useRef(nil)
	local useLastInputMode = useLastInputMode()
	local focusGuiObject = useFocusGuiObject()

	local localizedText = useLocalization({
		[Constants.ConfirmLeaveGameLocalizedKey] = Constants.ConfirmLeaveGameLocalizedKey,
		[Constants.LeaveGameLocalizedKey] = Constants.LeaveGameLocalizedKey,
		[Constants.DontLeaveGameLocalizedKey] = Constants.DontLeaveGameLocalizedKey,
	})

	local dontLeaveContextAction = React.useCallback(function(_, state, input)
		if state == Enum.UserInputState.Begin then
			local isUsingGamepad = input.UserInputType == Enum.UserInputType.Gamepad1
				or input.UserInputType == Enum.UserInputType.Gamepad2
				or input.UserInputType == Enum.UserInputType.Gamepad3
				or input.UserInputType == Enum.UserInputType.Gamepad4

			props.onDontLeave(isUsingGamepad)
		end
	end, { props.onDontLeave })

	React.useEffect(function()
		if FFlagEnableChromeShortcutBar then
			if ChromeEnabled and ChromeService and ChromeConstants then
				if FFlagChromeShortcutRemoveRespawnOnLeavePage then
					ChromeService:setShortcutBar(ChromeConstants.TILTMENU_LEAVE_DIALOG_SHORTCUTBAR_ID)
				else
					ChromeService:setShortcutBar(ChromeConstants.TILTMENU_DIALOG_SHORTCUTBAR_ID)
				end
			end
		else
			ContextActionService:BindCoreAction(LEAVE_GAME_ACTION, dontLeaveContextAction, false, Enum.KeyCode.ButtonB)
		end

		return function()
			ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION)
		end
	end, { dontLeaveContextAction } :: { any })

	React.useEffect(function()
		if useLastInputMode == "Focus" then
			focusGuiObject(leaveButtonRef.current)
		else
			focusGuiObject(nil)
		end
	end, { useLastInputMode, leaveButtonRef.current } :: { any })

	local telemetrySent = if FFlagEnableNextUpImageLatencyTelemetry then React.useRef(false) else nil :: never
	local sendNextUpTelemetryOnce = if FFlagEnableNextUpImageLatencyTelemetry
		then function(action)
			if telemetrySent.current then
				return
			end
			telemetrySent.current = true
			Telemetry.logNextUpExitModalAction(action)
		end
		else nil :: never

	if FFlagEnableNextUpImageLatencyTelemetry then
		React.useEffect(function()
			return function()
				sendNextUpTelemetryOnce(Telemetry.NextUpSortViewActionType.CloseExitModalEscape)
			end
		end, {})
	end

	local onLeaveGame = React.useCallback(function()
		if FFlagEnableNextUpImageLatencyTelemetry then
			sendNextUpTelemetryOnce(Telemetry.NextUpSortViewActionType.LeaveGame)
		else
			Telemetry.logNextUpSortView(NextUpState.getNextUpTilesLoaded())
		end
		leaveGame(true)
	end, {})

	local onDontLeaveGame = React.useCallback(function()
		if FFlagEnableNextUpImageLatencyTelemetry then
			sendNextUpTelemetryOnce(Telemetry.NextUpSortViewActionType.CloseExitModalClick)
		else
			Telemetry.logNextUpSortView(NextUpState.getNextUpTilesLoaded())
		end
		props.onDontLeave(utility:IsUsingGamepad())
	end, { props.onDontLeave })

	local headingTypography = "text-heading-medium"
	if utility:IsSmallTouchScreen() then
		headingTypography = "text-heading-small"
	elseif isTenFootInterface then
		headingTypography = "text-heading-large"
	end

	return React.createElement(View, {
		Position = UDim2.new(0, 0, 0, if isTenFootInterface then 100 else 0),
		tag = "size-full-0 auto-y col gap-large",
		LayoutOrder = 1,
	}, {
		LeaveGameText = React.createElement(Text, {
			Text = localizedText[Constants.ConfirmLeaveGameLocalizedKey],
			LayoutOrder = 1,
			tag = `text-wrap {headingTypography} auto-y size-full-0`,
			textStyle = tokens.Color.Extended.White.White_100,
		}),
		LeaveButtonsContainer = React.createElement(View, {
			LayoutOrder = 2,
			tag = "size-full-0 auto-y row align-x-center gap-medium wrap flex-x-fill",
		}, {
			LeaveGameButton = React.createElement(Button, {
				text = localizedText[Constants.LeaveGameLocalizedKey],
				size = InputSize.Medium,
				variant = ButtonVariant.SoftEmphasis,
				width = UDim.new(0, props.buttonSize),
				LayoutOrder = 1,
				ref = leaveButtonRef,
				onActivated = onLeaveGame,
			}),
			DontLeaveGameButton = React.createElement(Button, {
				text = localizedText[Constants.DontLeaveGameLocalizedKey],
				size = InputSize.Medium,
				variant = ButtonVariant.Standard,
				width = UDim.new(0, props.buttonSize),
				LayoutOrder = 2,
				onActivated = onDontLeaveGame,
			}),
		}),
	})
end

return React.memo(LeaveButtonsContainer)
