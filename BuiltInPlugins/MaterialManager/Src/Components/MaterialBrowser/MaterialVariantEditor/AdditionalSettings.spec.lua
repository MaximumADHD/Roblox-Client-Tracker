local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local AdditionalSettings = require(script.Parent.AdditionalSettings)

return function()
	local studsPerTile = 1
	local materialPattern = "Organic"
	local TestMaterialVariant

	local function createTestElement(props: AdditionalSettings.Props?)
		props = props or {
			MaterialVariant = TestMaterialVariant,
		}

		return mockContext({
			AdditionalSettings = Roact.createElement(AdditionalSettings, props)
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

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render materialVariant with studs per tile correctly", function()
		TestMaterialVariant.StudsPerTile = studsPerTile

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			MaterialVariant = TestMaterialVariant,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render materialVariant with material pattern correctly", function()
		TestMaterialVariant.MaterialPattern = materialPattern

		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			MaterialVariant = TestMaterialVariant,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
