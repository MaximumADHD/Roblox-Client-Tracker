local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local PaginatedVerticalList = require(script.Parent.PaginatedVerticalList)

local rng = Random.new()

local controls = {
	initialItemsShown = 3,
	extraItemsShownOnLoad = 3,
	numItems = 11,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local items = {}
		for i = 1, props.controls.numItems do
			table.insert(
				items,
				React.createElement("TextLabel", {
					Text = i,
					TextSize = 18,
					Font = Enum.Font.GothamBold,
					TextColor3 = Color3.fromHex("#fff"),
					TextStrokeColor3 = Color3.fromHex("#111"),
					TextStrokeTransparency = 0,
					BackgroundColor3 = Color3.fromRGB(
						rng:NextInteger(0, 255),
						rng:NextInteger(0, 255),
						rng:NextInteger(0, 255)
					),
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 100),
				})
			)
		end

		return withMockProviders({
			PaginatedVerticalList = React.createElement(PaginatedVerticalList, {
				items = items,
				initialItemsShown = props.controls.initialItemsShown,
				extraItemsShownOnLoad = props.controls.extraItemsShownOnLoad,
			}),
		})
	end,
}
