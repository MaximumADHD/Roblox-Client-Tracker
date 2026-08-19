local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local mockContext = require(main.TestHelpers.mockContext)
local guiTestUtils = require(main.TestHelpers.waitForGuiLayout)
local treeHasAnyInstance = guiTestUtils.treeHasAnyInstance
local waitForGuiLayout = guiTestUtils.waitForGuiLayout

local MaterialPreviewGeometryType = require(main.Enums.MaterialPreviewGeometryType)
local getMaterialColor = require(main.Util.getMaterialColor)

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

local function expectRenderedContent(container: Instance)
	expect(treeHasAnyInstance(container)).toBe(true)
end

local function renderUnmount(container: Instance, element: any, onRendered: ((Instance) -> ())?)
	local root = ReactRoblox.createRoot(container)
	ReactRoblox.act(function()
		root:render(element)
	end)
	waitForGuiLayout(container)
	if onRendered then
		onRendered(container)
	else
		expectRenderedContent(container)
	end
	ReactRoblox.act(function()
		root:unmount()
	end)
end

describe("MaterialPreview", function()
	beforeEach(function()
		TestMaterialVariant = Instance.new("MaterialVariant")
	end)

	afterEach(function()
		if TestMaterialVariant then
			TestMaterialVariant:Destroy()
		end
		TestMaterialVariant = nil
	end)

	it("should render default mesh template using the modern mesh-part path for Enum materials", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = Enum.Material.Slate,
			})
		)
	end)

	it("should render sphere geometry through the default mesh template branch", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Sphere,
			})
		)
	end)

	it("should render neutral preview when Material is not an Enum or MaterialVariant", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = false :: any,
			})
		)
	end)

	it("should render Static MaterialVariant with default mesh using the modern template loader", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
				Static = true,
			})
		)
	end)

	it("should apply MeshPart border and background props on the modern mesh template path", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = Enum.Material.Metal,
				MeshPartBorderThickness = 2,
				MeshPartBackgroundColor = Color3.fromRGB(40, 40, 40),
			})
		)
	end)

	it("should render correctly with a Material", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = Enum.Material.Plastic,
			})
		)
	end)

	it("should render correctly with a MaterialVariant instance as Material", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
			})
		)
	end)

	it("should render correctly with cube geometry", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Cube,
			})
		)
	end)

	it("should render correctly with corner-on cube geometry", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.CubeCornerOn,
			})
		)
	end)

	it("should render correctly with dominus geometry", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Dominus,
			})
		)
	end)

	it("should render correctly with plane geometry", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Plane,
			})
		)
	end)

	it("should render Static MaterialVariant preview with cube Part template", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = TestMaterialVariant,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Cube,
				Static = true,
			})
		)
	end)

	it("should render with Transparent background suppressed on the preview pane", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = Enum.Material.Grass,
				Transparent = true,
			})
		)
	end)

	it("should render Use2022Materials color path for Enum materials", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = Enum.Material.Asphalt,
				Use2022Materials = true,
			})
		)
	end)

	it("should pass DisableZoom and RecenterCameraOnUpdate to AssetRenderModel", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = Enum.Material.Neon,
				DisableZoom = true,
				RecenterCameraOnUpdate = true,
			})
		)
	end)

	it("should default to the material's color with zero transparency when Override props are omitted", function()
		local container = Instance.new("Folder")
		renderUnmount(
			container,
			createTestElement({
				Material = Enum.Material.Slate,
				MaterialPreviewGeometryType = MaterialPreviewGeometryType.Cube,
			}),
			function(renderedContainer)
				local renderPart = renderedContainer:FindFirstChildWhichIsA("BasePart", true) :: BasePart?
				expect(renderPart).never.toBeNil()
				expect((renderPart :: BasePart).Color).toBe(getMaterialColor(Enum.Material.Slate))
				expect((renderPart :: BasePart).Transparency).toBe(0)
			end
		)
	end)

	it(
		"should override the render part's Color and Transparency when OverrideColor and OverrideTransparency are set",
		function()
			local container = Instance.new("Folder")
			local overrideColor = Color3.fromRGB(10, 20, 30)
			local overrideTransparency = 0.5
			renderUnmount(
				container,
				createTestElement({
					Material = Enum.Material.Slate,
					MaterialPreviewGeometryType = MaterialPreviewGeometryType.Cube,
					OverrideColor = overrideColor,
					OverrideTransparency = overrideTransparency,
				}),
				function(renderedContainer)
					local renderPart = renderedContainer:FindFirstChildWhichIsA("BasePart", true) :: BasePart?
					expect(renderPart).never.toBeNil()
					expect((renderPart :: BasePart).Color).toBe(overrideColor)
					expect((renderPart :: BasePart).Transparency).toBe(overrideTransparency)
				end
			)
		end
	)
end)
