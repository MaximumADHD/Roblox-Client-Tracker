--[[
	A dialog that displays one line of text.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local ContextServices = require(Plugin.Framework.ContextServices)

local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local SimpleDialog = Roact.PureComponent:extend("SimpleDialog")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

function SimpleDialog:DEPRECATED_render(props)
	return withTheme(function(theme)
		local header = props.Header
		local buttons = props.Buttons

		return Roact.createElement(BaseDialog, {
			Buttons = buttons,
			OnResult = props.OnResult,
		}, {
			Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
				Position = UDim2.new(0.5, 0, 0, 45),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 0, 0, 60),
				BackgroundTransparency = 1,
				Text = header,
				TextWrapped = true,
			})),
		})
	end)
end

function SimpleDialog:render()
	local props = self.props
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render(props)
	end

	local theme = props.Theme:get("Plugin")

	local header = props.Header
	local buttons = props.Buttons

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, {
		Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
			Position = UDim2.new(0.5, 0, 0, 45),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			Text = header,
			TextWrapped = true,
		})),
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(SimpleDialog, {
		Theme = ContextServices.Theme,
	})
end

return SimpleDialog