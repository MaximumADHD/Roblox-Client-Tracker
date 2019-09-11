--[[
	Represents the border between the TrackList and the DopeSheet.
	The user can click and drag this border to resize the TrackList.

	Props:
		function OnDragMoved(input) = A callback for when the user is dragging
			this component in order to resize the track list.
]]

local HITBOX_WIDTH = 5

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local DragListenerArea = require(Plugin.Src.Components.DragListenerArea)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local TrackListBorder = Roact.PureComponent:extend("TrackListBorder")

function TrackListBorder:render()
	return withTheme(function(theme)
		local props = self.props

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 2, 1, 0),
			LayoutOrder = 1,
			BackgroundColor3 = theme.borderColor,
			BorderSizePixel = 0,
			ZIndex = 2,
		}, {
			DragArea = Roact.createElement(DragListenerArea, {
				AnchorPoint = Vector2.new(1, 0),
				Size = UDim2.new(0, HITBOX_WIDTH, 1, 0),
				ZIndex = 2,
				Cursor = "SplitEW",

				OnDragMoved = props.OnDragMoved,
			}),
		})
	end)
end

return TrackListBorder