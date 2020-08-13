--[[
	Creates a background square that shows up behind buttons when hovered.
]]
local Button = script.Parent
local Core = Button.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local withStyle = require(Core.Style.withStyle)

local CORNER_RADIUS = 8

local HoverButtonBackground = Roact.PureComponent:extend("HoverButtonBackground")

function HoverButtonBackground:render()
	return withStyle(function(style)
		local backgroundHover = style.Theme.BackgroundOnHover

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = backgroundHover.Color,
			BackgroundTransparency = backgroundHover.Transparency,
		}, {
			corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, CORNER_RADIUS),
			}),
		})
	end)
end

return HoverButtonBackground
