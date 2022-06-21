local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local MaterialGrid = require(script.Parent)

return function()
	local TestMaterial: _Types.Material = {
		Material = Enum.Material.Plastic,
		MaterialPath = { "Materials", "Plastic" },
		MaterialType = "Base",
	}

	local function createTestElement(props: MaterialGrid.Props?)
		props = join({
			OnSidebarButtonClicked = function() end,
			OnShowButtonClicked = function() end,
		}, props or {})

		return mockContext({
			LabeledTexture = Roact.createElement(MaterialGrid, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render material with sidebar button", function()
		TestMaterial.MaterialVariant = Instance.new("MaterialVariant")

		local container = Instance.new("Folder")
		local element = createTestElement({
			MockMaterial = TestMaterial,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)

		if TestMaterial.MaterialVariant then
			TestMaterial.MaterialVariant:Destroy()
			TestMaterial.MaterialVariant = nil
		end
	end)

	it("should render material with hover", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			SideBarVisible = true,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
