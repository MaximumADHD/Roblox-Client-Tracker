--[[
	A set of an arbitrary number of Radio buttons. Automatically scales to fit
	the number of buttons contained in this component.

	Props:
		Table Buttons: A table of buttons to use.
			Format: {{Key = "Key1", Text = "Text1"}, ...}
		string Selected = The current button that is selected.

		function onButtonClicked(string key) = A callback for when a user selects a button.
]]

local ENTRY_HEIGHT = 20

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local createFitToContent = require(Plugin.Core.Components.createFitToContent)
local withTheme = ContextHelper.withTheme
local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local RadioButtons = Roact.PureComponent:extend("RadioButtons")

local FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton = game:GetFastFlag(
	"ToolboxUseDevFrameworkLoadingBarAndRadioButton"
)
if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
	return {}
end

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	FillDirection = Enum.FillDirection.Vertical,
	Padding = UDim.new(0, 5),
	SortOrder = Enum.SortOrder.LayoutOrder,
})

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
	local textWidth = Constants.getTextSize(text).X

	return Roact.createElement("Frame", {
		LayoutOrder = self:nextLayout(),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 6),
		}),

		Background = Roact.createElement("ImageButton", {
			LayoutOrder = 1,
			Size = UDim2.new(0, ENTRY_HEIGHT, 0, ENTRY_HEIGHT),
			BackgroundTransparency = 1,
			ImageColor3 = theme.background,
			Image = Images.RADIO_BUTTON_BACKGROUND,

			[Roact.Event.Activated] = function()
				self.onButtonClicked(key, index)
			end,
		}, {
			Highlight = selected and Roact.createElement("ImageLabel", {
				Size = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Image = Images.RADIO_BUTTON_HIGHLIGHT,
			}),
		}),

		Text = Roact.createElement("TextButton", {
			LayoutOrder = 2,
			Text = text,
			Size = UDim2.new(0, textWidth, 1, 0),
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextColor3 = theme.textColor,
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
	return withTheme(function(theme)
		local buttonTheme = theme.radioButton
		local buttons = self.props.Buttons
		local selected = self.props.Selected

		self:resetLayout()

		local children = {}
		for index, button in ipairs(buttons) do
			children[button.Key] = self:createButton(
				button.Key,
				button.Text,
				index,
				selected == button.Key,
				buttonTheme
			)
		end

		return Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
		}, children)
	end)
end

return RadioButtons
