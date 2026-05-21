local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local SearchInput = require(Foundation.Components.SearchInput)

local IconButton = require(Foundation.Components.IconButton)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local HeaderBar = require(script.Parent)

return {
	controls = {
		isCompact = false,
		hasBackground = true,
		title = "Title",
	},
	stories = {
		{
			summary = "Default",
			story = function(props)
				local tokens = useTokens()
				local isSearchOpen, setIsSearchOpen = React.useState(false)

				-- We need to use a wrapper View with a different background
				-- color since HeaderBar blends in with DevStorybook.
				return React.createElement(View, {
					tag = "size-full-0 auto-y padding-large",
					backgroundStyle = if props.controls.hasBackground then tokens.Inverse.Surface.Surface_0 else nil,
				}, {
					HeaderBar = React.createElement(HeaderBar.Root, {
						isCompact = props.controls.isCompact,
						hasBackground = props.controls.hasBackground,
					}, {
						Leading = React.createElement(HeaderBar.Leading, nil, {
							Menu = React.createElement(IconButton, {
								icon = BuilderIcons.Icon.ThreeBarsHorizontal,
								onActivated = function() end,
								LayoutOrder = 1,
							}),

							Title = React.createElement(Text, {
								tag = "auto-xy content-emphasis text-heading-medium",
								Text = props.controls.title,
								LayoutOrder = 2,
							}),
						}),

						Content = React.createElement(HeaderBar.Content, nil, {
							Search = if isSearchOpen
								then React.createElement(SearchInput, {
									text = "",
									onChanged = function() end,
								})
								else nil,
						}),

						Trailing = React.createElement(HeaderBar.Trailing, nil, {
							Search = React.createElement(IconButton, {
								icon = BuilderIcons.Icon.MagnifyingGlass,
								onActivated = function()
									setIsSearchOpen(function(prev)
										return not prev
									end)
								end,
								LayoutOrder = 1,
							}),

							Robux = React.createElement(IconButton, {
								icon = BuilderIcons.Icon.Robux,
								onActivated = function() end,
								LayoutOrder = 2,
							}),

							Notifications = React.createElement(IconButton, {
								icon = BuilderIcons.Icon.Bell,
								onActivated = function() end,
								LayoutOrder = 3,
							}),
						}),
					}),
				})
			end,
		},
	},
}
