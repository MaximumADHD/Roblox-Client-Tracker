local Framework = script:FindFirstAncestor("Style").Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local TitledFrame = require(Framework.UI.Components.TitledFrame)

local StudioColorClasses = require(script.Parent.StudioColorClasses)

local function createThemePane(themeName)
	local colorIndex = 0

	local ColorCard = function(colorName: string, color: Color3)
		colorIndex += 1
		return Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = colorIndex,
			Style = "BorderBox",
			Padding = 5,
			Spacing = 5,
		}, {
			ColorSwatch = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(100, 75),
				BackgroundColor3 = color,
				LayoutOrder = 1,
			}),
			ColorName = Roact.createElement(TextLabel, {
				Text = colorName,
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
			}),
			HexCode = Roact.createElement(TextLabel, {
				Text = ("#%s"):format(color:ToHex()),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 3,
			}),
		})
	end

	local classIndex = 0
	local ClassContainer = function(className: string, classType: { [string]: { any } })
		local colorList = {}
		colorList.Layout = Roact.createElement("UIGridLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			CellPadding = UDim2.fromOffset(5, 5),
			CellSize = UDim2.fromOffset(200, 200),
		})

		for colorName, classValues in pairs(classType) do
			table.insert(colorList, ColorCard(colorName, classValues[themeName]))
		end

		classIndex += 1

		return Roact.createElement(TitledFrame, {
			Title = className,
		}, {
			ColorList = Roact.createElement(Pane, {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
			}, colorList),
		})
	end

	local classList = {}
	for className, classType in pairs(StudioColorClasses) do
		table.insert(classList, ClassContainer(className, classType))
	end

	return Roact.createElement(Pane, {
		Spacing = 50,
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
	}, classList)
end

return {
	stories = {
		LightTheme = createThemePane("Light"),
		DarkTheme = createThemePane("Dark"),
	},
}
