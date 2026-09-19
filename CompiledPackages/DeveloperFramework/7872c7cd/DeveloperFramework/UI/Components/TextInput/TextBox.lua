--[[
	A basic TextBox. Does not have a Style and does not rely on Theme.

	This component is a thin wrapper around a TextBox host component that adds
	improved cursor visibility, overflow text clipping, and options for controlling
	tab behavior.

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying Frame.
		boolean AllowTab: Whether to accept tab characters in input text.
		Color3 BackgroundColor: Background color for the component.
		boolean ClearTextOnFocus: Whether clicking on the component will clear its text.
		boolean Disabled: Whether the input is editable.
		Enum.Font Font: The font used to render the text.
		number LayoutOrder: The layout order of the component.
		number LineHeight: The line height for the component.
		boolean MultiLine: Whether the input is multiline.
		callback OnEnter: Callback fired when Enter is pressed.
		callback OnFocused: Callback fired when the component is focused.
		callback OnFocusLost: Callback fired when the focus is lost.
		callback OnTextChanged: Callback fired when the text has changed.
		string PlaceholderText: Placeholder text to show when the input is empty.
		Color3 PlaceholderTextColor: Color of the placeholder text.
		UDim2 Size: The size of the component.
		string Text: Text to populate the input with.
		Color3 TextColor: The color of the text.
		number TextSize: The font size of the text.
		boolean TextWrapped: If the Text should be wrapped to the next line.
		Enum.TextXAlignment TextXAlignment: The X alignment of the text.
		Enum.TextYAlignment TextYAlignment: The Y alignment of the text.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local Typecheck = require(Framework.Util.Typecheck)

local withForwardRef = require(Framework.Wrappers.withForwardRef)

local FFlagTextBoxEmitReturn = game:GetFastFlag("TextBoxEmitReturn")
-- ShouldEmitReturnEvents is not supported in the play mode, but we want the component to work there for Embedded Storybook.
-- So we check for support and keep the old implemenation if there is none.
local hasShouldEmitReturnEventsSupport = FFlagTextBoxEmitReturn
	and pcall(function()
		local textBox = Instance.new("TextBox")
		textBox.ShouldEmitReturnEvents = true
	end)

local TextBox = Roact.PureComponent:extend("TextBox")
Typecheck.wrap(TextBox, script)

TextBox.defaultProps = {
	AllowTab = false,
	Disabled = false,
	ClearTextOnFocus = false,
	PlaceholderText = "",
	Size = UDim2.new(0, 100, 0, 32),
	TextWrapped = false,
}

function TextBox:init(initialProps)
	self.textBoxRef = initialProps.ForwardRef or Roact.createRef()

	self.focused = function()
		if self.props.OnFocused then
			self.props.OnFocused()
		end
	end

	self.focusLost = function(_rbx, submitted, inputObject)
		if self.props.OnFocusLost then
			self.props.OnFocusLost(_rbx, submitted, inputObject)
		end

		if submitted and self.props.OnEnter ~= nil then
			self.props.OnEnter()
		end
	end

	self.textChanged = function()
		local textBox = self.textBoxRef.current
		if not textBox then
			return
		end

		local text = textBox:GetStyled("Text")
		local newText = text

		if not self.props.AllowTab then
			if string.find(newText, "\t") then
				newText = newText:gsub("\t", "")
			end
		end

		if not hasShouldEmitReturnEventsSupport then
			if self.props.OnEnter ~= nil then
				if string.find(newText, "\n") then
					newText = newText:gsub("\n", "")
				end
			end

			if newText ~= text then
				text = newText
				textBox.Text = text

				local submitted = true
				textBox:ReleaseFocus(submitted)
			end
		end

		if self.props.OnTextChanged then
			self.props.OnTextChanged(text)
		end
	end

	self.inputBegan = function(_, input)
		if not hasShouldEmitReturnEventsSupport then
			return
		end
		local textBox = self.textBoxRef.current
		if not textBox then
			return
		end
		if input.UserInputType ~= Enum.UserInputType.Keyboard then
			return
		end
		if input.KeyCode == Enum.KeyCode.Return then
			if input:IsModifierKeyDown(Enum.ModifierKey.Shift) and self.props.MultiLine then
				return
			end
			local submitted = true
			textBox:ReleaseFocus(submitted)
		end
	end
end

function TextBox:render()
	local props = self.props
	local isMultiLine = props.MultiLine

	return Roact.createElement("TextBox", {
		AutomaticSize = if isMultiLine then Enum.AutomaticSize.Y else nil,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClearTextOnFocus = props.ClearTextOnFocus,
		ClipsDescendants = true,
		Font = props.Font,
		LayoutOrder = props.LayoutOrder,
		LineHeight = props.LineHeight,
		MultiLine = props.MultiLine,
		PlaceholderColor3 = props.PlaceholderTextColor,
		PlaceholderText = props.PlaceholderText,
		Size = props.Size,
		-- selene: allow(roblox_incorrect_roact_usage) remove with FFlagTextBoxEmitReturn
		ShouldEmitReturnEvents = if hasShouldEmitReturnEventsSupport then true else nil,
		Text = props.Text,
		TextColor3 = props.TextColor,
		TextEditable = not props.Disabled,
		TextSize = props.TextSize,
		TextWrapped = props.TextWrapped,
		TextXAlignment = props.TextXAlignment,
		TextYAlignment = props.TextYAlignment,

		[Roact.Event.Focused] = self.focused,
		[Roact.Event.FocusLost] = self.focusLost,
		[Roact.Event.InputBegan] = self.inputBegan,
		[Roact.Change.Text] = self.textChanged,
		[Roact.Ref] = self.textBoxRef,
	})
end

return withForwardRef(TextBox)
