local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Libs.Roact)
local UILibrary = require(Plugin.Libs.UILibrary)
local LoadingIndicator = UILibrary.Component.LoadingIndicator

local ContextServices = require(Plugin.Libs.Framework.ContextServices)
local StudioUI = require(Plugin.Libs.Framework.StudioUI)
local Dialog = StudioUI.Dialog

local LoadingDialog = Roact.PureComponent:extend("LoadingDialog")

function LoadingDialog:render()
	local props = self.props
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	return Roact.createElement(Dialog, {
		Title = localization:getText("Loading", "Title"),
		Enabled = true,
		Size = Vector2.new(360, 160),
		Resizable = false,
		OnClose = function()
		end,
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
end

ContextServices.mapToProps(LoadingDialog, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

return LoadingDialog