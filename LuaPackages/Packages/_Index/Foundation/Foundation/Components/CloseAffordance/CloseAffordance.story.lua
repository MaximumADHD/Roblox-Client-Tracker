local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local InputSize = require(Foundation.Enums.InputSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type InputSize = InputSize.InputSize
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant

type Controls = {
	variant: CloseAffordanceVariant,
	size: typeof(InputSize.Medium) | typeof(InputSize.Small) | typeof(InputSize.XSmall),
	isCircular: boolean,
	hasPadding: boolean,
	isDisabled: boolean,
}

local SIZES: { InputSize } = { InputSize.Medium, InputSize.Small, InputSize.XSmall }

local function activated(label: string)
	return function()
		print(`CloseAffordance: "{label}" activated`)
	end
end

local function Label(props: { text: string, LayoutOrder: number }): React.ReactNode
	return React.createElement(Text, {
		Text = props.text,
		tag = "auto-xy text-label-small content-muted padding-bottom-xsmall",
		LayoutOrder = props.LayoutOrder,
	})
end

local function Section(props: {
	label: string,
	LayoutOrder: number,
	children: React.ReactNode?,
}): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xsmall auto-xy align-y-center",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Label, { text = props.label, LayoutOrder = 1 }),
		Content = React.createElement(
			View,
			{ tag = "row gap-small auto-xy align-y-center", LayoutOrder = 2 },
			props.children
		),
	})
end

local function MediaBackground(props: { children: React.ReactNode? }): React.ReactNode
	local tokens = useTokens()
	return React.createElement(View, {
		tag = "row align-y-center gap-medium size-0 auto-xy padding-large radius-medium",
		backgroundStyle = tokens.Color.Extended.White.White_100,
	}, props.children)
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls
	local tokens = useTokens()
	local isOverMedia = controls.variant == CloseAffordanceVariant.OverMedia

	return React.createElement(View, {
		tag = "row align-x-center align-y-center size-0 auto-xy padding-xlarge radius-medium",
		backgroundStyle = if isOverMedia then tokens.Color.Extended.White.White_100 else nil,
	}, {
		CloseAffordance = React.createElement(CloseAffordance, {
			size = controls.size,
			variant = controls.variant,
			isCircular = controls.isCircular,
			hasPadding = controls.hasPadding,
			isDisabled = controls.isDisabled,
			onActivated = function()
				print(`CloseAffordance activated: {controls.variant} {controls.size}`)
			end,
		}),
	})
end

local function OverMediaStory(): React.ReactNode
	return React.createElement(View, { tag = "col gap-large auto-xy" }, {
		Padded = React.createElement(
			Section,
			{ label = "hasPadding = true", LayoutOrder = 1 },
			React.createElement(
				MediaBackground,
				nil,
				Dash.map(SIZES, function(size)
					return React.createElement(CloseAffordance, {
						size = size,
						variant = CloseAffordanceVariant.OverMedia,
						hasPadding = true,
						onActivated = activated(`OverMedia padded {size}`),
					})
				end)
			)
		),
		Tight = React.createElement(
			Section,
			{ label = "hasPadding = false", LayoutOrder = 2 },
			React.createElement(
				MediaBackground,
				nil,
				Dash.map(SIZES, function(size)
					return React.createElement(CloseAffordance, {
						size = size,
						variant = CloseAffordanceVariant.OverMedia,
						hasPadding = false,
						onActivated = activated(`OverMedia tight {size}`),
					})
				end)
			)
		),
	})
end

local function UtilityStory(): React.ReactNode
	return React.createElement(View, { tag = "col gap-large auto-xy" }, {
		Rounded = React.createElement(
			Section,
			{ label = "isCircular = false", LayoutOrder = 1 },
			Dash.map(SIZES, function(size)
				return React.createElement(CloseAffordance, {
					size = size,
					variant = CloseAffordanceVariant.Utility,
					isCircular = false,
					hasPadding = true,
					onActivated = activated(`Utility rounded {size}`),
				})
			end)
		),
		Circular = React.createElement(
			Section,
			{ label = "isCircular = true", LayoutOrder = 2 },
			Dash.map(SIZES, function(size)
				return React.createElement(CloseAffordance, {
					size = size,
					variant = CloseAffordanceVariant.Utility,
					isCircular = true,
					hasPadding = true,
					onActivated = activated(`Utility circular {size}`),
				})
			end)
		),
		TightRounded = React.createElement(
			Section,
			{ label = "hasPadding = false, isCircular = false", LayoutOrder = 3 },
			Dash.map(SIZES, function(size)
				return React.createElement(CloseAffordance, {
					size = size,
					variant = CloseAffordanceVariant.Utility,
					isCircular = false,
					hasPadding = false,
					onActivated = activated(`Utility tight rounded {size}`),
				})
			end)
		),
		TightCircular = React.createElement(
			Section,
			{ label = "hasPadding = false, isCircular = true", LayoutOrder = 4 },
			Dash.map(SIZES, function(size)
				return React.createElement(CloseAffordance, {
					size = size,
					variant = CloseAffordanceVariant.Utility,
					isCircular = true,
					hasPadding = false,
					onActivated = activated(`Utility tight circular {size}`),
				})
			end)
		),
	})
end

local function DisabledStory(): React.ReactNode
	return React.createElement(View, { tag = "col gap-large auto-xy" }, {
		OverMedia = React.createElement(
			Section,
			{ label = "OverMedia", LayoutOrder = 1 },
			React.createElement(
				MediaBackground,
				nil,
				Dash.map(SIZES, function(size)
					return React.createElement(CloseAffordance, {
						size = size,
						variant = CloseAffordanceVariant.OverMedia,
						isDisabled = true,
						onActivated = activated(`OverMedia disabled {size}`),
					})
				end)
			)
		),
		Utility = React.createElement(
			Section,
			{ label = "Utility", LayoutOrder = 2 },
			Dash.map(SIZES, function(size)
				return React.createElement(CloseAffordance, {
					size = size,
					variant = CloseAffordanceVariant.Utility,
					isDisabled = true,
					onActivated = activated(`Utility disabled {size}`),
				})
			end)
		),
	})
end

return {
	summary = "CloseAffordance",
	stories = {
		{ name = "Playground", story = PlaygroundStory },
		{ name = "OverMedia", story = OverMediaStory },
		{ name = "Utility", story = UtilityStory },
		{ name = "Disabled", story = DisabledStory },
	},
	controls = {
		variant = Dash.values(CloseAffordanceVariant),
		size = SIZES,
		isCircular = true,
		hasPadding = true,
		isDisabled = false,
	},
}
