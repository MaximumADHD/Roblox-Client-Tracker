--[[
	Header shown at the top of the currently opened page

	Props:
		string Title = The text to display for this header
]]
local FFlagPublishPlaceAsWithContext = game:GetFastFlag("PublishPlaceAsWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = Plugin.Packages.Framework

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local HEADER_HEIGHT = 45

local Header = Roact.PureComponent:extend("Header")

function Header:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")

	local title = props.Title
	local layoutOrder = props.LayoutOrder or 1

	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
		Text = title,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextSize = 28,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Bottom,
		Font = theme.header.font,
		TextColor3 = theme.header.text,
		LayoutOrder = layoutOrder,
	})
end

if FFlagPublishPlaceAsWithContext then
	Header = withContext({
		Theme = ContextServices.Theme,
	})(Header)
else
	ContextServices.mapToProps(Header,{
		Theme = ContextServices.Theme,
	})
end

return Header