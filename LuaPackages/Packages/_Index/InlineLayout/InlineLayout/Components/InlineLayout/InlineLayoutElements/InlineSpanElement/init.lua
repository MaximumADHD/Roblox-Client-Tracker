local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

type ReactElement<T> = React.Element<T>

local InlineElementType = require(Root.Utils.InlineElementType)
local RenderableInlineElement = require(Root.Components.InlineLayout.InlineLayoutElements.RenderableInlineElement)
local HardBreakElement = require(Root.Components.InlineLayout.InlineLayoutElements.HardBreakElement)
local isInlineElement = require(Root.Utils.isInlineElement)

local InlineSpanElement = {}
InlineSpanElement.__index = InlineSpanElement
InlineSpanElement.__type = InlineElementType

type RenderableInlineElement = RenderableInlineElement.RenderableInlineElement

local function getSplitPoint(elements: { RenderableInlineElement }, availableWidth: number): (number, number)
	local currentWidth = 0
	for index, element in elements do
		local elementWidth = element:getWidth()
		if currentWidth + elementWidth > availableWidth then
			return index, availableWidth - currentWidth
		end
		currentWidth += elementWidth
	end
	return -1, -1
end

local function handleSplitTrailingElement(
	originalHead: RenderableInlineElement,
	originalTail: RenderableInlineElement?,
	element: RenderableInlineElement,
	availableWidth: number,
	headHasElements: boolean,
	canForceSplit: boolean?
): (RenderableInlineElement?, RenderableInlineElement?)
	local head, tail
	-- If there is no head, we need the head to have at least one element, so attempt to force a split
	if not headHasElements then
		if element.canForceSplit and canForceSplit then
			head, tail = element:split(availableWidth, true)
		else
			head = originalHead
			tail = originalTail
		end
	-- Otherwise, just put the whole element on the next row
	else
		tail = element
	end
	return head, tail
end

function InlineSpanElement.new<WrapperElementProps>(
	WrapperElement: (
		wrapperElementProps: WrapperElementProps
	) -> React.ReactNode,
	wrapperElementProps: WrapperElementProps,
	Elements: { RenderableInlineElement },
	startingIndex: number?
)
	local self = setmetatable({}, InlineSpanElement)
	self.WrapperElement = WrapperElement
	self.wrapperElementProps = wrapperElementProps
	self.Elements = {}
	self.startingIndex = startingIndex or 1 -- used to keep track of ID across splits
	for _, element in Elements do
		if not isInlineElement(element) or element == HardBreakElement then
			warn(
				"InlineSpanElement: invalid element provided. Only non inline elements, excluding HardBreakElement, are allowed."
			)
			continue
		end
		table.insert(self.Elements, element)
	end
	if #self.Elements == 0 then
		warn("InlineSpanElement: no elements provided")
	end
	self.canForceSplit = if #self.Elements > 0 then self.Elements[#self.Elements].canForceSplit else false
	return self
end

function InlineSpanElement:getWidth(): number
	return Dash.sum(Dash.map(self.Elements, function(element)
		return element:getWidth()
	end))
end

function InlineSpanElement:_splitChildAtIndex(
	index: number,
	availableWidth: number
): (RenderableInlineElement, RenderableInlineElement?, boolean)
	local element = self.Elements[index]
	local head, tail = element:split(availableWidth, false)

	return head, tail, head:getWidth() <= availableWidth
end

function InlineSpanElement:split(desiredWidth: number, forceSplit: boolean?)
	local headElements = {}
	local tailElements = {}

	local splitIndex, availableWidth = getSplitPoint(self.Elements, desiredWidth)
	if splitIndex == -1 then
		return self, nil
	end
	local tailStartingIndex = splitIndex + 1 -- plus 1 because the first tail element starts after the head

	local elementSplitHead, elementSplitTail, fitsWidth = self:_splitChildAtIndex(splitIndex, availableWidth)
	if not fitsWidth then
		elementSplitHead, elementSplitTail = handleSplitTrailingElement(
			elementSplitHead,
			elementSplitTail,
			self.Elements[splitIndex],
			availableWidth,
			splitIndex > 1,
			forceSplit
		)
	end

	if splitIndex > 1 then
		table.move(self.Elements, 1, splitIndex - 1, 1, headElements)
	end
	if elementSplitHead then
		table.insert(headElements, elementSplitHead)

		-- If a head was successfully split, that means the head and tail element are the same, so we need to subtract 1 from the tail starting index
		tailStartingIndex -= 1
	end
	if elementSplitTail then
		table.insert(tailElements, elementSplitTail)
	end
	if splitIndex < #self.Elements then
		table.move(self.Elements, splitIndex + 1, #self.Elements, #tailElements + 1, tailElements)
	end

	local headElement =
		InlineSpanElement.new(self.WrapperElement, self.wrapperElementProps, headElements, self.startingIndex)
	local tailElement = if #tailElements > 0
		then InlineSpanElement.new(self.WrapperElement, self.wrapperElementProps, tailElements, tailStartingIndex)
		else nil
	return headElement, tailElement
end

function InlineSpanElement:render(id: string | number, layoutOrder: number)
	local elements = Dash.map(self.Elements, function(element, index)
		return element:render(`{id}-{self.startingIndex + index - 1}`, index)
	end)
	return React.createElement(
		self.WrapperElement,
		Dash.join(self.wrapperElementProps, {
			id = id,
			LayoutOrder = layoutOrder,
		}),
		elements
	)
end

return InlineSpanElement
