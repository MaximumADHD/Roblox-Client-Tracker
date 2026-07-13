local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)

local Dash = require(Packages.Dash)

local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local Text = require(Foundation.Components.Text)
local ValidNumericVariants = require(Foundation.Components.StatusIndicator.ValidNumericVariants)
local View = require(Foundation.Components.View)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize

type Controls = {
	variant: StatusIndicatorVariant,
	shape: StatusIndicatorShape,
	size: StatusIndicatorSize,
	value: number,
	max: number,
}

local function getVariants(): { StatusIndicatorVariant }
	local variants: { StatusIndicatorVariant } = {}
	for _, variant in StatusIndicatorVariant do
		if
			not Flags.FoundationStatusIndicatorVariantExperiment
			and variant == StatusIndicatorVariant.Contrast_Experiment
		then
			continue
		end
		table.insert(variants, variant :: StatusIndicatorVariant)
	end
	return variants
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls
	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, {
		Indicator = React.createElement(
			StatusIndicator,
			{
				variant = controls.variant,
				shape = controls.shape,
				size = if Flags.FoundationAvatarBeta then controls.size else nil,
				value = if controls.value > 0 then controls.value else nil,
				max = controls.max,
			} :: any
		),
	})
end

local shapes: { StatusIndicatorShape } =
	{ StatusIndicatorShape.Circle, StatusIndicatorShape.Ring, StatusIndicatorShape.Square }

local function AllVariantsStory(): React.ReactNode
	local order = 0
	local children: { [string]: React.ReactNode } = {}

	for _, variant: StatusIndicatorVariant in getVariants() do
		order += 1
		children[variant .. "_label"] = React.createElement(Text, {
			Text = variant :: string,
			tag = "auto-xy text-label-medium content-muted",
			LayoutOrder = order,
		})

		local indicators = Dash.map(shapes, function(shape, i)
			return React.createElement(StatusIndicator, {
				variant = variant :: StatusIndicatorVariant,
				shape = shape :: StatusIndicatorShape,
				LayoutOrder = i,
			})
		end)

		if ValidNumericVariants[variant] then
			table.insert(
				indicators,
				React.createElement(
					StatusIndicator,
					{
						variant = variant,
						value = 5,
						LayoutOrder = #indicators + 1,
					} :: any
				)
			)
		end

		order += 1
		children[variant .. "_row"] = React.createElement(View, {
			tag = "row align-y-center gap-medium auto-xy",
			LayoutOrder = order,
		}, indicators)
	end

	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
	}, children)
end

return {
	summary = "StatusIndicator",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory,
		},
		{
			name = "All Variants",
			summary = "All variant × shape permutations, plus numeric where supported",
			story = AllVariantsStory,
		},
	},
	controls = {
		variant = Dash.values(StatusIndicatorVariant) :: { StatusIndicatorVariant },
		shape = {
			StatusIndicatorShape.Circle,
			StatusIndicatorShape.Ring,
			StatusIndicatorShape.Square,
		} :: { StatusIndicatorShape },
		size = if Flags.FoundationAvatarBeta then Dash.values(StatusIndicatorSize) else nil,
		value = 0,
		max = 99,
	},
}
