--!strict
--[[
	Draws a cubic spline in the curve canvas.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local Line = require(Plugin.Src.Components.Curves.Line)

local GetFFlagClampFacsCurves = require(Plugin.LuaFlags.GetFFlagClampFacsCurves)

local Cubic = Roact.PureComponent:extend("Cubic")

export type Props = {
	A: Vector2,
	ASlope: number,
	B: Vector2,
	BSlope: number,
	Width: number?,
	Color: Color3,
	Transparency: number?,
	FrameWidth: number,
	ZIndex: number?,
	MinClamp: number?,
	MaxClamp: number?,
}

function Cubic:render(): (any)
	local props = self.props
	local children = {}
	local a = props.A
	local b = props.B

	local prevX, prevY

	for curX = a.X, b.X, Constants.CURVE_INTERVAL do
		-- This duplicates the code used in KeyframeUtils for GetValue, but ultimately this component will be replaced by a
		-- built-in curve anyway.
		local t = (curX - a.X) / (b.X - a.X)
		local t2 = t * t
		local h00 = t2 * (2 * t - 3) + 1
		local h10 = ((t - 2) * t + 1) * t
		local h01 = t2 * (3 - 2 * t)
		local h11 = t2 * (t - 1)

		local curY = h00 * a.Y
			+ h10 * (b.X - a.X) * props.ASlope
			+ h01 * b.Y
			+ h11 * (b.X - a.X) * props.BSlope

		if GetFFlagClampFacsCurves() and self.props.MinClamp and self.props.MaxClamp then
			curY = math.clamp(curY, self.props.MinClamp, self.props.MaxClamp)
		end

		if prevX and prevX < props.FrameWidth and curX > 0 then
			table.insert(children, Roact.createElement(Line, {
				A = Vector2.new(prevX, prevY),
				B = Vector2.new(curX, curY),
				Color = props.Color,
				Width = props.Width,
				Transparency = props.Transparency,
				ZIndex = props.ZIndex,
			}))
		end

		prevX, prevY = curX, curY
	end

	table.insert(children, Roact.createElement(Line, {
		A = if prevX then Vector2.new(prevX, prevY) else a,
		B = b,
		Color = props.Color,
		Width = props.Width,
		Transparency = props.Transparency,
		ZIndex = props.ZIndex,
	}))

	return Roact.createElement("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = props.ZIndex
	}, children)
end

return Cubic
