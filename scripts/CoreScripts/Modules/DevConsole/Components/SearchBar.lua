--[[
	The Search Bar is reused by every tab.
	When changing tabs, the SearchBar is updated with the last known search term
	of the new target tab. It is also updated with the appropriate callback to
	start a search
]]--
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ScrollingTextBox = require(script.Parent.ScrollingTextBox)

local Constants = require(script.Parent.Parent.Constants)
local ICON_OFFSET = 10

local SearchBar = Roact.Component:extend("SearchBar")

function SearchBar:render()
	local size = self.props.size
	local pos = self.props.pos
	local frameHeight = self.props.frameHeight

	local textSize = self.props.textSize
	local font = self.props.font
	local searchTerm = self.props.searchTerm
	local layoutOrder = self.props.layoutOrder

	local visible = self.props.visible
	local showClear = self.props.showClear

	local iconHeight = frameHeight * .6

	return Roact.createElement("Frame", {
		Size = size,
		Position = pos,
		BackgroundColor3 = Constants.Color.UnselectedGray,
		BorderColor3 = Constants.Color.BorderGray,
		Visible = visible,
		LayoutOrder = layoutOrder,
	}, {
		SearchImage = Roact.createElement("ImageLabel", {
			Name = "SearchIcon",
			Size = UDim2.new(0, iconHeight, 0, iconHeight),
			Position = UDim2.new(0, ICON_OFFSET, .5, -iconHeight / 2),
			BackgroundTransparency = 1,
			Image = Constants.Image.Search,
		}),

		ClearButton = showClear and Roact.createElement("ImageButton", {
			Size = UDim2.new(0, -iconHeight, 0, iconHeight),
			Position = UDim2.new(1, -ICON_OFFSET, .5, -iconHeight / 2),
			BackgroundTransparency = 1,
			Image = Constants.Image.Clear,

			[Roact.Event.InputEnded] = self.props.cancelInput,
		}),

		InputField = Roact.createElement(ScrollingTextBox, {
			Text = searchTerm and searchTerm or "",
			TextSize = textSize,
			Font = font,
			Size = UDim2.new(1, - (2 * frameHeight), 1, 0),
			Position = UDim2.new(0, ICON_OFFSET * 2 + iconHeight, 0, 0),
			ShowNativeInput = true,
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			TextXAlignment = 0,

			ClearTextOnFocus = false,
			PlaceholderText = "Search",

			[Roact.Ref] = self.props.refForParent,

			TextBoxFocusLost = self.props.focusLost,
		}),
	})
end

return SearchBar