local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccordionPlayground = require(Foundation.Components.Accordion.AccordionPlayground)
local Types = require(Foundation.Components.Types)
local Accordion = require(Foundation.Components.Accordion).Root
local AccordionItem = require(script.Parent.Item)
local Button = require(Foundation.Components.Button)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local function content(omitDynamicContent: boolean?)
	local padding, setPadding = React.useState(false)

	return React.createElement(View, {
		tag = "col size-full-0 auto-y",
	}, {
		Text = React.createElement(Text, {
			Text = "Our flagship product combines cutting-edge technology with sleek design.",
			tag = "auto-xy padding-y-small text-body-medium text-wrap text-align-x-left text-align-y-center",
		}),
		Button = if not omitDynamicContent
			then React.createElement(Button, {
				LayoutOrder = 2,
				text = "Click to expand!",
				onActivated = function()
					setPadding(not padding)
				end,
			})
			else nil,
		UIPadding = if not omitDynamicContent
			then React.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, if padding then 50 else 0),
			})
			else nil,
	})
end

return {
	summary = "Accordion",
	stories = {
		{
			name = "Playground",
			story = AccordionPlayground.RootStory :: unknown,
		},
		{
			name = "Controlled (one expanded item at a time)",
			story = function()
				local expandedItem, setExpandedItem = React.useState(1)
				local handleActivated = function(item, isExpanded)
					return function()
						if isExpanded then
							setExpandedItem(-1)
						else
							setExpandedItem(item)
						end
					end
				end

				return React.createElement(Accordion, {
					width = UDim.new(0, 400),
					onActivated = handleActivated :: any,
				}, {
					AccordionItem1 = React.createElement(AccordionItem, {
						text = "Controlled Item 1",
						LayoutOrder = 1,
						id = 1,
						isExpanded = expandedItem == 1,
					}, content()),
					AccordionItem2 = React.createElement(AccordionItem, {
						text = "Controlled Item 2",
						LayoutOrder = 2,
						id = 2,
						isExpanded = expandedItem == 2,
					}, content()),
					AccordionItem3 = React.createElement(AccordionItem, {
						text = "Controlled Item 3",
						LayoutOrder = 3,
						id = 3,
						isExpanded = expandedItem == 3,
					}, content()),
				})
			end,
		},
		{
			name = "Complex Controlled with unique onActivated",
			story = function()
				local expandedItems, setExpandedItems = React.useState({ 1, 2, 3 } :: { Types.ItemId })

				local handleActivated = function(item, isExpanded)
					return function()
						if isExpanded then
							setExpandedItems(Dash.filter(expandedItems, function(expandedItem)
								return expandedItem ~= item
							end))
						else
							setExpandedItems({ item })
						end
					end
				end
				local function isExpanded(id: number)
					return table.find(expandedItems, id) ~= nil
				end

				return React.createElement(Accordion, {
					width = UDim.new(0, 400),
					onActivated = handleActivated,
				}, {
					AccordionItem1 = React.createElement(AccordionItem, {
						text = "All Controlling Item",
						LayoutOrder = 1,
						id = 1,
						onActivated = function()
							if table.find(expandedItems, 1) then
								setExpandedItems({})
							else
								setExpandedItems({ 1, 2, 3 })
							end
						end,
						isExpanded = isExpanded(1),
					}, content()),
					AccordionItem2 = React.createElement(AccordionItem, {
						text = "Controlled Item 2",
						LayoutOrder = 2,
						id = 2,
						isExpanded = isExpanded(2),
					}, content()),
					AccordionItem3 = React.createElement(AccordionItem, {
						text = "Controlled Item 3",
						LayoutOrder = 3,
						id = 3,
						isExpanded = isExpanded(3),
					}, content()),
				})
			end,
		},
		{
			name = "Partially Controlled",
			story = function()
				local expandedItem, setExpandedItem = React.useState(1)

				local function onActivated(item)
					local isExpanded = expandedItem == item
					return function()
						if isExpanded then
							setExpandedItem(0)
						else
							setExpandedItem(item)
						end
					end
				end

				return React.createElement(Accordion, {
					width = UDim.new(0, 400),
				}, {
					AccordionItem1 = React.createElement(AccordionItem, {
						text = "Controlled Item 1",
						LayoutOrder = 1,
						id = 1,
						isExpanded = expandedItem == 1,
						onActivated = onActivated(1),
					}, content()),
					AccordionItem2 = React.createElement(AccordionItem, {
						text = "Default Item 1",
						LayoutOrder = 2,
						id = 2,
					}, content()),
					DefaultItem = React.createElement(AccordionItem, {
						text = "Default Item 2",
						LayoutOrder = 3,
						id = 3,
					}, content()),
					AccordionItem3 = React.createElement(AccordionItem, {
						text = "Controlled Item 2",
						LayoutOrder = 4,
						id = 4,
						isExpanded = expandedItem == 4,
						onActivated = onActivated(4),
					}, content()),
				})
			end,
		},
	},
	controls = AccordionPlayground.rootControls,
}
