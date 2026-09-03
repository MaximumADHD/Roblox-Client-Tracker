local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Knob = require(script.Parent.Knob)

type StoryProps = {
	style: Types.ColorStyleValue?,
	stroke: Types.Stroke?,
	hasShadow: boolean?,
	icon: { name: string, variant: BuilderIcons.IconVariant }?,
	isDisabled: boolean?,
}

local function Story(props: StoryProps)
	return React.createElement(
		View,
		{
			tag = "row align-y-center gap-medium size-full-0 auto-y",
		},
		Dash.map(
			{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
			function(size)
				return React.createElement(Knob, {
					size = size,
					style = props.style,
					stroke = props.stroke,
					hasShadow = props.hasShadow,
					icon = props.icon,
					isDisabled = props.isDisabled,
				})
			end
		)
	)
end

type ControlsProps = { controls: any }

local function PlaygroundStory(props: ControlsProps): React.ReactNode
	local controls = props.controls
	local isInverse = controls.isInverse or false
	local tokens = useTokens()

	local presentationValue = React.useMemo(function()
		return { isInverse = isInverse }
	end, { isInverse })

	local knob = React.createElement(Knob, {
		size = controls.size,
		hasShadow = controls.hasShadow,
		isDisabled = controls.isDisabled,
	})
	return React.createElement(View, {
		tag = "align-y-center gap-medium auto-xy padding-medium radius-medium",
		backgroundStyle = if isInverse then tokens.Inverse.Surface.Surface_0 else nil,
	}, React.createElement(PresentationContext.Provider, { value = presentationValue }, knob))
end

local function SizesStory(props: ControlsProps): React.ReactNode
	local controls = props.controls
	local isInverse = controls.isInverse or false
	local tokens = useTokens()

	local presentationValue = React.useMemo(function()
		return { isInverse = isInverse }
	end, { isInverse })

	return React.createElement(
		View,
		{
			tag = "align-y-center gap-medium auto-xy padding-medium radius-medium",
			backgroundStyle = if isInverse then tokens.Inverse.Surface.Surface_0 else nil,
		},
		React.createElement(
			PresentationContext.Provider,
			{ value = presentationValue },
			React.createElement(
				Story,
				Dash.join(props, {
					hasShadow = controls.hasShadow,
					isDisabled = controls.isDisabled,
				})
			)
		)
	)
end

local function WithStrokeStory(props: ControlsProps): React.ReactNode
	local controls = props.controls
	local isInverse = controls.isInverse or false
	local tokens = useTokens()

	local presentationValue = React.useMemo(function()
		return { isInverse = isInverse }
	end, { isInverse })

	return React.createElement(
		View,
		{
			backgroundStyle = if isInverse then tokens.Inverse.Surface.Surface_0 else nil,
			tag = "align-y-center gap-medium auto-xy padding-medium radius-medium",
		},
		React.createElement(
			PresentationContext.Provider,
			{ value = presentationValue },
			React.createElement(Story, {
				style = tokens.Color.None,
				stroke = {
					Color = if isInverse
						then tokens.Inverse.Content.Emphasis.Color3
						else tokens.Color.Content.Emphasis.Color3,
					Thickness = tokens.Stroke.Thicker,
					Transparency = if isInverse
						then tokens.Inverse.Content.Emphasis.Transparency
						else tokens.Color.Content.Emphasis.Transparency,
				},
				hasShadow = controls.hasShadow,
				isDisabled = controls.isDisabled,
			})
		)
	)
end

local function WithIconStory(props: ControlsProps): React.ReactNode
	local controls = props.controls
	local isInverse = controls.isInverse or false
	local tokens = useTokens()

	local presentationValue = React.useMemo(function()
		return { isInverse = isInverse }
	end, { isInverse })

	return React.createElement(
		View,
		{
			backgroundStyle = if isInverse then nil else tokens.Inverse.Surface.Surface_0,
			tag = "align-y-center gap-medium auto-xy padding-medium radius-medium",
		},
		React.createElement(
			PresentationContext.Provider,
			{ value = presentationValue },
			React.createElement(Story, {
				hasShadow = controls.hasShadow,
				isDisabled = controls.isDisabled,
				icon = {
					name = BuilderIcons.Icon.Check,
					variant = BuilderIcons.IconVariant.Regular,
				},
			})
		)
	)
end

local stories = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Sizes",
		summary = "Default knob across sizes.",
		story = SizesStory,
	},
	{
		name = "With Stroke",
		summary = "Knob with transparent fill and emphasis stroke across sizes.",
		story = WithStrokeStory,
	},
	{
		name = "With Icon",
		summary = "Knob rendering a BuilderIcons check icon instead of the circle.",
		story = WithIconStory,
	},
}

return {
	controls = {
		isInverse = false,
		hasShadow = true,
		isDisabled = false,
		size = Dash.values(InputSize),
	},
	summary = "Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly. Uses PresentationContext for inverse styling.",
	stories = stories,
}
