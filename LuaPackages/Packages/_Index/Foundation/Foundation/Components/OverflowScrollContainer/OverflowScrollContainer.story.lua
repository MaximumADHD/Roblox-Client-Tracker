local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
local OverflowScrollContainer = require(script.Parent)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type InputSize = InputSize.InputSize

type StoryProps = {
	controls: {
		size: InputSize,
		forceHovered: boolean,
		forceScrimsVisible: boolean,
		preferredInput: Enum.PreferredInput,
	},
}

local INPUT_SIZES: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local DEFAULT_ROW_TAG = "size-2400-1000"

type SampleProps = {
	size: InputSize,
	rowTag: string?,
	forceHovered: boolean?,
	forceScrimsVisible: boolean?,
	preferredInput: Enum.PreferredInput?,
	LayoutOrder: number?,
}

local function Sample(props: SampleProps)
	local tokens = useTokens()

	local children: { [string]: React.ReactNode } = {}
	for i = 1, 20 do
		children[`Child{i}`] = React.createElement(View, {
			LayoutOrder = i,
			tag = props.rowTag or DEFAULT_ROW_TAG,
			backgroundStyle = tokens.Inverse.Surface.Surface_0,
		})
	end

	return React.createElement(OverflowScrollContainer, {
		LayoutOrder = props.LayoutOrder,
		size = props.size,
		forceHovered = props.forceHovered,
		forceScrimsVisible = props.forceScrimsVisible,
		forcePreferredInput = props.preferredInput,
	}, {
		Content = React.createElement(View, {
			tag = "row gap-small auto-xy",
		}, children),
	})
end

local function PlaygroundStory(props: StoryProps)
	return React.createElement(Sample, {
		size = props.controls.size,
		forceHovered = props.controls.forceHovered,
		forceScrimsVisible = props.controls.forceScrimsVisible,
		preferredInput = props.controls.preferredInput,
	})
end

local SCRIM_STATES: { { label: string, forceHovered: boolean } } = {
	{ label = "Resting", forceHovered = false },
	{ label = "Hovered", forceHovered = true },
}

local function ScrimStatesStory(props: StoryProps)
	return React.createElement(
		View,
		{
			tag = "col gap-xlarge size-full-0 auto-y",
		},
		Dash.map(SCRIM_STATES, function(state, index: number)
			return React.createElement(View, {
				LayoutOrder = index,
				tag = "col gap-small size-full-0 auto-y",
			}, {
				Label = React.createElement(Text, {
					LayoutOrder = 1,
					Text = state.label,
					tag = "auto-xy text-caption-large content-emphasis",
				}),
				Sample = React.createElement(Sample, {
					LayoutOrder = 2,
					size = props.controls.size,
					forceHovered = state.forceHovered,
					forceScrimsVisible = true,
					preferredInput = props.controls.preferredInput,
				}),
			})
		end)
	)
end

local INPUT_TYPES: { { label: string, preferredInput: Enum.PreferredInput } } = {
	{ label = "Keyboard and mouse", preferredInput = Enum.PreferredInput.KeyboardAndMouse },
	{ label = "Gamepad", preferredInput = Enum.PreferredInput.Gamepad },
	{ label = "Touch", preferredInput = Enum.PreferredInput.Touch },
}

local function InputTypesStory(props: StoryProps)
	return React.createElement(
		View,
		{
			tag = "col gap-xlarge size-full-0 auto-y",
		},
		Dash.map(INPUT_TYPES, function(inputType, index: number)
			return React.createElement(View, {
				LayoutOrder = index,
				tag = "col gap-small size-full-0 auto-y",
			}, {
				Label = React.createElement(Text, {
					LayoutOrder = 1,
					Text = inputType.label,
					tag = "auto-xy text-caption-large content-emphasis",
				}),
				Sample = React.createElement(Sample, {
					LayoutOrder = 2,
					size = props.controls.size,
					forceScrimsVisible = true,
					preferredInput = inputType.preferredInput,
				}),
			})
		end)
	)
end

local function SizesStory()
	return React.createElement(
		View,
		{
			tag = "col gap-xlarge size-full-0 auto-y",
		},
		Dash.map(INPUT_SIZES, function(size: InputSize, index: number)
			return React.createElement(View, {
				LayoutOrder = index,
				tag = "col gap-small size-full-0 auto-y",
			}, {
				Label = React.createElement(Text, {
					LayoutOrder = 1,
					Text = `{size}`,
					tag = "auto-xy text-caption-large content-emphasis",
				}),
				Sample = React.createElement(Sample, {
					LayoutOrder = 2,
					size = size,
				}),
			})
		end)
	)
end

local ROW_HEIGHTS: { { label: string, tag: string } } = {
	{ label = "24px rows", tag = "size-2400-600" },
	{ label = "40px rows", tag = "size-2400-1000" },
	{ label = "64px rows", tag = "size-2400-1600" },
	{ label = "96px rows", tag = "size-2400-2400" },
}

local function RowHeightsStory(props: StoryProps)
	return React.createElement(
		View,
		{
			tag = "col gap-xlarge size-full-0 auto-y",
		},
		Dash.map(ROW_HEIGHTS, function(rowHeight, index: number)
			return React.createElement(View, {
				LayoutOrder = index,
				tag = "col gap-small size-full-0 auto-y",
			}, {
				Label = React.createElement(Text, {
					LayoutOrder = 1,
					Text = rowHeight.label,
					tag = "auto-xy text-caption-large content-emphasis",
				}),
				Sample = React.createElement(Sample, {
					LayoutOrder = 2,
					size = props.controls.size,
					rowTag = rowHeight.tag,
					forceScrimsVisible = true,
					preferredInput = props.controls.preferredInput,
				}),
			})
		end)
	)
end

return {
	summary = "OverflowScrollContainer lays content out in a horizontally scrolling row, revealing edge scrims and nav affordances when the content overflows.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Scrim states",
			summary = "Both scrims held open at the controlled size, resting above hovered, so the "
				.. "two treatments can be read side by side without pointing at either",
			story = ScrimStatesStory,
		},
		{
			name = "Input types",
			summary = "Scrims held open at the controlled size for each preferred input, so the "
				.. "direction affordance can be compared: a chevron for keyboard and mouse and for "
				.. "touch, a shoulder-button glyph for gamepad",
			story = InputTypesStory,
		},
		{
			name = "Sizes",
			summary = "Every supported size over rows of one fixed height, so the only thing that "
				.. "changes down the list is the scrim's chevron. Size does not set the "
				.. "container's height, which comes from the content, nor the scrim's width, "
				.. "which follows the measured content height",
			story = SizesStory,
		},
		{
			name = "Row heights",
			summary = "One size over rows of three different heights, scrims held open. The scrim "
				.. "measures the row it overlays, so a taller row widens the scrim and grows the "
				.. "chevron's square, while the chevron glyph itself stays fixed at the "
				.. "controlled size",
			story = RowHeightsStory,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		forceHovered = false,
		forceScrimsVisible = false,
		preferredInput = {
			Enum.PreferredInput.KeyboardAndMouse,
			Enum.PreferredInput.Gamepad,
			Enum.PreferredInput.Touch,
		},
	},
}
