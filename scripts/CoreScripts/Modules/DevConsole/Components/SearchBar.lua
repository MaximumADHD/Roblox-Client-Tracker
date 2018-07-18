--[[
	The Search Bar is reused by every tab.
	When changing tabs, the SearchBar is updated with the last known search term
	of the new target tab. It is also updated with the appropriate callback to
	start a search
]]--
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)

local SearchBar = Roact.Component:extend("SearchBar")

function SearchBar:init()
	self.cancelInput = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or
			(input.UserInputType == Enum.UserInputType.Touch and
			input.UserInputState == Enum.UserInputState.End) then
			self.props.onTextEntered("")
		end
	end
end

function SearchBar:render()
	local size = self.props.size
	local pos = self.props.pos
	local frameHeight = self.props.frameHeight

	local borderColor = self.props.borderColor
	local textBoxColor = self.props.textBoxColor
	local textSize = self.props.textSize
	local searchTerm = self.props.searchTerm
	local layoutOrder = self.props.layoutOrder

	local onTextEntered = self.props.onTextEntered

	return Roact.createElement("Frame", {
		Size = size,
		Position = pos,
		BackgroundColor3 = textBoxColor,
		BorderColor3 = borderColor,
		LayoutOrder = layoutOrder,
	},{
		SearchImage = Roact.createElement("ImageLabel", {
			Name = "SearchIcon",
			Size = UDim2.new(0, frameHeight / 2, 0, frameHeight / 2),
			Position = UDim2.new(0, frameHeight / 4, .5, -frameHeight / 4),
			BackgroundTransparency = 1,
			Image = Constants.Image.Search,
		}),

		TextBox = Roact.createElement("TextBox", {
			Text = searchTerm and searchTerm or "",
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
		}),

		CancelButton = searchTerm ~= "" and Roact.createElement("ImageButton", {
			Size = UDim2.new(0, -frameHeight / 2, 0, frameHeight / 2),
			Position = UDim2.new(1, -frameHeight / 4, .5, -frameHeight / 4),
			BackgroundTransparency = 1,
			Image = Constants.Image.Close,

			[Roact.Event.InputEnded] = self.cancelInput,
		})

	})
end

return SearchBar