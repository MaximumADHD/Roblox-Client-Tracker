local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Pane)
local TextLabel = require(Framework.UI.TextLabel)

local ColorSystem = require(script.Parent)

local function createThemePane()
	local ColorCard = function(colorName: string, color: Color3)
		return Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = colorName:match("%d+"),
			Style = "BorderBox",
			Padding = 5,
		}, {
			ColorSwatch = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(100, 75),
				BackgroundColor3 = color,
				LayoutOrder = 1,
			}),
			ColorName = Roact.createElement(TextLabel, {
				Text = colorName,
				FitWidth = true,
				LayoutOrder = 2,
			}),
			HexCode = Roact.createElement(TextLabel, {
				Text = ("#%s"):format(color:ToHex()),
				FitWidth = true,
				LayoutOrder = 3,
			}),
		})
	end

	local ClassContainer = function(className: string, classValues: { [string]: { any } })
		local colorList = {}
		colorList.Layout = Roact.createElement("UIGridLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			CellPadding = UDim2.fromOffset(5, 5),
			CellSize = UDim2.fromOffset(200, 200),
		})

		for colorName, colorValues in pairs(classValues) do
			table.insert(colorList, ColorCard(className .. colorName, colorValues))
		end

		return Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, 150),
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
		}, {
			ClassName = Roact.createElement(TextLabel, {
				Size = UDim2.new(1, 0, 0, 50),
				FitWidth = true,
				Text = className,
				LayoutOrder = 1,
			}),
			ColorList = Roact.createElement(Pane, {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
			}, colorList),
		})
	end

	local classList = {}
	for className, classValues in pairs(ColorSystem) do
		table.insert(classList, ClassContainer(className, classValues))
	end

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
	}, classList)
end

return createThemePane()
