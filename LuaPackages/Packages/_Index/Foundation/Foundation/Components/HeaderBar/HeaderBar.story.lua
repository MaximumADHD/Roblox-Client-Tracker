local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Divider = require(Foundation.Components.Divider)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local Orientation = require(Foundation.Enums.Orientation)
local SearchInput = require(Foundation.Components.SearchInput)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local useTokens = require(Foundation.Providers.Style.useTokens)

local HeaderBar = require(script.Parent)

type Breakpoint = Breakpoint.Breakpoint

type Controls = {
	hasBackground: boolean,
	title: string,
}

type StoryProps = {
	controls: Controls,
}

type StoryWrapperProps = Controls & {
	children: React.Node?,
}

local function StoryWrapper(props: StoryWrapperProps): React.ReactNode
	local tokens = useTokens()

	-- We need to use a wrapper View with a different background
	-- color since HeaderBar blends in with DevStorybook.
	return React.createElement(View, {
		tag = "size-full-0 auto-y padding-large col gap-small",
		backgroundStyle = if props.hasBackground then tokens.Inverse.Surface.Surface_0 else nil,
	}, props.children)
end

return {
	controls = {
		hasBackground = true,
		title = "Title",
	},
	stories = {
		{
			name = "Base",
			story = function(props: StoryProps)
				local isSearchOpen, setIsSearchOpen = React.useState(false)

				return React.createElement(StoryWrapper, props.controls :: StoryWrapperProps, {
					HeaderBar = React.createElement(HeaderBar.Root, {
						hasBackground = props.controls.hasBackground,
					}, {
						Leading = React.createElement(HeaderBar.Leading, nil, {
							Actions = React.createElement(HeaderBar.Actions, {
								actions = {
									{
										id = "menu",
										icon = BuilderIcons.Icon.ThreeBarsHorizontal,
										onActivated = function()
											print("Toggle menu")
										end,
									},
								},
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
							Actions = React.createElement(HeaderBar.Actions, {
								actions = {
									{
										id = "search",
										icon = BuilderIcons.Icon.MagnifyingGlass,
										onActivated = function()
											setIsSearchOpen(function(prev)
												return not prev
											end)
										end,
									},
									{
										id = "robux",
										icon = BuilderIcons.Icon.Robux,
										onActivated = function()
											print("Robux")
										end,
									},
									{
										id = "notifications",
										icon = BuilderIcons.Icon.Bell,
										onActivated = function()
											print("Notifications")
										end,
									},
								},
							}),
						}),
					}),
				})
			end,
		},
		{
			name = "Negative margins",
			summary = "`HeaderBar.Actions` implicitly applies a negative margin so that the glyph of the left- or right-most IconButton will be aligned with the page content.",
			story = function(props)
				local leadingActions: { HeaderBar.HeaderBarAction } = {
					{
						id = "menu",
						icon = BuilderIcons.Icon.ThreeBarsHorizontal,
						onActivated = function()
							print("Toggle menu")
						end,
					},
				}
				local trailingActions: { HeaderBar.HeaderBarAction } = {
					{
						id = "search",
						icon = BuilderIcons.Icon.MagnifyingGlass,
						onActivated = function()
							print("Search")
						end,
					},
					{
						id = "robux",
						icon = BuilderIcons.Icon.Robux,
						onActivated = function()
							print("Robux")
						end,
					},
					{
						id = "notifications",
						icon = BuilderIcons.Icon.Bell,
						onActivated = function()
							print("Notifications")
						end,
					},
				}

				return React.createElement(StoryWrapper, props.controls :: StoryWrapperProps, {
					LeadingAndTrailingActions = React.createElement(HeaderBar.Root, {
						hasBackground = props.controls.hasBackground,
						LayoutOrder = 1,
					}, {
						Leading = React.createElement(HeaderBar.Leading, nil, {
							Actions = React.createElement(HeaderBar.Actions, {
								actions = leadingActions,
							}),
							Title = React.createElement(Text, {
								tag = "auto-xy content-emphasis text-heading-medium",
								Text = props.controls.title,
								LayoutOrder = 2,
							}),
						}),
						Trailing = React.createElement(HeaderBar.Trailing, nil, {
							Actions = React.createElement(HeaderBar.Actions, {
								actions = trailingActions,
							}),
						}),
					}),
					TrailingActionsOnly = React.createElement(HeaderBar.Root, {
						hasBackground = props.controls.hasBackground,
						LayoutOrder = 2,
					}, {
						Leading = React.createElement(HeaderBar.Leading, nil, {
							Title = React.createElement(Text, {
								tag = "auto-xy content-emphasis text-heading-medium",
								Text = props.controls.title,
							}),
						}),
						Trailing = React.createElement(HeaderBar.Trailing, nil, {
							Actions = React.createElement(HeaderBar.Actions, {
								actions = trailingActions,
							}),
						}),
					}),
					TrailingButton = React.createElement(HeaderBar.Root, {
						hasBackground = props.controls.hasBackground,
						LayoutOrder = 3,
					}, {
						Leading = React.createElement(HeaderBar.Leading, nil, {
							Actions = React.createElement(HeaderBar.Actions, {
								actions = leadingActions,
							}),
							Title = React.createElement(Text, {
								tag = "auto-xy content-emphasis text-heading-medium",
								Text = props.controls.title,
								LayoutOrder = 2,
							}),
						}),
						Trailing = React.createElement(HeaderBar.Trailing, nil, {
							Button = React.createElement(Button, {
								text = "Sign in",
								onActivated = function()
									print("Sign in")
								end,
							}),
						}),
					}),
				})
			end,
		},
		{
			name = "Dual-pane layout",
			summary = "Shows how HeaderBar composition adapts across multiple panes. At Small breakpoints, the Primary pane collapses and can be opened from the Aside pane.",
			story = function(props: StoryProps)
				local controls = props.controls

				local container, setContainer = React.useState(nil :: GuiObject?)
				local breakpoint: Breakpoint = useBreakpoint(container)
				local isMessageViewCollapsed = breakpoint == Breakpoint.XSmall or breakpoint == Breakpoint.Small
				local isMessageViewVisible, setIsMessageViewVisible = React.useState(false)
				local showChatHistory = not isMessageViewCollapsed or not isMessageViewVisible
				local showMessageView = not isMessageViewCollapsed or isMessageViewVisible

				return React.createElement(StoryWrapper, props.controls :: StoryWrapperProps, {
					Story = React.createElement(View, {
						tag = "row size-full-0 auto-y bg-surface-0 stroke-default",
						sizeConstraint = {
							MaxSize = Vector2.new(math.huge, 300),
						},
						LayoutOrder = 1,
						ref = setContainer,
					}, {
						ChatHistory = if showChatHistory
							then React.createElement(View, {
								tag = "col size-full shrink",
								sizeConstraint = {
									MaxSize = Vector2.new(BreakpointConfig.widths[Breakpoint.Small], math.huge),
								},
								LayoutOrder = 1,
							}, {
								HeaderBar = React.createElement(HeaderBar.Root, {
									hasBackground = controls.hasBackground,
									LayoutOrder = 1,
								}, {
									Leading = React.createElement(HeaderBar.Leading, nil, {
										Title = React.createElement(Text, {
											tag = "auto-xy content-emphasis text-heading-medium",
											Text = controls.title,
											LayoutOrder = 1,
										}),
									}),

									Trailing = React.createElement(HeaderBar.Trailing, nil, {
										Search = React.createElement(IconButton, {
											icon = BuilderIcons.Icon.MagnifyingGlass,
											onActivated = function()
												print("Search activated")
											end,
											LayoutOrder = 1,
										}),

										Robux = React.createElement(IconButton, {
											icon = BuilderIcons.Icon.Robux,
											onActivated = function()
												print("Robux activated")
											end,
											LayoutOrder = 2,
										}),

										Notifications = React.createElement(IconButton, {
											icon = BuilderIcons.Icon.Bell,
											onActivated = function()
												print("Notifications activated")
											end,
											LayoutOrder = 3,
										}),
									}),
								}),

								Content = React.createElement(View, {
									tag = "col size-full-0 fill gap-medium padding-large",
									LayoutOrder = 2,
								}, {
									Description = React.createElement(Text, {
										tag = "size-full-0 auto-y content-default text-body-medium text-align-x-left",
										Text = "Recent conversations",
										LayoutOrder = 1,
									}),

									ChatRow = React.createElement(Button, {
										text = "Username",
										variant = ButtonVariant.Standard,
										size = InputSize.Medium,
										width = UDim.new(1, 0),
										onActivated = function()
											setIsMessageViewVisible(true)
										end,
										LayoutOrder = 2,
									}),
								}),
							})
							else nil,

						Divider = if isMessageViewCollapsed
							then nil
							else React.createElement(Divider, {
								orientation = Orientation.Vertical,
								LayoutOrder = 2,
							}),

						MessageView = if showMessageView
							then React.createElement(View, {
								tag = "col size-full fill",
								LayoutOrder = 3,
							}, {
								HeaderBar = React.createElement(HeaderBar.Root, {
									hasBackground = controls.hasBackground,
									LayoutOrder = 1,
								}, {
									Leading = React.createElement(HeaderBar.Leading, nil, {
										Back = if isMessageViewCollapsed
											then React.createElement(IconButton, {
												icon = BuilderIcons.Icon.ChevronLargeLeft,
												isCircular = true,
												onActivated = function()
													setIsMessageViewVisible(false)
												end,
												LayoutOrder = 1,
											})
											else nil,

										Account = React.createElement(View, {
											tag = "row align-y-center gap-small auto-xy",
											LayoutOrder = 2,
										}, {
											Avatar = React.createElement(Avatar, {
												userId = 24813339,
												size = InputSize.Medium,
												LayoutOrder = 1,
											}),

											Text = React.createElement(View, {
												tag = "col auto-xy",
												LayoutOrder = 2,
											}, {
												Name = React.createElement(Text, {
													tag = "auto-xy content-emphasis text-label-medium",
													Text = "Username",
													LayoutOrder = 1,
												}),

												Handle = React.createElement(Text, {
													tag = "auto-xy content-default text-body-small",
													Text = "@handle",
													LayoutOrder = 2,
												}),
											}),
										}),
									}),

									Trailing = React.createElement(HeaderBar.Trailing, nil, {
										Button = React.createElement(Button, {
											text = "Button",
											variant = ButtonVariant.Standard,
											size = InputSize.Medium,
											onActivated = function()
												print("Button activated")
											end,
											LayoutOrder = 1,
										}),
									}),
								}),

								Content = React.createElement(Text, {
									tag = "size-full-0 fill content-default text-body-medium padding-large text-align-x-left text-align-y-top",
									Text = "Conversation pane",
									LayoutOrder = 2,
								}),
							})
							else nil,
					}),
				})
			end,
		},
		{
			name = "Menu leading accessory",
			summary = "Shows when menu and logo content belongs in HeaderBar versus the surrounding navigation shell.",
			story = function(props: StoryProps)
				local controls = props.controls
				local container, setContainer = React.useState(nil :: GuiObject?)
				local breakpoint: Breakpoint = useBreakpoint(container)
				local isMobile = breakpoint == Breakpoint.XSmall or breakpoint == Breakpoint.Small

				return React.createElement(StoryWrapper, props.controls :: StoryWrapperProps, {
					Story = if isMobile
						then React.createElement(View, {
							tag = "col size-full-0 auto-y bg-surface-0 stroke-default",
							LayoutOrder = 1,
							ref = setContainer,
						}, {
							HeaderBar = React.createElement(HeaderBar.Root, {
								hasBackground = controls.hasBackground,
								LayoutOrder = 1,
							}, {
								Leading = React.createElement(HeaderBar.Leading, nil, {
									Menu = React.createElement(IconButton, {
										icon = BuilderIcons.Icon.ThreeBarsHorizontal,
										onActivated = function()
											print("Menu activated")
										end,
										LayoutOrder = 1,
									}),

									Logo = React.createElement(Text, {
										tag = "auto-xy content-emphasis text-heading-medium",
										Text = "ROBLOX",
										LayoutOrder = 2,
									}),
								}),

								Trailing = React.createElement(HeaderBar.Trailing, nil, {
									Search = React.createElement(IconButton, {
										icon = BuilderIcons.Icon.MagnifyingGlass,
										onActivated = function()
											print("Search activated")
										end,
										LayoutOrder = 1,
									}),

									Robux = React.createElement(IconButton, {
										icon = BuilderIcons.Icon.Robux,
										onActivated = function()
											print("Robux activated")
										end,
										LayoutOrder = 2,
									}),

									Notifications = React.createElement(IconButton, {
										icon = BuilderIcons.Icon.Bell,
										onActivated = function()
											print("Notifications activated")
										end,
										LayoutOrder = 3,
									}),
								}),
							}),

							Content = React.createElement(Text, {
								tag = "auto-xy content-default text-body-medium padding-large",
								Text = "Mobile menu lives in HeaderBar.",
								LayoutOrder = 2,
							}),
						})
						else React.createElement(View, {
							tag = "row size-full-0 auto-y bg-surface-0 stroke-default",
							LayoutOrder = 1,
							ref = setContainer,
						}, {
							NavRail = React.createElement(View, {
								tag = "col gap-small padding-medium bg-surface-0",
								Size = UDim2.new(0, 72, 1, 0),
								LayoutOrder = 1,
							}, {
								Menu = React.createElement(IconButton, {
									icon = BuilderIcons.Icon.ThreeBarsHorizontal,
									onActivated = function()
										print("Menu activated")
									end,
									LayoutOrder = 1,
								}),
							}),

							Main = React.createElement(View, {
								tag = "col size-full-0",
								Size = UDim2.new(1, -72, 1, 0),
								LayoutOrder = 2,
							}, {
								HeaderBar = React.createElement(HeaderBar.Root, {
									hasBackground = controls.hasBackground,
									LayoutOrder = 1,
								}, {
									Leading = React.createElement(HeaderBar.Leading, nil, {
										Logo = React.createElement(Text, {
											tag = "auto-xy content-emphasis text-heading-medium",
											Text = "ROBLOX",
											LayoutOrder = 1,
										}),
									}),

									Trailing = React.createElement(HeaderBar.Trailing, nil, {
										Search = React.createElement(IconButton, {
											icon = BuilderIcons.Icon.MagnifyingGlass,
											onActivated = function()
												print("Search activated")
											end,
											LayoutOrder = 1,
										}),

										Robux = React.createElement(IconButton, {
											icon = BuilderIcons.Icon.Robux,
											onActivated = function()
												print("Robux activated")
											end,
											LayoutOrder = 2,
										}),

										Notifications = React.createElement(IconButton, {
											icon = BuilderIcons.Icon.Bell,
											onActivated = function()
												print("Notifications activated")
											end,
											LayoutOrder = 3,
										}),
									}),
								}),

								Content = React.createElement(Text, {
									tag = "auto-xy content-default text-body-medium padding-large",
									Text = "Collapsed nav leaves logo content in HeaderBar.",
									LayoutOrder = 2,
								}),
							}),
						}),
				})
			end,
		},
		{
			name = "Title positioning",
			summary = "Shows whether title content lives inside HeaderBar or below it in the page body.",
			story = function(props: StoryProps)
				local controls = props.controls
				local container, setContainer = React.useState(nil :: GuiObject?)
				local breakpoint: Breakpoint = useBreakpoint(container)
				local titleInHeader = breakpoint == Breakpoint.XSmall or breakpoint == Breakpoint.Small

				return React.createElement(StoryWrapper, props.controls :: StoryWrapperProps, {
					Story = React.createElement(View, {
						tag = "col size-full-0 auto-y bg-surface-0 stroke-default",
						LayoutOrder = 1,
						ref = setContainer,
					}, {
						HeaderBar = React.createElement(HeaderBar.Root, {
							hasBackground = controls.hasBackground,
							LayoutOrder = 1,
						}, {
							Leading = React.createElement(HeaderBar.Leading, nil, {
								Menu = if not titleInHeader
									then React.createElement(IconButton, {
										icon = BuilderIcons.Icon.ThreeBarsHorizontal,
										onActivated = function()
											print("Menu activated")
										end,
										LayoutOrder = 1,
									})
									else nil,
								Breadcrumbs = if not titleInHeader
									then React.createElement(View, {
										tag = "row align-y-center gap-small auto-xy",
										LayoutOrder = 2,
									}, {
										First = React.createElement(Text, {
											tag = "auto-xy content-default text-body-medium",
											Text = "Link",
											LayoutOrder = 1,
										}),
										FirstSeparator = React.createElement(Text, {
											tag = "auto-xy content-default text-body-medium",
											Text = "/",
											LayoutOrder = 2,
										}),
										Second = React.createElement(Text, {
											tag = "auto-xy content-default text-body-medium",
											Text = "Link",
											LayoutOrder = 3,
										}),
										SecondSeparator = React.createElement(Text, {
											tag = "auto-xy content-default text-body-medium",
											Text = "/",
											LayoutOrder = 4,
										}),
										Current = React.createElement(Text, {
											tag = "auto-xy content-emphasis text-label-medium",
											Text = "Link",
											LayoutOrder = 5,
										}),
									})
									else React.createElement(Text, {
										tag = "auto-xy content-emphasis text-heading-medium",
										Text = controls.title,
										LayoutOrder = 1,
									}),
							}),
							Trailing = React.createElement(HeaderBar.Trailing, nil, {
								Search = React.createElement(IconButton, {
									icon = BuilderIcons.Icon.MagnifyingGlass,
									onActivated = function()
										print("Search activated")
									end,
									LayoutOrder = 1,
								}),
								Robux = React.createElement(IconButton, {
									icon = BuilderIcons.Icon.Robux,
									onActivated = function()
										print("Robux activated")
									end,
									LayoutOrder = 2,
								}),
								Notifications = React.createElement(IconButton, {
									icon = BuilderIcons.Icon.Bell,
									onActivated = function()
										print("Notifications activated")
									end,
									LayoutOrder = 3,
								}),
							}),
						}),
						PageTitle = if titleInHeader
							then nil
							else React.createElement(View, {
								tag = "row align-y-center size-full-1200 padding-x-large",
								LayoutOrder = 2,
							}, {
								Title = React.createElement(Text, {
									tag = "auto-xy content-emphasis text-heading-medium",
									Text = controls.title,
									LayoutOrder = 1,
								}),
							}),
						Content = React.createElement(Text, {
							tag = "auto-xy content-default text-body-medium padding-large",
							Text = if titleInHeader
								then "Title is inside HeaderBar."
								else "Title is positioned below HeaderBar.",
							LayoutOrder = 3,
						}),
					}),
				})
			end,
		},
	},
}
