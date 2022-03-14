local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)

local InGameMenu = script.Parent.Parent
local GetFFlagInGameMenuControllerDevelopmentOnly = require(InGameMenu.Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local SCROLLBAR_THICKNESS = 8

local BarOnTopScrollingFrame = Roact.PureComponent:extend("BarOnTopScrollingFrame")

-- TODO: remove with FFlagInGameMenuController
local areScrollingFramesSelectable
if GetFFlagInGameMenuControllerDevelopmentOnly() then
	areScrollingFramesSelectable = false
end

BarOnTopScrollingFrame.validateProps = t.strictInterface({
	Size = t.UDim2,
	Position = t.optional(t.UDim2),
	CanvasSize = t.UDim2,
	ScrollingEnabled = t.optional(t.boolean),
	scrollBarOffset = not GetFFlagInGameMenuControllerDevelopmentOnly() and t.integer or nil,
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
			CanvasPosition = GetFFlagInGameMenuControllerDevelopmentOnly() and self.state.CanvasPosition or nil,
			BackgroundTransparency = 1,
			Size = GetFFlagInGameMenuControllerDevelopmentOnly() and UDim2.new(0, SCROLLBAR_THICKNESS, 1, 0) or UDim2.new(1, -self.props.scrollBarOffset, 1, 0),
			CanvasSize = self.props.CanvasSize - UDim2.new(0, GetFFlagInGameMenuControllerDevelopmentOnly() and SCROLLBAR_THICKNESS or self.props.scrollBarOffset, 0, 0),
			ScrollBarThickness = GetFFlagInGameMenuControllerDevelopmentOnly() and SCROLLBAR_THICKNESS or 8,
			BorderSizePixel = 0,
			ZIndex = 2,
			Position = GetFFlagInGameMenuControllerDevelopmentOnly() and UDim2.new(1, -SCROLLBAR_THICKNESS, 0, 0) or nil,
			ScrollingEnabled = self.props.ScrollingEnabled,
			ScrollingDirection = GetFFlagInGameMenuControllerDevelopmentOnly() and Enum.ScrollingDirection.Y or nil,
			Selectable = areScrollingFramesSelectable,
			[Roact.Change.CanvasPosition] = function(rbx)
				self:setState({
					CanvasPosition = rbx.CanvasPosition
				})
			end,
		}),

		ContentsScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			Size = GetFFlagInGameMenuControllerDevelopmentOnly() and UDim2.new(1, -SCROLLBAR_THICKNESS, 1, 0) or UDim2.new(1, -self.props.scrollBarOffset, 1, 0),
			CanvasSize = self.props.CanvasSize - UDim2.new(0, GetFFlagInGameMenuControllerDevelopmentOnly() and SCROLLBAR_THICKNESS or self.props.scrollBarOffset, 0, 0),
			CanvasPosition = self.state.CanvasPosition,
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			ClipsDescendants = false,
			ScrollingEnabled = GetFFlagInGameMenuControllerDevelopmentOnly() and self.props.ScrollingEnabled or false,
			ScrollingDirection = GetFFlagInGameMenuControllerDevelopmentOnly() and Enum.ScrollingDirection.Y or nil,
			Selectable = areScrollingFramesSelectable,
			[Roact.Change.CanvasPosition] = GetFFlagInGameMenuControllerDevelopmentOnly() and function(rbx)
				self:setState({
					CanvasPosition = rbx.CanvasPosition
				})
			end or nil,
		}, {
			Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, GetFFlagInGameMenuControllerDevelopmentOnly() and SCROLLBAR_THICKNESS or self.props.scrollBarOffset, 1, 0),
			}, self.props[Roact.Children]),
		}),
	})
end

return BarOnTopScrollingFrame