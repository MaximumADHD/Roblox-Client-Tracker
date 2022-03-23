--!strict
--[[
	Draws a line in the curve canvas. Coordinates are in pixels.

	Properties:
		A: Starting point for the line
		B: Ending point for the line
		Width: Width of the line, in pixels
		Color: Color of the line
		Transparency: Transparency of the line
		ZIndex: Display index of the line
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Line = Roact.PureComponent:extend("Line")

export type Props = {
	A: Vector2,
	B: Vector2,
	Width: number?,
	Color: Color3,
	Transparency: number?,
	ZIndex: number?
}

function Line:render(): (any)
	local props = self.props
	local a = props.A
	local b = props.B

	-- Swap ends of the line so that a is always < b.
	-- This avoids a 180 deg rotation that results in the frame being
	-- rendered one pixel too high and/or to the left
	if a.X > b.X then
		a, b = b, a
	end

	local position = UDim2.new(0, (a.X + b.X) / 2, 0, (a.Y + b.Y) / 2)
	local length = math.sqrt((b.X - a.X) * (b.X - a.X) + (b.Y - a.Y) * (b.Y - a.Y))

	local size = UDim2.new(0, length+1, 0, props.Width or 1)
	local angle = math.atan2(b.Y - a.Y, b.X - a.X)

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = props.Transparency,
		BackgroundColor3 = props.Color,
		BorderSizePixel = 0,
		BorderColor3 = props.Color,
		Rotation = math.deg(angle),
		ZIndex = props.ZIndex,
	})
end

return Line
