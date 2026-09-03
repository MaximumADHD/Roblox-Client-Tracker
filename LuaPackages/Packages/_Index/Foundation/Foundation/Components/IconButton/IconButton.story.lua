local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local IconButton = require(Foundation.Components.IconButton)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
type FillBehavior = FillBehavior.FillBehavior

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

-- IconButton accepts a subset of the Button variants, and this is that subset.
type IconButtonVariant = "Standard" | "Emphasis" | "Utility" | "OverMedia" | "Alert"

local SUPPORTED_VARIANTS: { IconButtonVariant } = {
	ButtonVariant.Utility,
	ButtonVariant.Standard,
	ButtonVariant.Emphasis,
	ButtonVariant.OverMedia,
	ButtonVariant.Alert,
}

local function PlaygroundStory(props)
	local controls = props.controls
	local colorNamespace = controls.colorNamespace
	local tokens = useTokens()

	local presentationValue = React.useMemo(function()
		return { colorNamespace = colorNamespace }
	end, { colorNamespace })

	local iconButton = React.createElement(IconButton, {
		icon = {
			name = controls.name,
			variant = controls.variant,
		},
		variant = controls.buttonVariant,
		onActivated = function()
			print(`{colorNamespace} {controls.buttonVariant} IconButton activated`)
		end,
		isDisabled = controls.isDisabled,
		size = controls.size,
		isCircular = controls.isCircular,
		fillBehavior = if controls.fillBehavior == React.None then nil else controls.fillBehavior,
	})

	return React.createElement(View, {
		tag = "row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium",
		backgroundStyle = if controls.buttonVariant == ButtonVariant.OverMedia
			then tokens.Color.Extended.White.White_100
			elseif colorNamespace then tokens[colorNamespace].Surface.Surface_100
			else nil,
	}, {
		Gradient = if controls.buttonVariant == ButtonVariant.OverMedia
			then React.createElement("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, tokens.Color.Extended.Green.Green_500.Color3),
					ColorSequenceKeypoint.new(1, tokens.Color.Extended.Blue.Blue_500.Color3),
				}),
			})
			else nil,
		IconButton = React.createElement(PresentationContext.Provider, { value = presentationValue }, iconButton),
	})
end

local function VariantStory(props: { variant: IconButtonVariant })
	local variant: IconButtonVariant = props.variant
	local tokens = useTokens()

	local presentationValue = React.useMemo(function()
		return { isIconSize = false, colorNamespace = ColorNamespace.Color }
	end, {})

	return React.createElement(View, {
		tag = "row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium",
		backgroundStyle = if variant == ButtonVariant.OverMedia then tokens.Color.Extended.White.White_100 else nil,
	}, {
		Gradient = if variant == ButtonVariant.OverMedia
			then React.createElement("UIGradient", {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, tokens.Color.Extended.Green.Green_500.Color3),
					ColorSequenceKeypoint.new(1, tokens.Color.Extended.Blue.Blue_500.Color3),
				}),
			})
			else nil,
		IconButtons = React.createElement(
			PresentationContext.Provider,
			{ value = presentationValue },
			Dash.map(
				{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
				function(size)
					return React.createElement(IconButton, {
						icon = BuilderIcons.Icon.PlaySmall,
						variant = variant,
						onActivated = function()
							print(`{variant} IconButton ({size}) activated`)
						end,
						size = size,
					})
				end
			)
		),
	})
end

local stories = Dash.map(SUPPORTED_VARIANTS, function(variant)
	return {
		name = variant,
		story = function()
			return React.createElement(VariantStory, { variant = variant })
		end,
	}
end)

table.insert(stories, 1, {
	name = "Playground",
	story = PlaygroundStory :: unknown,
})

table.insert(stories, {
	name = "Width",
	summary = "Width, fillBehavior, and precedence. Default uses the fixed square size from the variant system. Width (scale or offset) overrides. fillBehavior.Fill takes precedence over width.",
	story = function()
		local children = {
			Default = React.createElement(View, {
				LayoutOrder = 1,
				tag = "col gap-xxsmall auto-xy",
			}, {
				Label = React.createElement(Text, {
					Text = "Default (fixed square)",
					tag = "auto-xy text-body-small",
					LayoutOrder = 1,
				}),
				Row = React.createElement(View, {
					tag = "row gap-medium auto-xy",
					LayoutOrder = 2,
				}, {
					React.createElement(IconButton, {
						icon = BuilderIcons.Icon.PlaySmall,
						variant = ButtonVariant.Emphasis,
						onActivated = function() end,
						size = InputSize.Medium,
					}),
				}),
			}),
			FixedWidth = React.createElement(View, {
				LayoutOrder = 2,
				tag = "col gap-xxsmall auto-xy",
			}, {
				Label = React.createElement(Text, {
					Text = "Fixed width (0, 200px)",
					tag = "auto-xy text-body-small",
					LayoutOrder = 1,
				}),
				Row = React.createElement(View, {
					tag = "row gap-medium auto-xy",
					LayoutOrder = 2,
				}, {
					React.createElement(IconButton, {
						icon = BuilderIcons.Icon.PlaySmall,
						variant = ButtonVariant.Emphasis,
						onActivated = function() end,
						size = InputSize.Medium,
						width = UDim.new(0, 200),
					}),
				}),
			}),
		}
		children.FillBehaviorTakesPrecedence = React.createElement(View, {
			LayoutOrder = 4,
			tag = "col gap-xxsmall auto-xy",
		}, {
			Label = React.createElement(Text, {
				Text = "fillBehavior.Fill takes precedence over width=200px",
				tag = "auto-xy text-body-small",
				LayoutOrder = 1,
			}),
			Row = React.createElement(View, {
				tag = "row size-full-0 auto-xy",
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 60),
			}, {
				React.createElement(IconButton, {
					icon = BuilderIcons.Icon.PlaySmall,
					variant = ButtonVariant.Emphasis,
					onActivated = function() end,
					size = InputSize.Medium,
					width = UDim.new(0, 200),
					fillBehavior = FillBehavior.Fill,
				}),
			}),
		})

		return React.createElement(View, {
			tag = "col gap-large size-full-0 auto-xy padding-large radius-medium",
		}, children)
	end,
})
table.insert(stories, {
	name = "FillBehavior",
	summary = "The same icon button rendered with each fillBehavior",
	story = function()
		return React.createElement(View, {
			tag = "row gap-medium size-full-0 auto-y padding-medium radius-medium",
		}, {
			None = React.createElement(IconButton, {
				icon = BuilderIcons.Icon.PlaySmall,
				variant = ButtonVariant.Emphasis,
				onActivated = function() end,
				size = InputSize.Medium,
				LayoutOrder = 1,
			}),
			Fit = React.createElement(IconButton, {
				icon = BuilderIcons.Icon.PlaySmall,
				variant = ButtonVariant.Emphasis,
				onActivated = function() end,
				size = InputSize.Medium,
				fillBehavior = FillBehavior.Fit,
				LayoutOrder = 2,
			}),
			Fill = React.createElement(IconButton, {
				icon = BuilderIcons.Icon.PlaySmall,
				variant = ButtonVariant.Emphasis,
				onActivated = function() end,
				size = InputSize.Medium,
				fillBehavior = FillBehavior.Fill,
				LayoutOrder = 3,
			}),
		})
	end,
})

return {
	summary = "IconButton",
	stories = stories,
	controls = {
		name = {
			"play-small",
			"play-large",
			"play-xlarge",
			"robux",
			"heart",
			"glasses",
		},
		variant = Dash.values(BuilderIcons.IconVariant),
		buttonVariant = SUPPORTED_VARIANTS,
		size = { InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
		isDisabled = false,
		isCircular = false,
		colorNamespace = Dash.values(ColorNamespace),
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
	},
}
