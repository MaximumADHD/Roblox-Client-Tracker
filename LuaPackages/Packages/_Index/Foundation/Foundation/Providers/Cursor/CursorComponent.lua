local RunService = game:GetService("RunService")

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useTokens = require(Foundation.Providers.Style.useTokens)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local View = require(Foundation.Components.View)
local EventConnection = ReactUtils.EventConnection

local GRADIENT_ROTATION_SPEED = 2

type Props = {
	isVisible: boolean,
	cornerRadius: UDim,
	offset: number,
	borderWidth: number,
}

local CursorComponent = React.forwardRef(function(props: Props, ref: React.Ref<Frame>)
	local tokens = useTokens()
	local preferences = usePreferences()
	local reducedMotion = preferences.reducedMotion
	local colorSequence = ColorSequence.new({
		ColorSequenceKeypoint.new(0, tokens.Color.Selection.Start.Color3),
		ColorSequenceKeypoint.new(1, tokens.Color.Selection.End.Color3),
	})
	local transparencySequence = NumberSequence.new({
		NumberSequenceKeypoint.new(0, tokens.Color.Selection.Start.Transparency),
		NumberSequenceKeypoint.new(1, tokens.Color.Selection.End.Transparency),
	})
	local rotation, updateRotation = React.useBinding(0)
	local color, updateColor = React.useBinding(colorSequence)
	local transparency, updateTransparency = React.useBinding(transparencySequence)

	return React.createElement(View, {
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
		HeartbeatConnection = props.isVisible and React.createElement(EventConnection, {
			event = RunService.Heartbeat :: RBXScriptSignal,
			callback = function(step)
				-- TODO(UIBLOX-497): Normalize animation speed of heartbeat callback
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
