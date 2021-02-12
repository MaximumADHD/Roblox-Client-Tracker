local FFlagTerrainToolsSingleSelectUseHover = game:GetFastFlag("TerrainToolsSingleSelectUseHover")
local FFlagTerrainEditorUpdateFontToSourceSans = game:GetFastFlag("TerrainEditorUpdateFontToSourceSans")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local INSET_FOR_CURVED_CORNERS = 4

local SingleSelectButton
if FFlagTerrainToolsSingleSelectUseHover then
	SingleSelectButton = Roact.PureComponent:extend("SingleSelectButton")

	function SingleSelectButton:init()
		self.state = {
			isHovered = false,
		}

		self.onMouseEnter = function()
			self:setState({
				isHovered = true,
			})
		end

		self.onMouseLeave = function()
			self:setState({
				isHovered = false,
			})
		end

		self.onActivated = function()
			if not self.props.IsSelected then
				self.props.Select(self.props.Data)
			end
		end
	end

	function SingleSelectButton:render()
		local layoutOrder = self.props.LayoutOrder
		local width = self.props.Width

		local isLeftmost = self.props.IsLeftmost
		local isRightmost = self.props.IsRightmost

		local isSelected = self.props.IsSelected
		local isHovered = self.state.isHovered

		local theme = self.props.Theme:get()
		local selectedColor = theme.singleSelectButtonGroupTheme.buttonSelectedColor
		local hoveredColor = theme.singleSelectButtonGroupTheme.buttonHoveredColor

		local renderBackground = isSelected or isHovered
		-- Selected takes priority over hovered
		local backgroundColor = isSelected and selectedColor or hoveredColor

		local text = self.props.Text

		return Roact.createElement("ImageButton", {
			Position = UDim2.new((layoutOrder - 1) * width, 0, 0, 0),
			Size = UDim2.new(width, 0, 1, 0),

			AutoButtonColor = false,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			[Roact.Event.Activated] = self.onActivated,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
		}, {
			BackgroundContents = renderBackground and Roact.createFragment({
				-- Render a round rectangle on the left side if this is the leftmost button
				LeftBackground = isLeftmost and Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, INSET_FOR_CURVED_CORNERS * 2, 1, 0),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					ImageTransparency = 0,
					Image = theme.singleSelectButtonGroupTheme.roundedBackgroundImage,
					ImageColor3 = backgroundColor,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = theme.singleSelectButtonGroupTheme.roundedElementSlice,
				}),

				-- Render a round rectangle on the right side if this is the rightmost button
				RightBackground = isRightmost and Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, 0, 0, 0),
					Size = UDim2.new(0, INSET_FOR_CURVED_CORNERS * 2, 1, 0),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					ImageTransparency = 0,
					Image = theme.singleSelectButtonGroupTheme.roundedBackgroundImage,
					ImageColor3 = backgroundColor,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = theme.singleSelectButtonGroupTheme.roundedElementSlice,
				}),

				-- Render a rectangle in the middle that either covers the whole button
				-- Or leaves gaps on either side for the round corners from above to show through
				Background = Roact.createElement("Frame", {
					Position = isLeftmost and UDim2.new(0, INSET_FOR_CURVED_CORNERS, 0, 0)
						or UDim2.new(0, 0, 0, 0),
					Size = (isLeftmost and isRightmost) and UDim2.new(1, -INSET_FOR_CURVED_CORNERS * 2, 1, 0)
						or (isLeftmost or isRightmost) and UDim2.new(1, -INSET_FOR_CURVED_CORNERS, 1, 0)
						or UDim2.new(1, 0, 1, 0),

					BackgroundColor3 = backgroundColor,
					BorderSizePixel = 0,
				}),
			}),

			Label = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Text = text,
				TextSize = FFlagTerrainEditorUpdateFontToSourceSans and theme.textSize or nil,
				Font = FFlagTerrainEditorUpdateFontToSourceSans and theme.font or nil,
				TextColor3 = theme.textColor,
				ZIndex = 3,
			}),
		})
	end

	ContextServices.mapToProps(SingleSelectButton, {
		Theme = ContextItems.UILibraryTheme,
	})
end

local SingleSelectButtonGroup = Roact.PureComponent:extend("SingleSelectButtonGroup")

function SingleSelectButtonGroup:render()
	local theme = self.props.Theme:get()

	local size = self.props.Size

	local options = self.props.Options or {}
	local optionsCount = #options

	local buttonWidth = 1 / optionsCount

	local selected = self.props.Selected

	local selectedColour = theme.singleSelectButtonGroupTheme.buttonSelectedColor

	local content = {}

	for i, option in ipairs(options) do
		local isSelected = option.Data == selected

		-- First and last elements have rounded corners so handle them slightly differently
		local isLeftmost = i == 1
		local isRightmost = i == optionsCount

		if FFlagTerrainToolsSingleSelectUseHover then
			content[tostring(option.Data)] = Roact.createElement(SingleSelectButton, {
				LayoutOrder = i,
				Width = buttonWidth,

				IsSelected = isSelected,
				IsLeftmost = isLeftmost,
				IsRightmost = isRightmost,

				Data = option.Data,
				Text = option.Text,
				Select = self.props.Select,
			})
		else
			content["Button" .. i] = Roact.createElement("ImageButton", {
				Position = UDim2.new((i - 1) * buttonWidth, 0, 0, 0),
				Size = UDim2.new(buttonWidth, 0, 1, 0),

				AutoButtonColor = false,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				[Roact.Event.Activated] = function()
					if not isSelected then
						self.props.Select(option.Data)
					end
				end,
			}, {
				-- Render a round rectangle on the left side if this is the leftmost button
				LeftBackground = isSelected and isLeftmost and Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, INSET_FOR_CURVED_CORNERS * 2, 1, 0),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					ImageTransparency = 0,
					Image = theme.singleSelectButtonGroupTheme.roundedBackgroundImage,
					ImageColor3 = selectedColour,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = theme.singleSelectButtonGroupTheme.roundedElementSlice,
				}),

				-- Render a round rectangle on the right side if this is the rightmost button
				RightBackground = isSelected and isRightmost and Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, 0, 0, 0),
					Size = UDim2.new(0, INSET_FOR_CURVED_CORNERS * 2, 1, 0),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					ImageTransparency = 0,
					Image = theme.singleSelectButtonGroupTheme.roundedBackgroundImage,
					ImageColor3 = selectedColour,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = theme.singleSelectButtonGroupTheme.roundedElementSlice,
				}),

				-- Render a rectangle in the middle that either covers the whole button
				-- Or leaves gaps on either side for the round corners from above to show through
				Background = isSelected and Roact.createElement("Frame", {
					Position = isLeftmost and UDim2.new(0, INSET_FOR_CURVED_CORNERS, 0, 0)
						or UDim2.new(0, 0, 0, 0),
					Size = (isLeftmost and isRightmost) and UDim2.new(1, -INSET_FOR_CURVED_CORNERS * 2, 1, 0)
						or (isLeftmost or isRightmost) and UDim2.new(1, -INSET_FOR_CURVED_CORNERS, 1, 0)
						or UDim2.new(1, 0, 1, 0),

					BackgroundColor3 = selectedColour,
					BorderSizePixel = 0,
				}),

				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Text = option.Text,
					TextSize = FFlagTerrainEditorUpdateFontToSourceSans and theme.textSize or nil,
					Font = FFlagTerrainEditorUpdateFontToSourceSans and theme.font or nil,
					TextColor3 = theme.textColor,
					ZIndex = 3,
				}),
			})
		end
	end

	for i = 1, optionsCount - 1, 1 do
		content["Divider" .. i] = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(i * buttonWidth, 0, 0, 0),
			Size = UDim2.new(0, 1, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = theme.borderColor,
			ZIndex = 2,
		})
	end

	content.Border = Roact.createElement("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = theme.singleSelectButtonGroupTheme.roundedBorderImage,
		ImageTransparency = 0,
		ImageColor3 = theme.borderColor,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = theme.singleSelectButtonGroupTheme.roundedElementSlice,
		ZIndex = 3,
	})

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
	}, content)
end

ContextServices.mapToProps(SingleSelectButtonGroup, {
	Theme = ContextItems.UILibraryTheme,
})

return SingleSelectButtonGroup
