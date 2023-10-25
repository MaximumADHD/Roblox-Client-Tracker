--!strict
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useDesignTokens = require(CorePackages.Workspace.Packages.Style).useDesignTokens
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local TopBar = script:FindFirstAncestor("TopBar")
local MenuNavigationPromptTokenMapper = require(TopBar.TokenMappers.MenuNavigationPromptTokenMapper)
type MenuNavigationPromptTokens = MenuNavigationPromptTokenMapper.MenuNavigationPromptTokens

local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton

type Props = {
	Position: UDim2,
	Visible: boolean,
}

local VIEW_BUTTON_LOCALIZATION_KEY = "CoreScripts.InGameMenu.Label.ViewButton"
local TOUCHPAD_BUTTON_LOCALIZATION_KEY = "CoreScripts.InGameMenu.Label.TouchpadButton"
local OK_LOCALIZATION_KEY = "CoreScripts.InGameMenu.Ok"
local PROMPT_TITLE_LOCALIZATION_KEY = "CoreScripts.InGameMenu.PageTitle.ToggleMenuNavigation"
local DESCRIPTION_LOCALIZATION_KEY = "CoreScripts.InGameMenu.EducationalPopup.MenuNavigationToggleText"
local SELECT_BUTTON_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonSelect@2x.png"
local CONTROLLER_IMAGE = "rbxasset://textures/ui/Gamepad/ControllerSelect@2x.png"

local KeyCodeStringMap = {
	ButtonSelect = VIEW_BUTTON_LOCALIZATION_KEY,
	ButtonTouchpad = TOUCHPAD_BUTTON_LOCALIZATION_KEY,
	ButtonShare = TOUCHPAD_BUTTON_LOCALIZATION_KEY,
}

-- Pre-define Helpers
local ControllerArea, HeaderArea, Body

-- Main Component
local function MenuNavigationDismissablePrompt(props: Props)
	local tokens = useDesignTokens()
	local MenuNavigationPromptTokens = tokens.LuaApps.MenuNavigationPrompt :: MenuNavigationPromptTokens
	local Color = MenuNavigationPromptTokens.Color
	local Size = MenuNavigationPromptTokens.Size
	local Space = MenuNavigationPromptTokens.Space
	local Radius = MenuNavigationPromptTokens.Radius

	return React.createElement("Frame", {
		BackgroundColor3 = Color.backgroundUiColor.Color3,
		BackgroundTransparency = Color.backgroundUiColor.Transparency,
		Visible = props.Visible,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(Size.promptWidth / Size.displayWidth, 0),
		Position = props.Position,
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
		Body = React.createElement(Body),
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(math.huge, math.huge),
			MinSize = Vector2.new(Size.imageWidth + 2 * Space.bodyPadding, 1),
		}),
	})
end

-- Helper Components
function ControllerArea()
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

	local selectButtonImage = if game:GetEngineFeature("GetImageForKeyCode")
		then UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonSelect)
		else SELECT_BUTTON_ICON

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
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, Space.iconPadding),
					PaddingBottom = UDim.new(0, Space.iconPadding),
					PaddingRight = UDim.new(0, Space.iconPadding),
					PaddingLeft = UDim.new(0, Space.iconPadding),
				}),
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

function HeaderArea()
	local tokens = useDesignTokens()
	local MenuNavigationPromptTokens = tokens.LuaApps.MenuNavigationPrompt :: MenuNavigationPromptTokens
	local Typography = MenuNavigationPromptTokens.Typography
	local Color = MenuNavigationPromptTokens.Color
	local Space = MenuNavigationPromptTokens.Space

	local localizedStrings = useLocalization({
		HeaderText = PROMPT_TITLE_LOCALIZATION_KEY,
	})

	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY,
		LayoutOrder = 0,
		BackgroundTransparency = 1,
	}, {
		Header = React.createElement("TextLabel", {
			LayoutOrder = 0,
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
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Space.titlePadding),
			PaddingBottom = UDim.new(0, Space.titlePadding),
			PaddingLeft = UDim.new(0, Space.bodyPadding),
			PaddingRight = UDim.new(0, Space.bodyPadding),
		}),
	})
end

function Body()
	local tokens = useDesignTokens()
	local MenuNavigationPromptTokens = tokens.LuaApps.MenuNavigationPrompt :: MenuNavigationPromptTokens
	local Typography = MenuNavigationPromptTokens.Typography
	local Color = MenuNavigationPromptTokens.Color
	local Size = MenuNavigationPromptTokens.Size
	local Space = MenuNavigationPromptTokens.Space

	local localizedStrings = useLocalization({
		CaptionText = DESCRIPTION_LOCALIZATION_KEY,
		OkText = OK_LOCALIZATION_KEY,
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
		ControllerArea = React.createElement(ControllerArea),
		ImageDescription = React.createElement("TextLabel", {
			Text = localizedStrings.CaptionText,
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
		ConfirmationButton = React.createElement(PrimarySystemButton, {
			layoutOrder = 200,
			size = UDim2.new(1, 0, 0, Size.buttonHeight),
			text = localizedStrings.OkText,
			-- Activation logic is handled directly by ContextActionService
			onActivated = function() end,
		}),
	})
end

return MenuNavigationDismissablePrompt
