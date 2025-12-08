local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)

local it = JestGlobals.it

local mockContext = require(main.TestHelpers.mockContext)
local createMaterialVariants = require(main.TestHelpers.createMaterialVariants)

local MaterialGrid = require(main.Components.MaterialGrid)

local function getTestMaterials()
	local result = Dash.filter(Enum.Material:GetEnumItems(), function(enumItem)
		return enumItem ~= Enum.Material.Air and enumItem ~= Enum.Material.Water
	end)
	table.sort(result, function(a, b)
		return a.Name < b.Name
	end)
	return result
end

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

local function createTestElement(props: {}?)
	local MaterialGridProps: MaterialGrid.Props = Dash.join({
		-- If there are any props required for this component, add defaults for them here
		Items = {},
	}, props or {})

	return mockContext({
		MaterialGrid = React.createElement(MaterialGrid, MaterialGridProps),
	})
end

it("should render materials correctly", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		Items = TEST_MATERIALS,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)

it("should render loading materials correctly", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		Items = LOADING_TEST_MATERIALS,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)

it("should render material variants correctly", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		Items = TEST_MATERIAL_VARIANTS,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)
