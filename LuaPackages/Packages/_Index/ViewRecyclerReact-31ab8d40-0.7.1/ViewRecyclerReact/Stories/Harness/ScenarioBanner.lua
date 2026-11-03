local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "ScenarioBanner must be mounted under view-recycler-react")

local React = require(Root.Parent.React)

local e = React.createElement

local function ScenarioBanner(props)
	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(31, 33, 43),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, props.height or 140),
	}, {
		Title = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansBold,
			Position = UDim2.fromOffset(12, 8),
			Size = UDim2.new(1, -24, 0, 24),
			Text = props.title,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 19,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Instructions = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Position = UDim2.fromOffset(12, 34),
			Size = UDim2.new(1, -24, 0, 36),
			Text = `Instructions: {props.instructions}`,
			TextColor3 = Color3.fromRGB(215, 216, 224),
			TextSize = 14,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),
		ItemUpdate = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Position = UDim2.fromOffset(12, 72),
			Size = UDim2.new(1, -24, 0, 20),
			Text = `Item updates: {props.itemUpdate}`,
			TextColor3 = Color3.fromRGB(174, 197, 255),
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		AcceptanceCriteria = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Position = UDim2.fromOffset(12, 96),
			Size = UDim2.new(1, -24, 0, 36),
			Text = `Acceptance: {props.acceptanceCriteria}`,
			TextColor3 = Color3.fromRGB(153, 223, 176),
			TextSize = 14,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),
	})
end

return ScenarioBanner
