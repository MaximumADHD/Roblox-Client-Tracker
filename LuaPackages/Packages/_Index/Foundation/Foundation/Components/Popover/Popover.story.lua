local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Button = require(Foundation.Components.Button)
local Popover = require(Foundation.Components.Popover)
local InputSize = require(Foundation.Enums.InputSize)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local Radius = require(Foundation.Enums.Radius)
local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)

type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide

local useBackgroundStyle = function(key: string): Types.ColorStyle?
	local tokens = useTokens()
	return ({
		Default = nil,
		Surface_0 = tokens.Color.Surface.Surface_0,
		Surface_200 = tokens.Color.Surface.Surface_200,
		ActionAlert = tokens.Color.ActionAlert.Background,
	})[key]
end
-- This is required because storybook sucks, so the only way to order the options if you want to use a map is to use an array.
local backgroundStyleOrderedKeys = { "Default", "Surface_0", "Surface_200", "ActionAlert" }

return {
	summary = "Popover",
	stories = {
		Basic = {
			name = "Basic",
			story = function(props)
				local backgroundStyle = useBackgroundStyle(props.controls.backgroundStyle)
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 1000),
					tag = "row align-x-center align-y-center",
				}, {
					Popover = React.createElement(Popover.Root, {
						isOpen = true,
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(View, {
								tag = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large",
							}, {
								Text = React.createElement(Text, {
									Text = "I am a card",
									tag = "auto-xy text-heading-medium",
								}),
								Button = React.createElement(Button, {
									text = "Just a button!",
									size = InputSize.Medium,
									onActivated = function()
										print("Button activated")
									end,
								}),
							})
						),
						Content = React.createElement(
							Popover.Content,
							{
								align = props.controls.align,
								side = props.controls.side,
								backgroundStyle = backgroundStyle,
								radius = props.controls.radius,
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Title = React.createElement(Text, {
									Text = "Tooltip Title",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Subtitle = React.createElement(Text, {
									Text = "Here's the tootip's subtitle and content.",
									tag = "auto-xy text-body-small",
								}),
							})
						),
					}),
				})
			end,
		},
		ClickOutside = {
			name = "Click Outside",
			story = function(props)
				local open, setOpen = React.useState(false)

				return React.createElement(View, {
					tag = "row align-x-center align-y-center size-full-0 auto-y",
				}, {
					Popover = React.createElement(Popover.Root, {
						isOpen = open,
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(View, {
								tag = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large",
							}, {
								Text = React.createElement(Text, {
									Text = "I am a card",
									tag = "auto-xy text-heading-medium",
								}),
								Button = React.createElement(Button, {
									text = "Click me to toggle!",
									size = InputSize.Medium,
									onActivated = function()
										setOpen(not open)
									end,
								}),
							})
						),
						Content = React.createElement(
							Popover.Content,
							{
								align = props.controls.align,
								side = props.controls.side,
								onPressedOutside = function()
									setOpen(false)
								end,
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Title = React.createElement(Text, {
									Text = "Click outside example",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Subtitle = React.createElement(Text, {
									Text = "Click anywhere outside to close this",
									tag = "auto-xy text-body-small",
								}),
							})
						),
					}),
				})
			end,
		},
	},
	controls = {
		side = Dash.values(PopoverSide),
		align = Dash.values(PopoverAlign),
		radius = { Radius.Small :: Radius.Radius, Radius.Medium },
		backgroundStyle = backgroundStyleOrderedKeys,
	},
}
