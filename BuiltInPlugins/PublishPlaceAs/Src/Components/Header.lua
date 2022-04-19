--[[
	Header shown at the top of the currently opened page

	Props:
		string Title = The text to display for this header
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local HEADER_HEIGHT = 45

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local Header = Roact.PureComponent:extend("Header")

function Header:render()
	local props = self.props
	local theme = if THEME_REFACTOR then props.Stylizer else props.Theme:get("Plugin")

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

Header = withContext({
	Stylizer = if THEME_REFACTOR then ContextServices.Stylizer else nil,
	Theme = if (not THEME_REFACTOR) then ContextServices.Theme else nil,
})(Header)

return Header
