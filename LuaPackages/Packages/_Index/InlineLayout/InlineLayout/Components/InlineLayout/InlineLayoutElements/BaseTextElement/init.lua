--[[
	Base abstract inline element implementation that can split the text so it fits the provided width.
	It creates as many elements as needed to split the text so it fit, the element used is provided through constructor.
	Struggles to support utf8. See InlineLayout stories for the test data.

	By default text is split by whitespace symbols (%s regex group). Use SplitBy property to switch to symbol based splitting.

	Relies on the TextService to calculate text width, so won't work in the contexts where it's not available.

	Example:

	-- TextElement now can be used in InlineLayout.
	function TextElement.new(props)
		return BaseTextElement.new(Text, props)
	end
]]
local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

type ReactElement<T> = React.Element<T>
local isCli = require(Packages.MarkdownCore).Utils.isCli
local TextSplitByEnum = require(Root.Enums.TextSplitBy)
type TextSplitBy = TextSplitByEnum.TextSplitBy
local splitText = require(Root.Utils.SplitText)
local Types = require(Root.Types)
local Escape = require(Packages.MarkdownCore).Utils.Escape

local InlineElementType = require(Root.Utils.InlineElementType)
local getFontFace = require(Root.Utils.getFontFace)

local join = Dash.join

local textServiceErrors: { [string]: true } = {}

export type ColorStyleValue = {
	-- Adding Color3 as an option because of token stupidity
	-- We can clean this up when we update to the new token system	Color3: Bindable<Color3>?,
	Color3: Color3?,
	Transparency: number?,
}
export type Bindable<T> = T | React.Binding<T>

export type ColorStyle = Bindable<ColorStyleValue>

export type FontFace = getFontFace.FontFace
export type FontStyle = getFontFace.FontStyle

export type BaseTextElementProps = {
	Text: string?,
	EngineTags: { Types.BaseTextElementEngineTag }?,
	SplitBy: TextSplitBy?,
	textStyle: ColorStyle?,
	fontStyle: FontStyle?,
	RichText: boolean?,
	OnActivated: ((self: GuiObject, inputObject: InputObject, clickCount: number) -> ())?,
}

local function formatTextWithEngineTag(text: string, engineTag: Types.BaseTextElementEngineTag): string
	local attributesString = Dash.reduce(engineTag.attributes, function(acc, value, name)
		local quoteToUse = if string.find(value, '"') then "'" else '"'
		return `{acc} {name}={quoteToUse}{value}{quoteToUse}`
	end, "")
	return `<{engineTag.name}{attributesString}>{text}</{engineTag.name}>`
end

-- We don't expect any rich text inside the text itself. All the "richness" comes from the EngineTags. Thus, we can safely escape the given text
local function getRichText(text: string, props: { Types.BaseTextElementEngineTag }): string
	local richText = Escape.escapeRichFormatting(text)
	richText = Dash.reduce(props, function(acc, engineTag)
		return formatTextWithEngineTag(acc, engineTag)
	end, richText)
	return richText
end

local BaseTextElement = {}
BaseTextElement.__index = BaseTextElement
BaseTextElement.__type = InlineElementType

function BaseTextElement.new<Props>(
	Element: (props: Props) -> React.ReactNode,
	props: Props & BaseTextElementProps,
	mapProps: ((
		props: Props & {
			id: string | number,
			Text: string,
			RichText: boolean,
			AutomaticSize: Enum.AutomaticSize,
			key: string,
			LayoutOrder: number,
		}
	) -> Props)?
)
	local self = setmetatable({}, BaseTextElement)
	self.props = props
	self.mapProps = mapProps or Dash.identity
	self.Element = Element
	self.canForceSplit = self.splitBy ~= TextSplitByEnum.Symbol
	self.splitBy = if self.props.SplitBy then self.props.SplitBy else TextSplitByEnum.Word

	-- Only the flag is set here, because props.EngineTags won't change during the life of the object,
	-- but the text itself is needed as is. Extra tags inside it will interfere with our process of splitting it to the parts.
	-- e.g. we may inadvertently split by the <b> tag.
	-- Hence the text is converted to the rich text before we measure its width and when we render it.
	self.hasRichText = self.props.EngineTags ~= nil and next(self.props.EngineTags) ~= nil
	if self.hasRichText and self.props.Text then
		-- If the text already escaped some characters, unescape them to avoid splitting in the middle of an escape sequence.
		-- They are re-escaped later in getRichText.
		self.props = Dash.assign(self.props, { Text = Escape.unescapeRichFormatting(self.props.Text) })
	end
	return self
end

function BaseTextElement:_clone(props)
	return BaseTextElement.new(self.Element, props or self.props, self.mapProps)
end

local TextService = game:GetService("TextService")

-- Polyfill for TextService to be able to run simple tests
if isCli() then
	local TextServiceMock = {}
	TextServiceMock.__index = TextServiceMock
	TextService = setmetatable({}, TextServiceMock)
	function TextServiceMock:GetTextBoundsAsync()
		return { X = 100 }
	end
end

function BaseTextElement:getWidth(): number
	return self:_getWidth(self.props.Text)
end

function BaseTextElement:_getWidth(text: string): number
	local params = Instance.new("GetTextBoundsParams")
	params.Font = getFontFace(self.props.fontStyle)
	params.Size = self.props.fontStyle.FontSize
	params.Text = text
	if self.hasRichText then
		params.Text = getRichText(text, self.props.EngineTags)
		params.RichText = true
	end

	-- We may have an incorrect rich text string, e.g. with unclosed or unfinished tags.
	-- Text will render such text in non RichText mode, and we will do the same computing the width.
	local ok, width = pcall(function()
		return TextService:GetTextBoundsAsync(params).X
	end)

	if ok then
		return width
	end

	if not textServiceErrors[params.Text] then
		textServiceErrors[params.Text] = true
		warn(`Failed to get width for the {params.Text} in BaseTextElement`)
	end
	-- Text render has it's own fallback, the problem is only with the measurement.
	-- So we're safe to set to false only the local parameter.
	params.RichText = false
	return TextService:GetTextBoundsAsync(params).X
end

function BaseTextElement:split(desiredWidth: number, forceSplit: boolean?)
	forceSplit = self.canForceSplit and forceSplit
	local headText, tailText = splitText(if forceSplit then TextSplitByEnum.Symbol else self.splitBy, function(text)
		return self:_getWidth(text)
	end, self.props.Text, desiredWidth)
	-- The first element can be just updated with the new text in dire need of small perf improvements.
	-- We are not making a copy of the props, so we shouldn't rely on properties being used by only one component
	-- e.g. passing a ref is broken in inline layout
	return self:_clone(join(self.props, { Text = headText })),
		-- Trailing spaces in the first element are fine, since it'll be the last in the line. But they are not needed in the tail which starts the new string.
		if tailText then self:_clone(join(self.props, { Text = tailText:gsub("^%s*", "") })) else nil
end

function BaseTextElement:render(id: string | number, layoutOrder: number)
	local text = self.props.Text
	if self.hasRichText and self.props.Text and self.props.EngineTags then
		text = getRichText(self.props.Text, self.props.EngineTags)
	end
	return React.createElement(
		self.Element,
		self.mapProps(join(self.props, {
			id = id,
			Text = text,
			RichText = self.hasRichText,
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = layoutOrder,
			key = tostring(layoutOrder),

			-- Internal only property we don't need on the element and this is the simplest way to get rid of it
			EngineTags = Dash.None,
		}))
	)
end

return BaseTextElement
