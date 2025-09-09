local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
local Tabs = require(Foundation.Components.Tabs)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local InputSize = require(Foundation.Enums.InputSize)
local FillBehavior = require(Foundation.Enums.FillBehavior)

local BuilderIcons = require(Packages.BuilderIcons)
local IconVariant = BuilderIcons.IconVariant

local builderIcon = {
	name = "star",
	variant = IconVariant.Filled,
}

local function NestedControlledTabs()
	local activeTabId, setActiveTabId = React.useState("1" :: Types.ItemId)
	return React.createElement(
		View,
		{
			tag = "col auto-y size-full-0",
		},
		React.createElement(Tabs, {
			LayoutOrder = 1,
			activeTabId = activeTabId,
			onActivated = setActiveTabId,
			tabs = {
				{
					id = "1",
					text = "Nested tab 1",
				},
				{
					id = "2",
					text = "Nested tab 2",
				},
			},
			size = InputSize.Medium,
			fillBehavior = FillBehavior.Fill,
		}),
		React.createElement(
			View,
			{
				LayoutOrder = 2,
				tag = "auto-y size-full-0",
				Visible = activeTabId == "1",
			},
			React.createElement(Text, {
				tag = "text-align-x-left auto-xy text-wrap",
				Text = "Content of nested tab 1",
			})
		),
		React.createElement(
			View,
			{
				LayoutOrder = 2,
				tag = "auto-y size-full-0",
				Visible = activeTabId == "2",
			},
			React.createElement(Text, {
				tag = "text-align-x-left auto-xy text-wrap",
				Text = "Content of nested tab 2",
			})
		)
	)
end

return {
	summary = "Tabs",
	stories = {
		Basic = {
			name = "Basic",
			story = function(props)
				return React.createElement(
					View,
					{
						tag = "col auto-y size-full-0",
					},
					React.createElement(Tabs, {
						defaultActiveTabId = "1",
						tabs = {
							{
								id = "1",
								text = "lll",
								content = React.createElement(
									View,
									{ tag = "auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy text-wrap",
										Text = "You fully controll how content is rendered. No padding or other styles are applied by default",
									})
								),
							} :: Tabs.TabItem,
							{
								id = "2",
								text = "A big one",
								content = React.createElement(
									View,
									{ tag = "padding-xxlarge auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy",
										Text = "The Jurassic ranges from 200 million years to 145 million years ago.",
									})
								),
							},
							{
								id = "3",
								text = "With builder icon",
								icon = "star",
								content = React.createElement(
									View,
									{ tag = "padding-xxlarge auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy",
										Text = "You are perfect!",
									})
								),
							},
							{
								id = "4",
								text = "With filled builder icon",
								icon = builderIcon,
								content = React.createElement(
									View,
									{ tag = "padding-xxlarge auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy",
										Text = "You are still perfect!",
									})
								),
							},
							{
								id = "5",
								text = "With icon",
								icon = "icons/menu/clothing/limited_on",
								isDisabled = true,
							},
						},
						size = props.controls.size,
						fillBehavior = props.controls.fillBehavior,
					})
				)
			end,
		},
		Uncontrolled = {
			name = "Uncontrolled with nested controlled tabs",
			story = function(props)
				return React.createElement(
					View,
					{
						tag = "col auto-y size-full-0",
					},
					React.createElement(Tabs, {
						defaultActiveTabId = "1",
						-- You can still be notified when the tab changes
						onActivated = function(id)
							print(`Tab {id} activated`)
						end,
						tabs = {
							{
								id = "1",
								text = "With nested tabs",
								content = React.createElement(NestedControlledTabs),
							} :: Tabs.TabItem,
							{
								id = "2",
								text = "Regular tab",
								content = React.createElement(
									View,
									{ tag = "padding-xxlarge auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy",
										Text = "Regular tab content.",
									})
								),
							},
							{
								id = "3",
								text = "With builder icon",
								icon = "star",
								content = React.createElement(
									View,
									{ tag = "padding-xxlarge auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy",
										Text = "You are perfect!",
									})
								),
							},
							{
								id = "4",
								text = "With filled builder icon",
								icon = builderIcon,
								content = React.createElement(
									View,
									{ tag = "padding-xxlarge auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy",
										Text = "You are still perfect!",
									})
								),
							},
							{
								id = "5",
								text = "With icon",
								icon = "icons/menu/clothing/limited_on",
								isDisabled = true,
								-- Disabled tab still may have content
								content = React.createElement(
									View,
									{ tag = "padding-xxlarge auto-y size-full-0" },
									React.createElement(Text, {
										tag = "text-align-x-left auto-xy",
										Text = "You are still perfect!",
									})
								),
							},
						},
						size = props.controls.size,
						fillBehavior = props.controls.fillBehavior,
					})
				)
			end,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		fillBehavior = Dash.values(FillBehavior),
	},
}
