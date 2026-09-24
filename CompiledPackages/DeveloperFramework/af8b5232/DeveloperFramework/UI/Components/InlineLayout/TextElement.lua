local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)

local BaseTextElement = require(Framework.UI.Components.InlineLayout.BaseTextElement)
local TextLabel = require(Framework.UI.Components.TextLabel)
type BaseTextElementProps = BaseTextElement.BaseTextElementProps

local TextElement = {}

function mapProps(props: BaseTextElementProps)
	return Dash.omit(props, { "id", "TextStyle" })
end

-- TODO: Update when we have TextLabel props type
function TextElement.new(props: BaseTextElementProps)
	return BaseTextElement.new(TextLabel, props, mapProps)
end

return TextElement
