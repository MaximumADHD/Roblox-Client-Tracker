local RunService = game:GetService("RunService")

local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local useStyle = require(UIBloxRoot.Core.Style.useStyle)

local GRADIENT_ROTATION_SPEED = 2

--[[
	This rotating gradient is applied to image cursor object so that the cursor outline is animated.
	Each individual cursor file uses this fragment to add the rotating gradient as a child.
]]
local AnimatedGradient = function()
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

	React.useEffect(function()
		local connection = RunService.Heartbeat:Connect(function()
			-- TODO(UIBLOX-497): Normalize animation speed of heartbeat callback
			local r = rotation:getValue() + GRADIENT_ROTATION_SPEED
			local c = colorSequence
			local t = transparencySequence
			-- When ReducedMotion is enabled, instead of a rotating gradient,
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
		end)

		return function()
			connection:Disconnect()
		end
	end, { colorSequence, transparencySequence } :: { any })

	return React.createElement("UIGradient", {
		Rotation = rotation,
		Color = color,
		Transparency = transparency,
	})
end

return AnimatedGradient
