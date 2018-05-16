local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local SHADOW_SPREAD_TOP = 5
local SHADOW_SPREAD_BOTTOM = 6
local SHADOW_SPREAD_LEFT = 6
local SHADOW_SPREAD_RIGHT = 6
local DEFAULT_ICON_SCALE = 1
local SHADOW_SLICE_CENTER = Rect.new(11, 11, 12, 12)

local function DropshadowFrame(props)
	local anchorPoint = props.AnchorPoint
	local backgroundColor3 = props.BackgroundColor3
	local children = props[Roact.Children]
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size

	local buttonScale = props.buttonScale or DEFAULT_ICON_SCALE
	local shadowSpreadTop = SHADOW_SPREAD_TOP * buttonScale
	local shadowSpreadBottom = SHADOW_SPREAD_BOTTOM * buttonScale
	local shadowSpreadLeft = SHADOW_SPREAD_LEFT * buttonScale
	local shadowSpreadRight = SHADOW_SPREAD_RIGHT * buttonScale

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		ScaledFrame = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(buttonScale, 0, buttonScale, 0),
		}, {
			Shadow = Roact.createElement("ImageLabel", {
				Size = UDim2.new(1, shadowSpreadLeft + shadowSpreadRight, 1, shadowSpreadTop + shadowSpreadBottom),
				Position = UDim2.new(0, -shadowSpreadLeft, 0, -shadowSpreadTop),
				Image = "rbxasset://textures/ui/LuaApp/9-slice/gr-shadow.png",
				ScaleType = "Slice",
				SliceCenter = SHADOW_SLICE_CENTER,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				MainFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, -(shadowSpreadLeft + shadowSpreadRight), 1, -(shadowSpreadTop + shadowSpreadBottom)),
					Position = UDim2.new(0, shadowSpreadLeft, 0, shadowSpreadTop),
					BackgroundColor3 = backgroundColor3,
					BorderSizePixel = 0,
				}, children),
			}),
		})
	})
end

return DropshadowFrame