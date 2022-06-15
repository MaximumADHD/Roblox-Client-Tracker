local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local MaterialAdditional = require(script.Parent.MaterialAdditional)

return function()
	local studsPerTile = 1
	local materialPattern = "Organic"
	local TestMaterial

	local function createTestElement(props: MaterialAdditional.Props?)
		props = props or {}

		return mockContext({
			MaterialAdditional = Roact.createElement(MaterialAdditional, props)
		})
	end

	beforeEach(function()
		TestMaterial = {
			IsBuiltin = true,
			Material = Enum.Material.Plastic,
			MaterialPath = { "Plastic" },
			MaterialType = "Base",
			MaterialVariant = Instance.new("MaterialVariant")
		}
	end)

	afterEach(function()
		if TestMaterial.MaterialVariant then
			TestMaterial.MaterialVariant:Destroy()
		end
		TestMaterial = nil
	end)

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render material with studs per tile correctly", function()
		TestMaterial.MaterialVariant.StudsPerTile = studsPerTile

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render material with material pattern correctly", function()
		TestMaterial.MaterialVariant.MaterialPattern = materialPattern

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
