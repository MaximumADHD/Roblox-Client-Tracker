local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local IconSize = require(Foundation.Enums.IconSize)
local Loading = require(Foundation.Components.Loading)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type IconSize = IconSize.IconSize

local SIZE_ORDER: { IconSize } = {
	IconSize.XSmall,
	IconSize.Small,
	IconSize.Medium,
	IconSize.Large,
	IconSize.XLarge,
	IconSize.XXLarge,
}

local PLAYGROUND_SIZE_OPTIONS: { IconSize } = {
	IconSize.Large,
	IconSize.XSmall,
	IconSize.Small,
	IconSize.Medium,
	IconSize.XLarge,
	IconSize.XXLarge,
}

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
			tag = props.contentTag or "row gap-large align-y-top auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function SizeColumn(props: {
	LayoutOrder: number,
	size: IconSize,
}): React.ReactNode
	return React.createElement(View, {
		tag = "col align-x-center gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.size :: string,
			tag = "auto-xy text-caption-small content-muted",
			LayoutOrder = 1,
		}),
		Spinner = React.createElement(Loading, {
			size = props.size,
			LayoutOrder = 2,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		size: IconSize,
	},
}): React.ReactNode
	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-y-large bg-surface-0",
	}, {
		Loading = React.createElement(Loading, {
			size = props.controls.size,
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
				LayoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(SizeColumn, {
					LayoutOrder = index,
					size = size,
				})
			end)
		),
	})
end

return {
	summary = "Loading is a spinning icon that indicates in-progress work.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Sizing", story = SizingStory },
	},
	controls = {
		size = PLAYGROUND_SIZE_OPTIONS,
	},
}
