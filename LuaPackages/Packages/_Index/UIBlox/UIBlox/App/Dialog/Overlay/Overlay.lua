local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)
local Core = UIBlox.Core
local useStyle = require(Core.Style.useStyle)

local ReactOtter = require(Packages.ReactOtter)

type SpringOptions = ReactOtter.SpringOptions

export type GradientDirection = "top" | "topLeft" | "topRight" | "bottom" | "bottomLeft" | "bottomRight" | "left" | "right"

export type GradientDirectionMap = {
	[GradientDirection]: number,
}

export type OverlayProps = {
	-- ZIndex value of the Overlay
	ZIndex: number,
	-- Determine whether or not to show th gradient + overlay, or just the overlay.
	-- If showGradient is updated after the component mounts, the Overlay will animate the gradient transparency from 0 to 1.
	showGradient: boolean?,
	-- The gradientDirection refers to the area of the overlay that has the lowest transparency.
	-- For `gradientDirection = "topRight"`, the bottom left of the overlay will have `rgba = (0, 0, 0, 0.89)`
	-- and the top right of the overlay will have `rgba = (0, 0, 0, 0)`. The gradient directions rotate at 45 degree intervals.
	gradientDirection: GradientDirection,
}

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 3,
} :: SpringOptions

local GRADIENT_DIRECTION_MAP: GradientDirectionMap = {
	top = 270,
	topRight = 305,
	right = 0,
	bottomRight = 45,
	bottom = 90,
	bottomLeft = 135,
	left = 180,
	topLeft = 225,
}

local function Overlay(props: OverlayProps)
	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	local initialTransparency = if props.showGradient then 0 else 1
	local gradientTransparency, setGradientTransparency = ReactOtter.useAnimatedBinding(initialTransparency)

	React.useEffect(function()
		if props.showGradient == false then
			setGradientTransparency(ReactOtter.spring(1, SPRING_CONFIG))
		else
			setGradientTransparency(ReactOtter.spring(0, SPRING_CONFIG))
		end
	end, { props.showGradient })

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		ZIndex = props.ZIndex,
	}, {
		Overlay = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = theme.Overlay.Color,
			BackgroundTransparency = theme.Overlay.Transparency,
			ZIndex = 1,
		}),
		Gradient = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = gradientTransparency,
			ZIndex = 2,
		}, {
			UIGradient = React.createElement("UIGradient", {
				Rotation = GRADIENT_DIRECTION_MAP[props.gradientDirection],
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
					ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0),
					NumberSequenceKeypoint.new(1, 0.89),
				}),
			}),
		}),
	})
end

return Overlay
