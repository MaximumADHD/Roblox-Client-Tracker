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
local Tokens = require(Foundation.Providers.Style.Tokens)
local ValidNumericVariants = require(Foundation.Components.StatusIndicator.ValidNumericVariants)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize

type Controls = {
	variant: StatusIndicatorVariant,
	shape: StatusIndicatorShape,
	size: StatusIndicatorSize,
	value: number,
	max: number,
	mask: string,
}

local surfaceColorKeys = Dash.joinArrays({ "None" }, Dash.keys(Tokens.defaultTokens.Color.Surface))

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
	local tokens = useTokens()
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
				mask = tokens.Color.Surface[controls.mask],
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

local function IndicatorRow(props: { masked: boolean, LayoutOrder: number }): React.ReactNode
	local tokens = useTokens()
	local backdrop = tokens.Color.Extended.Red.Red_800
	local tileStyle = tokens.Color.Surface.Surface_100

	return React.createElement(
		View,
		{ tag = "row align-y-center gap-large auto-xy", LayoutOrder = props.LayoutOrder },
		Dash.map(shapes, function(shape: StatusIndicatorShape, i: number)
			return React.createElement(View, {
				tag = "align-x-center align-y-center radius-small",
				Size = UDim2.fromOffset(48, 48),
				backgroundStyle = tileStyle,
				LayoutOrder = i,
			}, {
				Indicator = React.createElement(StatusIndicator, {
					variant = StatusIndicatorVariant.Success,
					shape = shape,
					mask = if props.masked then backdrop else nil,
				}),
			})
		end)
	)
end

local function CustomBackgroundStory(): React.ReactNode
	local tokens = useTokens()
	local backdrop = tokens.Color.Extended.Red.Red_800

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-large",
		backgroundStyle = backdrop,
	}, {
		WithoutMask = React.createElement(IndicatorRow, { masked = false, LayoutOrder = 1 }),
		WithMask = React.createElement(IndicatorRow, { masked = true, LayoutOrder = 2 }),
	})
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
		{
			name = "On custom background",
			summary = "Mask against a non-system red background; bottom row applies the mask, top row does not",
			story = CustomBackgroundStory,
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
		mask = surfaceColorKeys,
	},
}
