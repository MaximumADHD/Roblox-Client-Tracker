local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local INSET_FOR_CURVED_CORNERS = 4

local function SingleSelectButtonGroup_render(props, theme)
	local size = props.Size

	local options = props.Options or {}
	local optionsCount = #options

	local buttonWidth = 1 / optionsCount

	local selected = props.Selected

	local selectedColour = theme.singleSelectButtonGroupTheme.buttonSelectedColor

	local content = {}

	for i, option in ipairs(options) do
		local isSelected = option.Data == selected

		-- First and last elements have rounded corners so handle them slightly differently
		local isLeftmost = i == 1
		local isRightmost = i == optionsCount

		content["Button" .. i] = Roact.createElement("ImageButton", {
			Position = UDim2.new((i - 1) * buttonWidth, 0, 0, 0),
			Size = UDim2.new(buttonWidth, 0, 1, 0),

			AutoButtonColor = false,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			[Roact.Event.Activated] = function()
				if not isSelected then
					props.Select(option.Data)
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
				ZIndex = 2,
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
				ZIndex = 2,
			}),

			-- Render a rectangle in the middle that either covers the whole button
			-- Or leaves gaps on either side for the round corners from above to show through
			Background = isSelected and Roact.createElement("Frame", {
				Position = isLeftmost and UDim2.new(0, INSET_FOR_CURVED_CORNERS, 0, 0)
					or UDim2.new(0, 0, 0, 0),
				Size = (isLeftmost and isRightmost) and UDim2.new(1, -INSET_FOR_CURVED_CORNERS * 2, 1, 0)
					or (isLeftmost or isRightmost) and UDim2.new(1, -INSET_FOR_CURVED_CORNERS, 1, 0)
					or UDim2.new(1, 0, 1, 0),
				ZIndex = 3,

				BackgroundColor3 = selectedColour,
				BorderSizePixel = 0,
			}),

			Label = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Text = option.Text,
				TextColor3 = theme.textColor,
				ZIndex = 4,
			}),
		})
	end

	for i = 1, optionsCount - 1, 1 do
		content["Divider" .. i] = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(i * buttonWidth, 0, 0, 0),
			Size = UDim2.new(0, 1, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = theme.borderColor,
			ZIndex = 10,
		})
	end

	return Roact.createElement("ImageLabel", {
		Size = size,
		BackgroundTransparency = 1,
		Image = theme.singleSelectButtonGroupTheme.roundedBorderImage,
		ImageTransparency = 0,
		ImageColor3 = theme.borderColor,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = theme.singleSelectButtonGroupTheme.roundedElementSlice,
		ZIndex = 10,
	}, content)
end

if FFlagTerrainToolsUseDevFramework then
	local SingleSelectButtonGroup = Roact.PureComponent:extend("SingleSelectButtonGroup")

	function SingleSelectButtonGroup:render()
		local theme = self.props.Theme:get()

		return SingleSelectButtonGroup_render(self.props, theme)
	end

	ContextServices.mapToProps(SingleSelectButtonGroup, {
		Theme = ContextItems.UILibraryTheme,
	})

	return SingleSelectButtonGroup

else
	return function(props)
		return withTheme(function(theme)
			return SingleSelectButtonGroup_render(props, theme)
		end)
	end
end
