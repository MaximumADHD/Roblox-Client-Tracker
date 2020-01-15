local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape

local ToolParts = script.Parent.Parent
local SelectableImageButton = require(ToolParts.SelectableImageButton)

local function BrushShapeSelector(props)
	return withTheme(function(theme)
		local layoutOrder = props.LayoutOrder
		local brushShape = props.brushShape
		local setBrushShape = props.setBrushShape

		local sphereBrushImage = theme.brushSettingsTheme.sphereBrushImage
		local cubeBrushImage = theme.brushSettingsTheme.cubeBrushImage
		local cylinderBrushImage = theme.brushSettingsTheme.cylinderBrushImage

		local brushShapes = {
			{BrushShape.Sphere, sphereBrushImage},
			{BrushShape.Cube, cubeBrushImage},
			{BrushShape.Cylinder, cylinderBrushImage},
		}

		local children = {
			Padding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, 5),
				PaddingLeft = UDim.new(0, 5),
			}),

			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0.05, 0),
			})
		}

		for i, brushShapeDetails in ipairs(brushShapes) do
			children[brushShapeDetails[1]] = Roact.createElement(SelectableImageButton, {
				LayoutOrder = i,
				Item = brushShapeDetails[1],
				Image = brushShapeDetails[2],
				IsSelected = brushShape == brushShapeDetails[1],
				SelectItem = setBrushShape,
			})
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 270, 0, 42),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			Roact.createElement("Frame", {
				Size = UDim2.new(0, 230, 1, 0),
				Position = UDim2.new(0, 20, 0, 0),
				BackgroundColor3 = theme.backgroundColor,
				BorderColor3 = theme.borderColor,
			}, children),
		})
	end)
end

return BrushShapeSelector
