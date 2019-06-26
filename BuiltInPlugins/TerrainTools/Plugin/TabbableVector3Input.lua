----------------------------------------
--
-- TabbableVector3Input.lua
--
-- Creates a frame containing a label and a text input control.
-- that can be linked to other TabbableVector3Input Copied mostly from LabeldTextInput
-- but will be replace when we go to Roact
----------------------------------------
local GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)

local FIRST_COLUMN_WIDTH = 90
local FIRST_COLUMN_OFFSET = GuiUtilities.StandardLineLabelLeftMargin
local SECOND_COLUMN_OFFSET = FIRST_COLUMN_WIDTH + FIRST_COLUMN_OFFSET
local PADDING = 4

local FONT = Enum.Font.SourceSans
local FONT_SIZE = 14
local TEXTBOX_WIDTH = 120
local TEXTBOX_HEIGHT = 22 -- does not include padding
local TEXTBOX_LABEL_WIDTH = 16
local TEXTBOX_OFFSET = TEXTBOX_LABEL_WIDTH + PADDING
local TEXTBOX_SIZE_PADDING = TEXTBOX_OFFSET + FIRST_COLUMN_OFFSET

local LABEL_BACKGROUND_DARK_COLOR = Color3.fromRGB(53, 53, 53)
local LABEL_BACKGROUND_COLOR = Color3.fromRGB(245, 245, 245)
local BORDER_COLOR = Color3.fromRGB(182, 182, 182)
local BORDER_COLOR_DARK = Color3.fromRGB(26, 26, 26)
local SELECTED_BORDER_COLOR = Color3.fromRGB(0, 162, 255)
local WARNING_RED = Color3.fromRGB(216, 104, 104)

local DEFAULT_WARNING_MESSAGE = "Input is not a valid number."
TabbableVector3Input = {}
TabbableVector3Input.__index = TabbableVector3Input

function getTextBoxCheckFunc(self, index)
	return function()
		-- if we encounter a tab key, it will be consumed to pass focus to the next textBox
		if self._textBox[index].Text and string.find(self._textBox[index].Text, '\t') then
			-- remove the tab character since we consumed it
			self._textBox[index].Text = self._textBox[index].Text:gsub('\t', '')

			--hack to handle the focuslost case
			if not self._warning[index] then
				self._textFrame[index].BorderColor3 = BORDER_COLOR
			end

			local nextInd = index + 1
			if nextInd > 3 and self._nextTabTarget then
				self._nextTabTarget:CaptureFocus()
			else
				nextInd = nextInd > 3 and 1 or nextInd
				self._textBox[nextInd]:CaptureFocus()
			end
		end

		-- Never let the text be too long.
		-- Careful here: we want to measure number of graphemes, not characters,
		-- in the text, and we want to clamp on graphemes as well.
		if (utf8.len(self._textBox[index].Text) > self._MaxGraphemes) then
			local count = 0
			for start, stop in utf8.graphemes(self._textBox[index].Text) do
				count = count + 1
				if (count > self._MaxGraphemes) then
					-- We have gone one too far.
					-- clamp just before the beginning of this grapheme.
					self._textBox[index].Text = string.sub(self._textBox[index].Text, 1, start-1)
					break
				end
			end
			-- Don't continue with rest of function: the resetting of "Text" field
			-- above will trigger re-entry.  We don't need to trigger value
			-- changed function twice.
			return
		end

		local num = tonumber(self._textBox[index].Text)

		local validEntry, warningMessage
		if self._warningFunc then
			validEntry, warningMessage = self._warningFunc(self._textBox[index].Text, index)
		else
			validEntry = num or self._textBox[index].Text == ''
			warningMessage = DEFAULT_WARNING_MESSAGE
		end

		if validEntry then
			if self._warning[index] then
				self._warning[index].Parent = nil
				self._textFrame[index].BorderColor3 = BORDER_COLOR
				self._warning[index] = nil
			end
			self._value[index] = num
		else
			-- layour Orders of the index are already set to (2*index - 1)
			-- this way errors for the appropriate index are just 2 * index
			if not self._warning[index] then
				local warning = Instance.new("TextLabel")
				warning.BackgroundTransparency = 1
				warning.Text = warningMessage
				warning.Font = FONT
				warning.TextSize = FONT_SIZE
				warning.TextColor3 = WARNING_RED
				warning.TextXAlignment = Enum.TextXAlignment.Left
				warning.Size = UDim2.new(1, 0, 0, TEXTBOX_HEIGHT)
				warning.LayoutOrder = index * 2
				warning.Parent = self._textBoxFrame
				self._warning[index] = warning

				self._textFrame[index].BorderColor3 = WARNING_RED
			else
				self._warning[index].Text = warningMessage
			end
		end
	end
end

local function textBoxHelper(self, parent, name, initialValues, index, layoutOrder)
	local initTheme = settings().Studio["UI Theme"]

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, TEXTBOX_WIDTH, 0, TEXTBOX_HEIGHT)
	frame.BorderColor3 = initTheme == Enum.UITheme.Dark and BORDER_COLOR_DARK or BORDER_COLOR
	frame.BackgroundTransparency = 0
	frame.LayoutOrder = layoutOrder
	frame.Parent = parent
	self._textFrame[index] = frame

	local label = Instance.new("TextLabel")
	label.Text = name
	label.Size = UDim2.new(0, TEXTBOX_LABEL_WIDTH, 1, 0)
	label.BackgroundColor3 = initTheme == Enum.UITheme.Dark and LABEL_BACKGROUND_DARK_COLOR or LABEL_BACKGROUND_COLOR
	label.BorderSizePixel = 0
	label.Parent = frame

	local box = Instance.new("TextBox")
	box.ClearTextOnFocus = false
	box.PlaceholderText = ""
	box.Text = type(initialValues) == "table" and tostring(initialValues[index])
	box.Size = UDim2.new(1, -TEXTBOX_SIZE_PADDING, 1, 0)
	box.Position = UDim2.new(0, TEXTBOX_OFFSET, 0, 0)
	box.BackgroundTransparency = 1
	box.Font = FONT
	box.TextSize = FONT_SIZE
	box.TextXAlignment = Enum.TextXAlignment.Left
	box.Parent = frame
	self._textBox[index] = box

	box.Focused:connect(self:getChangeBorderColorFunc(index, SELECTED_BORDER_COLOR))
	box.FocusLost:connect(self:getChangeBorderColorFunc(index, BORDER_COLOR))
	box:GetPropertyChangedSignal("Text"):connect(getTextBoxCheckFunc(self, index))

	GuiUtilities.syncGuiElementFontColor(label)
	GuiUtilities.syncGuiElementFontColor(box)
	GuiUtilities.syncGuiElementInputFieldColor(box)
	GuiUtilities.syncGuiElementBackgroundColor(frame)

	--label color doesn't exist as a backgroundColor signal
	settings().Studio.ThemeChanged:connect(function()
		local currTheme = settings().Studio["UI Theme"]
		if currTheme == Enum.UITheme.Dark then
			label.BackgroundColor3 = LABEL_BACKGROUND_DARK_COLOR
			frame.BorderColor3 = BORDER_COLOR_DARK
		else
			label.BackgroundColor3 = LABEL_BACKGROUND_COLOR
			frame.BorderColor3 = BORDER_COLOR
		end
	end)

	if type(initialValues) == "table" then
		self._value[index] = initialValues[index]
	end

end

-- on selected blue color and revert back
function TabbableVector3Input:getChangeBorderColorFunc(index, color)
	return function()
		if not self._warning[index] then
			self._textFrame[index].BorderColor3 = color
		end
	end
end


function TabbableVector3Input.new(categoryLabel, initialValues)
	local self = {}
	setmetatable(self, TabbableVector3Input)

	-- Note: we are using "graphemes" instead of characters.
	-- In modern text-manipulation-fu, what with internationalization,
	-- emojis, etc, it's not enough to count characters, particularly when
	-- concerned with "how many <things> am I rendering?".
	-- We are using the
	self._MaxGraphemes = 10

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, 0, 0, 0)
	frame.BackgroundTransparency = 1
	self._frame = frame

	local label = Instance.new("TextLabel")
	label.Text = categoryLabel
	label.Font = FONT
	label.TextSize = FONT_SIZE
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Size = UDim2.new(0, FIRST_COLUMN_WIDTH, 0, TEXTBOX_HEIGHT)
	label.Position = UDim2.new(0, FIRST_COLUMN_OFFSET, 0, 0)
	label.BorderSizePixel = 0
	label.BackgroundTransparency = 1
	label.Parent = frame
	self._label  = label

	local fieldFrame = Instance.new("Frame")
	fieldFrame.Position = UDim2.new(0, SECOND_COLUMN_OFFSET, 0, 0)
	fieldFrame.Size = UDim2.new(1, -SECOND_COLUMN_OFFSET, 0, 0)
	fieldFrame.BackgroundTransparency = 1
	fieldFrame.BorderSizePixel = 0
	fieldFrame.Parent = frame
	self._textBoxFrame = fieldFrame

	self._value = {}
	self._textBox = {}
	self._textFrame = {}
	self._warning = {}

	-- odd numbers in layout order are for textbox, and even numbers are for errors when they show up
	textBoxHelper(self, fieldFrame, 'X', initialValues, 1, 1)
	textBoxHelper(self, fieldFrame, 'Y', initialValues, 2, 3)
	textBoxHelper(self, fieldFrame, 'Z', initialValues, 3, 5)



	local uiLayout = Instance.new("UIListLayout")
	uiLayout.Padding = UDim.new(0, PADDING)
	uiLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiLayout.FillDirection = Enum.FillDirection.Vertical
	uiLayout.Parent = fieldFrame

	-- height depends on the number of textboxes and number of errors in those textboxes
	-- can not bind this to listen to absolute size change because
	-- we are at our limit of event re-entry here
	function updateFrameSize()
		self._frame.Size = UDim2.new(1, 0, 0, uiLayout.AbsoluteContentSize.Y)
	end

	uiLayout:GetPropertyChangedSignal("AbsoluteContentSize"):connect(updateFrameSize)

	updateFrameSize()

	-- listen for theme color changes
	GuiUtilities.syncGuiElementFontColor(label)

	GuiUtilities.syncGuiElementBackgroundColor(frame)
	GuiUtilities.syncGuiElementBorderColor(frame)

	return self
end

function TabbableVector3Input:GetFrame()
	return self._frame
end

function TabbableVector3Input:GetVector3()
	if self._value[1] and self._value[2] and self._value[3] then
		return Vector3.new(self._value[1], self._value[2], self._value[3])
	end
	return nil
end

function TabbableVector3Input:GetMaxGraphemes()
	return self._MaxGraphemes
end

function TabbableVector3Input:SetMaxGraphemes(newValue)
	self._MaxGraphemes = newValue
end

-- expects function that takes 2 parameters and returns
-- whether current text is valid and if it's not, return
-- a msg as the second arg
-- param1 = current text in textbox
-- param2 = index of textbox
function TabbableVector3Input:SetWarningFunc(newFunc)
	self._warningFunc = newFunc
end

function TabbableVector3Input:SetValue(newValue)
	if self._value ~= newValue then
		self._textBox.Text = newValue
	end
end

function TabbableVector3Input:CaptureFocus()
	if self._textBox[1] then
		self._textBox[1]:CaptureFocus()
	end
end

function TabbableVector3Input:LinkToNextTabbableVector3Input(nextTarget)
	self._nextTabTarget = nextTarget
end

return TabbableVector3Input
