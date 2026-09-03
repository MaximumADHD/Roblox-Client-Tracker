local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Checkbox = require(Foundation.Components.Checkbox)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)

local function activated(label: string)
	return function()
		print(`Checkbox: "{label}" activated`)
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
			tag = "auto-xy text-body-small content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag,
			LayoutOrder = 2,
		}, props.children),
	})
end

return {
	summary = "Checkbox component",
	stories = {
		{
			name = "Playground",
			story = function(props)
				local isChecked, setIsChecked = React.useState(true)

				return React.createElement(Checkbox, {
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
			summary = "Checkbox rendered at every supported size",
			story = function()
				local checkedBySize, setCheckedBySize = React.useState(function()
					local init = {}
					for _, size in InputSize do
						init[size] = true
					end
					return init
				end)

				return React.createElement(
					View,
					{
						tag = "col gap-xxlarge auto-xy",
					},
					Dash.map(
						{ InputSize.XSmall, InputSize.Small, InputSize.Medium, InputSize.Large } :: { InputSize.InputSize },
						function(size, _)
							return React.createElement(Group, {
								caption = size,
								contentTag = "auto-xy",
							}, {
								Checkbox = React.createElement(Checkbox, {
									isChecked = checkedBySize[size],
									onActivated = function()
										setCheckedBySize(Dash.join(checkedBySize, { [size] = not checkedBySize[size] }))
									end,
									size = size,
									label = "Label",
									placement = InputPlacement.Start,
								}),
							})
						end
					)
				)
			end,
		},
		{
			name = "Placement",
			summary = "Checkbox placement options",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map(InputPlacement, function(placement, name)
						return React.createElement(Group, {
							caption = name,
							contentTag = "auto-xy",
						}, {
							Checkbox = React.createElement(Checkbox, {
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
							Checkbox = React.createElement(Checkbox, {
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
			name = "IsIndeterminate",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map({
						{ caption = "False", isIndeterminate = false },
						{ caption = "True", isIndeterminate = true },
					}, function(option, index)
						return React.createElement(Group, {
							caption = option.caption,
							contentTag = "auto-xy",
							LayoutOrder = index,
						}, {
							Checkbox = React.createElement(Checkbox, {
								isChecked = true,
								onActivated = activated("IsIndeterminate " .. option.caption),
								isIndeterminate = option.isIndeterminate,
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
			name = "Indeterminate Aggregation",
			summary = "A checkbox with an indeterminate state aggregating other checkboxes",
			story = function()
				local isChecked1, setIsChecked1 = React.useState(false)
				local isChecked2, setIsChecked2 = React.useState(false)
				local isChecked3, setIsChecked3 = React.useState(true)

				local isAggregationChecked = isChecked1 or isChecked2 or isChecked3
				local isAggregationIndeterminate = isChecked1 ~= isChecked2 or isChecked2 ~= isChecked3

				return React.createElement(View, {
					tag = "col gap-medium size-3000-0 auto-xy",
				}, {
					Aggregation = React.createElement(Checkbox, {
						LayoutOrder = 1,
						isChecked = isAggregationChecked,
						isIndeterminate = isAggregationIndeterminate,
						onActivated = function(value)
							setIsChecked1(value)
							setIsChecked2(value)
							setIsChecked3(value)
						end,
						size = InputSize.Medium,
						label = "",
						placement = InputPlacement.Start,
					}),
					Check1 = React.createElement(Checkbox, {
						LayoutOrder = 2,
						isChecked = isChecked1,
						onActivated = function(value)
							setIsChecked1(value)
						end,
						size = InputSize.Medium,
						label = "Item 1",
						placement = InputPlacement.Start,
					}),
					Check2 = React.createElement(Checkbox, {
						LayoutOrder = 3,
						isChecked = isChecked2,
						onActivated = function(value)
							setIsChecked2(value)
						end,
						size = InputSize.Medium,
						label = "Item 2",
						placement = InputPlacement.Start,
					}),
					Check3 = React.createElement(Checkbox, {
						LayoutOrder = 4,
						isChecked = isChecked3,
						onActivated = function(value)
							setIsChecked3(value)
						end,
						size = InputSize.Medium,
						label = "Item 3",
						placement = InputPlacement.Start,
					}),
				})
			end,
		},
		{
			name = "Custom Selection",
			summary = "Select card container instead of checkbox",
			story = function()
				local isChecked, setIsChecked = React.useState(true)
				local tokens = useTokens()

				local cursor = React.useMemo(function()
					return {
						radius = UDim.new(0, tokens.Radius.Medium),
						offset = tokens.Size.Size_150,
						borderWidth = tokens.Stroke.Thicker,
					}
				end, { tokens })

				return React.createElement(View, {
					cursor = cursor,
					onActivated = function()
						setIsChecked(not isChecked)
					end,
					tag = "col align-x-center align-y-center gap-medium auto-y padding-large stroke-muted radius-medium bg-surface-100",
					Size = UDim2.fromOffset(300, 120),
				}, {
					Checkbox = React.createElement(Checkbox, {
						isChecked = isChecked,
						onActivated = function()
							setIsChecked(not isChecked)
						end,
						size = InputSize.Medium,
						label = "Enable notifications",
						placement = InputPlacement.Start,
						Selectable = false,
						LayoutOrder = 1,
					}),
					Description = React.createElement(Text, {
						Text = "Get notified when someone mentions you or sends you a message",
						tag = "size-full-0 auto-y text-body-small text-wrap content-muted",
						LayoutOrder = 2,
					}),
				})
			end,
		},
		{
			name = "Uncontrolled",
			summary = "State is controlled by the checkbox itself",
			story = function()
				return React.createElement(Checkbox, {
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
