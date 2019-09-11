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
local Roact = require(Plugin.Roact)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local Constants = require(Plugin.Src.Util.Constants)

local TrackListEntry = Roact.PureComponent:extend("TrackListEntry")

function TrackListEntry:render()
	return withTheme(function(theme)
		local props = self.props
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
			PaddingLeft = UDim.new(0, Constants.INDENT_PADDING * indent)
		})

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, height),
			BorderSizePixel = 0,
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = backgroundColor and 0 or 1,
			LayoutOrder = layoutOrder,
		}, children)
	end)
end

return TrackListEntry