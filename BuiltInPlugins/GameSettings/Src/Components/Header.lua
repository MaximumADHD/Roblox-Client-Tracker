--[[
	Header shown at the top of the currently opened page

	Props:
		string Title = The text to display for this header
]]

local FFlagRemoveUILibraryGetTextSize = game:GetFastFlag("RemoveUILibraryGetTextSize")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)
local GetTextSize = if FFlagRemoveUILibraryGetTextSize then Util.GetTextSize else UILibrary.Util.GetTextSize

local Header = Roact.PureComponent:extend("Header")

function Header:render()
	local props = self.props
	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")

	local textSize
	local calculatedTextSize = GetTextSize(props.Title, theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font)
	textSize = UDim2.new(0, calculatedTextSize.X, 0, calculatedTextSize.Y)

	return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Header, {
		Size = textSize,
		Text = props.Title,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Bottom,
		LayoutOrder = props.LayoutOrder or 1,
	}))
end


Header = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(Header)



return Header
