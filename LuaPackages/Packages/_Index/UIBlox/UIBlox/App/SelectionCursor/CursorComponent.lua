local RunService = game:GetService("RunService")

local UIBloxRoot = script.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local useStyle = require(UIBloxRoot.Core.Style.useStyle)
local ExternalEventConnection = require(UIBloxRoot.Utility.ExternalEventConnection)

local GRADIENT_ROTATION_SPEED = 2

export type Props = {
	isVisible: boolean,
	cornerRadius: UDim,
	offset: number,
	borderWidth: number,
}

local CursorComponent = React.forwardRef(function(props: Props, ref: React.Ref<Frame>)
	local style = useStyle()
	local tokens = style.Tokens.Component.SelectionCursor
	local reducedMotion = style.Settings.ReducedMotion
	local colorSequence = ColorSequence.new({
		ColorSequenceKeypoint.new(0, tokens.Gradient.Start.Color3),
		ColorSequenceKeypoint.new(1, tokens.Gradient.End.Color3),
	})
	local transparencySequence = NumberSequence.new({
		NumberSequenceKeypoint.new(0, tokens.Gradient.Start.Transparency),
		NumberSequenceKeypoint.new(1, tokens.Gradient.End.Transparency),
	})
	local rotation, updateRotation = React.useBinding(0)
	local color, updateColor = React.useBinding(colorSequence)
	local transparency, updateTransparency = React.useBinding(transparencySequence)

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(-props.offset, -props.offset),
		Size = UDim2.new(1, props.offset * 2, 1, props.offset * 2),
		ref = ref,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = props.cornerRadius,
		}),
		UIStroke = React.createElement("UIStroke", {
			Color = Color3.new(1, 1, 1),
			Transparency = 0,
			Thickness = props.borderWidth,
		}, {
			UIGradient = React.createElement("UIGradient", {
				Rotation = rotation,
				Color = color,
				Transparency = transparency,
			}),
		}),
		HeartbeatConnection = props.isVisible and React.createElement(ExternalEventConnection, {
			event = RunService.Heartbeat,
			callback = function(step)
				local r = rotation:getValue() + GRADIENT_ROTATION_SPEED
				local c = colorSequence
				local t = transparencySequence

				-- When reducedMotion is enabled, instead of a rotating gradient,
				-- the border fades between the first and last color in the sequence.
				if reducedMotion then
					local position = (math.sin(math.rad(r)) + 1) / 2

					local c0 = c.Keypoints[1].Value
					local c1 = c.Keypoints[#c.Keypoints].Value
					c = ColorSequence.new(c0:Lerp(c1, position))

					local t0 = t.Keypoints[1].Value
					local t1 = t.Keypoints[#t.Keypoints].Value
					t = NumberSequence.new(t0 + (t1 - t0) * position)
				end

				updateRotation(r)
				updateColor(c)
				updateTransparency(t)
			end,
		}),
	})
end)

return React.memo(CursorComponent)
