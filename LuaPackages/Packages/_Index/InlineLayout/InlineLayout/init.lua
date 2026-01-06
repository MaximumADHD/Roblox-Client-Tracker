local Components = script.Components
local Types = require(script.Types)
local InlineLayout = require(Components.InlineLayout)
local RenderableInlineElement = require(Components.InlineLayout.InlineLayoutElements.RenderableInlineElement)
local BaseTextElement = require(Components.InlineLayout.InlineLayoutElements.BaseTextElement)
local HardBreakElement = require(Components.InlineLayout.InlineLayoutElements.HardBreakElement)

-- InlineLayout types
export type InlineElement = InlineLayout.InlineElement
export type RenderableInlineElement = RenderableInlineElement.RenderableInlineElement
export type HardBreakElement = HardBreakElement.HardBreakElement

-- InlineLayout element-specific types
export type BaseTextElementEngineTag = Types.BaseTextElementEngineTag
export type BaseTextElementProps = BaseTextElement.BaseTextElementProps

return {
	Components = require(script.Components),
	Enums = require(script.Enums),
	Test = require(script.Test),
	Utils = require(script.Utils),
}
