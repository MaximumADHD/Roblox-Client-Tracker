local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Utility = require(RobloxGui.Modules.Settings.Utility)
local Constants =
	require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local MenuButton = require(script.Parent.MenuButton)

local useSignalState = SignalsReact.useSignalState
local useLastInput = Responsive.useLastInput

local View = Foundation.View

local FIntRelocateMobileMenuButtonsVariant = require(RobloxGui.Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant)
local FFlagMenuButtonsDisconnectGamepadConnected = game:DefineFastFlag("MenuButtonsDisconnectGamepadConnected", false)

type ButtonsData = { MenuButton.ButtonData }

local function createMenuButtons(buttonsData: ButtonsData, lastInput: string, isSmall: boolean)
	local buttonElems: { [string]: React.ReactNode } = {}
	for i = 1, #buttonsData do
		buttonElems["MenuButtonContainer" .. i] = React.createElement(View, {
			tag = "fill row align-y-center",
			LayoutOrder = i,
		}, {
			MenuButton = React.createElement(MenuButton, {
				text = buttonsData[i].text,
				lastInput = lastInput,
				keyboardHint = buttonsData[i].hint.keyboard,
				gamepadButtonImageHint = buttonsData[i].hint.gamepadButtonImage,
				onActivated = buttonsData[i].onActivated,
				layoutOrder = 1,
				isEmphasized = buttonsData[i].isEmphasized,
				isSmall = isSmall,
				isDisabled = buttonsData[i].getIsDisabled(),
			})
		})
	end
	return buttonElems
end

export type MenuButtonsProps = {
	onLeaveGame: (source: string) -> (),
	onRespawn: (source: string) -> (),
	onResume: (source: string) -> (),
	setAddMenuKeyBindings: (addMenuKeyBindings: () -> ()) -> (),
	setRemoveMenuKeyBindings: (removeMenuKeyBindings: () -> ()) -> (),
	getVisibility: () -> boolean,
	getCanRespawn: Signals.getter<boolean>,
}

local function MenuButtons(props: MenuButtonsProps)
	local isSmallScreen, _setIsSmallScreen = React.useState(Utility:IsSmallTouchScreen())

	-- Used to force re-render when the respawn button changes isDisabled state
	local _canRespawn = useSignalState(props.getCanRespawn)

	local leaveHintImage, setLeaveHintImage = React.useBinding("")
	local resetHintImage, setResetHintImage = React.useBinding("")
	local resumeHintImage, setResumeHintImage = React.useBinding("")

	local localizedText = useLocalization({
		LeaveGame = Constants.LeaveGameLocalizedKey,
		Respawn = Constants.RespawnLocalizedKey,
		Resume = Constants.ResumeLocalizedKey,
	}) 
	local lastInput = useLastInput()

	local initialButtonsData = React.useMemo(function()  
		return {
			{
				name = "LeaveGameButton",
				text = localizedText.LeaveGame,
				hint = {
					keyboard = "L",
					gamepadButton = Enum.KeyCode.ButtonX,
					gamepadButtonImage = leaveHintImage,
					setGamepadButtonImage = setLeaveHintImage,
				},
				isEmphasized = false,
				getIsDisabled = function()
					return false
				end,
				onActivated = function()
					props.onLeaveGame(Constants.AnalyticsMenuButtonSource)
				end,
				hotkeys = { Enum.KeyCode.L, Enum.KeyCode.ButtonX },
				hotkeyFunc = function()
					props.onLeaveGame(Constants.AnalyticsMenuHotkeySource)
				end,
			},
			{
				name = "ResetButton",
				text = localizedText.Respawn,
				hint = {
					keyboard = "R",
					gamepadButton = Enum.KeyCode.ButtonY,
					gamepadButtonImage = resetHintImage,
					setGamepadButtonImage = setResetHintImage,
				},
				isEmphasized = false,
				getIsDisabled = function()
					return not props.getCanRespawn(false)
				end,
				onActivated = function()
					props.onRespawn(Constants.AnalyticsMenuButtonSource)
				end,
				hotkeys = { Enum.KeyCode.R, Enum.KeyCode.ButtonY },
				hotkeyFunc = function()
					props.onRespawn(Constants.AnalyticsMenuHotkeySource)
				end,
			},
			{
				name = "ResumeButton",
				text = localizedText.Resume,
				hint = {
					keyboard = "ESC",
					gamepadButton = Enum.KeyCode.ButtonStart,
					gamepadButtonImage = resumeHintImage,
					setGamepadButtonImage = setResumeHintImage,
				},
				isEmphasized = not (FIntRelocateMobileMenuButtonsVariant == 1),
				getIsDisabled = function()
					return false
				end,
				onActivated = function()
					props.onResume(Constants.AnalyticsMenuButtonSource)
				end,
				hotkeyFunc = function()
					props.onResume(Constants.AnalyticsMenuHotkeySource)
				end,
				hotkeys = { Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart },
			},
		}
	end, { localizedText, props.onLeaveGame, props.onRespawn, props.onResume, props.getCanRespawn })

	local addKeyBindings = React.useCallback(function(buttonsData: ButtonsData)
		if not props.getVisibility() then
			return
		end

		for i = 1, #buttonsData do
			if buttonsData[i].hotkeyFunc ~= nil then
				ContextActionService:BindCoreAction(
					buttonsData[i].name,
					buttonsData[i].hotkeyFunc,
					false,
					unpack(buttonsData[i].hotkeys)
				)
			end
		end
	end, {})

	local removeKeyBindings = React.useCallback(function(buttonsData: ButtonsData)
		for i = 1, #buttonsData do
			ContextActionService:UnbindCoreAction(buttonsData[i].name)
		end
	end, {})

	local initializeHotkeyFunc = React.useCallback(function(buttonsData: ButtonsData)
		local addRemoveBindingsToFunc = function(onActivatedFunc: () -> (), getIsDisabled: () -> boolean)
			return function()
				if not getIsDisabled() then
					removeKeyBindings(buttonsData)
					onActivatedFunc()
				end
			end
		end

		local createHotkeyFunc = function(onActivatedFunc: () -> (), getIsDisabled: () -> boolean)
			return function(contextName, inputState, inputObject)
				if inputState == Enum.UserInputState.Begin then
					addRemoveBindingsToFunc(onActivatedFunc, getIsDisabled)()
				end
			end
		end

		for i = 1, #buttonsData do
			buttonsData[i].onActivated = addRemoveBindingsToFunc(buttonsData[i].onActivated, buttonsData[i].getIsDisabled)
			buttonsData[i].hotkeyFunc = createHotkeyFunc(buttonsData[i].hotkeyFunc, buttonsData[i].getIsDisabled)
			buttonsData[i].hint.setGamepadButtonImage(
				UserInputService:GetImageForKeyCode(buttonsData[i].hint.gamepadButton)
			)
		end

		props.setAddMenuKeyBindings(function()
			addKeyBindings(buttonsData)
		end)
		props.setRemoveMenuKeyBindings(function()
			removeKeyBindings(buttonsData)
		end)

		return buttonsData
	end, {})

	local buttonsData = React.useMemo(function()
		return initializeHotkeyFunc(initialButtonsData)
	end, { initialButtonsData })

	React.useEffect(function()
		local gamepadConnectedConnection = UserInputService.GamepadConnected:Connect(function()
			for i = 1, #buttonsData do
				buttonsData[i].hint.setGamepadButtonImage(
					UserInputService:GetImageForKeyCode(buttonsData[i].hint.gamepadButton)
				)
			end
		end)

		return function()
			if FFlagMenuButtonsDisconnectGamepadConnected then
				gamepadConnectedConnection:Disconnect()
			end
		end
	end, { buttonsData })

	return React.createElement(View, {
		tag = {
			["size-full row align-y-center"] = true,
			["gap-small"] = not isSmallScreen,
			["gap-xsmall"] = isSmallScreen,
		},
	}, createMenuButtons(buttonsData, lastInput, isSmallScreen))
end

return MenuButtons