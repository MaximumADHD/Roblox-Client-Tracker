local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MaterialBrowserReducer = require(script.Parent.MaterialBrowserReducer)

local Framework = require(Plugin.Packages.Framework)

local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local ClearMaterial = require(Actions.ClearMaterial)
local ClearMaterialWrapper = require(Actions.ClearMaterialWrapper)
local SetExpandedPane = require(Actions.SetExpandedPane)
local SetMaterial = require(Actions.SetMaterial)
local SetMaterialAsTool = require(Actions.SetMaterialAsTool)
local SetMaterialBrowserLayout = require(Actions.SetMaterialBrowserLayout)
local SetMaterialList = require(Actions.SetMaterialList)
local SetMaterialOverride = require(Actions.SetMaterialOverride)
local SetMaterialOverrides = require(Actions.SetMaterialOverrides)
local SetMaterialStatus = require(Actions.SetMaterialStatus)
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetMaterialVariant = require(Actions.SetMaterialVariant)
local SetMaterialWrapper = require(Actions.SetMaterialWrapper)
local SetMenuHover = require(Actions.SetMenuHover)
local SetPath = require(Actions.SetPath)
local SetSearch = require(Actions.SetSearch)
local SetUse2022Materials = require(Actions.SetUse2022Materials)
local SetViewType = require(Actions.SetViewType)

local defaultMaterialVariant
local defaultMaterial = {
	Base = true,
	Material = Enum.Material.Plastic,
	MaterialPath = { "All" },
	MaterialType = "Base",
}
local defaultSearch = "Hello World!"

local exampleMaterialBrowserLayout = {
	BaseShowSideBar = false,
	OverrideShowSideBar = true,
	SideBarWidth = 100,
}

return function()
	beforeEach(function()
		defaultMaterialVariant = Instance.new("MaterialVariant")
		defaultMaterial.MaterialVariant = defaultMaterialVariant
	end)

	afterEach(function()
		defaultMaterialVariant:Destroy()
		defaultMaterialVariant = nil
		defaultMaterial.MaterialVariant = nil
	end)

	it("should return its expected default state", function()
		local r = Rodux.Store.new(MaterialBrowserReducer, nil, nil, nil)
		expect(r:getState()).to.be.ok()
		expect(r:getState().ActiveAsTool).to.equal(false)
		expect(#r:getState().MaterialOverride).to.equal(0)
		expect(#r:getState().MaterialOverrides).to.equal(0)
		expect(#r:getState().Materials).to.equal(0)
		expect(#r:getState().MaterialStatus).to.equal(0)
		expect(r:getState().MaterialTileSize).to.equal(130)
		expect(r:getState().MenuHover).to.equal(false)
		expect(#r:getState().Path).to.equal(0)
		expect(r:getState().Search).to.equal("")
		expect(r:getState().Use2022Materials).to.equal(false)
		expect(r:getState().ViewType).to.equal("Grid")
	end)

	describe("ClearMaterial", function()
		it("should set then clear current material", function()
			local r = Rodux.Store.new(MaterialBrowserReducer, nil, nil, nil)
			r:dispatch(SetMaterial(defaultMaterial))
			expect(r:getState().Material)
			expect(r:getState().Material).to.be.ok()
			r:dispatch(ClearMaterial())
			expect(r:getState().Material).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, ClearMaterial())
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ClearMaterialWrapper", function()
		it("should clear a material wrapper", function()
			local r = Rodux.Store.new(MaterialBrowserReducer, nil, nil, nil)
			r:dispatch(SetMaterialWrapper(defaultMaterial))
			r:dispatch(ClearMaterialWrapper(defaultMaterial))

			local state = r:getState()
			expect(state).to.be.ok()
			expect(state.Materials[defaultMaterial.MaterialVariant]).to.equal(nil)
		end)

		it("should clear material", function()
			local r = Rodux.Store.new(MaterialBrowserReducer, nil, nil, nil)
			r:dispatch(SetMaterial(defaultMaterial))
			r:dispatch(SetMaterialWrapper(defaultMaterial))
			local tempMaterial = {}
			for key, value in defaultMaterial do
				tempMaterial[key] = value
			end
			r:dispatch(SetMaterialWrapper(tempMaterial))
			r:dispatch(ClearMaterialWrapper(defaultMaterial))

			local state = r:getState()
			expect(state).to.be.ok()
			expect(state.Material).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(
				MaterialBrowserReducer,
				ClearMaterialWrapper(defaultMaterial)
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetExpandedPane", function()
		it("should set expanded pane", function()
			local state = MaterialBrowserReducer(nil, SetExpandedPane("Test", true))

			expect(state).to.be.ok()
			expect(state.ExpandedPane["Test"]).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetExpandedPane("Test", true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterial", function()
		it("should set the current Material", function()
			local state = MaterialBrowserReducer(nil, SetMaterial(defaultMaterial))

			expect(state).to.be.ok()
			expect(state.Material).to.be.ok()
			expect(state.Material.Base).to.equal(defaultMaterial.Base)
			expect(state.Material.MaterialPath[1]).to.equal(defaultMaterial.MaterialPath[1])
			expect(state.Material.MaterialVariant).to.equal(defaultMaterial.MaterialVariant)
			expect(state.Material.MaterialType).to.equal(defaultMaterial.MaterialType)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMaterial(defaultMaterial))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialAsTool", function()
		it("should set material as tool mode", function()
			local state = MaterialBrowserReducer(nil, SetMaterialAsTool(true))

			expect(state).to.be.ok()
			expect(state.ActiveAsTool).to.be.ok()
			expect(state.ActiveAsTool).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMaterialAsTool(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialBrowserLayout", function()
		it("should set material as tool mode", function()
			local state = MaterialBrowserReducer(nil, SetMaterialBrowserLayout(exampleMaterialBrowserLayout))

			expect(state).to.be.ok()
			expect(state.MaterialBrowserLayout).to.be.ok()
			expect(state.MaterialBrowserLayout.BaseShowSideBar).to.equal(false)
			expect(state.MaterialBrowserLayout.OverrideShowSideBar).to.equal(true)
			expect(state.MaterialBrowserLayout.SideBarWidth).to.equal(100)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(
				MaterialBrowserReducer,
				SetMaterialBrowserLayout(exampleMaterialBrowserLayout)
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialList", function()
		it("should set material as tool mode", function()
			local state = MaterialBrowserReducer(nil, SetMaterialList({ defaultMaterial }))

			expect(state).to.be.ok()
			expect(#state.MaterialList).to.equal(1)
			expect(state.MaterialList[1]).to.equal(defaultMaterial)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMaterialAsTool(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialOverride", function()
		it("should set material override", function()
			local state = MaterialBrowserReducer(nil, SetMaterialOverride(Enum.Material.Plastic, 1))

			expect(state).to.be.ok()
			expect(state.MaterialOverride[Enum.Material.Plastic]).to.be.ok()
			expect(state.MaterialOverride[Enum.Material.Plastic]).to.equal(1)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(
				MaterialBrowserReducer,
				SetMaterialOverride(Enum.Material.Plastic, 1)
			)

			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialOverrides", function()
		it("should set material overrides", function()
			local state = MaterialBrowserReducer(
				nil,
				SetMaterialOverrides(Enum.Material.Plastic, {
					defaultMaterial,
				})
			)

			expect(state).to.be.ok()
			expect(state.MaterialOverrides[Enum.Material.Plastic]).to.be.ok()
			expect(#state.MaterialOverrides[Enum.Material.Plastic]).to.equal(1)
			expect(state.MaterialOverrides[Enum.Material.Plastic][1]).to.equal(defaultMaterial)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(
				MaterialBrowserReducer,
				SetMaterialOverrides(Enum.Material.Plastic, {
					defaultMaterial,
				})
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialStatus", function()
		it("should set material status", function()
			local state = MaterialBrowserReducer(nil, SetMaterialStatus(defaultMaterial, Enum.PropertyStatus.Warning))

			expect(state).to.be.ok()
			expect(state.MaterialStatus[defaultMaterial]).to.be.ok()
			expect(state.MaterialStatus[defaultMaterial]).to.equal(Enum.PropertyStatus.Warning)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(
				MaterialBrowserReducer,
				SetMaterialStatus(defaultMaterial, Enum.PropertyStatus.Warning)
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialTileSize", function()
		it("should set material status", function()
			local state = MaterialBrowserReducer(nil, SetMaterialTileSize(128))

			expect(state).to.be.ok()
			expect(state.MaterialTileSize).to.be.ok()
			expect(state.MaterialTileSize).to.equal(128)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMaterialTileSize(128))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialVariant", function()
		it("should set the current Material", function()
			local r = Rodux.Store.new(MaterialBrowserReducer, nil, nil, nil)
			r:dispatch(SetMaterialWrapper(defaultMaterial))
			r:dispatch(SetMaterialVariant(defaultMaterial.MaterialVariant))
			local state = r:getState()

			expect(state).to.be.ok()
			expect(state.Material).to.be.ok()
			expect(state.Material.Base).to.equal(defaultMaterial.Base)
			expect(state.Material.MaterialPath[1]).to.equal(defaultMaterial.MaterialPath[1])
			expect(state.Material.MaterialVariant).to.equal(defaultMaterial.MaterialVariant)
			expect(state.Material.MaterialType).to.equal(defaultMaterial.MaterialType)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMaterialVariant(defaultMaterial))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterialWrapper", function()
		it("should set a material wrapper", function()
			local state = MaterialBrowserReducer(nil, SetMaterialWrapper(defaultMaterial))

			expect(state).to.be.ok()
			expect(state.Materials[defaultMaterial.MaterialVariant]).to.equal(defaultMaterial)
		end)

		it("should update set material", function()
			local r = Rodux.Store.new(MaterialBrowserReducer, nil, nil, nil)
			r:dispatch(SetMaterial(defaultMaterial))
			r:dispatch(SetMaterialWrapper(defaultMaterial))
			local tempMaterial = {}
			for key, value in defaultMaterial do
				tempMaterial[key] = value
			end
			r:dispatch(SetMaterialWrapper(tempMaterial))

			local state = r:getState()
			expect(state).to.be.ok()
			expect(state.Material).to.equal(tempMaterial)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMaterialWrapper(defaultMaterial))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMenuHover", function()
		it("should set the menu hover state", function()
			local state = MaterialBrowserReducer(nil, SetMenuHover(true))

			expect(state).to.be.ok()
			expect(state.MenuHover).to.be.ok()
			expect(state.MenuHover).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetMenuHover(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPath", function()
		it("should set the current Path", function()
			local path = {}
			local state = MaterialBrowserReducer(nil, SetPath(path))

			expect(state).to.be.ok()
			expect(state.Path).to.be.ok()
			expect(state.Path).to.equal(path)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetPath({}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetSearch", function()
		it("should set the current Search", function()
			local state = MaterialBrowserReducer(nil, SetSearch(defaultSearch))

			expect(state).to.be.ok()
			expect(state.Search).to.be.ok()
			expect(state.Search).to.equal(defaultSearch)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetSearch(defaultSearch))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetViewType", function()
		it("should set the ViewType", function()
			local state = MaterialBrowserReducer(nil, SetViewType("Grid"))

			expect(state).to.be.ok()
			expect(state.ViewType).to.be.ok()
			expect(state.ViewType).to.equal("Grid")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetViewType("Grid"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetUse2022Materials", function()
		it("should set 2022 material usage", function()
			local state = MaterialBrowserReducer(nil, SetUse2022Materials(true))

			expect(state).to.be.ok()
			expect(state.Use2022Materials).to.be.ok()
			expect(state.Use2022Materials).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialBrowserReducer, SetUse2022Materials(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end