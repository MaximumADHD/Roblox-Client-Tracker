--[[
	Wraps ProgressWidget, placing it anchored to the center of the top of the 3d view
	Props are forwarded to ProgressWidget
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ProgressWidget = require(Plugin.Src.Components.ProgressWidget)

local CoreGui = game:GetService("CoreGui")

return function(props)
	local widgetProps = Cryo.Dictionary.join({
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
	}, props)

	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		ProgressDialog = Roact.createElement("ScreenGui", {
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			ProgressWidget = Roact.createElement(ProgressWidget, widgetProps),
		}),
	})
end
