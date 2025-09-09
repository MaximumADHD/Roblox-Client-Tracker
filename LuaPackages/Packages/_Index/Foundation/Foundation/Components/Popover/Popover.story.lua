local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Button = require(Foundation.Components.Button)
local TextInput = require(Foundation.Components.TextInput)
local Popover = require(Foundation.Components.Popover)
local InputSize = require(Foundation.Enums.InputSize)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local Radius = require(Foundation.Enums.Radius)
local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)
local useMeasurableRef = require(Foundation.Components.Popover.useMeasurableRef)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Flags = require(Foundation.Utility.Flags)

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
		AnchorRef = {
			name = "Anchor Reference",
			story = function(props)
				local buttonRef = React.useRef(nil)
				local open, setOpen = React.useState(false)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 1000),
					tag = "row align-x-center align-y-center",
				}, {
					Button = React.createElement(Button, {
						text = "Click me to toggle!",
						size = InputSize.Medium,
						ref = buttonRef,
						onActivated = function()
							setOpen(not open)
						end,
					}),
					Popover = React.createElement(Popover.Root, {
						isOpen = open,
					}, {
						Anchor = React.createElement(Popover.Anchor, {
							anchorRef = buttonRef,
						}),
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
									Text = "Anchor Reference Example",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Subtitle = React.createElement(Text, {
									Text = "This popover is anchored to a button using anchorRef",
									tag = "auto-xy text-body-small",
								}),
							})
						),
					}),
				})
			end,
		},
		KeyboardAware = {
			name = "Keyboard Aware Input",
			story = function(props)
				Flags.FoundationPopoverOnScreenKeyboard = props.controls.keyboardAware
				local open, setOpen = React.useState(false)
				local inputText, setInputText = React.useState("")

				return React.createElement(View, {
					tag = "col align-x-center align-y-center size-full-0 auto-y gap-large",
				}, {
					Instructions = React.createElement(Text, {
						Text = "Focus the input field to test keyboard-aware positioning",
						tag = "auto-xy text-body-medium content-emphasis",
						padding = {
							bottom = UDim.new(0, 500),
						},
					}),
					Popover = React.createElement(Popover.Root, {
						isOpen = open,
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(View, {
								tag = "col gap-medium auto-xy",
							}, {
								TextInputField = React.createElement(TextInput, {
									size = InputSize.Medium,
									label = "Test Input",
									placeholder = "Type something here...",
									text = inputText,
									onChanged = function(newText)
										setInputText(newText)
									end,
									onFocusGained = function()
										setOpen(true)
									end,
									onFocusLost = function()
										-- Small delay to allow popover interaction before closing
										task.spawn(function()
											task.wait(0.1)
											setOpen(false)
										end)
									end,
								}),
								ToggleButton = React.createElement(Button, {
									text = if open then "Close Popover" else "Open Popover",
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
								side = PopoverSide.Bottom,
								align = PopoverAlign.Start,
								onPressedOutside = function()
									setOpen(false)
								end,
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
								Size = UDim2.fromOffset(300, 0),
							}, {
								Title = React.createElement(Text, {
									Text = "Keyboard-Aware Popover",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Description = React.createElement(Text, {
									Text = "This popover should avoid the on-screen keyboard on touch devices.",
									tag = "auto-xy text-body-small",
								}),
								CurrentText = React.createElement(Text, {
									Text = `Current input: "{inputText}"`,
									tag = "auto-xy text-body-small content-subtle",
								}),
							})
						),
					}),
				})
			end,
		},
		MousePositionTooltip = {
			name = "MousePositionTooltip",
			story = function(props)
				local open, setOpen = React.useState(false)
				local virtualRef = useMeasurableRef(Vector2.zero)

				local wrapperRef = React.useRef(nil :: GuiObject?)

				React.useEffect(function()
					if wrapperRef.current == nil then
						return
					end

					local mouseMoveConnection = wrapperRef.current.MouseMoved:Connect(function(x, y)
						virtualRef.current:SetPosition(Vector2.new(x, y))
						setOpen(true)
					end)

					local mouseLeaveConnection = wrapperRef.current.MouseLeave:Connect(function()
						setOpen(false)
					end)

					return function()
						mouseMoveConnection:Disconnect()
						mouseLeaveConnection:Disconnect()
					end
				end, {})

				return React.createElement(View, {
					tag = "row align-x-center align-y-center size-full-3000 bg-surface-200",
					ref = wrapperRef,
				}, {
					Text = React.createElement(Text, {
						Text = "Move the mouse over this area to see a tooltip",
						tag = "text-align-x-center",
					}),
					Popover = React.createElement(Popover.Root, {
						isOpen = open,
					}, {
						Anchor = React.createElement(Popover.Anchor, { anchorRef = virtualRef }),
						Content = React.createElement(
							Popover.Content,
							{
								align = props.controls.align,
								side = props.controls.side,
								-- hasArrow has no effect on the virtualRef anchors, and is always false
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Title = React.createElement(Text, {
									Text = "Can't close unless you are in the area",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
							})
						),
					}),
				})
			end,
		},
		ContextMenu = {
			name = "Context menu",
			story = function(props)
				local open, setOpen = React.useState(false)
				local virtualRef = useMeasurableRef(Vector2.zero)
				local wrapperRef = React.useRef(nil :: GuiButton?)

				React.useEffect(function()
					if wrapperRef.current == nil then
						return
					end

					local mouseButtonRightConnection = wrapperRef.current.MouseButton2Up:Connect(function(x, y)
						virtualRef.current:SetPosition(Vector2.new(x, y))
						setOpen(true)
					end)

					return function()
						mouseButtonRightConnection:Disconnect()
					end
				end, {})

				return React.createElement(View, {
					tag = "align-x-center align-y-center size-full-3000 bg-surface-200",
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					onActivated = function() end,
					ref = wrapperRef,
				}, {
					Text = React.createElement(Text, {
						Text = "Right-click on this area to open the context menu.",
						tag = "text-align-x-center size-full-full",
					}),
					Popover = React.createElement(Popover.Root, {
						isOpen = open,
					}, {
						Anchor = React.createElement(Popover.Anchor, { anchorRef = virtualRef }),
						Content = React.createElement(
							Popover.Content,
							{
								align = props.controls.align,
								side = props.controls.side,
								-- hasArrow has no effect on the virtualRef anchors, and is always false
								onPressedOutside = function()
									setOpen(false)
								end,
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Text1 = React.createElement(Text, {
									Text = "Context Menu",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Text2 = React.createElement(Text, {
									Text = "Right-click functionality enabled.",
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
		radius = { Radius.Small, Radius.Medium, Radius.Circle } :: { Radius.Radius },
		backgroundStyle = backgroundStyleOrderedKeys,
		keyboardAware = Flags.FoundationPopoverOnScreenKeyboard,
	},
}
