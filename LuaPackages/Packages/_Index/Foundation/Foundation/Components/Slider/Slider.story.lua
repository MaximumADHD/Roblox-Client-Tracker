local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local Button = require(Foundation.Components.Button)
local Icon = require(Foundation.Components.Icon)
local Knob = require(Foundation.Components.Knob)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Popover = require(Foundation.Components.Popover)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local SliderVariant = require(Foundation.Enums.SliderVariant)
local Visibility = require(Foundation.Enums.Visibility)

local Slider = require(Foundation.Components.Slider)

local SIZE_ORDER: { InputSize.InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

type VisualColumn = { name: string, variant: SliderVariant.SliderVariant, isDisabled: boolean }

local VISUAL_COLUMNS: { VisualColumn } = {
	{ name = "Standard", variant = SliderVariant.Standard, isDisabled = false },
	{ name = "Standard disabled", variant = SliderVariant.Standard, isDisabled = true },
	{ name = "Emphasis", variant = SliderVariant.Emphasis, isDisabled = false },
	{ name = "Emphasis disabled", variant = SliderVariant.Emphasis, isDisabled = true },
}

local VISUALS_LABEL_COLUMN_WIDTH = 80
local VISUALS_CELL_COLUMN_WIDTH = 200
local VISUALS_SLIDER_WIDTH = UDim.new(0, 180)

type Controls = {
	size: InputSize.InputSize,
	knobVisibility: Visibility.Visibility,
	isDisabled: boolean,
	isContained: boolean,
	variant: SliderVariant.SliderVariant,
	hasCustomKnob: boolean,
	rangeMin: number,
	rangeMax: number,
	step: number,
}

local function PlaygroundStory(props: { controls: Controls })
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
				name = IconName.Tilt,
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
end

local function HorizontalVisualsStory()
	local value = React.useBinding(0.5)

	return React.createElement(MatrixGrid, {
		labelColumnWidth = VISUALS_LABEL_COLUMN_WIDTH,
		columnHeaders = Dash.map(VISUAL_COLUMNS, function(column)
			return column.name
		end),
		cellColumnWidth = VISUALS_CELL_COLUMN_WIDTH,
		headerTextAlign = "left",
		cellAlign = "left",
		rowGap = "xxlarge",
		rows = Dash.map(SIZE_ORDER, function(size): MatrixGridRow
			return {
				label = matrixLabel(size :: string),
				cells = Dash.map(VISUAL_COLUMNS, function(column)
					return React.createElement(Slider, {
						value = value,
						size = size,
						width = VISUALS_SLIDER_WIDTH,
						variant = column.variant,
						isDisabled = column.isDisabled,
						knobVisibility = Visibility.Always,
					})
				end),
			}
		end),
	})
end

local function MediaTimelineStory()
	local value, setValue = React.useBinding(0.25)
	local isPlaying, setIsPlaying = React.useState(false)
	local wasPlaying = React.useRef(false)

	local onDragStarted = React.useCallback(function()
		if isPlaying then
			wasPlaying.current = true
		end
		setIsPlaying(false)
	end, { isPlaying })

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
		tag = "col gap-small size-full-0 auto-y",
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
end

local function CustomStory()
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
		tag = "size-full-0 auto-y stroke-standard stroke-emphasis radius-circle",
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
end

local POPOVER_SLIDER_WIDTH = UDim.new(0, 240)

local function PopoverStory()
	local isOpen, setIsOpen = React.useState(true)
	local value, setValue = React.useBinding(0.5)

	return React.createElement(View, {
		tag = "row align-x-center align-y-center size-full-0 auto-y",
	}, {
		Popover = React.createElement(Popover.Root, {
			isOpen = isOpen,
		}, {
			Anchor = React.createElement(
				Popover.Anchor,
				nil,
				React.createElement(Button, {
					text = if isOpen then "Close popover" else "Open popover",
					onActivated = function()
						setIsOpen(not isOpen)
					end,
				})
			),
			Content = React.createElement(
				Popover.Content,
				{
					side = PopoverSide.Bottom,
					align = PopoverAlign.Start,
					onPressedOutside = function()
						setIsOpen(false)
					end,
				},
				React.createElement(View, {
					tag = "col gap-medium auto-xy padding-medium",
				}, {
					Title = React.createElement(Text, {
						Text = "Slider in Popover",
						tag = "auto-xy text-title-medium content-emphasis",
						LayoutOrder = 1,
					}),
					Slider = React.createElement(Slider, {
						value = value,
						onValueChanged = setValue,
						width = POPOVER_SLIDER_WIDTH,
						knobVisibility = Visibility.Always,
						LayoutOrder = 2,
					}),
				})
			),
		}),
	})
end

local function RotatedStory()
	local value, setValue = React.useBinding(0.5)

	local sliders = {}
	local numSliders = 7
	for i = 0, 360, 360 / numSliders do
		sliders[`Slider_{i}`] = React.createElement(View, {
			Size = UDim2.fromScale(1 / numSliders, 0),
			LayoutOrder = i,
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
		tag = "row align-y-center size-full-3000",
	}, sliders)
end

return {
	summary = `If dragging does not work make sure to deselect any tools in Studio! By default the "Select" tool is selected and will interfere with dragging behavior`,
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Horizontal visuals",
			summary = "Standard and Emphasis sliders, enabled and disabled, across every size",
			story = HorizontalVisualsStory,
		},
		{
			name = "Media timeline",
			summary = "Press the Play button to simulate media playback, then click and drag to seek around the timeline",
			story = MediaTimelineStory,
		},
		{
			name = "Custom",
			summary = "Color slider with gradient background",
			story = CustomStory,
		},
		{
			name = "Rotated",
			summary = "Sliders in containers rotated",
			story = RotatedStory,
		},
		{
			name = "Popover",
			summary = "Slider mounted inside a Popover",
			story = PopoverStory,
		},
	},
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
