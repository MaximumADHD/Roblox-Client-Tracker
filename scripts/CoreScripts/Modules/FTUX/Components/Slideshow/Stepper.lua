local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)

type Props = {
	layoutOrder: number,
	numberOfSteps: number,
	numberActivated: number,
}

local function Stepper(props: Props)
	local numberOfSteps = props.numberOfSteps
	local layoutOrder = props.layoutOrder
	local numberActivated = props.numberActivated

	--Populate table for mapping
	local steps = {}
	for i = 1, numberOfSteps, 1 do
		steps[i] = i
	end

	return React.createElement(
		"Frame",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(0.9, 0, 0.12, 0),
			Position = UDim2.new(0, 0, 0, 0),
			LayoutOrder = layoutOrder,
		},
		React.createElement("UIListLayout", {
			Padding = UDim.new(0, 10),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}) :: any,
		LuauPolyfill.Array.map(steps, function(item, index)
			return React.createElement("Frame", {
				LayoutOrder = index,
				BackgroundTransparency = (index <= numberActivated and 0 or 0.7),
				Size = UDim2.new(1 / numberOfSteps, 0, 0.5, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}, {
				React.createElement("UICorner", {
					CornerRadius = UDim.new(0.5, 0),
				}),
			})
		end) :: any
	)
end

return Stepper
