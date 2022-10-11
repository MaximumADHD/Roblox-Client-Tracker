--[[
	Mostly the same as UILibrary RadioButtons component, but modified to use dev framework context
]]

local NO_WRAP = Vector2.new(1000000, 50)
local BUTTON_HEIGHT_SCALE = 0.4

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local createFitToContent = require(script.Parent.createFitToContent)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local RadioButtons = Roact.PureComponent:extend("RadioButtons")

function RadioButtons:init()
	self.layoutRef = Roact.createRef()
	self.containerRef = Roact.createRef()
	self.currentLayout = 0

	self.onButtonClicked = function(key, index)
		if self.props.onButtonClicked then
			self.props.onButtonClicked(key, index)
		end
	end
end

function RadioButtons:createButton(key, text, index, selected, theme)
	local textWidth = TextService:GetTextSize(text, theme.radioButton.textSize, theme.radioButton.font, NO_WRAP).X
	local buttonHeight = theme.radioButton.buttonHeight

	local buttonSize = UDim2.new(1, 0, 0, buttonHeight)
	if self.props.FillDirection == Enum.FillDirection.Horizontal then
		buttonSize = UDim2.new(0, textWidth + buttonHeight, 0, buttonHeight)
	end

	return Roact.createElement("Frame", {
		LayoutOrder = self:nextLayout(),
		BackgroundTransparency = 1,
		Size = buttonSize,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, theme.radioButton.buttonPadding),
		}),

		Background = Roact.createElement("ImageButton", {
			LayoutOrder = 1,
			Size = UDim2.new(0, buttonHeight, 0, buttonHeight),
			BackgroundTransparency = 1,
			ImageColor3 = theme.radioButton.radioButtonColor,
			Image = theme.radioButton.radioButtonBackground,

			[Roact.Event.Activated] = function()
				self.onButtonClicked(key, index)
			end,
		}, {
			Highlight = selected and Roact.createElement("ImageLabel", {
				Size = UDim2.new(BUTTON_HEIGHT_SCALE, 0, BUTTON_HEIGHT_SCALE, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Image = theme.radioButton.radioButtonSelected,
			}),
		}),

		Text = Roact.createElement("TextButton", {
			LayoutOrder = 2,
			Text = text,
			Size = UDim2.new(0, textWidth, 1, 0),
			BackgroundTransparency = 1,
			Font = theme.radioButton.font,
			TextSize = theme.radioButton.textSize,
			TextColor3 = theme.radioButton.textColor,
			TextXAlignment = Enum.TextXAlignment.Left,

			[Roact.Event.Activated] = function()
				self.onButtonClicked(key, index)
			end,
		}),
	})
end

function RadioButtons:resetLayout()
	self.currentLayout = 0
end

function RadioButtons:nextLayout()
	self.currentLayout = self.currentLayout + 1
	return self.currentLayout
end

function RadioButtons:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.UILibraryOverrides

	local buttons = props.Buttons
	local layoutOrder = props.LayoutOrder
	local selected = props.Selected
	local fillDirection = props.FillDirection

	local fitToContent = createFitToContent("Frame", "UIListLayout", {
		FillDirection = fillDirection or Enum.FillDirection.Vertical,
		Padding = UDim.new(0, theme.radioButton.contentPadding),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	self:resetLayout()

	local children = {}
	for index, button in ipairs(buttons) do
		children[button.Key] = self:createButton(button.Key, button.Text, index, selected == button.Key, theme)
	end

	return Roact.createElement(fitToContent, {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, children)
end

RadioButtons = withContext({
	Stylizer = ContextServices.Stylizer,
})(RadioButtons)

return RadioButtons
