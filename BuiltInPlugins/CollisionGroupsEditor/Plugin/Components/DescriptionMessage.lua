local Roact = require(script.Parent.Parent.Parent.Roact)

local Padding = require(script.Parent.Padding)

local Description = "You can define whether parts in two groups will collide with each other or not in the table below. By default, all parts belong to group \"Default.\""

return function(props)
	return Roact.createElement("Frame", {
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
		BackgroundTransparency = 1,
	}, {
		Padding = Roact.createElement(Padding, {Padding = UDim.new(0, 4)}),

		Text = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			TextWrapped = true,
			Text = Description,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),
		}),
	})
end