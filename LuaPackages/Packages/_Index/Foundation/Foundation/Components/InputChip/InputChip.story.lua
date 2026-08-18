local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local InputChip = require(Foundation.Components.InputChip)
local InputSize = require(Foundation.Enums.InputSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type InputSize = InputSize.InputSize

local DEFAULT_TEXT = "Lorem ipsum"
local LONG_TEXT =
	"This is a very long chip label that should truncate with an ellipsis when it exceeds the available width"
local TRUNCATION_CONTAINER_WIDTH = 120

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local PLAYGROUND_SIZE_OPTIONS: { InputSize } = {
	InputSize.Medium,
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Large,
}

local INITIAL_CHIPS = { "Design", "Engineering", "Product" }

local IN_CONTEXT_NOTE =
	"Unlike Chip, InputChip represents selections inside active text inputs — not as a standalone control — and is not yet integrated into TextInput or other consumers."

local function noop() end

local function Section(props: {
	layoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "text-label-medium content-default auto-xy",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-start auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function StoryInputChip(props: {
	text: string,
	size: InputSize?,
	isDisabled: boolean?,
	onClose: (() -> ())?,
	layoutOrder: number?,
})
	return React.createElement(InputChip, {
		text = props.text,
		size = props.size,
		isDisabled = props.isDisabled,
		onClose = props.onClose or noop,
		LayoutOrder = props.layoutOrder,
	})
end

local function LabeledInputChip(props: {
	label: string,
	layoutOrder: number,
	text: string,
	size: InputSize?,
	isDisabled: boolean?,
})
	return React.createElement(View, {
		tag = "col gap-small align-x-left auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Chip = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Content = React.createElement(StoryInputChip, {
				text = props.text,
				size = props.size,
				isDisabled = props.isDisabled,
			}),
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		text: string,
		size: InputSize,
		isDisabled: boolean,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = "row align-x-left align-y-start size-full-2000 padding-large bg-surface-0",
	}, {
		Chip = React.createElement(InputChip, {
			text = controls.text,
			size = controls.size,
			isDisabled = controls.isDisabled,
			onClose = noop,
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Size",
				contentTag = "row gap-xlarge align-y-start auto-xy wrap",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledInputChip, {
					label = size,
					layoutOrder = index,
					text = DEFAULT_TEXT,
					size = size,
				})
			end)
		),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Disabled = React.createElement(Section, {
			layoutOrder = 1,
			name = "Disabled",
			contentTag = "auto-xy",
		}, {
			Chip = React.createElement(StoryInputChip, {
				text = DEFAULT_TEXT,
				isDisabled = true,
			}),
		}),
	})
end

local function ControlledDismissExample(): React.ReactNode
	local chips, setChips = React.useState(table.clone(INITIAL_CHIPS))
	local hasRemovedChips = #chips < #INITIAL_CHIPS

	return React.createElement(View, {
		tag = "col gap-medium align-x-left auto-xy",
	}, {
		Chips = React.createElement(
			View,
			{
				tag = "row wrap gap-small auto-xy",
				LayoutOrder = 1,
			},
			Dash.map(chips, function(chipText, index)
				return React.createElement(InputChip, {
					key = chipText,
					text = chipText,
					onClose = function()
						setChips(Dash.filter(chips, function(existingChip)
							return existingChip ~= chipText
						end))
					end,
					LayoutOrder = index,
				})
			end)
		),
		AddSelected = if hasRemovedChips
			then React.createElement(Button, {
				text = "Restore InputChips",
				onActivated = function()
					setChips(table.clone(INITIAL_CHIPS))
				end,
				LayoutOrder = 2,
			})
			else nil,
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Dismiss = React.createElement(Section, {
			layoutOrder = 1,
			name = "Dismiss",
			contentTag = "auto-xy",
		}, {
			Chips = React.createElement(ControlledDismissExample),
		}),
	})
end

local function TruncatedInputChip(props: { layoutOrder: number, size: InputSize })
	return React.createElement(View, {
		tag = "col gap-small align-x-left auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.size :: string,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Container = React.createElement(View, {
			tag = "size-full-0 auto-y padding-small radius-medium bg-surface-100",
			sizeConstraint = {
				MaxSize = Vector2.new(TRUNCATION_CONTAINER_WIDTH, math.huge),
			},
			LayoutOrder = 2,
		}, {
			Chip = React.createElement(InputChip, {
				text = LONG_TEXT,
				size = props.size,
				onClose = noop,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Truncation = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Truncation",
				contentTag = "row gap-xlarge align-y-start auto-xy wrap",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(TruncatedInputChip, {
					layoutOrder = index,
					size = size,
				})
			end)
		),
	})
end

return {
	summary = "InputChip is a compact, dismissible label used to represent selections inside inputs.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "States",
			story = StatesStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "In context",
			summary = IN_CONTEXT_NOTE,
			story = function()
				return nil
			end,
		},
	},
	controls = {
		text = DEFAULT_TEXT,
		size = PLAYGROUND_SIZE_OPTIONS,
		isDisabled = false,
	},
}
