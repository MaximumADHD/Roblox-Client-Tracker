local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local withStyle = require(Packages.UIBlox.Style.withStyle)
local VerticalScrollView = require(App.Container.VerticalScrollView)

local function verticalScrollViewStory(props)
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local numberOfElements = 10
		local yPositionIncrement = 1 / numberOfElements
		local yPosition
		local elements = {}

		-- create elements
		for index = 1, numberOfElements do
			yPosition = (index - 1) * yPositionIncrement
			elements["vsv_TextLabel_" .. tostring(index)] = Roact.createElement("TextButton", {
				BorderColor3 = Color3.new(math.random(), math.random(), math.random()),
				BorderMode = Enum.BorderMode.Inset,
				BorderSizePixel = 2,
				Position = UDim2.new(0, 0, yPosition, 0),
				Size = UDim2.new(1, 0, yPositionIncrement, -8),
				Text = "ELEMENT " .. tostring(index),
				TextSize = 10,
			})
		end

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.BackgroundUIDefault.Color,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, -20, 1, -20),
		}, {
			verticalScrollView = Roact.createElement(VerticalScrollView, {}, elements),
		})
	end)
end

return verticalScrollViewStory
