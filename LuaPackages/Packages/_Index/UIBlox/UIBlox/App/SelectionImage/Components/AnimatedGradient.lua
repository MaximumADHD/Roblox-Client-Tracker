--!nonstrict
local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local ReactUtils = require(Packages.ReactUtils)
local EventConnection = ReactUtils.EventConnection

local useStyle = require(UIBloxRoot.Core.Style.useStyle)

local RunService = game:GetService("RunService")

--[[
	This rotating gradient is applied to cursor selection image objects so that	the cursor outline
	is animated on platforms like xbox. The color of the animated cursor (as well as other properties
	like rotation speed) is defined in the style files LightTheme.lua and DarkTheme.lua

	Each individual cursor file uses this fragment to add the rotating gradient as a child.
		EG: RoundedRect.lua, SkinToneCircle.lua, etc
]]
return function()
	local style = useStyle()
	local selectionCursor = style.Theme.SelectionCursor
	local settings = style.Settings

	local rotation, updateRotation = React.useBinding(0)
	local color, updateColor = React.useBinding(selectionCursor.GradientColorSequence)
	local transparency, updateTransparency = React.useBinding(selectionCursor.GradientTransparencySequence)

	return React.createElement(React.Fragment, {}, {
		GradientChild = React.createElement("UIGradient", {
			Rotation = rotation,
			Color = color,
			Transparency = transparency,
		}),
		RenderSteppedConnection = React.createElement(EventConnection, {
			event = RunService.RenderStepped,
			callback = function()
				local rotation = rotation:getValue() + selectionCursor.GradientRotationSpeed
				local color = selectionCursor.GradientColorSequence
				local transparency = selectionCursor.GradientTransparencySequence

				-- When ReducedMotion is enabled, instead of a rotating gradient,
				-- the border fades between the first and last color in the sequence.
				if settings.ReducedMotion then
					local position = (math.sin(math.rad(rotation)) + 1) / 2

					local c0 = color.Keypoints[1].Value
					local c1 = color.Keypoints[#color.Keypoints].Value
					color = ColorSequence.new(c0:lerp(c1, position))

					local t0 = transparency.Keypoints[1].Value
					local t1 = transparency.Keypoints[#transparency.Keypoints].Value
					transparency = NumberSequence.new(t0 + (t1 - t0) * position)
				end

				updateRotation(rotation)
				updateColor(color)
				updateTransparency(transparency)
			end,
		}),
	})
end
