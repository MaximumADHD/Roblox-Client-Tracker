--[[
	A horizontal collection of RoundTextButtons.

	Props:
		Enum.HorizontalAlignment HorizontalAlignment = The alignment of the button bar.
			Determines if buttons should be centered or aligned to one corner.
		float Padding padding arounf the buttons
		string Title a title for the button bar, placed above the buttons
		table Buttons = The buttons to add to this button bar.
		local Style = {
			BorderDefaultColor,
			BackgroundColor,
			TextColor
		}
]]

local BUTTON_BAR_PADDING = 25
local BUTTON_BAR_EDGE_PADDING = 35

local BUTTON_BAR_TITLE_FRAME_PADDING = Vector2.new(30, 40)
local BUTTON_BAR_TITLE_TEXT_LABEL_PADDING = Vector2.new(8, 0)
local BUTTON_BAR_TITLE_TEXT_SIZE = 22

local Roact = require(script.Parent.Internal.RequireRoact)
local Constants = require(script.Parent.Internal.Constants)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)
local Text = require(script.Parent.Internal.Text)
local RoundTextButton = require(script.Parent.RoundTextButton)

local getStyle = nil

local function ButtonBar(props)
	local function renderInternal()
		local horizontalAlignment = props.HorizontalAlignment
		local buttons = props.Buttons

		local titleFrameZIndex = props.ZIndex or 1
		local buttonZIndex = nil ~= props.Title and titleFrameZIndex+1 or titleFrameZIndex

		local components = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, props.Padding or BUTTON_BAR_PADDING),
				HorizontalAlignment = horizontalAlignment,
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			})
		}

		if horizontalAlignment ~= Enum.HorizontalAlignment.Center then
			table.insert(components, Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, BUTTON_BAR_EDGE_PADDING),
			}))
		end

		local style = getStyle(props)

		for i, button in ipairs(buttons) do
			table.insert(components, Roact.createElement(RoundTextButton, {
				LayoutOrder = i,
				Style = button.Default and Theme.getDefaultButtonProps() or Theme.getCancelButtonProps(),
				BorderMatchesBackground = button.Default and not Theme.isDarkerTheme(),
				Size = nil ~= props.Title and UDim2.new(0, Constants.BUTTON_WIDTH, 0, Constants.BUTTON_HEIGHT) or UDim2.new(0, Constants.BUTTON_WIDTH, 1, 0),
				Enabled = button.Enabled,
				Name = button.Name,
				Value = button.Value,
				ZIndex = buttonZIndex,
				ShowPressed = button.ShowPressed,
				Mouse = button.Mouse,

				OnClicked = function(value)
					props.ButtonClicked(value)
				end,
			}))
		end

		if nil ~= props.Title then
			local combinedButtonWidths = #buttons * Constants.BUTTON_WIDTH
			local combinedPaddingWidths = math.max(#buttons-1, 0) * (props.Padding or BUTTON_BAR_PADDING)
			local totalWidth = BUTTON_BAR_TITLE_FRAME_PADDING.X + combinedButtonWidths + combinedPaddingWidths

			local titleTextLabelSize = Text.calculateTextSize(props.Title, BUTTON_BAR_TITLE_TEXT_SIZE, Enum.Font.SourceSans) + BUTTON_BAR_TITLE_TEXT_LABEL_PADDING

			return Roact.createElement("Frame", {
				LayoutOrder = props.LayoutOrder or 1,
				Size = UDim2.new(1, 0, 0, Constants.BUTTON_HEIGHT + BUTTON_BAR_TITLE_FRAME_PADDING.Y),
				BackgroundTransparency = 1,
			}, {
				Border = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, totalWidth, 1, 0),
					BackgroundTransparency = 1,
					Image = Constants.ROUNDED_BORDER_IMAGE,
					ImageColor3 = style.BorderDefaultColor,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Constants.ROUNDED_FRAME_SLICE,
					ZIndex = titleFrameZIndex
				}, {
					Title = Roact.createElement("TextLabel", {
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, BUTTON_BAR_TITLE_FRAME_PADDING.X/2, 0, 0),
						BackgroundTransparency = 0,
						BackgroundColor3 = style.BackgroundColor,
						BorderSizePixel = 0,
						Size = UDim2.new(0, titleTextLabelSize.X, 0, titleTextLabelSize.Y),
						TextColor3 = style.TextColor,
						Font = Enum.Font.SourceSans,
						TextSize = BUTTON_BAR_TITLE_TEXT_SIZE,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						Text = props.Title,
						ZIndex = buttonZIndex
					}),
					Roact.createElement("Frame", {
						Position = UDim2.new(0, BUTTON_BAR_TITLE_FRAME_PADDING.X/2, 0, BUTTON_BAR_TITLE_FRAME_PADDING.Y/2),
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
					}, components)
				})
			})
		else
			return Roact.createElement("Frame", {
				LayoutOrder = props.LayoutOrder or 1,
				Size = UDim2.new(1, 0, 0, Constants.BUTTON_HEIGHT),
				AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5),
				Position = props.Position or UDim2.new(0, 0, 0.5, 0),
				BackgroundTransparency = 1,
			}, components)
		end
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(props)
	local styleProps = {
		["BorderDefaultColor"] = Theme.getBorderDefaultColor(),
		["BackgroundColor"] = Theme.getMainBackgroundColor(),
		["TextColor"] = Theme.getTitleTextColor()
	}

	local style = {}
	for name, defaultStylePropsVal in pairs(styleProps) do
		style[name] = props.Style and props.Style[name] or defaultStylePropsVal
	end
	return style
end

return ButtonBar