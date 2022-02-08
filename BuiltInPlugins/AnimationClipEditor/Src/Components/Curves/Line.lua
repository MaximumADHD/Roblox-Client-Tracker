--[[
	Draws a line in the animation editor.

	TODO: Properties
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local CurveSegment = Roact.PureComponent:extend("CurveSegment")

function CurveSegment:render()
	local props = self.props

	self.position = UDim2.new(0, (props.x0 + props.x1) / 2, 0, (props.y0 + props.y1) / 2)
	local length = math.sqrt((props.x1 - props.x0) * (props.x1 - props.x0) +
		(props.y1 - props.y0) * (props.y1 - props.y0))

	self.size = UDim2.new(0, length, 0, props.width or 1)
	self.angle = math.atan2(props.y1 - props.y0, props.x1 - props.x0)

	return Roact.createElement("Frame", {
		Position = self.position,
		Size = self.size,
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = .5,
		BackgroundColor3 = props.color,
		BorderSizePixel = 0,
		BorderColor3 = props.color,
		Rotation = math.deg(self.angle)
	})
end

return CurveSegment
