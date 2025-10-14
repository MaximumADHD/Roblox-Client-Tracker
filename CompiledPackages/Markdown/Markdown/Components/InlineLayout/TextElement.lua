local Packages = script:FindFirstAncestor("Packages")
local InlineLayout = script:FindFirstAncestor("InlineLayout")

local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)

local BaseTextElement = require(InlineLayout.InlineLayoutElements.BaseTextElement)
local Text = Foundation.Text

type BaseTextElementProps = BaseTextElement.BaseTextElementProps

local TextElement = {}

type Props = BaseTextElementProps

function mapProps(props: Props)
	return Dash.omit(props, { "id", "TextVariant" })
end

function TextElement.new(props: Props)
	return BaseTextElement.new(Text, props, mapProps)
end

return TextElement
