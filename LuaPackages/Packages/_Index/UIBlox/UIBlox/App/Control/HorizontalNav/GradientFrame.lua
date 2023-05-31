--!nocheck
--[[
	Frame used for showing gradients on the left and right of a scrolling list.

	No rotation is used to create the gradients because that would prevent clipping
	from working.
]]
local Control = script.Parent.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local React = require(Packages.React)
local StyleTypes = require(App.Style.StyleTypes)
local useStyle = require(Core.Style.useStyle)

local GRADIENT_SIZE = 50

type ColorWithTransparency = typeof(StyleTypes.Theme.BackgroundDefault)

export type Props = {
	height: number,
	frameRef: React.Ref<any>?,
	gradientStyle: ColorWithTransparency?,
	ZIndex: number?,
}

local function GradientFrame(props: Props)
	local frameRef = props.frameRef
	local gradientStyle = props.gradientStyle
	local height = props.height
	local ZIndex = props.ZIndex

	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	local gradientColor = gradientStyle and gradientStyle.Color or theme.BackgroundDefault.Color
	local gradientTransparency = gradientStyle and gradientStyle.Transparency or theme.BackgroundDefault.Transparency

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = ZIndex,
		ref = frameRef,
	}, {
		Left = React.createElement("Frame", {
			BackgroundTransparency = gradientTransparency,
			BackgroundColor3 = gradientColor,
			Size = UDim2.new(0, GRADIENT_SIZE, 0, height),
		}, {
			Gradient = React.createElement("UIGradient", {
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0),
					NumberSequenceKeypoint.new(1, 1),
				}),
			}),
		}),

		Right = React.createElement("Frame", {
			BackgroundTransparency = gradientTransparency,
			BackgroundColor3 = gradientColor,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.fromScale(1, 0),
			Size = UDim2.new(0, GRADIENT_SIZE, 0, height),
		}, {
			Gradient = React.createElement("UIGradient", {
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(1, 0),
				}),
			}),
		}),
	})
end

return GradientFrame
