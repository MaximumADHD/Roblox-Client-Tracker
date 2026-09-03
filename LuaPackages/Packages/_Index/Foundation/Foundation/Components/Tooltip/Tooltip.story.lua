local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Flags = require(Foundation.Utility.Flags)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Text = require(Foundation.Components.Text)
local Tooltip = require(Foundation.Components.Tooltip)
local View = require(Foundation.Components.View)

type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign

type Controls = {
	title: string,
	text: string,
	hasShortcut: boolean,
	hasArrow: boolean?,
	side: PopoverSide,
	align: PopoverAlign,
}

-- Declared as a constant so a new table isn't created every render (which would cause extra renders).
local SHORTCUT = { Enum.KeyCode.LeftControl, Enum.KeyCode.S }

local LONG_TEXT =
	"Generally we should avoid tooltips with long titles and bodies. Consider using other affordances for sharing contextual information when content expands beyond a few lines."

local SIDE_ORDER: { PopoverSide } = {
	PopoverSide.Top,
	PopoverSide.Right,
	PopoverSide.Bottom,
	PopoverSide.Left,
}

local function noop() end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-xxlarge align-y-center auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledTarget(props: {
	LayoutOrder: number,
	label: string,
	buttonText: string?,
	title: string,
	text: string?,
	shortcut: { Enum.KeyCode }?,
	hasArrow: boolean?,
	side: PopoverSide?,
	align: PopoverAlign?,
})
	return React.createElement(View, {
		tag = "col align-x-center gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-center content-muted",
			LayoutOrder = 1,
		}),
		Target = React.createElement(
			Tooltip,
			{
				LayoutOrder = 2,
				title = props.title,
				text = props.text,
				shortcut = props.shortcut,
				hasArrow = props.hasArrow,
				side = props.side,
				align = props.align,
			},
			React.createElement(Button, {
				text = props.buttonText or "Hover me",
				onActivated = noop,
			})
		),
	})
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = "col align-x-center align-y-center padding-xxlarge",
		Size = UDim2.new(1, 0, 0, 200),
	}, {
		Target = React.createElement(
			Tooltip,
			{
				title = controls.title,
				text = if controls.text ~= "" then controls.text else nil,
				shortcut = if controls.hasShortcut then SHORTCUT else nil,
				hasArrow = controls.hasArrow,
				side = controls.side,
				align = controls.align,
			},
			React.createElement(Button, {
				text = "Hover me",
				onActivated = noop,
			})
		),
	})
end

local function PlacementStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col align-x-center gap-xxlarge auto-y padding-y-xxlarge",
		Size = UDim2.fromScale(1, 0),
	}, {
		Sides = React.createElement(
			View,
			{ tag = "row align-x-center align-y-center gap-xxlarge auto-y", Size = UDim2.fromScale(1, 0) },
			Dash.map(SIDE_ORDER, function(side, index)
				return React.createElement(LabeledTarget, {
					LayoutOrder = index,
					label = side :: string,
					buttonText = side :: string,
					title = "Tooltip",
					text = "Appears on the " .. (side :: string):lower() .. " side.",
					side = side,
				})
			end)
		),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large",
	}, {
		Variations = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Content",
			contentTag = "row gap-xxlarge align-y-center auto-xy wrap padding-y-xlarge",
		}, {
			TitleOnly = React.createElement(LabeledTarget, {
				LayoutOrder = 1,
				label = "Title only",
				buttonText = "Title",
				title = "Save changes",
				side = PopoverSide.Top,
			}),
			Description = React.createElement(LabeledTarget, {
				LayoutOrder = 2,
				label = "With description",
				buttonText = "Description",
				title = "Save changes",
				text = "Stores your latest edits to this project.",
				side = PopoverSide.Top,
			}),
			Shortcut = React.createElement(LabeledTarget, {
				LayoutOrder = 3,
				label = "With shortcut",
				buttonText = "Shortcut",
				title = "Save",
				shortcut = SHORTCUT,
				side = PopoverSide.Top,
			}),
			LongText = React.createElement(LabeledTarget, {
				LayoutOrder = 4,
				label = "Long description",
				buttonText = "Long",
				title = "Heads up",
				text = LONG_TEXT,
				side = PopoverSide.Top,
			}),
			NoArrow = if Flags.FoundationTooltipBeta
				then React.createElement(LabeledTarget, {
					LayoutOrder = 5,
					label = "Without arrow",
					buttonText = "No arrow",
					title = "Save changes",
					text = "Stores your latest edits to this project.",
					hasArrow = false,
					side = PopoverSide.Top,
				})
				else nil,
		}),
	})
end

return {
	summary = "Provides additional information about an element on hover. Descriptions should be no longer than three lines.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Placement",
			summary = "Use side and align to control where the tooltip appears relative to its anchor.",
			story = PlacementStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		title = "Tooltip",
		text = "Tooltip body text",
		hasShortcut = false,
		hasArrow = if Flags.FoundationTooltipBeta then true else nil,
		side = SIDE_ORDER,
		align = {
			PopoverAlign.Center,
			PopoverAlign.Start,
			PopoverAlign.End,
		} :: { PopoverAlign },
	},
}
