--[[
	A text entry that is only one line.
	Used in a RoundTextBox when Multiline is false.

	Props:
		string Text = The text to display
		string PlaceholderText - text shown when no Text is passed in
		bool Visible = Whether to display this component
		bool Enabled = Whether this component can be interacted with (true by default)
		function SetText(text) = Callback to tell parent that text has changed
		function FocusChanged(focus) = Callback to tell parent that this component has focus
]]

local StudioTextEntryRoactBugPatch = game:DefineFastFlag("StudioTextEntryRoactBugPatch", false)

local Roact = require(script.Parent.Internal.RequireRoact)

local TextEntry = Roact.PureComponent:extend("TextEntry")

function TextEntry:init()
	self.textBoxRef = Roact.createRef()
	self.onTextChanged = function(rbx)
		local horizontalAlignment = self.props.HorizontalAlignment
		if nil == horizontalAlignment then
			if rbx.TextFits then
				rbx.TextXAlignment = Enum.TextXAlignment.Left
			else
				rbx.TextXAlignment = Enum.TextXAlignment.Right
			end
		end
		if rbx.Text ~= self.props.Text then
			self.props.SetText(rbx.Text)
		end
	end

	self.mouseEnter = function()
		self.props.HoverChanged(true)
	end
	self.mouseLeave = function()
		self.props.HoverChanged(false)
	end
end

function TextEntry:render()
	local children = nil
	local enabled = nil == self.props.Enabled and true or self.props.Enabled
	if (not StudioTextEntryRoactBugPatch) and not enabled then
		children = {
			Roact.createElement("ImageButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ImageTransparency = 1
			})
		}
	end
	
	local textEditable = true
	if StudioTextEntryRoactBugPatch then
		textEditable = enabled
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
	}, {
		Text = Roact.createElement("TextBox", {
			Visible = self.props.Visible,

			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			ClearTextOnFocus = false,
			TextEditable = textEditable,
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = self.props.TextColor3,
			Text = self.props.Text,
			PlaceholderText = self.props.PlaceholderText,
			TextXAlignment = self.props.HorizontalAlignment or Enum.TextXAlignment.Left,
			TextTransparency = not enabled and 0.5 or 0,

			[Roact.Ref] = self.textBoxRef,

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,

			[Roact.Event.Focused] = function()
				self.props.FocusChanged(true)
			end,

			[Roact.Event.FocusLost] = function(unused, enterPressed)
				local textBox = self.textBoxRef.current
				textBox.TextXAlignment = self.props.HorizontalAlignment or Enum.TextXAlignment.Left
				self.props.FocusChanged(false, enterPressed)
			end,

			[Roact.Change.Text] = self.onTextChanged,
		}, children),
	})
end

return TextEntry
