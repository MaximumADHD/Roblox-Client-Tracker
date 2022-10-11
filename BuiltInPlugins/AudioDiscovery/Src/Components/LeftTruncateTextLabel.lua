local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel

local Dash = Framework.Dash
local join = Dash.join

local TextService = game:GetService("TextService")

local ELLIPSIS_CHAR = utf8.char(0x2026)

-- TODO: Move this to dev framework/merge it with TruncatedTextLabel
local LeftTruncateTextLabel = Roact.PureComponent:extend("FooLabel")

function LeftTruncateTextLabel:init()
	self.textRef = Roact.createRef()

	self.getTextWidth = function(text)
		local textRef = self.textRef.current
		if not textRef then
			return 0
		end

		return TextService:GetTextSize(text, textRef.TextSize, textRef.Font, Vector2.new(math.huge, math.huge)).x
	end

	self.updateText = function()
		local props = self.props
		local text = props.Text

		local textRef = self.textRef.current
		if not textRef then
			return
		end

		local maxWidth = textRef.AbsoluteSize.X

		if self.getTextWidth(text) <= maxWidth then
			-- Text fits, no need to truncate
			textRef.Text = text
			textRef.TextXAlignment = Enum.TextXAlignment.Left
			return
		end

		-- Text doesn't fit, so we know we need to right-align it
		textRef.TextXAlignment = Enum.TextXAlignment.Right

		-- Search from end of text to the left until we find longest string that still fits
		local longestTextSubstringIndex = 0
		for i = -1, -#text, -1 do
			if self.getTextWidth(text:sub(i)) > maxWidth then
				break
			else
				longestTextSubstringIndex = i
			end
		end

		if longestTextSubstringIndex >= -2 then
			-- Text isn't going to fit at all so just show the ellipsis
			textRef.Text = ELLIPSIS_CHAR
			return
		end

		-- Take text 2 chars shorter than actually fits so we can fit the ellipsis
		textRef.Text = ELLIPSIS_CHAR .. text:sub(longestTextSubstringIndex + 2)
	end

	-- Wrapper function to combine [Roact.Change.AbsoluteSize] prop function with updateText
	self.onAbsoluteSizeChange = function()
		if self.props[Roact.Change.AbsoluteSize] then
			self.props[Roact.Change.AbsoluteSize]()
		end
		self.updateText()
	end
end

function LeftTruncateTextLabel:didMount()
	self.updateText()
end

function LeftTruncateTextLabel:didUpdate(prevProps, prevState)
	if prevProps.Text ~= self.props.Text then
		self.updateText()
	end
end

function LeftTruncateTextLabel:render()
	local props = self.props
	local textProps = {
		[Roact.Ref] = self.textRef,
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
	}
	return Roact.createElement(TextLabel, join(props, textProps))
end

return LeftTruncateTextLabel
