local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Icon = require(Foundation.Components.Icon)
local Knob = require(Foundation.Components.Knob)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local SliderVariant = require(Foundation.Enums.SliderVariant)
local Visibility = require(Foundation.Enums.Visibility)

local Slider = require(Foundation.Components.Slider)

return {
	summary = `If dragging does not work make sure to deselect any tools in Studio! By default the "Select" tool is selected and will interfere with dragging behavior`,
	stories = {
		{
			name = "Configurable",
			summary = "Basic configurable slider",
			story = function(props)
				local value, setValue = React.useBinding(0.5)

				return React.createElement(Slider, {
					value = value,
					range = NumberRange.new(props.controls.rangeMin, props.controls.rangeMax),
					size = props.controls.size,
					knobVisibility = props.controls.knobVisibility,
					variant = props.controls.variant,
					isDisabled = props.controls.isDisabled,
					isContained = props.controls.isContained,
					step = props.controls.step,
					onValueChanged = setValue,
					knob = if props.controls.hasCustomKnob
						then React.createElement(Icon, {
							name = "icons/graphic/logomark-gradient_xlarge",
							size = IconSize.Medium,
						})
						else nil,
					onDragStarted = function()
						print("Drag started. Previous value:", value:getValue())
					end,
					onDragEnded = function()
						print("Drag ended. Final value:", value:getValue())
					end,
				})
			end,
		},
		{
			name = "Media timeline",
			summary = "Press the Play button to simulate media playback, then click and drag to seek around the timeline",
			story = function()
				local value, setValue = React.useBinding(0.25)
				local isPlaying, setIsPlaying = React.useState(false)
				local wasPlaying = React.useRef(false)

				local onDragStarted = React.useCallback(function()
					if isPlaying then
						wasPlaying.current = true
					end
					setIsPlaying(false)
				end, { isPlaying } :: { unknown })

				local onDragEnded = React.useCallback(function()
					if wasPlaying.current then
						setIsPlaying(true)
					end
					wasPlaying.current = false
				end, {})

				local onTogglePlayback = React.useCallback(function()
					setIsPlaying(function(prev)
						return not prev
					end)
				end, {})

				React.useEffect(function(): (() -> ())?
					if isPlaying then
						local isRunning = true

						task.spawn(function()
							while isRunning do
								setValue(value:getValue() + 1 / 600)
								task.wait(1 / 16)
							end
						end)

						return function()
							isRunning = false
						end
					end

					return nil
				end, { isPlaying })

				return React.createElement(View, {
					tag = "size-full-0 auto-y col gap-small",
				}, {
					Slider = React.createElement(Slider, {
						value = value,
						size = InputSize.XSmall,
						knobVisibility = Visibility.Auto,
						variant = SliderVariant.Standard,
						onValueChanged = setValue,
						onDragStarted = onDragStarted,
						onDragEnded = onDragEnded,
						LayoutOrder = 1,
					}),

					Playback = React.createElement(Button, {
						text = if isPlaying then "Pause" else "Play",
						onActivated = onTogglePlayback,
						LayoutOrder = 2,
					}),
				})
			end,
		},
		{
			name = "Custom",
			summary = "Color slider with gradient background",
			story = function()
				local tokens = useTokens()
				local value, setValue = React.useBinding(0.5)
				local startColor = tokens.Color.Extended.Blue.Blue_1400
				local endColor = tokens.Color.Extended.Blue.Blue_100

				-- selene: allow(shadowing)
				local knobStyle = value:map(function(value)
					return {
						Color3 = startColor.Color3:Lerp(endColor.Color3, value),
						-- selene: allow(incorrect_standard_library_use)
						Transparency = math.lerp(startColor.Transparency, endColor.Transparency, value),
					}
				end)

				return React.createElement(View, {
					tag = "auto-y size-full-0 radius-circle stroke-standard stroke-emphasis",
					backgroundStyle = tokens.Color.Extended.White.White_100,
				}, {
					Gradient = React.createElement("UIGradient", {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, startColor.Color3),
							ColorSequenceKeypoint.new(1, endColor.Color3),
						}),
					}),
					ColorSlider = React.createElement(Slider, {
						value = value,
						size = InputSize.Medium,
						variant = SliderVariant.Utility,
						isContained = true,
						knob = React.createElement(Knob, {
							size = InputSize.Large,
							style = knobStyle,
							stroke = {
								Color = tokens.Color.System.Neutral.Color3,
								Transparency = tokens.Color.System.Neutral.Transparency,
								Thickness = math.round(tokens.Stroke.Thick),
							},
							hasShadow = true,
						}),
						knobVisibility = Visibility.Always,
						onValueChanged = setValue,
						width = UDim.new(1, 0),
					}),
				})
			end,
		},
		{
			name = "Rotated",
			summary = "Sliders in containers rotated",
			story = function()
				local value, setValue = React.useBinding(0.5)

				local sliders = {}
				local numSliders = 7
				for i = 0, 360, 360 / numSliders do
					sliders[`Slider_{i}`] = React.createElement(View, {
						Size = UDim2.fromScale(1 / numSliders, 0),
					}, {
						Folder = React.createElement("Folder", {}, {
							React.createElement(View, {
								tag = "size-full",
								Rotation = i,
							}, {
								Slider = React.createElement(Slider, {
									value = value,
									onValueChanged = setValue,
								}),
							}),
						}),
					}) :: React.ReactNode
				end

				return React.createElement(View, {
					tag = "size-full-3000 row align-y-center",
				}, sliders)
			end,
		},
	} :: { unknown },
	controls = {
		size = Dash.values(InputSize),
		knobVisibility = Dash.values(Visibility),
		isDisabled = false,
		isContained = false,
		variant = Dash.values(SliderVariant),
		hasCustomKnob = false,
		rangeMin = -50,
		rangeMax = 100,
		step = 0,
	},
}
