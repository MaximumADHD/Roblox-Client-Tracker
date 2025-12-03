--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)

local HIGHLIGHT_HEIGHT = Constants.TabRowFormatting.HighlightHeight
local FRAME_HEIGHT = Constants.TabRowFormatting.FrameHeight

local function TabRowButton(props)
	local index = props.index
	local name = props.name
	local textWidth = props.textWidth
	local padding = props.padding
	local isSelected = props.isSelected
	local layoutOrder = props.layoutOrder
	local onTabButtonClicked = props.onTabButtonClicked

	textWidth = textWidth + padding
	local textTransparency = Constants.TabRowFormatting.UnselectedTextTransparency
	if isSelected then
		textTransparency = Constants.TabRowFormatting.SelectedTextTransparency
	end

	return Roact.createElement("TextButton", {
		Text = name,
		TextSize = Constants.DefaultFontSize.TabBar,
		Font = Constants.Font.TabBar,
		TextScaled = false,
		TextTransparency = textTransparency,
		Size = UDim2.new(0, textWidth, 0, FRAME_HEIGHT),
		AutoButtonColor = false,
		TextColor3 = Constants.Color.Text,
		BackgroundColor3 = Constants.Color.UnselectedGray,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = function(rbx)
			onTabButtonClicked(index)
		end,
	}, {
		BlueHighlight = isSelected and Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, -HIGHLIGHT_HEIGHT),
			Position = UDim2.new(0, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = Constants.Color.HighlightBlue,
		}),
	})
end

return TabRowButton
