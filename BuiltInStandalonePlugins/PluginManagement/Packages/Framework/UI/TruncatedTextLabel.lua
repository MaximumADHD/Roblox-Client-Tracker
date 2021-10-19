--[[
	A text label that truncates text to fit the dimensions by adding ellipses.
	If SuffixLength is defined, it will truncate from the middle of the label.
	Required Props:
		string Text: The text to display in the label
	Optional Props:
		number SuffixLength: Number of characters in suffix. If suffix does not fit, SuffixLength turns to 0.
		Vector2 AnchorPoint: The AnchorPoint of the component.
		UDim2 Position: The Position of the component.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via mapToProps.
		number LayoutOrder: The layout order of this component in a list.
		UDim2 Size: The size of this component.
		UDim2 Position: The position of this component.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		Enum.TextXAlignment TextXAlignment: Sets text horizontal alignment.
		Enum.TextTruncate TextTruncate: Sets text truncated.
		boolean TextWrapped: Whether the text label should wrap.
		number ZIndex: The render index of this component.
		boolean FitWidth: Use FitTextLabel to fit to the parent width and set height automatically.
			Implies wrapping. Will cause the Size prop to be ignored.
		number FitMaxWidth: Max width in pixels to use with FitTextLabel.
		Color3 TextColor: The color of the label.
		number TextTransparency: The transparency of this text.
		Enum.AutomaticSize AutomaticSize: The automatic size of this text.
		Enum.TextTruncate TextTruncate: The text truncation of this text.
		Enum.Font Font: The font of this text.
		number TextSize: The size of this text.
		Enum.TextXAlignment TextXAlignment: The x alignment of this text.
		Enum.TextYAlignment TextYAlignment: The y alignment of this text.
		callback [Roact.Change.AbsoluteSize]: A callback when the size of the component changes.
	Style Values:
		Color3 TextColor: The color of the text label.
		number BackgroundTransparency: The transparency of the text label.
		number TextTransparency: The transparency of this text.
		Enum.TextXAlignment TextXAlignment: The x alignment of this text.
		Enum.TextYAlignment TextYAlignment: The y alignment of this text.
]]

local FFlagTextLabelRefProps = game:GetFastFlag("TextLabelRefProps")

local TextService = game:GetService("TextService")

local Framework = script.Parent.Parent
local TextLabel= require(Framework.UI.TextLabel)
local Dash = require(Framework.packages.Dash)
local Roact = require(Framework.Parent.Roact)
local Util = require(Framework.Util)
local ellipsizeMiddle = Util.ellipsizeMiddle

local Typecheck = Util.Typecheck

local join = Dash.join
local omit = Dash.omit

local TruncatedTextLabel = Roact.PureComponent:extend("TruncatedTextLabel")

Typecheck.wrap(TruncatedTextLabel, script)

function TruncatedTextLabel:init()
	self.textRef = Roact.createRef()
	self.lastText = ""
	self.lastTextWidth = 0

	self.getTextWidth = function(text)
		local textRef = self.textRef.current
		if not textRef then
			return 0
		end
		-- return the width of text
		return TextService:GetTextSize(text, textRef.TextSize, textRef.Font,
			Vector2.new(math.huge, math.huge)).x
	end

	--TODO: Move text-related manipulation utils into its own util library: https://jira.rbx.com/browse/RIDE-5831
	self.updateText = function()
		local props = self.props
		local text = props.Text or ""
		local suffixLength = props.SuffixLength or 0

		-- Suffix should not exceed length of text
		if suffixLength > string.len(text) then
			suffixLength = string.len(text)
		end

		local textRef = self.textRef.current
		if not textRef then
			return
		end

		-- Update text if the text or the width changes
		local maxWidth = textRef.AbsoluteSize.X
		if text ~= self.lastText or maxWidth ~= self.lastTextWidth then
			textRef.Text = ellipsizeMiddle(text, maxWidth,
				self.getTextWidth, suffixLength)
			self.lastText = text
			self.lastTextWidth = maxWidth
		end
	end

	-- Wrapper function to combine [Roact.Change.AbsoluteSize] prop function with updateText
	self.onAbsoluteSizeChange = function()
		if self.props[Roact.Change.AbsoluteSize] then
			self.props[Roact.Change.AbsoluteSize]()
		end
		self.updateText()
	end
end

function TruncatedTextLabel:didMount()
	self.updateText()
end

function TruncatedTextLabel:didUpdate()
	self.updateText()
end

function TruncatedTextLabel:render()
	-- Pass in TextLabel props along with overhead props
	local props = omit(self.props, {"SuffixLength"})
	local textProps = {
		[Roact.Ref]  = FFlagTextLabelRefProps and self.textRef or nil,
		[Roact.Change.AbsoluteSize] = FFlagTextLabelRefProps and self.onAbsoluteSizeChange or nil,
	}
	return Roact.createElement(TextLabel, join(props, textProps))
end

return TruncatedTextLabel
