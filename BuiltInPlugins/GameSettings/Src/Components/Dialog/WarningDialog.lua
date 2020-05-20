--[[
	A dialog that displays a warning image and message.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		string Description = The main message to display in this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local withTheme = require(Plugin.Src.Consumers.withTheme)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local WarningDialog = Roact.PureComponent:extend("WarningDialog")

function WarningDialog:DEPRECATED_render(props)
	return withTheme(function(theme)
		local buttons = props.Buttons
		local header = props.Header
		local description = props.Description

		return Roact.createElement(BaseDialog, {
			Buttons = buttons,
			OnResult = props.OnResult,
		}, {
			Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
				Size = UDim2.new(1, -60, 0, 23),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 30),
				BackgroundTransparency = 1,
				Text = header,
				TextXAlignment = Enum.TextXAlignment.Left,
			})),

			Description = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Warning, {
				Size = UDim2.new(0, 387, 0, 40),
				Position = UDim2.new(0, 56, 0, 65),
				BackgroundTransparency = 1,
				Text = description,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
			})),

			Warning = Roact.createElement("ImageLabel", {
				Image = DEPRECATED_Constants.WARNING_IMAGE,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 16, 0, 16),
				Position = UDim2.new(0, 30, 0, 68),
			}),
		})
	end)
end

function WarningDialog:render()
	local props = self.props
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render(props)
	end

	local theme = props.Theme:get("Plugin")

	local buttons = props.Buttons
	local header = props.Header
	local description = props.Description

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, {
		Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
			Size = UDim2.new(1, -60, 0, 23),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 30),
			BackgroundTransparency = 1,
			Text = header,
			TextXAlignment = Enum.TextXAlignment.Left,
		})),

		Description = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Warning, {
			Size = UDim2.new(0, 387, 0, 40),
			Position = UDim2.new(0, 56, 0, 65),
			BackgroundTransparency = 1,
			Text = description,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
		})),

		Warning = Roact.createElement("ImageLabel", {
			Image = DEPRECATED_Constants.WARNING_IMAGE,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 16, 0, 16),
			Position = UDim2.new(0, 30, 0, 68),
		}),
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(WarningDialog, {
		Theme = ContextServices.Theme,
	})
end

return WarningDialog