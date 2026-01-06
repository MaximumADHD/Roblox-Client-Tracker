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
	return Dash.omit(props, { "id", "EngineTags" })
end

function TextElement.new(props: Props)
	return BaseTextElement.new(Text, props, mapProps)
end

return TextElement
