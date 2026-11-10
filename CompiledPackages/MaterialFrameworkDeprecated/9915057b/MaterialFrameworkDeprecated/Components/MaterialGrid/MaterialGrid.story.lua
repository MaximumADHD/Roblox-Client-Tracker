local main = script.Parent.Parent.Parent
local Types = require(main.Types)
local Packages = main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local MaterialGrid = require(main.Components.MaterialGrid)
local MaterialPreviewGeometryType = require(main.Enums.MaterialPreviewGeometryType)
local ViewType = require(main.Enums.ViewType)
local createMaterialVariants = require(main.TestHelpers.createMaterialVariants)

local function getTestMaterials(): { Types.Material }
	local result = Dash.filter(Enum.Material:GetEnumItems(), function(enumItem)
		return enumItem ~= Enum.Material.Air and enumItem ~= Enum.Material.Water
	end)
	table.sort(result, function(a, b)
		return a.Name < b.Name
	end)
	return result
end

local SINGLE_ROW_GRID_SIZE = UDim2.new(1, 0, 0, 150)
local TEST_MATERIAL_VARIANTS = createMaterialVariants()
local TEST_MATERIALS = getTestMaterials()
local LOADING_TEST_MATERIALS = {
	{
		Loading = true,
		Material = Enum.Material.Brick,
	},
	Enum.Material.Basalt,
	Enum.Material.Grass,
}

local function createSimpleGrid(props)
	local componentProps = Dash.join({
		Items = {},
		ShowGridLabels = false,
		ViewType = ViewType.Grid,
	}, props)
	return React.createElement(MaterialGrid, componentProps)
end

local function createGridStory(props)
	local items = props.Items or TEST_MATERIALS

	return function()
		local selectedMaterial, setSelectedMaterial = React.useState(false)
		React.useEffect(function()
			for _, item in items do
				if typeof(item) == "Instance" and item:IsA("MaterialVariant") then
					item.Parent = game:GetService("MaterialService")
				end
			end

			return function()
				for _, item in items do
					if typeof(item) == "Instance" and item:IsA("MaterialVariant") then
						item.Parent = nil
					end
				end
			end
		end, { items })

		return createSimpleGrid(Dash.join({
			Items = TEST_MATERIALS,
			OnClick = function(material: Types.Material)
				setSelectedMaterial(material)
			end,
			SelectedItem = selectedMaterial,
		}, props))
	end
end

return {
	stories = {
		{
			name = "Grid",
			summary = "The item size can be set using props or style",
			story = createGridStory({
				Size = UDim2.new(1, 0, 0, 400),
				ViewType = ViewType.Grid,
			}),
		},
		{
			name = "List",
			summary = "The item height can be set using props or style",
			story = createGridStory({
				Size = UDim2.new(0, 200, 0, 400),
				ViewType = ViewType.List,
			}),
		},
		{
			name = "Loading",
			summary = "Show items with a shimmer effect",
			story = createGridStory({
				Items = LOADING_TEST_MATERIALS,
				ShowGridLabels = true,
				Size = SINGLE_ROW_GRID_SIZE,
				ViewType = ViewType.Grid,
			}),
		},
		{
			name = "Plane",
			summary = "Shows item as a Plane.",
			story = createGridStory({
				Items = TEST_MATERIAL_VARIANTS,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Plane,
				Size = SINGLE_ROW_GRID_SIZE,
			}),
		},
		{
			name = "Dominus",
			summary = "Shows item as a Dominus.",
			story = createGridStory({
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Dominus,
				Size = SINGLE_ROW_GRID_SIZE,
			}),
		},
	},
}
