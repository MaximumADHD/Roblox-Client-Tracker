local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
local Knob = require(Foundation.Components.Knob)
local View = require(Foundation.Components.View)
local colorUtils = require(Foundation.Components.ColorPicker.colorUtils)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local Types = require(Foundation.Components.Types)
type CommonProps = Types.CommonProps

export type SVPickerProps = {
	hue: React.Binding<number>,
	saturation: React.Binding<number>,
	value: React.Binding<number>,
	onChanged: (saturation: number, value: number) -> (),
} & CommonProps

local function SVPicker(props: SVPickerProps)
	local hue, saturation, value = props.hue, props.saturation, props.value
	local onChanged = props.onChanged
	local tokens = useTokens()

	--selene: allow(roblox_internal_custom_color)
	local pureHueColor = hue:map(function(h)
		return Color3.fromHSV(h, 1, 1)
	end)

	local pickerRef = React.useRef(nil :: GuiObject?)
	local calculatePositionFromDrag = React.useCallback(function(dragPosition: Vector2)
		local picker = pickerRef.current
		if not picker then
			return
		end

		local newS, newV =
			colorUtils.calculateSVFromPosition(dragPosition, picker.AbsolutePosition, picker.AbsoluteSize)

		onChanged(newS, newV)
	end, { onChanged })

	local onDragStart = React.useCallback(function(_rbx, inputPosition: Vector2)
		calculatePositionFromDrag(inputPosition)
	end, { calculatePositionFromDrag })

	local onDragContinue = React.useCallback(function(_rbx, inputPosition: Vector2)
		calculatePositionFromDrag(inputPosition)
	end, { calculatePositionFromDrag })

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "size-full",
			ref = pickerRef,
			ClipsDescendants = true,
		}),
		{
			DragDetector = React.createElement("UIDragDetector", {
				DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
				[React.Event.DragStart] = onDragStart :: any,
				[React.Event.DragContinue] = onDragContinue :: any,
			}),
			Base = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = tokens.Color.Extended.White.White_100.Color3,
				ZIndex = 1,
				BorderSizePixel = 0,
			}),
			Saturation = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = pureHueColor,
				ZIndex = 2,
				BorderSizePixel = 0,
			}, {
				Gradient = React.createElement("UIGradient", {
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, 0),
					}),
				}),
			}),
			Value = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = tokens.Color.Extended.Black.Black_100.Color3,
				ZIndex = 3,
				BorderSizePixel = 0,
			}, {
				Gradient = React.createElement("UIGradient", {
					Rotation = 90,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, 0),
					}),
				}),
			}),
			Knob = React.createElement(Knob, {
				size = InputSize.Large,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = React.joinBindings({ saturation, value }):map(function(values)
					local s, v = values[1], values[2]
					return UDim2.fromScale(s, 1 - v)
				end),
				--selene: allow(roblox_internal_custom_color)
				style = React.joinBindings({ hue, saturation, value }):map(function(values)
					local h, s, v = values[1], values[2], values[3]
					return {
						Color3 = Color3.fromHSV(h, s, v),
						Transparency = 0,
					}
				end),
				stroke = {
					Color = tokens.Color.System.Contrast.Color3,
					Thickness = tokens.Stroke.Thicker,
					Transparency = tokens.Color.System.Contrast.Transparency,
				},
				hasShadow = true,
				ZIndex = 4,
			}),
		}
	)
end

return SVPicker
