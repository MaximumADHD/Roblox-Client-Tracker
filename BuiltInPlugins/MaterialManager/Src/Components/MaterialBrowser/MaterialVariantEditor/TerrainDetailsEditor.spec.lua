local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local TerrainDetailsEditor = require(script.Parent.TerrainDetailsEditor)

return function()
	local labelColumnWidth = UDim.new(0, 80)
	local layoutOrder = 1
	local terrainFace = "Top"
	local onDelete = function() end
	local TestTerrainDetail

	local function createTestElement(props: TerrainDetailsEditor.Props?)
		props = props or {
			LabelColumnWidth = labelColumnWidth,
			LayoutOrder = layoutOrder,
			TerrainFace = terrainFace,
			OnDelete = onDelete,
			TerrainDetail = TestTerrainDetail,
		}

		return mockContext({
			TerrainDetailsEditor = Roact.createElement(TerrainDetailsEditor, props)
		})
	end

	beforeEach(function()
		TestTerrainDetail = Instance.new("TerrainDetail")
	end)

	afterEach(function()
		if TestTerrainDetail then
			TestTerrainDetail:Destroy()
		end
		TestTerrainDetail = nil
	end)

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			LabelColumnWidth = labelColumnWidth,
			LayoutOrder = layoutOrder,
			TerrainFace = terrainFace,
			OnDelete = onDelete,
			TerrainDetail = TestTerrainDetail,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
