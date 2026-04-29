local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Utility = require(RobloxGui.Modules.Settings.Utility)
local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)

local useTokens = Foundation.Hooks.useTokens
local View = Foundation.View
local Text = Foundation.Text
local Image = Foundation.Image
local PopoverSide = Foundation.Enums.PopoverSide
local Traversal = CoreScriptsRoactCommon.Traversal

local TraversalHistoryMenu = require(RobloxGui.Modules.Settings.Components.Traversal.TraversalHistoryMenu)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAddTraversalHistoryReactMenuButtons = require(RobloxGui.Modules.Settings.Flags.FFlagAddTraversalHistoryReactMenuButtons)
local FIntRelocateMobileMenuButtonsVariant = require(RobloxGui.Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant)
local FFlagMenuButtonsUseKeyImages = require(RobloxGui.Modules.Settings.Flags.FFlagMenuButtonsUseKeyImages)
local FFlagFixTraversalHistoryMenuFixesV3 = Traversal.Flags.FFlagFixTraversalHistoryMenuFixesV3
local FFlagIEMFocusNavSupportNewButtons = require(RobloxGui.Modules.Settings.Flags.FFlagIEMFocusNavSupportNewButtons)
local FFlagGamepadIconSupportCheck = SharedFlags.FFlagGamepadIconSupportCheck

export type ButtonData = {
	name: string,
	text: string,
	hint: {
		keyboard: string,
		keyboardButtonImage: string?,
		gamepadButton: Enum.KeyCode,
		gamepadButtonImage: React.Binding<string>,
		setGamepadButtonImage: (string) -> (),
	},
	isEmphasized: boolean,
	getIsDisabled: () -> boolean,
	onActivated: () -> (),
	hotkeys: { Enum.KeyCode },
	hotkeyFunc: ((...any) -> ...any),
	addTraversalHistoryMenu: boolean?,
	currentPageChangeSignal: any,
	buttonRef: React.RefObject<GuiObject?>?,
}

local getDisabledTransparency = function(transparency: number)
	return transparency + (1 - transparency) * 0.5
end

local function KeyLabelIcon(key: string?, isDisabled: boolean)
	local tokens = useTokens()

	return React.createElement(View, {
		LayoutOrder = 1,
		backgroundStyle = {
			Color3 = tokens.Color.ActionStandard.Background.Color3,
			Transparency = if isDisabled then getDisabledTransparency(tokens.Color.ActionStandard.Background.Transparency) else tokens.Color.ActionStandard.Background.Transparency,
		},
		tag = "size-1000-700 row align-x-center align-y-center radius-medium",
	}, {
		HotkeyText = React.createElement(Text, {
			Text = key,
			textStyle = {
				Color3 = tokens.Color.ActionStandard.Foreground.Color3,
				Transparency = if isDisabled then getDisabledTransparency(tokens.Color.ActionStandard.Foreground.Transparency) else tokens.Color.ActionStandard.Foreground.Transparency,
			},
			tag = "text-title-small",
		}),
	})
end

local function Hint(props) : React.React_Node
	if FIntRelocateMobileMenuButtonsVariant == 2 and Utility:IsSmallTouchScreen() then 
		return nil
	elseif FFlagMenuButtonsUseKeyImages and (props.lastInput == Responsive.Input.Pointer or props.lastInput == Responsive.Input.Directional) then
		return React.createElement(Image, {
			Image = if props.lastInput == Responsive.Input.Directional then props.gamepadButtonImageHint else props.keyboardButtonImageHint,
			imageStyle = {
				Color3 = props.foregroundStyle.Color3,
				Transparency = if props.isDisabled then 0.5 else props.foregroundStyle.Transparency,
			},
			tag = {
				["size-800"] = not props.isSmall,
				["size-700"] = props.isSmall,
			},
		})
	elseif props.lastInput == Responsive.Input.Pointer then 
		return KeyLabelIcon(props.keyboardHint, props.isDisabled)
	elseif props.lastInput == Responsive.Input.Directional then 
		return React.createElement(Image, {
			Image = props.gamepadButtonImageHint,
			imageStyle = {
				Color3 = props.foregroundStyle.Color3,
				Transparency = if props.isDisabled then 0.5 else props.foregroundStyle.Transparency,
			},
			tag = {
				["size-600"] = not props.isSmall,
				["size-500"] = props.isSmall,
			},
		})
	else 
		return nil
	end
end

local function ButtonText(props) : React.React_Node
	return React.createElement(Text, {
		Text = props.text,
		LayoutOrder = 2,
		textStyle = {
			Color3 = props.foregroundStyle.Color3,
			Transparency = if props.isDisabled then 0.5 else props.foregroundStyle.Transparency,
		},
		tag = {
			["auto-x"] = true,
			["text-title-medium"] = not props.isSmall,
			["text-title-small"] = props.isSmall,
			["content-action-standard"] = not props.isEmphasized,
			["content-action-soft-emphasis"] = props.isEmphasized,
		},
	})
end

type Props = {
	text: string,
	lastInput: string,
	keyboardHint: string?,
	keyboardButtonImageHint: string?,
	gamepadButton: Enum.KeyCode?,
	gamepadButtonImageHint: React.Binding<string>,
	onActivated: () -> (),
	layoutOrder: number,
	isEmphasized: boolean,
	isSmall: boolean,
	isDisabled: boolean,
	addTraversalHistoryMenu: boolean?,
	currentPageChangeSignal: any,
	buttonRef: React.RefObject<GuiObject?>?,
}

local function supportsButton(lastInput: string, keycode: Enum.KeyCode?)
	if not FFlagGamepadIconSupportCheck or not keycode or lastInput ~= Responsive.Input.Directional then
		return true
	end
	return UserInputService:GamepadSupports(UserInputService:GetLastInputType(), keycode)
end

local function MenuButton(props: Props)
	local tokens = useTokens()
	local buttonRef = if FFlagIEMFocusNavSupportNewButtons then props.buttonRef 
		else if FFlagAddTraversalHistoryReactMenuButtons then React.useRef(nil) 
		else nil
	local backgroundStyle = if props.isEmphasized then tokens.Color.ActionSoftEmphasis.Background else tokens.Color.ActionStandard.Background
	local foregroundStyle = if props.isEmphasized then tokens.Color.ActionSoftEmphasis.Foreground else tokens.Color.ActionStandard.Foreground

	local showHint, setShowHint = React.useState(supportsButton(props.lastInput, props.gamepadButton))

	React.useEffect(function() 
		local lastInputConn = nil
		if FFlagGamepadIconSupportCheck and props.gamepadButton then
			lastInputConn = UserInputService.LastInputTypeChanged:Connect(function()
				setShowHint(supportsButton(props.lastInput, props.gamepadButton))
			end)
		end

		return function()
			if lastInputConn then 
				lastInputConn:Disconnect()
			end
		end
	end, { props.gamepadButton, props.lastInput } :: { unknown })

	return React.createElement(View, {
		onActivated = props.onActivated,
		isDisabled = props.isDisabled,
		LayoutOrder = props.layoutOrder,
		backgroundStyle = {
			Color3 = backgroundStyle.Color3,
			Transparency = if props.isDisabled then getDisabledTransparency(backgroundStyle.Transparency) else backgroundStyle.Transparency,
		},
		tag = {
			["fill auto-x row align-y-center align-x-center gap-small radius-medium"] = true,
			["size-0-1200"] = not props.isSmall,
			["size-0-1000"] = props.isSmall,
			["bg-action-standard"] = not props.isEmphasized,
			["bg-action-soft-emphasis"] = props.isEmphasized,
		},
		ref = if FFlagAddTraversalHistoryReactMenuButtons or FFlagIEMFocusNavSupportNewButtons then buttonRef else nil,
		Selectable = if FFlagIEMFocusNavSupportNewButtons then true else nil,
	}, {
		Button = if FFlagAddTraversalHistoryReactMenuButtons then React.createElement(View, {
			tag = "auto-xy row align-y-center align-x-center grow gap-small",
		}, {
			Hint = if (not FFlagGamepadIconSupportCheck or showHint) then React.createElement(Hint, {
				lastInput = props.lastInput,
				keyboardHint = if FFlagMenuButtonsUseKeyImages then nil else props.keyboardHint,
				gamepadButtonImageHint = props.gamepadButtonImageHint,
				keyboardButtonImageHint = if FFlagMenuButtonsUseKeyImages then props.keyboardButtonImageHint else nil,
				isDisabled = props.isDisabled,
				foregroundStyle = foregroundStyle,
				isSmall = props.isSmall,
			}) else nil,
			ButtonText = React.createElement(ButtonText, {
				text = props.text,
				isDisabled = props.isDisabled,
				foregroundStyle = foregroundStyle,
				isEmphasized = props.isEmphasized,
				isSmall = props.isSmall,
			}),
		}) else nil,
		Hint = if (not FFlagGamepadIconSupportCheck or showHint) and not FFlagAddTraversalHistoryReactMenuButtons then 
			(if FIntRelocateMobileMenuButtonsVariant == 2 and Utility:IsSmallTouchScreen() then nil
			elseif FFlagMenuButtonsUseKeyImages and (props.lastInput == Responsive.Input.Pointer or props.lastInput == Responsive.Input.Directional) then React.createElement(Image, {
				Image = if props.lastInput == Responsive.Input.Directional then props.gamepadButtonImageHint else props.keyboardButtonImageHint,
				imageStyle = {
					Color3 = foregroundStyle.Color3,
					Transparency = if props.isDisabled then 0.5 else foregroundStyle.Transparency,
				},
				tag = {
					["size-800"] = not props.isSmall,
					["size-700"] = props.isSmall,
				},
			})
			-- TODO also here, Test in PR with both flags
			elseif props.lastInput == Responsive.Input.Pointer then KeyLabelIcon(props.keyboardHint, props.isDisabled)
			elseif props.lastInput == Responsive.Input.Directional then React.createElement(Image, {
				Image = props.gamepadButtonImageHint,
				imageStyle = {
					Color3 = foregroundStyle.Color3,
					Transparency = if props.isDisabled then 0.5 else foregroundStyle.Transparency,
				},
				tag = {
					["size-600"] = not props.isSmall,
					["size-500"] = props.isSmall,
				},
			})
			else nil) 
		else nil,
		ButtonText = if not FFlagAddTraversalHistoryReactMenuButtons then React.createElement(Text, {
			Text = props.text,
			LayoutOrder = 2,
			textStyle = {
				Color3 = foregroundStyle.Color3,
				Transparency = if props.isDisabled then 0.5 else foregroundStyle.Transparency,
			},
			tag = {
				["auto-x"] = true,
				["text-title-medium"] = not props.isSmall,
				["text-title-small"] = props.isSmall,
				["content-action-standard"] = not props.isEmphasized,
				["content-action-soft-emphasis"] = props.isEmphasized,
			},
		}) else nil,
		TraversalHistoryMenu = if FFlagAddTraversalHistoryReactMenuButtons and props.addTraversalHistoryMenu
			then React.createElement(TraversalHistoryMenu, {
				anchorRef = buttonRef,
				idleButtonStateIsDown = true ,
				currentPageChangeSignal = props.currentPageChangeSignal,
				isDarkOnDarkMode = true,
				menuSide = if FFlagFixTraversalHistoryMenuFixesV3
					then (if props.isSmall then PopoverSide.Bottom else PopoverSide.Top)
					else nil,
			})
		else nil,
	})
end

return React.memo(MenuButton)
