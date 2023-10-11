--!strict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local UserInputService = game:GetService("UserInputService")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useExternalEvent = UIBlox.Core.Hooks.useExternalEvent
local GetTextSize = require(CorePackages.Workspace.Packages.Style).GetTextSize
local useDesignTokens = require(CorePackages.Workspace.Packages.Style).useDesignTokens

local Localization = require(CoreGui.RobloxGui.Modules.InGameMenu.Localization.Localization)

local FFlagLocalizeMenuNavigationToggleDialog =
	require(CoreGui.RobloxGui.Modules.TopBar.Flags.FFlagLocalizeMenuNavigationToggleDialog)

local SELECT_ICON_ASSET_ID = "rbxasset://textures/ui/Controls/DesignSystem/ButtonSelect@2x.png"
local PRE_ICON_LOCALIZATION_KEY = "CoreScripts.InGameMenu.VirtualCursorHintPreIcon"
local POST_ICON_LOCALIZATION_KEY = "CoreScripts.InGameMenu.VirtualCursorHintPostIcon"
local PRE_ICON_FALLBACK_STRING = "Some experiences require pressing"
local POST_ICON_FALLBACK_STRING = "to toggle menu navigation"

type Props = {
	Position: UDim2,
}

local function MenuNavigationToggleDialog(props: Props)
	local tokens = useDesignTokens()
	local font = tokens.Semantic.Typography.CaptionHeader
	local horizontalPadding = tokens.Global.Space_200
	local verticalPadding = tokens.Global.Space_75
	local cornerRadius = tokens.Semantic.Radius.Medium
	local iconSize = tokens.Global.Size_300
	local backgroundUiColor = tokens.Semantic.Color.BackgroundUi.Contrast
	local textColor = tokens.Semantic.Color.Text.Emphasis.Color3
	local iconPadding = tokens.Global.Space_50

	local selectButtonImage = if FFlagLocalizeMenuNavigationToggleDialog
			and game:GetEngineFeature("GetImageForKeyCode")
		then UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonSelect)
		else SELECT_ICON_ASSET_ID

	local leftText, rightText
	if FFlagLocalizeMenuNavigationToggleDialog then
		local locale, setLocale = React.useState(LocalizationService.RobloxLocaleId)
		useExternalEvent(LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"), function()
			setLocale(LocalizationService.RobloxLocaleId)
		end)

		--[[
			Typically, translations would be retrieved in the useLocalization hook.
			However, the localization strings for these translation keys are stored in
			`Modules.InGameMenu.Localization.Localization`, which are not accessible via the TopBar
			localization provider, and thus the useLocalization hook.
		]]
		leftText, rightText = React.useMemo(function()
			local newLocalization = Localization.new(locale)

			-- newLocalization.Format takes "self" as the first argument. This is equivalent to newLocalization:Format(key).
			local leftTextOk, leftTextOrError =
				pcall(newLocalization.Format, newLocalization, PRE_ICON_LOCALIZATION_KEY)
			local rightTextOk, rightTextOrError =
				pcall(newLocalization.Format, newLocalization, POST_ICON_LOCALIZATION_KEY)

			local leftText_ = if leftTextOk then leftTextOrError else PRE_ICON_FALLBACK_STRING
			local rightText_ = if rightTextOk then rightTextOrError else POST_ICON_FALLBACK_STRING

			return leftText_, rightText_
		end, { locale })
	else
		local localizedStrings = {
			VirtualCursorHintPreIcon = "Some experiences require pressing ",
			VirtualCursorHintPostIcon = " to toggle menu navigation",
		}

		leftText = localizedStrings.VirtualCursorHintPreIcon
		rightText = localizedStrings.VirtualCursorHintPostIcon
	end

	local leftTextSize, rightTextSize = React.useMemo(function()
		local leftTextSize_ = GetTextSize(leftText, font.FontSize, font.Font, Vector2.new(math.huge, math.huge))
		local rightTextSize_ = GetTextSize(rightText, font.FontSize, font.Font, Vector2.new(math.huge, math.huge))

		return leftTextSize_, rightTextSize_
	end, { font.FontSize, font.Font, leftText, rightText })

	return React.createElement("Frame", {
		BackgroundColor3 = backgroundUiColor.Color3,
		BackgroundTransparency = backgroundUiColor.Transparency,
		AutomaticSize = Enum.AutomaticSize.XY,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = props.Position,
	}, {
		Corner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, cornerRadius),
		}),
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = if FFlagLocalizeMenuNavigationToggleDialog then UDim.new(0, iconPadding) else nil,
		}),
		LeftText = React.createElement("TextLabel", {
			Size = UDim2.fromOffset(leftTextSize.X, leftTextSize.Y),
			Text = leftText,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = textColor,
			Font = font.Font,
			TextSize = font.FontSize,
			TextWrapped = false,
			BackgroundTransparency = 1,
			LayoutOrder = 0,
		}),
		Icon = React.createElement("ImageLabel", {
			Size = UDim2.fromOffset(iconSize, iconSize),
			BackgroundTransparency = 1,
			LayoutOrder = 100,
			Image = selectButtonImage,
		}),
		RightText = React.createElement("TextLabel", {
			Size = UDim2.fromOffset(rightTextSize.X, rightTextSize.Y),
			Text = rightText,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = textColor,
			Font = font.Font,
			TextSize = font.FontSize,
			TextWrapped = false,
			BackgroundTransparency = 1,
			LayoutOrder = 200,
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, verticalPadding),
			PaddingBottom = UDim.new(0, verticalPadding),
			PaddingLeft = UDim.new(0, horizontalPadding),
			PaddingRight = UDim.new(0, horizontalPadding),
		}),
	})
end

return MenuNavigationToggleDialog
