local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Button = require(Foundation.Components.Button)
local Popover = require(Foundation.Components.Popover)
local ButtonSize = require(Foundation.Enums.ButtonSize)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)

return {
	summary = "Popover",
	stories = {
		Basic = {
			name = "Basic",
			story = function(props)
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
									size = ButtonSize.Medium,
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
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Title = React.createElement(Text, {
									Text = "Tooltip Title",
									tag = "auto-xy text-title-medium",
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
									text = "Click me to open!",
									size = ButtonSize.Medium,
									onActivated = function()
										setOpen(true)
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
									tag = "auto-xy text-title-medium",
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
	},
}
