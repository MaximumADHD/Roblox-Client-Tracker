local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)

local TEXTBOX_RIGHTSIDE_THRESHOLD = 0.9

local ScrollingTextBox = Roact.Component:extend("ScrollingTextBox")

function ScrollingTextBox:init(props)
	local fontDims = TextService:GetTextSize("A", props.TextSize, props.Font, Vector2.new(0, 0))

	self.adjustOffset = function()
		if self.clipBox.current and self.textboxRef.current then
			-- this logic only works for monospace font
			-- cursorposition returns 1 for the left most cursor position
			local fontDims = self.state.fontDims
			local cursorPos = self.textboxRef.current.CursorPosition - 1
			local innerCursorPos = cursorPos - (math.ceil(self.state.innerXOffset/fontDims.X))

			local maxCursorPos = math.floor(self.clipBox.current.AbsoluteSize.X * TEXTBOX_RIGHTSIDE_THRESHOLD / fontDims.X)

			if innerCursorPos > maxCursorPos then
				local newOffset = (cursorPos - maxCursorPos) * fontDims.X
				self:setState({
					innerXOffset = newOffset
				})

			elseif innerCursorPos < 0 then
				local newOffset = cursorPos * fontDims.X
				self:setState({
					innerXOffset = newOffset
				})
			end
		end
	end

	self.clipBox = Roact.createRef()
	self.textboxRef = self.props[Roact.Ref] or Roact.createRef()

	self.state = {
		fontDims = fontDims,
		innerXOffset = 0,
	}
end

function ScrollingTextBox:didMount()
	if not self.onFocusConnection then
		self.onFocusConnection = UserInputService.InputBegan:Connect(function(input)
			if self.textboxRef.current and self.textboxRef.current:IsFocused() then
				if input.KeyCode == Enum.KeyCode.Home then
					self.textboxRef.current.CursorPosition = 0
				elseif input.KeyCode == Enum.KeyCode.End then
					-- plus one for the position after the last character
					self.textboxRef.current.CursorPosition = #self.textboxRef.current.text + 1
				else
					self.adjustOffset()
				end
			end
		end)
	end
end

function ScrollingTextBox:willUnmount()
	if self.onFocusConnection then
		self.onFocusConnection:Disconnect()
		self.onFocusConnection = nil
	end
end

function ScrollingTextBox:render()
	local position = self.props.Position
	local size = self.props.Size
	local placeHolderText = self.props.PlaceholderText

	local textColor = self.props.TextColor3
	local textSize = self.props.TextSize
	local font = self.props.Font
	local text = self.props.Text

	local clearTextOnFocus = self.props.ClearTextOnFocus
	local showNativeInput = self.props.ShowNativeInput

	local textboxOnFocusLost = self.props.TextBoxFocusLost

	local innerXOffset = self.state.innerXOffset

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,
		ClipsDescendants = true,

		[Roact.Ref] = self.clipBox,
	}, {
		TextBox = Roact.createElement("TextBox", {
			Position = UDim2.new(0, -innerXOffset, 0, 0),
			Size = UDim2.new(1, innerXOffset, 1, 0),
			BackgroundTransparency = 1,

			ShowNativeInput = showNativeInput,
			ClearTextOnFocus = clearTextOnFocus,
			TextColor3 = textColor,
			TextXAlignment = 0,
			TextSize = textSize,
			Text = text,
			Font = font,
			PlaceholderText = placeHolderText,

			[Roact.Ref] = self.textboxRef,
			[Roact.Change.CursorPosition] = self.adjustOffset,
			[Roact.Event.FocusLost] = textboxOnFocusLost,
		}),
	})
end

return ScrollingTextBox