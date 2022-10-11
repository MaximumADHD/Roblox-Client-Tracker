--[[
	Represents a single entry in a TrackList.
	This component's children are padded based on their indentation.

	Props:
		int LayoutOrder = The order this element displays in a UIListLayout.
		int Indent = The level of indentation to pad this component's children.
		int Height = The height of this component, in pixels.
		bool Primary = Whether to style this track as a primary track.
		bool ShowBackground = Whether to show a background for this track.
		bool Selected = Whether this track is currently selected.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local TrackListEntry = Roact.PureComponent:extend("TrackListEntry")

function TrackListEntry:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local layoutOrder = props.LayoutOrder
	local indent = props.Indent or 0
	local height = props.Height
	local primary = props.Primary
	local showBackground = props.ShowBackground
	local selected = props.Selected

	local trackTheme = theme.trackTheme

	local backgroundColor
	if primary then
		backgroundColor = trackTheme.primaryBackgroundColor
	elseif showBackground then
		backgroundColor = trackTheme.titleBackgroundColor
	elseif selected then
		backgroundColor = trackTheme.selectedBackgroundColor
	end

	local children = props[Roact.Children] or {}
	children.Padding = Roact.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, Constants.INDENT_PADDING * indent),
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, height),
		BorderSizePixel = 0,
		BackgroundColor3 = backgroundColor,
		BackgroundTransparency = backgroundColor and 0 or 1,
		LayoutOrder = layoutOrder,
	}, children)
end

TrackListEntry = withContext({
	Stylizer = ContextServices.Stylizer,
})(TrackListEntry)

return TrackListEntry
