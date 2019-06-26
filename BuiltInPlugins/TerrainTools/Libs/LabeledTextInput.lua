----------------------------------------
--
-- LabeledTextInput.lua
--
-- Creates a frame containing a label and a text input control.
--
----------------------------------------
GuiUtilities = require(script.Parent.GuiUtilities)

local kTextInputWidth = 100
local kTextBoxInternalPadding = 4

LabeledTextInputClass = {}
LabeledTextInputClass.__index = LabeledTextInputClass

function LabeledTextInputClass.new(nameSuffix, labelText, defaultValue)
	local self = {}
	setmetatable(self, LabeledTextInputClass)

	-- Note: we are using "graphemes" instead of characters.
	-- In modern text-manipulation-fu, what with internationalization,
	-- emojis, etc, it's not enough to count characters, particularly when
	-- concerned with "how many <things> am I rendering?".
	self._MaxGraphemes = 10

	self._valueChangedFunction = nil

	local defaultValue = defaultValue or ""

	local frame = GuiUtilities.MakeStandardFixedHeightFrame('TextInput ' .. nameSuffix)
	self._frame = frame

	local label = GuiUtilities.MakeStandardPropertyLabel(labelText)
	label.Parent = frame
	self._label = label

	self._value = defaultValue

	-- Dumb hack to add padding to text box,
	local textBoxWrapperFrame = Instance.new("Frame")
	textBoxWrapperFrame.Name = "Wrapper"
	textBoxWrapperFrame.Size = UDim2.new(0, kTextInputWidth, 0.6, 0)
	textBoxWrapperFrame.Position = UDim2.new(0, GuiUtilities.StandardLineElementLeftMargin, .5, 0)
	textBoxWrapperFrame.AnchorPoint = Vector2.new(0, .5)
	textBoxWrapperFrame.Parent = frame
	GuiUtilities.syncGuiElementInputFieldColor(textBoxWrapperFrame)
	GuiUtilities.syncGuiElementBorderColor(textBoxWrapperFrame)

	local textBox = Instance.new("TextBox")
	textBox.Parent = textBoxWrapperFrame
	textBox.Name = "TextBox"
	textBox.Text = defaultValue
	textBox.Font = Enum.Font.SourceSans
	textBox.TextSize = 15
	textBox.BackgroundTransparency = 1
	textBox.TextXAlignment = Enum.TextXAlignment.Left
	textBox.Size = UDim2.new(1, -kTextBoxInternalPadding, 1, GuiUtilities.kTextVerticalFudge)
	textBox.Position = UDim2.new(0, kTextBoxInternalPadding, 0, 0)
	textBox.ClipsDescendants = true

	GuiUtilities.syncGuiElementFontColor(textBox)

	textBox:GetPropertyChangedSignal("Text"):connect(function()
		-- Never let the text be too long.
		-- Careful here: we want to measure number of graphemes, not characters,
		-- in the text, and we want to clamp on graphemes as well.
		if (utf8.len(self._textBox.Text) > self._MaxGraphemes) then
			local count = 0
			for start, stop in utf8.graphemes(self._textBox.Text) do
				count = count + 1
				if (count > self._MaxGraphemes) then
					-- We have gone one too far.
					-- clamp just before the beginning of this grapheme.
					self._textBox.Text = string.sub(self._textBox.Text, 1, start-1)
					break
				end
			end
			-- Don't continue with rest of function: the resetting of "Text" field
			-- above will trigger re-entry.  We don't need to trigger value
			-- changed function twice.
			return
		end

		self._value = self._textBox.Text
		if (self._valueChangedFunction) then
			self._valueChangedFunction(self._value)
		end
	end)

	self._textBox = textBox

	return self
end

function LabeledTextInputClass:SetValueChangedFunction(vcf)
	self._valueChangedFunction = vcf
end

function LabeledTextInputClass:GetTextBox()
	return self._textBox
end

function LabeledTextInputClass:GetFrame()
	return self._frame
end

function LabeledTextInputClass:GetValue()
	return self._value
end

function LabeledTextInputClass:GetMaxGraphemes()
	return self._MaxGraphemes
end

function LabeledTextInputClass:SetMaxGraphemes(newValue)
	self._MaxGraphemes = newValue
end

function LabeledTextInputClass:SetValue(newValue)
	if self._value ~= newValue then
		self._textBox.Text = newValue
	end
end

return LabeledTextInputClass
