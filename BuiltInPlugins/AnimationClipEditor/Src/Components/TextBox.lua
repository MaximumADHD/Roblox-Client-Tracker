--[[
	Represents a TextBox styled just for the Animation Editor.

	Props:
		UDim2 Size = The size of the text box.
		string Text = The text to display in the text box when it is not
			being edited by the user.
		int LayoutOrder = The order in which the box displays in a UIListLayout.
		bool CaptureFocus = Whether to immediately capture focus upon rendering.
		bool ClearTextOnFocus = Whether to clear the text box when it is focused.
		TextXAlignment TextXAlignment = The X alignment of the displayed text.

		function FocusChanged(Instance instance, bool focused, bool enterPressed) = A callback for when focus is
			gained or lost on the text box.
		function TextChanged(string text) = A callback for when the text has changed.
]]

local PADDING = UDim.new(0, 6)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local UILibraryCompat = Plugin.Src.UILibraryCompat
local RoundFrame = require(UILibraryCompat.RoundFrame)

local TextBox = Roact.PureComponent:extend("TextBox")

function TextBox:init(initialProps)
	self.state = {
		Focused = false,
	}

	self.mouseEnter = function()
		if self.props.Mouse then 
			self.props.Mouse:__pushCursor("IBeam")
		end
	end

	self.mouseLeave = function()
		if self.props.Mouse then 
			self.props.Mouse:__popCursor()
		end
	end

	self.textBoxRef = Roact.createRef()
end

function TextBox:willUnmount()
	self.props.Mouse:__resetCursor()
	self.unmounting = true
end

function TextBox:didMount()
	if self.props.CaptureFocus and self.textBoxRef.current then
		-- Forced to use spawn because the textbox doesn't always
		-- capture focus correctly if we don't.
		spawn(function()
			if self.textBoxRef.current then
				self.textBoxRef.current:CaptureFocus()
			end
		end)
	end
end

function TextBox:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local state = self.state

		local size = props.Size
		local text = props.Text
		local textXAlignment = props.TextXAlignment
		local layoutOrder = props.LayoutOrder

		local focused = state.Focused
		local textBoxTheme = theme.textBox

		local textChanged = props.TextChanged
		local focusChanged = props.FocusChanged

		local borderColor
		if focused then
			borderColor = textBoxTheme.focusedBorder
		else
			borderColor = textBoxTheme.defaultBorder
		end

		local clearTextOnFocus
		if props.ClearTextOnFocus ~= nil then
			clearTextOnFocus = props.ClearTextOnFocus
		else
			clearTextOnFocus = true
		end

		return Roact.createElement(RoundFrame, {
			Size = size,
			BackgroundColor3 = textBoxTheme.backgroundColor,
			BorderColor3 = borderColor,
			LayoutOrder = layoutOrder,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = PADDING,
				PaddingRight = PADDING,
			}),

			Text = Roact.createElement("TextBox", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ClipsDescendants = true,

				ClearTextOnFocus = clearTextOnFocus,
				Font = theme.font,
				TextSize = textBoxTheme.textSize,
				TextColor3 = textBoxTheme.textColor,
				Text = text,
				TextXAlignment = textXAlignment,

				[Roact.Ref] = self.textBoxRef,

				[Roact.Change.Text] = function(rbx)
					if textChanged then
						textChanged(rbx.Text)
					end
				end,

				[Roact.Event.Focused] = function(rbx)
					self:setState({
						Focused = true,
					})
					focusChanged(rbx, true)
				end,

				[Roact.Event.FocusLost] = function(rbx, submitted)
					if not self.unmounting then
						self:setState({
							Focused = false,
						})
						focusChanged(rbx, false, submitted)
					end
				end,

				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
			}, props[Roact.Children]),
		})
end

ContextServices.mapToProps(TextBox, {
	Theme = ContextServices.Theme,
	Mouse = ContextServices.Mouse,
})

return TextBox
