local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local BuilderIcons = require(Packages.BuilderIcons)
local Flags = require(Foundation.Utility.Flags)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Knob = require(script.Parent.Knob)

export type StoryProps = {
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
			tag = "row gap-medium auto-y size-full-0 align-y-center",
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

local stories = {
	{
		name = "Basic",
		summary = "Default knob across sizes.",
		story = (function(props)
			local controls = props.controls
			local isInverse = controls.isInverse or false
			local tokens = useTokens()

			if Flags.FoundationToggleVisualUpdate then
				return React.createElement(
					View,
					{
						tag = "gap-medium auto-xy align-y-center padding-medium radius-medium",
						backgroundStyle = if isInverse then tokens.Inverse.Surface.Surface_0 else nil,
					},
					React.createElement(
						PresentationContext.Provider,
						{ value = { isInverse = isInverse } },
						React.createElement(
							Story,
							Dash.join(props, {
								hasShadow = controls.hasShadow,
								isDisabled = controls.isDisabled,
							})
						)
					)
				)
			else
				return React.createElement(
					View,
					{
						tag = "gap-medium auto-xy align-y-center padding-medium radius-medium",
					},
					React.createElement(
						Story,
						Dash.join(props, {
							hasShadow = controls.hasShadow,
						})
					)
				)
			end
		end) :: unknown,
	},
	{
		name = "With Stroke",
		summary = "Knob with transparent fill and emphasis stroke across sizes.",
		story = (function(props)
			local controls = props.controls
			local isInverse = controls.isInverse or false
			local tokens = useTokens()

			if Flags.FoundationToggleVisualUpdate then
				return React.createElement(
					View,
					{
						backgroundStyle = if isInverse then tokens.Inverse.Surface.Surface_0 else nil,
						tag = "gap-medium auto-xy align-y-center padding-medium radius-medium",
					},
					React.createElement(
						PresentationContext.Provider,
						{ value = { isInverse = isInverse } },
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
			else
				return React.createElement(
					View,
					{
						tag = "gap-medium auto-xy align-y-center padding-medium radius-medium",
					},
					React.createElement(Story, {
						style = tokens.Color.None,
						stroke = {
							Color = tokens.Color.Content.Emphasis.Color3,
							Thickness = tokens.Stroke.Thicker,
							Transparency = tokens.Color.Content.Emphasis.Transparency,
						},
						hasShadow = controls.hasShadow,
					})
				)
			end
		end) :: unknown,
	},
}

if Flags.FoundationToggleVisualUpdate then
	table.insert(stories, {
		name = "With Icon",
		summary = "Knob rendering a BuilderIcons check icon instead of the circle.",
		story = (function(props)
			local controls = props.controls
			local isInverse = controls.isInverse or false
			local tokens = useTokens()

			return React.createElement(
				View,
				{
					backgroundStyle = if isInverse then nil else tokens.Inverse.Surface.Surface_0,
					tag = "gap-medium auto-xy align-y-center padding-medium radius-medium",
				},
				React.createElement(
					PresentationContext.Provider,
					{ value = { isInverse = isInverse } },
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
		end) :: unknown,
	})
end

return {
	controls = if Flags.FoundationToggleVisualUpdate
		then {
			isInverse = false,
			hasShadow = true,
			isDisabled = false,
		}
		else {
			hasShadow = true,
		},
	summary = if Flags.FoundationToggleVisualUpdate
		then "Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly. Uses PresentationContext for inverse styling."
		else "Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly.",
	stories = stories,
}
