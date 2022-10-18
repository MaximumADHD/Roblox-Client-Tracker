--!strict
--[[
	Draws a tangent control in the curve canvas. The end of a tangent control
	is a filled circle if the tangent is defined, and an empty circle if the
	tangent is automatic or unused (Constant/Linear interpolation).

	Properties:
		Auto: Whether this tangent is automatic or user-defined
		Length: Length of the tangent control
		Position: Position of the keyframe this tangent control is attached to
		Side: Whether this tangent is the left one, or right one
		Slope: Slope of the tangent
		ZIndex: Display index of this component
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Constants = require(Plugin.Src.Util.Constants)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local TangentControl = Roact.PureComponent:extend("TangentControl")

export type Props = {
	-- State/Context
	Stylizer: any,
	Theme: any,

	-- Properties
	Auto: boolean,
	Length: number,
	Position: Vector2,
	Side: string,
	Slope: number,
	ZIndex: number?,
}

function TangentControl:render(): (any)
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme

	local position = props.Position
	local slope = props.Slope
	local length = props.Length
	local controlSize = 9
	local left = props.Side == Constants.SLOPES.Left
	local auto = props.Auto
	local zIndex = props.ZIndex

	local angle = math.deg(math.atan2(slope, 1))

	return Roact.createElement("Frame", {
		Position = position,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0, length * 2, 0, 9),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Rotation = angle,
		ZIndex = zIndex,
	}, {
		-- We could add 180 degrees to the frame angle, but that causes issues
		-- (1 pixel offset) when tangents are aligned. We need to wait for the
		-- final Line UI component. At that time, we might want to move the
		-- line out of the rotating frame as well, and calculate the absolute
		-- positions of the control buttons based on the slope, rather than
		-- calling atan2.

		Line = Roact.createElement("Frame", {
			Position = UDim2.new(if left then 0 else 0.5, 0, 0.5, 0),
			Size = UDim2.new(0, length, 0, 1),
			BorderSizePixel = 0,
			BackgroundTransparency = 0,
			BackgroundColor3 = theme.curveTheme.tangentControlColor,
		}),
		Control = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, controlSize, 0, controlSize),
			AnchorPoint = Vector2.new(if left then 1 else 0, 0.5),
			Position = UDim2.new(if left then 0 else 1, 0, 0.5, 0),
			Image = if auto then theme.curveTheme.tangentAutoButton else theme.curveTheme.tangentDefinedButton,
			ImageColor3 = theme.curveTheme.tangentControlColor,

			ImageTransparency = 0,
			BackgroundTransparency = 1,
			AutoButtonColor = false,

			BorderSizePixel = 1,
			BorderColor3 = theme.curveTheme.tangentControlColor,
			BackgroundColor3 = theme.curveTheme.tangentControlColor,

			[Roact.Event.MouseButton2Click] = props.OnRightClick,
			[Roact.Event.InputBegan] = props.OnInputBegan,
			[Roact.Event.InputEnded] = props.OnInputEnded,
		}),
	})
end

TangentControl = withContext({
	Stylizer = ContextServices.Stylizer,
})(TangentControl)

return TangentControl
