local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local BarOnTopScrollingFrame = Roact.PureComponent:extend("BarOnTopScrollingFrame")

BarOnTopScrollingFrame.validateProps = t.strictInterface({
	Size = t.UDim2,
	Position = t.optional(t.UDim2),
	CanvasSize = t.UDim2,
	scrollBarOffset = t.integer,
	ScrollingEnabled = t.optional(t.boolean),

	[Roact.Children] = t.table,
})

BarOnTopScrollingFrame.defaultProps = {
	ScrollingEnabled = true,
}

function BarOnTopScrollingFrame:init()
	self.state = {
		canvasPosition = Vector2.new(0, 0),
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
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -self.props.scrollBarOffset, 1, 0),
			CanvasSize = self.props.CanvasSize - UDim2.new(0, self.props.scrollBarOffset, 0, 0),
			ScrollBarThickness = 8,
			BorderSizePixel = 0,
			ZIndex = 2,
			ScrollingEnabled = self.props.ScrollingEnabled,

			[Roact.Change.CanvasPosition] = function(rbx)
				self:setState({
					CanvasPosition = rbx.CanvasPosition
				})
			end,
		}),

		ContentsScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -self.props.scrollBarOffset, 1, 0),
			CanvasSize = self.props.CanvasSize - UDim2.new(0, self.props.scrollBarOffset, 0, 0),
			CanvasPosition = self.state.CanvasPosition,
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			ClipsDescendants = false,
			ScrollingEnabled = false,
		}, {
			Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, self.props.scrollBarOffset, 1, 0),
			}, self.props[Roact.Children]),
		}),
	})
end

return BarOnTopScrollingFrame