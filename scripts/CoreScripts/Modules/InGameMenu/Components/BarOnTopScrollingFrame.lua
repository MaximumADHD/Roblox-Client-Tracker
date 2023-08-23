local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)

local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local SCROLLBAR_THICKNESS = 8

local BarOnTopScrollingFrame = Roact.PureComponent:extend("BarOnTopScrollingFrame")

BarOnTopScrollingFrame.validateProps = t.strictInterface({
	Size = t.UDim2,
	Position = t.optional(t.UDim2),
	CanvasSize = t.UDim2,
	ScrollingEnabled = t.optional(t.boolean),
	[Roact.Children] = t.table,
	onCanvasPositionChanged = t.optional(t.callback),
	scrollingFrameRef = t.optional(t.table),
})

BarOnTopScrollingFrame.defaultProps = {
	ScrollingEnabled = true,
}

function BarOnTopScrollingFrame:init()
	self.state = {
		CanvasPosition = Vector2.new(0, 0),
	}
end

function BarOnTopScrollingFrame:render()
	return Roact.createElement("Frame", {
		Size = self.props.Size,
		Position = self.props.Position,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
	}, {
		DisplayScrollingFrame = Roact.createElement("ScrollingFrame", {
			CanvasPosition = self.state.CanvasPosition,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, SCROLLBAR_THICKNESS, 1, 0),
			CanvasSize = self.props.CanvasSize - UDim2.new(0, SCROLLBAR_THICKNESS, 0, 0),
			ScrollBarThickness = SCROLLBAR_THICKNESS,
			BorderSizePixel = 0,
			ZIndex = 2,
			Position = UDim2.new(1, -SCROLLBAR_THICKNESS, 0, 0),
			ScrollingEnabled = self.props.ScrollingEnabled,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			Selectable = false,
			[Roact.Ref] = self.props.scrollingFrameRef,
			[Roact.Change.CanvasPosition] = function(rbx)
				self:setState({
					CanvasPosition = rbx.CanvasPosition,
				})
				if self.props.onCanvasPositionChanged then
					self.props.onCanvasPositionChanged(rbx)
				end
			end,
		}),

		ContentsScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -SCROLLBAR_THICKNESS, 1, 0),
			CanvasSize = self.props.CanvasSize - UDim2.new(0, SCROLLBAR_THICKNESS, 0, 0),
			CanvasPosition = self.state.CanvasPosition,
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			ClipsDescendants = false,
			ScrollingEnabled = self.props.ScrollingEnabled,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			Selectable = false,
			[Roact.Change.CanvasPosition] = function(rbx)
				self:setState({
					CanvasPosition = rbx.CanvasPosition,
				})
			end,
		}, {
			Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, SCROLLBAR_THICKNESS, 1, 0),
			}, self.props[Roact.Children]),
		}),
	})
end

return BarOnTopScrollingFrame
