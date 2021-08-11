--[[
	A widget containing a text label on the left
	and a image button with text underneath on the right
]]
local FFlagLocalizationToolsWithContext = game:GetFastFlag("LocalizationToolsWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = require(Plugin.Packages.Framework).UI
local HoverArea = UI.HoverArea

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local LabeledImageButton = Roact.PureComponent:extend("LabeledImageButton")

function LabeledImageButton:init()
	self.state = {
		hovered = false,
	}

	self.onMouseEnter = function()
		local props = self.props
		local active = props.Active

		if not active then
			return
		end
		self:setState({
			hovered = true,
		})
	end

	self.onMouseLeave = function()
		local props = self.props
		local active = props.Active

		if not active then
			return
		end
		self:setState({
			hovered = false,
		})
	end
end

function LabeledImageButton:render()
	local props = self.props
	local state = self.state
	local theme
	if THEME_REFACTOR then
		theme = props.Stylizer
	else
		theme = props.Theme:get("LabeledImageButton")
	end
	local layoutOrder = props.LayoutOrder
	local labelText = props.LabelText
	local buttonText = props.ButtonText
	local buttonImage = props.ButtonImage
	local active = props.Active
	local onClick = active and props.OnButtonClick
		or function() end
	local hovered = state.hovered

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, theme.Height),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}),
		Label = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(0, theme.LabelWidth, 1, 0),
			Text = labelText,
			TextColor3 = active and theme.TextColor
				or theme.DisabledTextColor,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Button = Roact.createElement("ImageButton", {
			AutoButtonColor = false,
			BackgroundColor3 = hovered
				and theme.BackgroundColorHovered
				or theme.BackgroundColor,
			BorderSizePixel = 0,
			LayoutOrder = 2,
			Size = UDim2.new(0, theme.ImageButtonSize, 0, theme.ImageButtonSize),

			[Roact.Event.Activated] = onClick,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
		}, {
			ImageLabel = Roact.createElement("ImageLabel", {
				Position = UDim2.new(0.5, 0, 0, theme.ImageLabelSize/2),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(0, theme.ImageLabelSize, 0, theme.ImageLabelSize),
				Image = buttonImage,
				BackgroundTransparency = 1,
			}),
			TextLabel = Roact.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 1, -theme.TextLabelSize/2),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 0, 0, theme.TextLabelSize),
				Text = buttonText,
				TextColor3 = active and theme.TextColor
					or theme.DisabledTextColor,
				TextSize = theme.TextLabelTextSize,
				TextWrapped = true,
				BackgroundTransparency = 1,
			}),
			Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
		})
	})
end

if FFlagLocalizationToolsWithContext then
	LabeledImageButton = withContext({
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(LabeledImageButton)
else
	ContextServices.mapToProps(LabeledImageButton, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end


return LabeledImageButton
