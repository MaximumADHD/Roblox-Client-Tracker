-- Building blocks to implement custom components for InlineLayout
local RenderableInlineElement = require(script.Parent.RenderableInlineElement)
local BaseTextElement = require(script.Parent.BaseTextElement)
local isInlineElement = require(script.Parent.isInlineElement)
local TextSplitByEnum = require(script.Parent.TextSplitByEnum)
local HoverContext = require(script.Parent.HoverContext)

return {
	RenderableInlineElement = RenderableInlineElement,
	BaseTextElement = BaseTextElement,
	TextSplitByEnum = TextSplitByEnum,
	isInlineElement = isInlineElement,
	HoverContext = HoverContext,
}
