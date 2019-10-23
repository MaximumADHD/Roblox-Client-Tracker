local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Libs.Roact)
local UILibrary = require(Plugin.Libs.UILibrary)
local Dialog = require(Plugin.Libs.UILibrary.Components.PluginWidget.Dialog)
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Core.Context.Theme)
local withTheme = Theme.withTheme


local LoadingDialog = Roact.PureComponent:extend("LoadingDialog")

local function composedRender(callback)
	return withTheme(function(theme)
		return withLocalization(function(localization)
			return callback(theme, localization)
		end)
	end)
end

function LoadingDialog:render()
	return composedRender(function(theme, localization)
		return Roact.createElement(Dialog, {
			Title = localization:getText("Loading", "Title"),
			Options = {
				Size = Vector2.new(360, 160),
				Resizable = false,
				Modal = true,
				InitialEnabled = true,
			},
		}, {
			Background = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = theme.BackgroundColor,
			}, {
				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 24),
					Position = UDim2.new(0.5, 0, 0, 40),
					AnchorPoint = Vector2.new(0.5, 0),
					Text = localization:getText("Loading", "UpdatingMessage"),
					TextSize = 24,
					TextColor3 = theme.TextColor,
					Font = Enum.Font.SourceSans,
					BackgroundTransparency = 1,
				}),

				Indicator = Roact.createElement(LoadingIndicator, {
					AnchorPoint = Vector2.new(0.5, 1),
					Position = UDim2.new(0.5, 0, 1, -40),
				}),
			}),
		})
	end)
end

return LoadingDialog