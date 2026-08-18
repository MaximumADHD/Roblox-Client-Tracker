local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Toggle = require(Foundation.Components.Toggle)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)

local SIZES: { { name: string, value: InputSize.InputSize } } = {
	{ name = "XSmall", value = InputSize.XSmall },
	{ name = "Small", value = InputSize.Small },
	{ name = "Medium", value = InputSize.Medium },
	{ name = "Large", value = InputSize.Large },
}

local function activated(label: string)
	return function()
		print(`Toggle: "{label}" activated`)
	end
end

type GroupProps = {
	caption: string,
	contentTag: string,

	LayoutOrder: number?,
	children: React.ReactNode?,
}

local function Group(props: GroupProps)
	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Caption = React.createElement(Text, {
			Text = props.caption,
			tag = "text-body-small content-default auto-xy",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag,
			LayoutOrder = 2,
		}, props.children),
	})
end

return {
	summary = "Toggle component",
	stories = {
		{
			name = "Playground",
			story = function(props)
				local isChecked, setIsChecked = React.useState(false)

				return React.createElement(Toggle, {
					isChecked = isChecked,
					isDisabled = props.controls.isDisabled,
					onActivated = function()
						setIsChecked(not isChecked)
					end,
					size = props.controls.size,
					label = props.controls.label or "",
					hint = props.controls.hint,
					placement = props.controls.placement,
				})
			end,
		} :: { name: string, story: (props: any) -> React.Node },
		{
			name = "Sizes",
			summary = "Toggle rendered at every supported size",
			story = function()
				local checkedBySize, setCheckedBySize = React.useState(function()
					local init = {}
					for _, entry in SIZES do
						init[entry.value] = true
					end
					return init
				end)

				return React.createElement(
					View,
					{
						tag = "col gap-xxlarge auto-xy",
					},
					Dash.map(SIZES, function(entry, index)
						return React.createElement(Group, {
							caption = entry.name,
							contentTag = "auto-xy",
							LayoutOrder = index,
						}, {
							Toggle = React.createElement(Toggle, {
								isChecked = checkedBySize[entry.value],
								onActivated = function()
									setCheckedBySize(
										Dash.join(checkedBySize, { [entry.value] = not checkedBySize[entry.value] })
									)
								end,
								size = entry.value,
								label = "Label",
								placement = InputPlacement.Start,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "Placement",
			summary = "Toggle placement options",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map(InputPlacement, function(placement, name)
						return React.createElement(Group, {
							caption = name,
							contentTag = "size-3000-0 auto-y",
						}, {
							Toggle = React.createElement(Toggle, {
								isChecked = true,
								onActivated = activated(name),
								size = InputSize.Medium,
								label = "Label",
								placement = placement,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "IsDisabled",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map({
						{ caption = "False", isDisabled = false },
						{ caption = "True", isDisabled = true },
					}, function(option, index)
						return React.createElement(Group, {
							caption = option.caption,
							contentTag = "auto-xy",
							LayoutOrder = index,
						}, {
							Toggle = React.createElement(Toggle, {
								isChecked = true,
								onActivated = activated("IsDisabled " .. option.caption),
								isDisabled = option.isDisabled,
								size = InputSize.Medium,
								label = "Label",
								placement = InputPlacement.Start,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "Custom Selection",
			summary = "Select card containers instead of toggles",
			story = function()
				local isChatEnabled, setIsChatEnabled = React.useState(false)
				local isNotifications, setIsNotifications = React.useState(true)
				local tokens = useTokens()

				local cursor = React.useMemo(function()
					return {
						radius = UDim.new(0, tokens.Radius.Medium),
						offset = tokens.Size.Size_150,
						borderWidth = tokens.Stroke.Thicker,
					}
				end, { tokens })

				local function createToggleCard(
					label: string,
					description: string,
					isChecked: boolean,
					onToggle: () -> ()
				)
					return React.createElement(View, {
						cursor = cursor,
						onActivated = onToggle,
						tag = "col gap-medium padding-large stroke-muted radius-medium bg-surface-100",
						Size = UDim2.fromOffset(320, 100),
					}, {
						TextContainer = React.createElement(View, {
							tag = "row flex-x-between gap-small size-full-0 auto-y",
							LayoutOrder = 1,
						}, {
							Label = React.createElement(Text, {
								Text = label,
								tag = "auto-xy text-body-medium content-emphasis",
								LayoutOrder = 1,
							}),
							Toggle = React.createElement(Toggle, {
								isChecked = isChecked,
								onActivated = onToggle,
								label = "",
								Selectable = false,
								LayoutOrder = 2,
							}),
						}),
						Description = React.createElement(Text, {
							Text = description,
							tag = "auto-xy text-body-small text-wrap content-muted",
							LayoutOrder = 2,
						}),
					})
				end

				return React.createElement(View, {
					tag = "col gap-large auto-xy",
				}, {
					NotificationsCard = createToggleCard(
						"Push Notifications",
						"Receive notifications for messages and updates",
						isNotifications,
						function()
							setIsNotifications(not isNotifications)
						end
					),
					ChatCard = createToggleCard(
						"Chat",
						"Enable chat for real-time communication",
						isChatEnabled,
						function()
							setIsChatEnabled(not isChatEnabled)
						end
					),
				})
			end,
		},
		{
			name = "Uncontrolled",
			summary = "State is controlled by the toggle itself",
			story = function()
				return React.createElement(Toggle, {
					onActivated = function(value)
						print("isChecked: ", value)
					end,
					size = InputSize.Medium,
					label = "Label",
					placement = InputPlacement.Start,
				})
			end,
		},
	},
	controls = {
		isDisabled = false,
		label = "Label",
		hint = "",
		size = Dash.values(InputSize),
		placement = Dash.values(InputPlacement),
	},
}
