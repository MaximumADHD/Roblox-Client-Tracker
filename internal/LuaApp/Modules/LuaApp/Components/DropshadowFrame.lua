local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local DropshadowFrame = Roact.Component:extend("DropshadowFrame")

local SHADOW_SPREAD_TOP = 5
local SHADOW_SPREAD_BOTTOM = 6
local SHADOW_SPREAD_LEFT = 6
local SHADOW_SPREAD_RIGHT = 6

function DropshadowFrame:render()
	local size = self.props.Size
	local position = self.props.Position
	local layoutOrder = self.props.LayoutOrder
	local children = self.props[Roact.Children]
	local backgroundColor3 = self.props.BackgroundColor3

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
	}, {
		Shadow = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, SHADOW_SPREAD_LEFT + SHADOW_SPREAD_RIGHT, 1, SHADOW_SPREAD_TOP + SHADOW_SPREAD_BOTTOM),
			Position = UDim2.new(0, -SHADOW_SPREAD_LEFT, 0, -SHADOW_SPREAD_TOP),
			Image = "rbxasset://textures/ui/LuaApp/9-slice/gr-shadow.png",
			ScaleType = "Slice",
			SliceCenter = Rect.new(11, 11, 12, 12),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			MainFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, -(SHADOW_SPREAD_LEFT + SHADOW_SPREAD_RIGHT), 1, -(SHADOW_SPREAD_TOP + SHADOW_SPREAD_BOTTOM)),
				Position = UDim2.new(0, SHADOW_SPREAD_LEFT, 0, SHADOW_SPREAD_TOP),
				BackgroundColor3 = backgroundColor3,
				BorderSizePixel = 0,
			}, children),
		}),
	})
end

return DropshadowFrame