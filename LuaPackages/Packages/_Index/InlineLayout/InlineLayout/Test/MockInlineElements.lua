local Root = script:FindFirstAncestor("InlineLayout")
local Packages = Root.Parent

local React = require(Packages.React)
local InlineElementType = require(Root.Utils.InlineElementType)

-- Mock InlineElement for testing
local MockInlineElement = {}
MockInlineElement.__index = MockInlineElement
MockInlineElement.__type = InlineElementType

function MockInlineElement.new(width: number, canForceSplit: boolean?)
	local self = setmetatable({}, MockInlineElement)
	self.width = width
	self.canForceSplit = canForceSplit
	return self
end

function MockInlineElement:getWidth()
	return self.width
end

function MockInlineElement:split(_desiredWidth: number, _forceSplit: boolean?)
	-- Non-splittable by default, just returns a copy of itself
	return MockInlineElement.new(self.width, self.canForceSplit)
end

function MockInlineElement:render(id: string | number, layoutOrder: number)
	return React.createElement("TextLabel", {
		key = tostring(layoutOrder),
		LayoutOrder = layoutOrder,
		Size = UDim2.new(0, self.width, 0, 20),
		Text = `{id}`, -- render id as text so its queryable
	})
end

-- Splittable Mock InlineElement for testing
local SplittableMockInlineElement = {}
SplittableMockInlineElement.__index = SplittableMockInlineElement
SplittableMockInlineElement.__type = InlineElementType

function SplittableMockInlineElement.new(width: number, canForceSplit: boolean?)
	local self = setmetatable({}, SplittableMockInlineElement)
	self.width = width
	self.canForceSplit = canForceSplit
	return self
end

function SplittableMockInlineElement:getWidth()
	return self.width
end

function SplittableMockInlineElement:split(desiredWidth: number, forceSplit: boolean?)
	local halfWidth = math.floor(self.width / 2)
	local headWidth = halfWidth
	local tailWidth = self.width - halfWidth

	-- If forceSplit is true, ensure head fits in desiredWidth
	if forceSplit and desiredWidth < halfWidth then
		headWidth = desiredWidth
		tailWidth = self.width - desiredWidth
	end

	local head = SplittableMockInlineElement.new(headWidth, self.canForceSplit)
	local tail = SplittableMockInlineElement.new(tailWidth, self.canForceSplit)

	return head, tail
end

function SplittableMockInlineElement:render(id: string | number, layoutOrder: number)
	return React.createElement("TextLabel", {
		key = tostring(layoutOrder),
		LayoutOrder = layoutOrder,
		Size = UDim2.new(0, self.width, 0, 20),
		Text = `{id}`, -- render id as text so its queryable
	})
end

return {
	MockInlineElement = MockInlineElement,
	SplittableMockInlineElement = SplittableMockInlineElement,
}
