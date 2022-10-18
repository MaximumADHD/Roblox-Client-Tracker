local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Colors = require(Plugin.Packages.DraggerFramework.Utility.Colors)

-- This can't be a PureComponent, since where this shows up on screen depends
-- on the global state of where the camera is pointed.
local PivotRing = Roact.Component:extend("PivotRing")

local PIVOT_HOVER_IMAGE_SIZE = 32
local PIVOT_HITTEST_RADIUS = 15

PivotRing.HitTestRadius = PIVOT_HITTEST_RADIUS

function PivotRing:render()
	local props = self.props
	local context = props.DraggerContext
	local image: string
	local tint: Color3
	if props.Hovered then
		image = "rbxasset://Textures/PivotEditor/HoveredPivot.png"
		tint = context:getSelectionBoxColor(props.IsActive)
	else
		image = "rbxasset://Textures/PivotEditor/SelectedPivot.png"
		tint = Colors.WHITE
	end

	local screenPosition, onScreen = context:worldToViewportPoint(props.Pivot.Position)
	if onScreen then
		return Roact.createElement(Roact.Portal, {
			target = context:getGuiParent(),
		}, {
			PivotHoverHighlight = Roact.createElement("ScreenGui", {}, {
				PivotHoverImage = Roact.createElement("ImageLabel", {
					Image = image,
					ImageColor3 = tint,
					Size = UDim2.new(0, PIVOT_HOVER_IMAGE_SIZE, 0, PIVOT_HOVER_IMAGE_SIZE),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0, screenPosition.X + 0.5, 0, screenPosition.Y + 0.5),
					BackgroundTransparency = 1,
				}),
			}),
		})
	else
		return nil
	end
end

return PivotRing
