local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ExternalEventConnection = require(UIBloxRoot.Utility.ExternalEventConnection)
local RunService = game:GetService("RunService")

--[[
	This rotating gradient is applied to cursor selection image objects so that	the cursor outline
	is animated on platforms like xbox. The color of the animated cursor (as well as other properties
	like rotation speed) is defined in the style files LightTheme.lua and DarkTheme.lua

	Each individual cursor file uses this fragment to add the rotating gradient as a child.
		EG: RoundedRect.lua, SkinToneCircle.lua, etc
]]
local AnimatedGradient = Roact.Component:extend("AnimatedGradient")

function AnimatedGradient:init()
	self.rotation, self.updateRotation = Roact.createBinding(0)
end

function AnimatedGradient:render()
	return withStyle(function(style)
		return Roact.createFragment({
			GradientChild = Roact.createElement("UIGradient", {
				Rotation = self.rotation,
				Color = style.Theme.SelectionCursor.GradientColorSequence,
				Transparency = style.Theme.SelectionCursor.GradientTransparencySequence,
			}),
			RenderSteppedConnection = Roact.createElement(ExternalEventConnection, {
				event = RunService.RenderStepped,
				callback = function()
					self.updateRotation(self.rotation:getValue() + style.Theme.SelectionCursor.GradientRotationSpeed)
				end,
			})
		})
	end)
end

return AnimatedGradient