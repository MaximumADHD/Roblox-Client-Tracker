local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local InlineLayoutElements = script:FindFirstAncestor("InlineLayoutElements")

local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)

local BaseTextElement = require(InlineLayoutElements.BaseTextElement)
local Text = Foundation.Text

type BaseTextElementProps = BaseTextElement.BaseTextElementProps

local TextElement = {}

type Props = BaseTextElementProps

function mapProps(props: Props)
	-- Fill the measured frame InlineLayout places the element in, instead of an automatic width
	-- (which can go stale). Left-align so a fragment ending in a space starts at the frame's left edge.
	return Dash.join(Dash.omit(props, { "id", "EngineTags" }), {
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	})
end

function TextElement.new(props: Props)
	return BaseTextElement.new(Text, props, mapProps)
end

return TextElement
