--[[
	The Search Bar is reused by every tab.
	When changing tabs, the SearchBar is updated with the last known search term
	of the new target tab. It is also updated with the appropriate callback to
	start a search
]]--
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)

local function SearchBar(props)
	local size = props.size
	local pos = props.pos
	local frameHeight = props.frameHeight

	local borderColor = props.borderColor
	local textBoxColor = props.textBoxColor
	local textSize = props.textSize
	local searchTerm = props.searchTerm
	local onTextEntered = props.onTextEntered

	return Roact.createElement("Frame", {
		Size = size,
		Position = pos,
		BackgroundColor3 = textBoxColor,
		BorderColor3 = borderColor,
	},{
		SearchImage = Roact.createElement("ImageLabel", {
			Name = "SearchIcon",
			Size = UDim2.new(0, frameHeight / 2, 0, frameHeight / 2),
			Position = UDim2.new(0, frameHeight / 4, .5, -frameHeight / 4),
			BackgroundTransparency = 1,
			Image = Constants.Image.Search,
		}),

		TextBox = Roact.createElement("TextBox", {
			Text = searchTerm,
			TextSize = textSize,
			Size = UDim2.new(1, -frameHeight, 1, 0),
			Position = UDim2.new(0, frameHeight, 0, 0),
			ShowNativeInput = true,
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			TextXAlignment = 0,

			PlaceholderText = "Search",

			[Roact.Event.FocusLost] = function(rbx, enterPressed, inputThatCausedFocusLoss)
				if enterPressed then
					onTextEntered(rbx.text)
				end
			end,
		})
	})
end

return SearchBar