--[[
	A single line text input box.
	It handles scrolling to the right when the text reaches the end of the visible box. That functionality can be removed from here when UISYS-276 is implemented.
	It supports a placeholder value.
	It does not handle labels, error messages or tooltips. They should be implemented by higher order wrappers.
	Descended from TextEntry in UILibrary and LabeledTextInput in TerrainTools.

	Required Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		boolean Enabled: Whether the input is editable. Defaults to true.
		number LayoutOrder: The layout order of this component in a list.
		callback OnTextChanged: callback for when the text was changed - OnTextChanged(text: string)
		callback OnFocusGained: callback to tell parent that this component's focus was gained - OnFocusGained()
		callback OnFocusLost: callback to tell parent that this component's focus was lost - OnFocusLost(enterPressed: boolean)
		string PlaceholderText: Placeholder text to show when the input is empty.
		string Text: Text to populate the input with.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		boolean ShouldFocus: Set focus onto the box so that the user can start typing.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.

	Style Values:
		Enum.Font Font: The font used to render the text.
		Color3 PlaceholderTextColor: The color of the placeholder text.
		number TextSize: The font size of the text.
		Color3 TextColor: The color of the search term text.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Typecheck = require(Framework.Util).Typecheck

local TextInput = Roact.PureComponent:extend("TextInput")
Typecheck.wrap(TextInput, script)

function TextInput:init()
	self.textBoxRef = Roact.createRef()
	self.onTextChanged = function(rbx)
		-- workaround because we do not disconnect events before we start unmounting host components.
		-- see https://github.com/Roblox/roact/issues/235 for more info
		if not self.textBoxRef.current then return end

		if rbx.TextFits then
			rbx.TextXAlignment = Enum.TextXAlignment.Left
		else
			rbx.TextXAlignment = Enum.TextXAlignment.Right
		end
		if rbx.Text ~= self.props.Text then
			local processed = string.gsub(rbx.Text, "[\n\r]", " ")
			self.props.OnTextChanged(processed)
		end
	end

	self.onFocusLost = function(rbx, enterPressed)
		-- workaround because we do not disconnect events before we start unmounting host components.
		-- see https://github.com/Roblox/roact/issues/235 for more info
		if not self.textBoxRef.current then return end

		local textBox = self.textBoxRef.current
		textBox.TextXAlignment = Enum.TextXAlignment.Left
		if self.props.OnFocusLost then
			self.props.OnFocusLost(enterPressed)
		end
	end
end

function TextInput:didUpdate(prevProps)
	-- The ShouldFocus prop is used in preference to exposing a ref to the parent component
	-- to avoid exposing the inner TextBox to manipulation
	if self.props.ShouldFocus and not prevProps.ShouldFocus and self.textBoxRef.current then
		self.textBoxRef.current:CaptureFocus()
	end
end

function TextInput:render()
	local props = self.props

	local enabled = props.Enabled == nil and true or props.Enabled
	local layoutOrder = props.LayoutOrder or 0
	local placeholderText = props.PlaceholderText
	local text = props.Text or ""
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local position = props.Position

	local theme = props.Theme
	local style = theme:getStyle("Framework", self)
	local font = style.Font
	local textSize = style.TextSize
	local textColor = style.TextColor
	local placeholderTextColor = style.PlaceholderTextColor

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		LayoutOrder = layoutOrder,
	}, {
		TextBox = Roact.createElement("TextBox", {
			Visible = self.props.Visible,

			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			PlaceholderText  = placeholderText,
			PlaceholderColor3 = placeholderTextColor,
			ClearTextOnFocus = false,
			Font = font,
			TextSize = textSize,
			TextColor3 = textColor,
			Text = text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextEditable = enabled,

			[Roact.Ref] = self.textBoxRef,

			[Roact.Event.Focused] = self.props.OnFocusGained,
			[Roact.Event.FocusLost] = self.onFocusLost,
			[Roact.Change.Text] = self.onTextChanged
		}),
	})
end

ContextServices.mapToProps(TextInput, {
	Theme = ContextServices.Theme,
})

return TextInput