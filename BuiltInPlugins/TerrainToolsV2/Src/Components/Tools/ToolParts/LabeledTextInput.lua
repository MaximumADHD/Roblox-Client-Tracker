--[[
	LabeledTextInput: side-scrolling windowed text input that includes a way to report errors

	Props
	UDim Width: defines the widht of the component. Height is manged by the component itself
	so it is able to trigger AbsoluteContentSize changes if there is a UIListLayout as a sibling.

	UDim2 Position: user defined position

	string Label: optional label that can be preceed the textbox
	string Text: initial text in textbox
	string PlaceholderText: string is forwarded the textbox placeholdertext prop
	bool ClearTextOnFocus: Specify whether text in textbox is cleared on focus
	int LayoutOrder:  self explanatory
	int MaxGraphemes: maximum number of characters allowed in the textbox, if less than 1
		is specified then the natural max characters are allowed
	bool EditingDisabled = false

	function OnFocused()
		Called when the textbox gains focus
	function OnFocusLost(enterPressed, self.textBoxRef.current.Text):
		Handled the textinput how you want. enterPressed is from the focuslost event.

	function ValidateText(string textboxText):
		expects
		return bool isValid, string warningMessage

	Example:
	textBox = Roact.createElement("LabeledTextInput", {
		Width = UDim.new(.8, 0), -- fills the 80% width of its parent
		Position = UDim2.new(.1, 0, 0, 0), -- offset, by 10%, this means the textbox is centered in its parent frame
		Label = "MyTextBox",
		Text = "MyInitialText",
		PlaceHolderText = "My text when there's no text inside",
		ClearTextOnFocus = true,
		LayoutOrder = 1,

		-- When the textbox lose focus, we print a message if we know the
		-- user pressed enter to lose focus
		OnFocusLost = function(enterPressed, text)
			if enterPressed then
				print("The enter key was pressed for: ", text)
			end
		end,

		-- for this warning function, we check to make sure the
		-- text is a number otherwise we ouput a warning message
		-- you may return updated strings where certain characters are
		-- consumed, or limit the max characters used by the TextInput in this way
		ValidateText = function(text)
			if tonumber(text) then
				return text, nil
			else
				return text, text .. " is not a number."
			end
		end,
	})
--]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local TextService = game:GetService("TextService")

-- These values should be replaced with theme if this component is
-- put into DeveloperFramework
local FONT = Enum.Font.SourceSans
local FONT_SIZE = 14
local PADDING = 4
local BORDER_PADDING = 2

local TEXTBOX_HEIGHT = 22
local BORDERFRAME_HEIGHT = TEXTBOX_HEIGHT + 2 -- +2 from teh border size

local ROUNDED_BACKGROUND_IMAGE = "rbxasset://textures/StudioToolbox/RoundedBorder.png"
local ROUNDED_FRAME_SLICE = Rect.new(3, 3, 13, 13)

local LabeledTextInput = Roact.PureComponent:extend(script.Name)

function LabeledTextInput:init()
	self.state = {
		warningMessage = "",
	}

	self.textClipperFrameRef = Roact.createRef()
	self.textBoxRef = Roact.createRef()

	-- the textbox is the child of a frame that clips descendants,
	-- effectively creating a windowed view of the textbox.
	-- this function moves the textbox in the window to make sure
	-- the textbox cursor is always within the window
	self.updateTextBoxOffset = function()
		local textBox = self.textBoxRef.current
		local textFrame = self.textClipperFrameRef.current
		if not textBox or not textFrame then
			return
		end

		local textBoxWidth = textFrame.AbsoluteSize.X
		local textbehindCursor = string.sub(textBox.Text, 1, textBox.CursorPosition - 1)
		local cursorPos = TextService:GetTextSize(textbehindCursor, FONT_SIZE, FONT, Vector2.new(0, 0)).x
		local endTextPos = TextService:GetTextSize(textBox.Text, FONT_SIZE, FONT, Vector2.new(0, 0)).x

		-- position of the textbox so it's clipped correctly with padding
		local offset = textBox.Position.X.Offset

		if cursorPos <= PADDING - offset then
			offset = PADDING - cursorPos
		elseif cursorPos + PADDING >= textBoxWidth - offset then
			offset = -(cursorPos + PADDING - textBoxWidth)
		end

		textBox.Position = UDim2.new(0, offset, 0, 0)
		textBox.Size = UDim2.new(0, math.max(endTextPos, textBoxWidth), 0, textBox.AbsoluteSize.Y)
	end

	-- used to validate text and determine if warning message is required.
	-- do we want tab redirecting because we can have that here
	self.textBoxCheckFunc = function()
		local textBox = self.textBoxRef.current
		if not textBox then
			return
		end

		-- if we encounter a tab key, it will be consumed to pass focus to the next textBox
		if string.find(textBox.Text, '\t') then
			-- remove the tab character since we consumed it
			textBox.Text = textBox.Text:gsub('\t', '')

			--hack to handle the focuslost case
			textBox:ReleaseFocus(true)
		end

		if self.props.ValidateText then
			local currText = textBox.Text
			local updatedText
			local warningMessage = ""
			if utf8.len(currText) > 0 then
				updatedText, warningMessage = self.props.ValidateText(currText)

				local textBoxText = textBox.Text
				if textBoxText ~= updatedText then
					--used to keep the cursor in place if text was not changed
					textBox.CursorPosition = textBox.CursorPosition - 1
					textBox.Text = updatedText
				end

				if warningMessage == nil then
					warningMessage = ""
				end
			end

			if self.state.warningMessage ~= warningMessage then
				self:setState({
					warningMessage = warningMessage
				})
			end
		end

		if self.props.MaxGraphemes then
			if utf8.len(textBox.Text) > self.props.MaxGraphemes then
				local offset = utf8.offset(textBox.Text, 1, self.props.MaxGraphemes + 1) - 1
				textBox.Text = string.sub(textBox.Text, 1, offset)
			end
		end

		self.updateTextBoxOffset()
	end

	-- updates the border color to "selected" highlight
	self.onFocus = function()
		if utf8.len(self.state.warningMessage) == 0 then
			self:setState({
				focused = true,
			})
		end

		if self.props.OnFocused then
			self.props.OnFocused()
		end
	end

	-- resets the border color to "normal" highlight
	-- also, this is where we know the input is complete
	self.onFocusLost = function(rbx, enterPressed)
		local currTextBox = self.textBoxRef.current
		if currTextBox then
			currTextBox.Position = UDim2.new(0, PADDING, 0, 0)
		end

		if utf8.len(self.state.warningMessage) == 0 then
			self:setState({
				focused = false,
			})
		end

		local textBox = self.textBoxRef.current
		if self.props.OnFocusLost and textBox and utf8.len(textBox.Text) > 0 then
			local textOverride = self.props.OnFocusLost(enterPressed, textBox.Text)
			if textOverride then
				textBox.Text = textOverride
			end
		end
	end
end

function LabeledTextInput:_render(theme)
	local position = self.props.Position
	local width = self.props.Width or UDim.new(1, 0)

	local label = self.props.Label or ""
	local text = self.props.Text or ""

	local editingDisabled = self.props.EditingDisabled

	local placeholderText = self.props.PlaceholderText or text
	local clearTextOnFocus = self.props.ClearTextOnFocus or false
	local layoutOrder = self.props.LayoutOrder

	local labelWidth = 0
	if utf8.len(label) > 0 then
		labelWidth = TextService:GetTextSize(label, FONT_SIZE, FONT, Vector2.new()).X + (2 * PADDING)
	end
	local warningMessage = self.state.warningMessage

	if self.props.WarningOverride then
		warningMessage = self.props.WarningOverride
	end
	local hasWarningMessage = warningMessage and utf8.len(warningMessage) > 0

	local size, borderColor
	local borderSize = UDim2.new(1, 0, 0, BORDERFRAME_HEIGHT)

	if not hasWarningMessage then
		size = UDim2.new(width.Scale, width.Offset, 0, BORDERFRAME_HEIGHT)
		if self.state.focused then
			borderColor = theme.hoveredItemColor
		else
			borderColor = theme.borderColor
		end
	else
		size = UDim2.new(width.Scale, width.Offset, 0, 2 * BORDERFRAME_HEIGHT)
		borderColor = theme.errorColor
	end

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,

		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
	}, {
		-- this image label is the rounded colored border
		TextBox = Roact.createElement("ImageLabel", {
			Size = borderSize,

			Image = ROUNDED_BACKGROUND_IMAGE,
			ImageTransparency = 0,
			ImageColor3 = borderColor,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = ROUNDED_FRAME_SLICE,

			BackgroundTransparency = 1,
			[Roact.Ref] = self.textInputBorderRef,
		}, {
			Label = labelWidth > 0 and Roact.createElement("TextLabel", {
				Position = UDim2.new(0, 1, 0, 1),
				Size = UDim2.new(0, labelWidth, 0, TEXTBOX_HEIGHT),
				BackgroundColor3 = theme.shadowColor,

				BorderSizePixel = 0,
				Text = label,
				Font = FONT,
				TextSize = FONT_SIZE,
				TextColor3 = theme.textColor,
				TextXAlignment = Enum.TextXAlignment.Center,
			}),

			TextBoxFrame = Roact.createElement("Frame", {
				Position = UDim2.new(0, (labelWidth > 0 and (labelWidth + 1) or BORDER_PADDING), 0, 1),
				Size = UDim2.new(1, -labelWidth - (2 * BORDER_PADDING), 0, TEXTBOX_HEIGHT),
				ClipsDescendants = true,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.roundTextButtonTheme.textBoxColor,

				[Roact.Ref] = self.textClipperFrameRef,
			}, {
				TextBox = Roact.createElement("TextBox", {
					Size = UDim2.new(1, -PADDING, 1, 0),
					Position = UDim2.new(0, PADDING, 0, 0),
					BackgroundTransparency = 1,

					Text = text,
					Font = FONT,
					TextSize = FONT_SIZE,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					ClearTextOnFocus = clearTextOnFocus,
					PlaceholderText = placeholderText,
					TextEditable = not editingDisabled,

					[Roact.Ref] = self.textBoxRef,
					[Roact.Change.Text] = self.textBoxCheckFunc,
					[Roact.Change.CursorPosition] = self.updateTextBoxOffset,
					[Roact.Event.Focused] = self.onFocus,
					[Roact.Event.FocusLost] = self.onFocusLost,
				}),
			}),
		}),

		Warning = hasWarningMessage and Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, TEXTBOX_HEIGHT),
			Position = UDim2.new(0, 0, 0, TEXTBOX_HEIGHT),

			Text = warningMessage,
			Font = FONT,
			TextSize = FONT_SIZE,
			TextColor3 = theme.errorColor,
			TextXAlignment = Enum.TextXAlignment.Left,

			BackgroundTransparency = 1,
		})
	})
end

function LabeledTextInput:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Theme:get())
	else
		return withTheme(function(theme)
			return self:_render(theme)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(LabeledTextInput, {
		Theme = ContextItems.UILibraryTheme,
	})
end

return LabeledTextInput
