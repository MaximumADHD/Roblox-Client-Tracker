local IABottomBarFolder = script.Parent
local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local useStyle = require(UIBlox.Core.Style.useStyle)
local withAnimation = require(UIBlox.Core.Animation.withAnimation)
local Consts = require(IABottomBarFolder.Constants)

local function Ripple(item, rippleState) -- ripple component
	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	return withAnimation({
		rippleSize = rippleState.Size,
		rippleTransparency = rippleState.Transparency,
	}, function(values)
		return item.isRippled
			and Roact.createElement("Frame", {
				Position = UDim2.fromScale(0.5, (Consts.ITEM_SIZE_X / 2) / Consts.ITEM_SIZE_Y),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.fromOffset(values.rippleSize, values.rippleSize),
				ZIndex = 1,
				BackgroundTransparency = 1,
			}, {
				Corner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, Consts.NAVBAR_CORNER_RADIUS),
				}),
				Stroke = Roact.createElement("UIStroke", {
					Color = theme.SelectionCursor.Color,
					Thickness = 2,
					Transparency = values.rippleTransparency,
				}, {
					Gradient = Roact.createElement("UIGradient", {
						Color = theme.SelectionCursor.GradientColorSequence,
						Transparency = theme.SelectionCursor.GradientTransparencySequence,
						Rotation = 50,
					}),
				}),
			})
	end)
end

return Ripple
