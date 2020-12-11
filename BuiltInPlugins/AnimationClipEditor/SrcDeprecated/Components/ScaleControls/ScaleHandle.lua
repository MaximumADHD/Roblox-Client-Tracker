--[[
	Component that the user can click/drag on in order to scale keyframes in the
	animation editor.

	Properties:
		UDim2 Position = position of the handle
		UDim2 Size = size of the handle
		int ZIndex = display order of this frame

		function OnScaleHandleDragStart(frame) = callback for when user begins to drag a scale handle
		function OnScaleHandleDragMoved(input) = callback for when user is actively dragging a scale handle
		function OnScaleHandleDragEnded() = callback for when user has finished dragging a scale handle
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local DragListenerArea = require(Plugin.SrcDeprecated.Components.DragListenerArea)

local ScaleHandle = Roact.PureComponent:extend("ScaleHandle")

function ScaleHandle:render()
	return withTheme(function(theme)
		local props = self.props

		local size = props.Size
		local position = props.Position
		local zIndex = props.ZIndex

		local onScaleHandleDragStart = props.OnScaleHandleDragStart
		local onScaleHandleDragMoved = props.OnScaleHandleDragMoved
		local onScaleHandleDragEnd = props.OnScaleHandleDragEnd

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = size,
			Position = position,
			ZIndex = zIndex,
		}, {
			DragListenerArea = Roact.createElement(DragListenerArea, {
				Cursor = "SizeEW",
				OnDragBegan = onScaleHandleDragStart,
				OnDragMoved = onScaleHandleDragMoved,
				OnDragEnded = onScaleHandleDragEnd,
			}),
			Bar = Roact.createElement("Frame", {
				BackgroundColor3 = theme.scaleControlsTheme.mainColor,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 2, 1, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				AnchorPoint = Vector2.new(0.5, 0),
				ZIndex = zIndex,
			}),
		})
	end)
end

return ScaleHandle