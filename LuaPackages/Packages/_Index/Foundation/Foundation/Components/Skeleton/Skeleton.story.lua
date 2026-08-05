local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius
local Skeleton = require(Foundation.Components.Skeleton)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local REPRESENTATIVE_SIZES = {
	{ label = "Avatar (48×48)", size = UDim2.fromOffset(48, 48) },
	{ label = "Text line (200×16)", size = UDim2.fromOffset(200, 16) },
	{ label = "Block (120×120)", size = UDim2.fromOffset(120, 120) },
	{ label = "Card (280×140)", size = UDim2.fromOffset(280, 140) },
}

local RADIUS_OPTIONS = {
	Radius.None,
	Radius.XSmall,
	Radius.Small,
	Radius.Medium,
	Radius.Large,
	Radius.Circle,
} :: { Radius }

local PLAYGROUND_SIZE_OPTIONS = {
	UDim2.fromOffset(120, 120),
	UDim2.fromOffset(48, 48),
	UDim2.fromOffset(200, 16),
	UDim2.fromOffset(280, 140),
} :: { UDim2 }

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

local function LabeledSkeleton(props: {
	label: string,
	layoutOrder: number,
	radius: Radius?,
	size: UDim2?,
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
		Skeleton = React.createElement(Skeleton, {
			radius = props.radius,
			Size = props.size or UDim2.fromOffset(100, 100),
			LayoutOrder = 2,
		}),
	})
end

local function PlaygroundStory(props)
	return React.createElement(Skeleton, {
		radius = props.controls.radius,
		Size = props.controls.Size,
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Size",
				contentTag = "row gap-xlarge align-y-start auto-xy wrap",
			},
			Dash.map(REPRESENTATIVE_SIZES, function(entry, index)
				return React.createElement(LabeledSkeleton, {
					label = entry.label,
					layoutOrder = index,
					radius = Radius.Small,
					size = entry.size,
				})
			end)
		),
	})
end

local function ShapesStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row gap-large align-y-start auto-xy wrap padding-large bg-surface-0",
		},
		Dash.map(RADIUS_OPTIONS, function(radius, index)
			return React.createElement(LabeledSkeleton, {
				label = radius,
				layoutOrder = index,
				radius = radius,
				size = UDim2.fromOffset(80, 80),
			})
		end)
	)
end

return {
	summary = "A placeholder shape shown in place of content while it loads.",
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
			name = "Shapes",
			story = ShapesStory,
		},
	},
	controls = {
		radius = RADIUS_OPTIONS,
		Size = PLAYGROUND_SIZE_OPTIONS,
	},
}
