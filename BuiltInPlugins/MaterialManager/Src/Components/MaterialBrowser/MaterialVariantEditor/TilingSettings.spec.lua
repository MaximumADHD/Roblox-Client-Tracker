local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local TilingSettings = require(script.Parent.TilingSettings)

return function()
	local studsPerTile = 1
	local materialPattern = "Organic"
	local TestPBRMaterial

	local function createTestElement(props: TilingSettings.Props?)
		props = props or {
			PBRMaterial = TestPBRMaterial,
		}

		return mockContext({
			TilingSettings = Roact.createElement(TilingSettings, props)
		})
	end

	beforeEach(function()
		TestPBRMaterial = Instance.new("MaterialVariant")
	end)

	afterEach(function()
		if TestPBRMaterial then
			TestPBRMaterial:Destroy()
		end
		TestPBRMaterial = nil
	end)

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render materialVariant with studs per tile correctly", function()
		TestPBRMaterial.StudsPerTile = studsPerTile

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			PBRMaterial = TestPBRMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render materialVariant with material pattern correctly", function()
		TestPBRMaterial.MaterialPattern = materialPattern

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			PBRMaterial = TestPBRMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
