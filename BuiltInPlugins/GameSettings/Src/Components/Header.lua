--[[
	Header shown at the top of the currently opened page

	Props:
		string Title = The text to display for this header
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Header = Roact.PureComponent:extend("Header")

function Header:DEPRECATED_render()
	local props = self.props
	return withTheme(function(theme)
		return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Header, {
			Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.HEADER_HEIGHT),
			Text = props.Title,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Bottom,
			LayoutOrder = props.LayoutOrder or 1,
		}))
	end)
end

function Header:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local theme = props.Theme:get("Plugin")

	return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Header, {
		Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.HEADER_HEIGHT),
		Text = props.Title,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Bottom,
		LayoutOrder = props.LayoutOrder or 1,
	}))
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(Header,{
		Theme = ContextServices.Theme,
	})
end

return Header