local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)

local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local mockContext = require(main.TestHelpers.mockContext)

local MaterialPreviewGeometryType = require(main.Enums.MaterialPreviewGeometryType)

local MaterialPreview = require(main.Components.MaterialPreview)

local TestMaterialVariant

local function createTestElement(props: {}?)
	local materialPreviewProps = Dash.join({
		Material = Enum.Material.Plastic,
	}, props or {})

	return mockContext({
		MaterialPreview = React.createElement(MaterialPreview, materialPreviewProps),
	})
end

beforeEach(function()
	TestMaterialVariant = Instance.new("MaterialVariant")
end)

afterEach(function()
	if TestMaterialVariant then
		TestMaterialVariant:Destroy()
	end
	TestMaterialVariant = nil
end)

it("should render correctly with a Material", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		Material = Enum.Material.Plastic,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)

it("should render correctly with a MaterialVariant", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		Material = Enum.Material.Plastic,
		MaterialVariant = TestMaterialVariant,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)

it("should render correctly with cube geometry", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		MaterialVariant = TestMaterialVariant,
		DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.Cube,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)

it("should render correctly with sphere geometry", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		MaterialVariant = TestMaterialVariant,
		DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.Sphere,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)

it("should render correctly with dominus geometry", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		MaterialVariant = TestMaterialVariant,
		DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.Dominus,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)

it("should render correctly with plane geometry", function()
	local container = Instance.new("Folder")
	local element = createTestElement({
		MaterialVariant = TestMaterialVariant,
		DefaultMaterialPreviewGeometryType = MaterialPreviewGeometryType.Plane,
	})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)
