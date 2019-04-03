--[[
	A TextBox with rounded corners that allows single-line or multiline entry,
	maximum character count, and error messages.

	Props:
		bool Enabled = Whether this component can be interacted with.
		bool ShowTextWhenDisabled = whether we want to still soo none interactable text when the component is disabled
		int MaxLength = The maximum number of characters allowed in the TextBox.
		bool Multiline = Whether this TextBox allows a single line of text or multiple.
		int Height = The vertical size of this TextBox, in pixels.
		int LayoutOrder = The sort order of this component in a UIListLayout.

		string ErrorMessage = A general override message used to display an error.
			A non-nil ErrorMessage will border the TextBox in red.

		string Text = The text to display in the TextBox
		string PlaceholderText - text shown when no Text is passed in
		PaddingBottom = UDim bottom padding
		PaddingLeft = UDim left padding
		PaddingRight = UDim right padding
		PaddingTop = UDim top padding
		ShowToolTip = do we want to show anything beneath the rounded text box
		table Style = {
			BorderHoverColor,
			BorderDefaultColor,
			TextColor,
			TooltipColor,
			BackgroundColor,
			DisabledColor
		}
		Mouse = plugin mouse for changing the mouse icon
		udim2 Position
		vector2 AnchorPoint
		function SetText(text) = Callback to tell parent that text has changed
		function FocusChanged(focused, enterPressed) = Callback when this TextBox is focused.(enterPressed will be nil if focused is true)
		function HoverChanged(hovering) = Callback when the mouse enters or leaves this TextBox.
]]

local DFFlagGameSettingsWorldPanel = settings():GetFFlag("GameSettingsWorldPanel3")

local DEFAULT_HEIGHT = 42
local PADDING = UDim.new(0, 10)

local Roact = require(script.Parent.Internal.RequireRoact)
local Constants = require(script.Parent.Internal.Constants)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)
local Mouse = require(script.Parent.Internal.Mouse)

local TextEntry = require(script.Parent.TextEntry)
local MultilineTextEntry = require(script.Parent.MultilineTextEntry)

local ERROR_COLOR = Color3.new(1, 0.266, 0.266)

local getStyle = nil

local RoundTextBox = Roact.PureComponent:extend("RoundTextBox")

function RoundTextBox:init()
	self.state = {
		Focused = false,
	}

	self.focusChanged = function(focused, enterPressed)
		if self.props.Enabled then
			if self.props.FocusChanged then
				self.props.FocusChanged(focused, enterPressed)
			end
			self:setState({
				Focused = focused,
			})
		end
	end

	self.mouseHoverChanged = function(hovering)
		if self.props.Enabled then
			if hovering then
				Mouse.onEnter(self.props.Mouse, "IBeam")
			else
				Mouse.onLeave(self.props.Mouse)
			end

			if self.state.Focused and self.props.HoverChanged then
				self.props.HoverChanged(hovering)
			end
		end
	end
end

function RoundTextBox:render()
	local function renderInternal()
		local active = self.props.Enabled
		local focused = self.state.Focused
		local multiline = self.props.Multiline
		local textLength = string.len(self.props.Text)
		local errorState = self.props.ErrorMessage or textLength > self.props.MaxLength

		local style = getStyle(self)

		local backgroundProps = {
			-- Necessary to make the rounded background
			BackgroundTransparency = 1,
			Image = Constants.ROUNDED_BACKGROUND_IMAGE,
			ImageTransparency = 0,
			ImageColor3 = active and style.BackgroundColor or style.DisabledColor,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Constants.ROUNDED_FRAME_SLICE,

			Position = self.props.Position or UDim2.new(0, 0, 0, 0),
			AnchorPoint = DFFlagGameSettingsWorldPanel and self.props.AnchorPoint or nil,
			Size = self.props.Width and UDim2.new(0, self.props.Width, 0, self.props.Height or DEFAULT_HEIGHT) or UDim2.new(1, 0, 0, self.props.Height or DEFAULT_HEIGHT),

			LayoutOrder = self.props.LayoutOrder or 1,
		}

		local showToolTip = (function() if nil ~= self.props.ShowToolTip then return self.props.ShowToolTip else return true end end)()

		local tooltipText
		if active then
			if errorState and self.props.ErrorMessage then
				tooltipText = self.props.ErrorMessage
			else
				tooltipText = (showToolTip or errorState) and textLength .. "/" .. self.props.MaxLength or ""
			end
		else
			tooltipText = ""
		end

		local borderColor
		if active then
			if errorState then
				borderColor = ERROR_COLOR
			elseif focused then
				borderColor = style.BorderHoverColor
			else
				borderColor = style.BorderDefaultColor
			end
		else
			borderColor = style.BorderDefaultColor
		end

		local textEntryProps = {
			Visible = (function()
				if DFFlagGameSettingsWorldPanel then
					return self.props.Enabled or self.props.ShowTextWhenDisabled or false
				else
					return self.props.Enabled
				end
			end)(),
			Enabled = (function()
				if DFFlagGameSettingsWorldPanel then
					return self.props.Enabled
				else
					return nil
				end
			end)(),
			Text = self.props.Text,
			FocusChanged = self.focusChanged,
			HoverChanged = self.mouseHoverChanged,
			SetText = self.props.SetText,
			TextColor3 = style.TextColor,
			HorizontalAlignment = self.props.HorizontalAlignment,
			PlaceholderText = self.props.PlaceholderText,
		}

		local textEntry
		if multiline then
			textEntry = Roact.createElement(MultilineTextEntry, textEntryProps)
		else
			textEntry = Roact.createElement(TextEntry, textEntryProps)
		end

		return Roact.createElement("ImageLabel", backgroundProps, {
			Tooltip = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 2, 1, 2),
				Size = UDim2.new(1, 0, 0, 10),

				Font = Enum.Font.SourceSans,
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextColor3 = (active and errorState and ERROR_COLOR) or style.TooltipColor,
				Text = tooltipText,
				Visible = showToolTip or nil ~= errorState
			}),

			Border = Roact.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = Constants.ROUNDED_BORDER_IMAGE,
				ImageColor3 = borderColor,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Constants.ROUNDED_FRAME_SLICE,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = self.props.PaddingLeft or PADDING,
					PaddingRight = self.props.PaddingRight or PADDING,
					PaddingTop = self.props.PaddingTop or PADDING,
					PaddingBottom = self.props.PaddingBottom or PADDING,
				}),
				Text = textEntry,
			}),
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(self)
	local styleProps = {
		["BorderHoverColor"] = Theme.getBorderHoverColor(),
		["BorderDefaultColor"] = Theme.getBorderDefaultColor(),
		["TextColor"] = Theme.getMainTextColor(),
		["TooltipColor"] = Theme.getTextDescriptionColor(),
		["BackgroundColor"] = Theme.getBackgroundColor(),
		["DisabledColor"] = Theme.getDisabledColor(),
	}

	local style = {}
	for name, defaultStylePropsVal in pairs(styleProps) do
		style[name] = self.props.Style and self.props.Style[name] or defaultStylePropsVal
	end
	return style
end

return RoundTextBox