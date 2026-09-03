local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)

type InputPlacement = InputPlacement.InputPlacement
type InputSize = InputSize.InputSize

type Item = {
	label: string,
	hint: string?,
	isChecked: boolean?,
	isDisabled: boolean?,
	isIndeterminate: boolean?,
	onActivated: ((boolean) -> ())?,
}

type Options = {
	Group: any,
	Item: any,
	itemName: string,
	summary: string,
	defaultLegend: string,
	labels: { string },
	hints: { string },
	states: { Item },
}

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
}

local PLACEMENT_ORDER: { InputPlacement } = {
	InputPlacement.Start,
	InputPlacement.End,
}

local PLAYGROUND_SIZE_OPTIONS: { InputSize } = {
	InputSize.Medium,
	InputSize.XSmall,
	InputSize.Small,
}

local PLAYGROUND_PLACEMENT_OPTIONS: { InputPlacement } = PLACEMENT_ORDER

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
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function Page(props: {
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, props.children)
end

local function createItems(ItemComponent: any, items: { Item }): { [string]: React.ReactNode }
	local children: { [string]: React.ReactNode } = {}

	for index, item in items do
		children[`Item-{index}`] = React.createElement(ItemComponent, {
			label = item.label,
			hint = item.hint,
			isChecked = item.isChecked,
			isDisabled = item.isDisabled,
			isIndeterminate = item.isIndeterminate,
			onActivated = item.onActivated or noop,
			LayoutOrder = index,
		})
	end

	return children
end

local function staticItems(): { Item }
	return {
		{ label = "Option A", isChecked = true },
		{ label = "Option B", isChecked = false },
		{ label = "Option C", isChecked = true },
	}
end

local function create(options: Options)
	local function PlaygroundStory(props: {
		controls: {
			legend: string,
			size: InputSize,
			placement: InputPlacement,
			showHints: boolean,
		},
	}): React.ReactNode
		local controls = props.controls
		local checked, setChecked = React.useState({ true, false, true, false })
		local items: { Item } = {}

		for index, label in options.labels do
			items[index] = {
				label = label,
				hint = if controls.showHints then options.hints[index] else nil,
				isChecked = checked[index],
				onActivated = function(value)
					setChecked(function(previous)
						local updated = table.clone(previous)
						updated[index] = value
						return updated
					end)
				end,
			}
		end

		return React.createElement(View, {
			tag = "auto-xy padding-medium",
		}, {
			Group = React.createElement(options.Group, {
				legend = controls.legend,
				size = controls.size,
				placement = controls.placement,
			}, createItems(options.Item, items)),
		})
	end

	local function SizingStory(): React.ReactNode
		return React.createElement(Page, nil, {
			Size = React.createElement(
				Section,
				{
					LayoutOrder = 1,
					name = "Size",
					contentTag = "row gap-xxlarge auto-xy wrap",
				},
				Dash.map(SIZE_ORDER, function(size, index)
					return React.createElement(options.Group, {
						legend = size,
						size = size,
						LayoutOrder = index,
					}, createItems(options.Item, staticItems()))
				end)
			),
		})
	end

	local function StatesStory(): React.ReactNode
		return React.createElement(Page, nil, {
			States = React.createElement(Section, {
				LayoutOrder = 1,
				name = "Item states",
				contentTag = "auto-xy",
			}, {
				Group = React.createElement(
					options.Group,
					{ size = InputSize.Medium },
					createItems(options.Item, options.states)
				),
			}),
		})
	end

	local function PlacementStory(): React.ReactNode
		return React.createElement(Page, nil, {
			Placement = React.createElement(
				Section,
				{
					LayoutOrder = 1,
					name = "Placement",
					contentTag = "row gap-xxlarge auto-xy wrap",
				},
				Dash.map(PLACEMENT_ORDER, function(placement, index)
					return React.createElement(options.Group, {
						legend = placement,
						placement = placement,
						LayoutOrder = index,
					}, createItems(options.Item, staticItems()))
				end)
			),
		})
	end

	return {
		summary = options.summary,
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
				name = "Placement",
				summary = `placement positions each item's label relative to its {string.lower(options.itemName)}.`,
				story = PlacementStory,
			},
		},
		controls = {
			legend = options.defaultLegend,
			size = PLAYGROUND_SIZE_OPTIONS,
			placement = PLAYGROUND_PLACEMENT_OPTIONS,
			showHints = false,
		},
	}
end

return {
	create = create,
}
