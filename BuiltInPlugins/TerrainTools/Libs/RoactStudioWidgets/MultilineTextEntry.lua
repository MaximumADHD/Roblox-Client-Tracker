--[[
	A multiline text entry with a dynmically appearing scrollbar.
	Used in a RoundTextBox when Multiline is true.

	Props:
		string Text = The text to display
		string PlaceholderText - text shown when no Text is passed in
		bool Visible = Whether to display this component
		bool Enabled = Whether this component can be interacted with (true by default)
		function SetText(text) = Callback to tell parent that text has changed
		function FocusChanged(focus, enterPressed) = Callback to tell parent that this component has focus (enterPressed will be nil if focus is true)
		function HoverChanged(hovered) = Callback when the mouse enters or leaves this component.
]]

local DFFlagGameSettingsWorldPanel = settings():GetFFlag("GameSettingsWorldPanel3")

local TextService = game:GetService("TextService")

local Roact = require(script.Parent.Internal.RequireRoact)

local StyledScrollingFrame = require(script.Parent.StyledScrollingFrame)

local SCROLL_BAR_OUTSET = 9
local TEXT_SIZE = 22

local MultilineTextEntry = Roact.PureComponent:extend("MultilineTextEntry")

function MultilineTextEntry:init()
	self.frameRef = Roact.createRef()
	self.textBoxRef = Roact.createRef()
	self.textConnections = nil

	self.updateCanvas = function()
		local frame = self.frameRef.current
		local sizeX = frame.AbsoluteSize.x - SCROLL_BAR_OUTSET
		local textSize = TextService:GetTextSize(
			self.props.Text,
			TEXT_SIZE,
			Enum.Font.SourceSans,
			Vector2.new(sizeX, 10000)
		)
		frame.CanvasSize = UDim2.new(0, 0, 0, textSize.y)
	end

	self.textChanged = function(rbx)
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

function MultilineTextEntry:didMount()
	local textBox = self.textBoxRef.current
	local frame = self.frameRef.current
	self.textConnections = {
		textBox:GetPropertyChangedSignal("Text"):connect(self.updateCanvas),
		frame:GetPropertyChangedSignal("AbsoluteSize"):connect(self.updateCanvas),
	}
	self.updateCanvas()
end

function MultilineTextEntry:willUnmount()
	for _, connection in ipairs(self.textConnections) do
		connection:Disconnect()
	end
	self.textConnections = nil
end

function MultilineTextEntry:render()
	local visible = self.props.Visible
	local text = self.props.Text
	local textColor = self.props.TextColor3

	local enabled = true
	local children = nil
	if DFFlagGameSettingsWorldPanel then
		enabled = nil == self.props.Enabled and true or self.props.Enabled
		if not enabled then
			children = {
				Roact.createElement("ImageButton", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ImageTransparency = 1
				})
			}
		end
	end

	return Roact.createElement(StyledScrollingFrame, {
		Size = UDim2.new(1, SCROLL_BAR_OUTSET, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		ShowBackground = false,

		[Roact.Ref] = self.frameRef,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, SCROLL_BAR_OUTSET),
		}),

		Text = Roact.createElement("TextBox", {
			Visible = visible,
			MultiLine = true,
			TextWrapped = true,

			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			ClearTextOnFocus = false,
			Font = Enum.Font.SourceSans,
			TextSize = TEXT_SIZE,
			TextXAlignment = self.props.HorizontalAlignment or Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = textColor,
			Text = text,
			PlaceholderText = self.props.PlaceholderText,
			TextTransparency = (DFFlagGameSettingsWorldPanel and not enabled) and 0.5 or 0,

			[Roact.Event.Focused] = function()
				self.props.FocusChanged(true)
			end,

			[Roact.Event.FocusLost] = function(unused, enterPressed)
				self.props.FocusChanged(false, enterPressed)
			end,

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,

			[Roact.Change.Text] = self.textChanged,

			[Roact.Ref] = self.textBoxRef,
		}, children),
	})
end

return MultilineTextEntry
