local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local SegmentModule = require(Foundation.Components.SegmentedControl.Segment)
local SegmentedControlVariant = require(Foundation.Enums.SegmentedControlVariant)
type Segment = SegmentModule.Segment
local SegmentedControl = require(Foundation.Components.SegmentedControl)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local segments: { Segment } = {
	{ id = "1", text = "First" },
	{ id = "2", text = "Second" },
	{ id = "3", text = "Third" },
}

local iconSegments: { Segment } = {
	{ id = "1", icon = { name = BuilderIcons.Icon.House } },
	{ id = "2", icon = { name = BuilderIcons.Icon.Gear } },
	{ id = "3", icon = { name = BuilderIcons.Icon.MagnifyingGlass } },
}

type GroupProps = {
	caption: string,
	tag: string?,
	contentTag: string,
	LayoutOrder: number?,
	children: React.ReactNode?,
}

local orderedSizes: { InputSize.InputSize } = { InputSize.XSmall, InputSize.Small, InputSize.Medium, InputSize.Large }

local function Group(props: GroupProps)
	return React.createElement(View, {
		tag = props.tag or "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Caption = React.createElement(Text, {
			Text = props.caption,
			tag = "auto-xy text-body-small content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag,
			LayoutOrder = 2,
		}, props.children),
	})
end

local function Story(props)
	local value, setValue = React.useState(segments[1].id)
	local iconValue, setIconValue = React.useState(iconSegments[1].id)

	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y padding-large",
	}, {
		TextSegments = React.createElement(SegmentedControl, {
			size = props.controls.size,
			variant = if Flags.FoundationSegmentedControlBeta then props.controls.variant else nil,
			fillBehavior = if Flags.FoundationSegmentedControlBeta then props.controls.fillBehavior else nil,
			isCircular = props.controls.isCircular,
			segments = segments,
			value = value,
			onActivated = setValue,
			LayoutOrder = 1,
		}),
		IconSegments = React.createElement(SegmentedControl, {
			size = props.controls.size,
			variant = if Flags.FoundationSegmentedControlBeta then props.controls.variant else nil,
			fillBehavior = if Flags.FoundationSegmentedControlBeta then props.controls.fillBehavior else nil,
			isCircular = props.controls.isCircular,
			segments = iconSegments,
			value = iconValue,
			onActivated = setIconValue,
			LayoutOrder = 2,
		}),
	})
end

return {
	summary = "SegmentedControl",
	stories = {
		{
			name = "Playground",
			story = Story :: unknown,
		},
		{
			name = "Sizes × Variants",
			story = function(props)
				return React.createElement(
					View,
					{ tag = "col gap-xlarge auto-xy" },
					Dash.map(orderedSizes, function(size, _)
						return React.createElement(
							Group,
							{
								caption = size,
								contentTag = "row gap-large auto-xy",
							},
							Dash.map(SegmentedControlVariant, function(variant, variantName)
								return React.createElement(Group, {
									caption = variantName,
									tag = "col gap-medium auto-xy",
									contentTag = "auto-xy",
								}, {
									Control = React.createElement(SegmentedControl, {
										segments = segments,
										value = segments[1].id,
										onActivated = function() end,
										size = size,
										isCircular = props.controls.isCircular,
										variant = variant,
									}),
								})
							end)
						)
					end)
				)
			end,
		},
		{
			name = "FillBehavior",
			story = function()
				return React.createElement(
					View,
					{ tag = "col gap-xxlarge size-full-0 auto-y" },
					Dash.map(FillBehavior, function(fill, name)
						return React.createElement(Group, {
							caption = name,
							contentTag = "col gap-small size-full-0 auto-y",
						}, {
							Control = React.createElement(SegmentedControl, {
								segments = segments,
								value = segments[1].id,
								onActivated = function() end,
								fillBehavior = fill,
							}),
						})
					end)
				)
			end,
		},

		{
			name = "IsCircular",
			story = function()
				return React.createElement(
					View,
					{ tag = "row gap-xxlarge auto-xy" },
					Dash.map(
						{ { caption = "Default", circular = false }, { caption = "Circular", circular = true } },
						function(option, index)
							return React.createElement(Group, {
								caption = option.caption,
								tag = "col gap-medium auto-xy",
								contentTag = "auto-xy",
								LayoutOrder = index,
							}, {
								Control = React.createElement(SegmentedControl, {
									segments = segments,
									value = segments[1].id,
									onActivated = function() end,
									isCircular = option.circular,
								}),
							})
						end
					)
				)
			end,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		variant = if Flags.FoundationSegmentedControlBeta then Dash.values(SegmentedControlVariant) else nil,
		fillBehavior = if Flags.FoundationSegmentedControlBeta then Dash.values(FillBehavior) else nil,
		isCircular = false,
	},
}
