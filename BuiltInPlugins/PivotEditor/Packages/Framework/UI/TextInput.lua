--[[
	A single line text input box.
	It handles scrolling to the right when the text reaches the end of the visible box. That functionality can be removed from here when UISYS-276 is implemented.
	It supports a placeholder value.
	It does not handle labels, error messages or tooltips. They should be implemented by higher order wrappers.
	Descended from TextEntry in UILibrary and LabeledTextInput in TerrainTools.

	Optional Props:
		boolean Enabled: Whether the input is editable. Defaults to true.
		number LayoutOrder: The layout order of this component in a list.
		callback OnTextChanged: callback for when the text was changed - OnTextChanged(text: string)
		callback OnFocusGained: callback to tell parent that this component's focus was gained - OnFocusGained()
		callback OnFocusLost: callback to tell parent that this component's focus was lost - OnFocusLost(enterPressed: boolean)
		string PlaceholderText: Placeholder text to show when the input is empty.
		string Text: Text to populate the input with.
		Style Style: The style with which to render this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via mapToProps.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		boolean ShouldFocus: Set focus onto the box so that the user can start typing.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
		Vector2 AnchorPoint: The anchor point of this component

	Style Values:
		Enum.Font Font: The font used to render the text.
		Color3 PlaceholderTextColor: The color of the placeholder text.
		number Padding: The padding of the text input.
		table Padding: Specific padding values for Top, Bottom, Left, and Right.
		number TextSize: The font size of the text.
		Color3 TextColor: The color of the search term text.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)

local Util = require(Framework.Util)
local Typecheck = Util.Typecheck
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local Container = require(Framework.UI.Container)
local RoundBox = require(Framework.UI.RoundBox)
local StyleModifier = require(Framework.Util.StyleModifier)

local TextInput = Roact.PureComponent:extend("TextInput")
Typecheck.wrap(TextInput, script)

local FFlagDevFrameworkTextInputContainer = game:DefineFastFlag("DevFrameworkTextInputContainer", false)

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
			if self.props.OnTextChanged then
				self.props.OnTextChanged(processed)
			end
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
	local style
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		style = props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	local font = style.Font
	local textSize = style.TextSize
	local textColor = style.TextColor
	local placeholderTextColor = style.PlaceholderTextColor

	if FFlagDevFrameworkTextInputContainer then

		self.mouseEnter = function()
			self:setState({
				StyleModifier = StyleModifier.Hover
			})
		end

		self.mouseLeave = function()
			self:setState({
				StyleModifier = Roact.None
			})
		end

	end

	local textBox = Roact.createElement("TextBox", {
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
		[Roact.Change.Text] = self.onTextChanged,
		[Roact.Event.MouseEnter] = FFlagDevFrameworkTextInputContainer and self.mouseEnter or nil,
		[Roact.Event.MouseLeave] = FFlagDevFrameworkTextInputContainer and self.mouseLeave or nil,
	})

	if FFlagDevFrameworkTextInputContainer then

		local backgroundStyle = style.BackgroundStyle
		local padding = style.Padding

		return Roact.createElement(Container, {
			AnchorPoint = props.AnchorPoint,
			Position = position,
			Padding = padding,
			Size = size,
			Background = RoundBox,
			BackgroundStyle = backgroundStyle,
		}, {
			TextBox = textBox
		})

	else

		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			AnchorPoint = props.AnchorPoint,
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			LayoutOrder = layoutOrder,
		}, {
			TextBox = textBox
		})

	end
end

ContextServices.mapToProps(TextInput, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return TextInput