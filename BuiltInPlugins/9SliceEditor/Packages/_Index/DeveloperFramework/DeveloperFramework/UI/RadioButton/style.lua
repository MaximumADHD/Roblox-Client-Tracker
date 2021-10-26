local Framework = script.Parent.Parent.Parent
local FFlagRemoveUILibraryTitledFrameRadioButtonSet = game:GetFastFlag("RemoveUILibraryTitledFrameRadioButtonSet")

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local StyleModifier = Util.StyleModifier
local StyleValue = Util.StyleValue
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

if THEME_REFACTOR then
	return {
		Padding = 6,
		ImageSize = UDim2.new(0, 20, 0, 20),
		Background = UI.Button,
		BackgroundStyle = {
			Background = Decoration.Image,
			BackgroundStyle = {
				Image = "rbxasset://textures/GameSettings/RadioButton.png",
				Color = StyleKey.MainBackground,
			},
			[StyleModifier.Selected] = {
				BackgroundStyle = {
					Image = "rbxasset://textures/GameSettings/RadioButton.png",
					Color = StyleKey.MainBackground,
				},
				Foreground = Decoration.Image,
				ForegroundStyle = {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0.4, 0, 0.4, 0),
				},
			},
			[StyleModifier.Disabled] = {
				BackgroundStyle = {
					Image = "rbxasset://textures/GameSettings/RadioButton.png",
					Color = StyleKey.MainBackground,
				},
			},
			[StyleModifier.Indeterminate] = FFlagRemoveUILibraryTitledFrameRadioButtonSet and {
				BackgroundStyle = {
					Image = "rbxasset://textures/GameSettings/RadioButton.png",
					Color = StyleKey.MainBackground,
				},
				Foreground = Decoration.Image,
				ForegroundStyle = {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = StyleKey.RadioButtonDisabledImage,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0.4, 0, 0.4, 0),
				},
			} or nil,
		},
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)
		local themeName = theme.Name

		local disabledImage = FFlagRemoveUILibraryTitledFrameRadioButtonSet and StyleValue.new("disabledImage", {
			Light = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png",
			Dark = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png",
		}) or nil

		local Default = Style.extend(common.MainText, {
			Padding = 6,
			ImageSize = UDim2.new(0, 20, 0, 20),
			Background = UI.Button,
			BackgroundStyle = {
				Background = Decoration.Image,
				BackgroundStyle = {
					Image = "rbxasset://textures/GameSettings/RadioButton.png",
					Color = theme:GetColor("MainBackground"),
				},
				[StyleModifier.Selected] = {
					BackgroundStyle = {
						Image = "rbxasset://textures/GameSettings/RadioButton.png",
						Color = theme:GetColor("MainBackground"),
					},
					Foreground = Decoration.Image,
					ForegroundStyle = {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.4, 0, 0.4, 0)
					},
				},
				[StyleModifier.Disabled] = {
					BackgroundStyle = {
						Image = "rbxasset://textures/GameSettings/RadioButton.png",
						Color = theme:GetColor("MainBackground"),
					},
				},
				[StyleModifier.Indeterminate] = FFlagRemoveUILibraryTitledFrameRadioButtonSet and {
					BackgroundStyle = {
						Image = "rbxasset://textures/GameSettings/RadioButton.png",
						Color = theme:GetColor("MainBackground"),
					},
					Foreground = Decoration.Image,
					ForegroundStyle = {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = disabledImage:get(themeName),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.4, 0, 0.4, 0)
					},
				} or nil,
			},
		})

		return {
			Default = Default,
		}
	end
end
