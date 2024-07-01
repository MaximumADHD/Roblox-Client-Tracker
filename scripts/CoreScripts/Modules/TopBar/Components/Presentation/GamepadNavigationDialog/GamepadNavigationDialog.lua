--!strict
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local LocalizationService = game:GetService("LocalizationService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContextActionService = game:GetService("ContextActionService")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local GetTextSize = require(CorePackages.Workspace.Packages.Style).GetTextSize
local useDesignTokens = require(CorePackages.Workspace.Packages.Style).useDesignTokens
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local FocusNavigationEffects = require(RobloxGui.Modules.Common.FocusNavigationEffectsWrapper)
local FocusNavigableSurfaceIdentifierEnum =
	require(CorePackages.Workspace.Packages.FocusNavigationUtils).FocusNavigableSurfaceIdentifierEnum
local CoreScriptsRootProvider = require(RobloxGui.Modules.Common.CoreScriptsRootProvider)

local TopBar = script:FindFirstAncestor("TopBar")
local TopBarAnalytics = require(TopBar.Analytics).default

local MenuNavigationPromptTokenMapper = require(TopBar.TokenMappers.MenuNavigationPromptTokenMapper)
type MenuNavigationPromptTokens = MenuNavigationPromptTokenMapper.MenuNavigationPromptTokens

local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType

export type Props = {
	selectButtonDismissesGamepadNavigationDialog: boolean,
	onDismissed: () -> (),
}

local VIEW_BUTTON_LOCALIZATION_KEY = "CoreScripts.InGameMenu.Label.ViewButton"
local TOUCHPAD_BUTTON_LOCALIZATION_KEY = "CoreScripts.InGameMenu.Label.TouchpadButton"
local SHARE_BUTTON_LOCALIZATION_KEY = "CoreScripts.InGameMenu.Label.ShareButton"
local OK_LOCALIZATION_KEY = "CoreScripts.InGameMenu.Ok"
local TITLE_LOCALIZATION_KEY = "CoreScripts.InGameMenu.EducationalPopup.UINavigation.Title"
local DESCRIPTION_LOCALIZATION_KEY = "CoreScripts.InGameMenu.EducationalPopup.UINavigation.Description"
local CONTROLLER_IMAGE = "rbxasset://textures/ui/Gamepad/ControllerSelect.png"
local CONFIRM_BUTTON_BIND = "ConfirmBindComponentMapperTokenModule"

local KeyCodeStringMap = {
	ButtonSelect = VIEW_BUTTON_LOCALIZATION_KEY,
	ButtonTouchpad = TOUCHPAD_BUTTON_LOCALIZATION_KEY,
	ButtonShare = SHARE_BUTTON_LOCALIZATION_KEY,
	-- TOOD (CLIDESKTOP-296) Revisit before shipping to non-console platforms
}

local function HeaderArea()
	local tokens = useDesignTokens()
	local MenuNavigationPromptTokens = tokens.LuaApps.MenuNavigationPrompt :: MenuNavigationPromptTokens
	local Typography = MenuNavigationPromptTokens.Typography
	local Color = MenuNavigationPromptTokens.Color
	local Space = MenuNavigationPromptTokens.Space

	local localizedStrings = useLocalization({
		HeaderText = TITLE_LOCALIZATION_KEY,
	})

	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY,
		LayoutOrder = 0,
		BackgroundTransparency = 1,
	}, {
		Header = React.createElement("TextLabel", {
			Text = localizedStrings.HeaderText,
			BackgroundTransparency = 1,
			Font = Typography.header.Font,
			TextSize = Typography.header.FontSize,
			TextColor3 = Color.textColor.Color3,
			Size = UDim2.fromOffset(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Space.titlePadding),
			PaddingBottom = UDim.new(0, Space.titlePadding),
			PaddingLeft = UDim.new(0, Space.bodyPadding),
			PaddingRight = UDim.new(0, Space.bodyPadding),
		}),
	})
end

local function GamepadImageArea()
	local tokens = useDesignTokens()
	local MenuNavigationPromptTokens = tokens.LuaApps.MenuNavigationPrompt :: MenuNavigationPromptTokens
	local Typography = MenuNavigationPromptTokens.Typography
	local Color = MenuNavigationPromptTokens.Color
	local Size = MenuNavigationPromptTokens.Size
	local Space = MenuNavigationPromptTokens.Space

	local selectButtonName = UserInputService:GetStringForKeyCode(Enum.KeyCode.ButtonSelect)
	local labelKey = KeyCodeStringMap[selectButtonName] or VIEW_BUTTON_LOCALIZATION_KEY
	local localizedStrings = useLocalization({
		ButtonLabelText = labelKey,
	})

	local selectButtonImage = UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonSelect)

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, Space.iconPadding),
		}),
		ButtonLabelGroup = React.createElement("Frame", {
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 0,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, Space.iconPadding),
			}),
			Icon = React.createElement("ImageLabel", {
				LayoutOrder = 0,
				BackgroundTransparency = 1,
				Image = selectButtonImage,
				Size = UDim2.fromOffset(Size.iconSize, Size.iconSize),
			}),
			ControllerButtonLabel = React.createElement("TextLabel", {
				Text = localizedStrings.ButtonLabelText,
				LayoutOrder = 100,
				BackgroundTransparency = 1,
				Font = Typography.label.Font,
				TextSize = Typography.label.FontSize,
				TextColor3 = Color.textColor.Color3,
				Size = UDim2.fromOffset(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		}),
		ControllerImage = React.createElement("ImageLabel", {
			Image = CONTROLLER_IMAGE,
			Size = UDim2.fromScale(1, 1),
			LayoutOrder = 100,
			BackgroundTransparency = 1,
		}, {
			UIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
				AspectRatio = Size.imageWidth / Size.imageHeight,
			}),
			UISizeConstraint = React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(Size.imageWidth, Size.imageHeight),
				MinSize = Vector2.new(Size.imageWidth * 0.5, Size.imageHeight * 0.5),
			}),
		}),
	})
end

local function Body(props: Props)
	local tokens = useDesignTokens()
	local MenuNavigationPromptTokens = tokens.LuaApps.MenuNavigationPrompt :: MenuNavigationPromptTokens
	local Typography = MenuNavigationPromptTokens.Typography
	local Color = MenuNavigationPromptTokens.Color
	local Size = MenuNavigationPromptTokens.Size
	local Space = MenuNavigationPromptTokens.Space

	local selectButtonName = UserInputService:GetStringForKeyCode(Enum.KeyCode.ButtonSelect)
	local labelKey = KeyCodeStringMap[selectButtonName] or VIEW_BUTTON_LOCALIZATION_KEY

	local localizedStrings = useLocalization({
		OkText = OK_LOCALIZATION_KEY,
		Description = DESCRIPTION_LOCALIZATION_KEY,
	})

	return React.createElement("Frame", {
		LayoutOrder = 200,
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, Space.bodyPadding),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Space.bodyPadding),
			PaddingRight = UDim.new(0, Space.bodyPadding),
			PaddingTop = UDim.new(0, Space.bodyPadding),
			PaddingBottom = UDim.new(0, Space.bodyPadding),
		}),
		GamepadImageArea = React.createElement(GamepadImageArea),
		ImageDescription = React.createElement("TextLabel", {
			Text = localizedStrings.Description,
			LayoutOrder = 100,
			BackgroundTransparency = 1,
			Font = Typography.caption.Font,
			TextSize = Typography.caption.FontSize,
			TextColor3 = Color.textColor.Color3,
			TextWrapped = true,
			LineHeight = Typography.caption.LineHeight,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		ConfirmationButton = React.createElement(Button, {
			buttonType = ButtonType.PrimarySystem,
			layoutOrder = 200,
			size = UDim2.new(1, 0, 0, Size.buttonHeight),
			text = localizedStrings.OkText,
			onActivated = props.onDismissed,
			icon = if props.selectButtonDismissesGamepadNavigationDialog
				then UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonSelect)
				else nil,
		}),
	})
end

local function GamepadNavigationDialog(props: Props)
	local tokens = useDesignTokens()
	local MenuNavigationPromptTokens = tokens.LuaApps.MenuNavigationPrompt :: MenuNavigationPromptTokens
	local Color = MenuNavigationPromptTokens.Color
	local Size = MenuNavigationPromptTokens.Size
	local Space = MenuNavigationPromptTokens.Space
	local Radius = MenuNavigationPromptTokens.Radius

	React.useEffect(function()
		TopBarAnalytics:onShowGamepadNavigationDialog()
		ContextActionService:BindCoreAction(
			CONFIRM_BUTTON_BIND,
			function(_actionName, inputState, _inputObj)
				if inputState == Enum.UserInputState.End then
					props.onDismissed()
				end
			end,
			false,
			if props.selectButtonDismissesGamepadNavigationDialog
				then Enum.KeyCode.ButtonSelect
				else Enum.KeyCode.ButtonA
		)

		return function()
			TopBarAnalytics:onDismissGamepadNavigationDialog()
			ContextActionService:UnbindCoreAction(CONFIRM_BUTTON_BIND)
		end
	end)

	return React.createElement("Frame", {
		BackgroundColor3 = Color.backgroundUiColor.Color3,
		BackgroundTransparency = Color.backgroundUiColor.Transparency,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(Size.promptWidth / Size.displayWidth, 0),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
	}, {
		Corner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, Radius.cornerRadius),
		}),
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		HeaderArea = React.createElement(HeaderArea),
		Separator = React.createElement("Frame", {
			LayoutOrder = 100,
			Size = UDim2.new(1, -2 * Space.bodyPadding, 0, 1),
			BackgroundColor3 = Color.separatorColor.Color3,
			BackgroundTransparency = Color.separatorColor.Transparency,
			BorderSizePixel = 0,
		}),
		Body = React.createElement(Body, props),
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(math.huge, math.huge),
			MinSize = Vector2.new(Size.imageWidth + 2 * Space.bodyPadding, 1),
		}),
	})
end

return GamepadNavigationDialog
