local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local StatusBadge = require(Foundation.Components.StatusBadge)
local StatusBadgeShape = require(Foundation.Enums.StatusBadgeShape)
local StatusBadgeSize = require(Foundation.Enums.StatusBadgeSize)
local StatusBadgeVariant = require(Foundation.Enums.StatusBadgeVariant)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type StatusBadgeShape = StatusBadgeShape.StatusBadgeShape
type StatusBadgeSize = StatusBadgeSize.StatusBadgeSize
type StatusBadgeVariant = StatusBadgeVariant.StatusBadgeVariant

type ExampleProps = {
	LayoutOrder: number,
	shape: StatusBadgeShape,
	size: StatusBadgeSize,
	variant: StatusBadgeVariant,
}

local function Example(props: ExampleProps)
	return React.createElement(View, {
		tag = "col align-x-center gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.variant :: string,
			tag = "auto-xy text-caption-small content-muted",
			LayoutOrder = 1,
		}),
		Badge = React.createElement(StatusBadge, {
			text = "Label",
			shape = props.shape,
			size = props.size,
			variant = props.variant,
			LayoutOrder = 2,
		}),
	})
end

type VariantRowProps = {
	label: string,
	LayoutOrder: number,
	shape: StatusBadgeShape,
	size: StatusBadgeSize,
}

local function VariantRow(props: VariantRowProps)
	local examples: { [string]: React.ReactNode } = {}

	for index, variant in Dash.values(StatusBadgeVariant) do
		examples[variant] = React.createElement(Example, {
			LayoutOrder = index,
			shape = props.shape,
			size = props.size,
			variant = variant :: StatusBadgeVariant,
		})
	end

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-label-small content-default",
			LayoutOrder = 1,
		}),
		Examples = React.createElement(View, {
			tag = "row wrap gap-xlarge auto-xy",
			LayoutOrder = 2,
		}, examples),
	})
end

local function PlaygroundStory(props)
	return React.createElement(View, {
		tag = "row align-x-center align-y-center size-full-2000 padding-large bg-surface-0",
	}, {
		Badge = React.createElement(StatusBadge, {
			text = props.controls.text,
			variant = props.controls.variant,
			shape = props.controls.shape,
			size = props.controls.size,
			LayoutOrder = 1,
		}),
	})
end

local function SizesStory()
	return React.createElement(View, {
		tag = "col gap-xlarge auto-xy padding-large bg-surface-0",
	}, {
		Small = React.createElement(VariantRow, {
			label = "Small",
			LayoutOrder = 1,
			shape = StatusBadgeShape.Utility,
			size = StatusBadgeSize.Small,
		}),
		XSmall = React.createElement(VariantRow, {
			label = "XSmall",
			LayoutOrder = 2,
			shape = StatusBadgeShape.Utility,
			size = StatusBadgeSize.XSmall,
		}),
	})
end

local function ShapesStory()
	return React.createElement(View, {
		tag = "col gap-xlarge auto-xy padding-large bg-surface-0",
	}, {
		Utility = React.createElement(VariantRow, {
			label = "Utility",
			LayoutOrder = 1,
			shape = StatusBadgeShape.Utility,
			size = StatusBadgeSize.Small,
		}),
		Box = React.createElement(VariantRow, {
			label = "Box",
			LayoutOrder = 2,
			shape = StatusBadgeShape.Box,
			size = StatusBadgeSize.Small,
		}),
	})
end

local function LongLabelStory()
	return React.createElement(View, {
		tag = "row gap-large auto-xy padding-large bg-surface-0",
	}, {
		Utility = React.createElement(StatusBadge, {
			text = "This status label is longer than the maximum width",
			shape = StatusBadgeShape.Utility,
			LayoutOrder = 1,
		}),
		Box = React.createElement(StatusBadge, {
			text = "This status label is longer than the maximum width",
			shape = StatusBadgeShape.Box,
			LayoutOrder = 2,
		}),
	})
end

return {
	summary = "A non-interactive status label for repeated, color-coded states in data-dense interfaces.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizes",
			summary = "Size comparison per-variant",
			story = SizesStory,
		},
		{
			name = "Shapes",
			summary = "Shape comparison per-variant",
			story = ShapesStory,
		},
		{
			name = "Long labels",
			summary = "Labels truncate after the component's maximum content width.",
			story = LongLabelStory,
		},
	},
	controls = {
		text = "Label",
		variant = Dash.values(StatusBadgeVariant),
		shape = Dash.values(StatusBadgeShape),
		size = Dash.values(StatusBadgeSize),
	},
}
