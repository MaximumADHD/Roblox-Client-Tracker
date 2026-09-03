local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Accordion = require(Foundation.Components.Accordion).Root
local AccordionItem = require(script.Parent.Item)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)

local InputSize = require(Foundation.Enums.InputSize)

type InputSize = InputSize.InputSize
type IconVariant = BuilderIcons.IconVariant
local IconVariant = BuilderIcons.IconVariant

type LeadingIcon = { name: string, variant: IconVariant }

local ACCORDION_WIDTH = UDim.new(0, 400)

export type AccordionRootPlaygroundControls = {
	size: InputSize,
	controlled: boolean,
	icon: string,
	iconVariant: IconVariant,
}

export type AccordionRootPlaygroundStoryProps = {
	controls: AccordionRootPlaygroundControls,
}

local function itemContent(text: string)
	return React.createElement(Text, {
		Text = text,
		tag = "auto-xy padding-y-small text-body-medium text-wrap text-align-x-left",
	})
end

local function leadingIconFromControls(controls: AccordionRootPlaygroundControls): LeadingIcon?
	local icon = StoryIcons.parseIconControl(controls.icon)
	if icon then
		return {
			name = icon,
			variant = controls.iconVariant,
		}
	end
	return nil
end

local function staticItems(leadingIcon: LeadingIcon?): { React.ReactNode }
	return {
		React.createElement(AccordionItem, {
			text = "First accordion item",
			LayoutOrder = 1,
			id = 1,
			isExpanded = true,
			leadingIcon = leadingIcon,
		}, itemContent("Content for the first item.")),
		React.createElement(AccordionItem, {
			text = "Second accordion item",
			LayoutOrder = 2,
			id = 2,
			leadingIcon = leadingIcon,
		}, itemContent("Content for the second item.")),
		React.createElement(AccordionItem, {
			text = "Third accordion item",
			LayoutOrder = 3,
			id = 3,
			leadingIcon = leadingIcon,
		}, itemContent("Content for the third item.")),
	}
end

local function RootStory(props: AccordionRootPlaygroundStoryProps)
	local controls = props.controls
	local expandedItem, setExpandedItem = React.useState(1)
	local leadingIcon = leadingIconFromControls(controls)

	local handleActivated = function(item: number, isExpanded: boolean)
		return function()
			if isExpanded then
				setExpandedItem(-1)
			else
				setExpandedItem(item)
			end
		end
	end

	if controls.controlled then
		return React.createElement(Accordion, {
			width = ACCORDION_WIDTH,
			size = controls.size,
			onActivated = handleActivated :: any,
		}, {
			AccordionItem1 = React.createElement(AccordionItem, {
				text = "Controlled item 1",
				LayoutOrder = 1,
				id = 1,
				isExpanded = expandedItem == 1,
				leadingIcon = leadingIcon,
			}, itemContent("Only one item expands at a time when Root.onActivated is wired.")),
			AccordionItem2 = React.createElement(AccordionItem, {
				text = "Controlled item 2",
				LayoutOrder = 2,
				id = 2,
				isExpanded = expandedItem == 2,
				leadingIcon = leadingIcon,
			}, itemContent("Root.onActivated coordinates expansion across items.")),
			AccordionItem3 = React.createElement(AccordionItem, {
				text = "Controlled item 3",
				LayoutOrder = 3,
				id = 3,
				isExpanded = expandedItem == 3,
				leadingIcon = leadingIcon,
			}, itemContent("Toggle controlled mode off to let items manage their own state.")),
		})
	end

	return React.createElement(Accordion, {
		width = ACCORDION_WIDTH,
		size = controls.size,
	}, staticItems(leadingIcon))
end

local rootControls = {
	size = Dash.values(InputSize),
	controlled = false,
	icon = StoryIcons.buildIconControlOptions(),
	iconVariant = Dash.values(IconVariant),
}

return {
	RootStory = RootStory,
	rootControls = rootControls,
	ACCORDION_WIDTH = ACCORDION_WIDTH,
}
