local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local BuilderIcons = require(Packages.BuilderIcons)

local Types = require(Foundation.Components.Types)
local Accordion = require(Foundation.Components.Accordion).Root
local AccordionItem = require(script.Parent.Item)
local Text = require(Foundation.Components.Text)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local IconVariant = BuilderIcons.IconVariant

local exampleIcons = {
	"tilt",
	"robux",
	"shopping-basket-check",
	"hat-fedora",
	"",
}

local contentHeights = { 50, 100, 300, 600 }

local function content(contentHeight)
	return React.createElement(Text, {
		Text = "Nice",
		Size = UDim2.new(1, 0, 0, contentHeight),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
	})
end

local function getItems(controls): { React.ReactNode }
	local items: any = {}
	for i = 1, controls.numItems do
		table.insert(
			items,
			React.createElement(AccordionItem, {
				text = `Accordion Item {i}`,
				LayoutOrder = i,
				hasDivider = controls.divider,
				leadingIcon = {
					name = controls.icon,
					variant = controls.iconVariant,
				},
				-- isContained = controls.isContained,
				id = i,
			}, content(controls.contentHeight))
		)
	end
	return items
end

return {
	summary = "Accordion",
	stories = {
		ConfigurableDefault = {
			name = "Default (configurable)",
			story = function(props)
				return React.createElement(Accordion, {
					width = UDim.new(0, 400),
					size = props.controls.size,
				}, {
					getItems(props.controls),
				})
			end,
		},
		Controlled = {
			name = "Controlled (one expanded item at a time)",
			story = function(props)
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
					}, content(props.controls.contentHeight)),
					AccordionItem2 = React.createElement(AccordionItem, {
						text = "Controlled Item 2",
						LayoutOrder = 2,
						id = 2,
						isExpanded = expandedItem == 2,
					}, content(props.controls.contentHeight)),
					AccordionItem3 = React.createElement(AccordionItem, {
						text = "Controlled Item 3",
						LayoutOrder = 3,
						id = 3,
						isExpanded = expandedItem == 3,
					}, content(props.controls.contentHeight)),
				})
			end,
		},
		Controlled2 = {
			name = "Complex Controlled with unique onActivated",
			story = function(props)
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
					}, content(props.controls.contentHeight)),
					AccordionItem2 = React.createElement(AccordionItem, {
						text = "Controlled Item 2",
						LayoutOrder = 2,
						id = 2,
						isExpanded = isExpanded(2),
					}, content(props.controls.contentHeight)),
					AccordionItem3 = React.createElement(AccordionItem, {
						text = "Controlled Item 3",
						LayoutOrder = 3,
						id = 3,
						isExpanded = isExpanded(3),
					}, content(props.controls.contentHeight)),
				})
			end,
		},
		Mixed = {
			name = "Partially Controlled",
			story = function(props)
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
					}, content(props.controls.contentHeight)),
					AccordionItem2 = React.createElement(AccordionItem, {
						text = "Default Item 1",
						LayoutOrder = 2,
						id = 2,
					}, content(props.controls.contentHeight)),
					DefaultItem = React.createElement(AccordionItem, {
						text = "Default Item 2",
						LayoutOrder = 3,
						id = 3,
					}, content(props.controls.contentHeight)),
					AccordionItem3 = React.createElement(AccordionItem, {
						text = "Controlled Item 2",
						LayoutOrder = 4,
						id = 4,
						isExpanded = expandedItem == 4,
						onActivated = onActivated(4),
					}, content(props.controls.contentHeight)),
				})
			end,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		icon = Dash.values(exampleIcons),
		iconVariant = Dash.values(IconVariant),
		contentHeight = Dash.values(contentHeights),
		-- isContained = false,
		numItems = 3,
		divider = true,
	},
}
