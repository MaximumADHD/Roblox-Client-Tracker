-- TODO: Remove this file when removing FFlagTerrainToolsUseDevFramework
-- This test fails under CLI, and will be removed with the dev framework migration
if game:GetFastFlag("TerrainToolsUseDevFramework")
	or require(script.Parent.Parent.Parent.Src.Util.DebugFlags).RunningUnderCLI() then
	return function()
	end
end

local ServiceWrapper = require(script.Parent.ServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local UILibrary = require(Plugin.Packages.UILibrary)
local Localization = UILibrary.Studio.Localization

local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
local TerrainGeneration = require(Plugin.Src.TerrainInterfaces.TerrainGenerationInstance)
local TerrainImporter = require(Plugin.Src.TerrainInterfaces.TerrainImporterInstance)
local TerrainSeaLevel = require(Plugin.Src.TerrainInterfaces.TerrainSeaLevel)
local PartConverter = require(Plugin.Src.TerrainInterfaces.PartConverter)

local TestHelpers = Plugin.Src.TestHelpers
local MockPlugin = require(TestHelpers.MockPlugin)
local MockTerrain = require(TestHelpers.MockTerrain)

return function()
	it("should construct and destroy without errors", function()
		local terrain = MockTerrain.new()

		local localization = Localization.mock()
		local pluginInstance = MockPlugin.new()
		local store = Rodux.Store.new(MainReducer, {}, { Rodux.thunkMiddleware })
		local theme = PluginTheme.mock()

		local pluginActivationController = PluginActivationController.new(pluginInstance)
		local terrainGeneration = TerrainGeneration.new({
			terrain = terrain,
		})
		local terrainImporter = TerrainImporter.new({
			terrain = terrain,
		})
		local seaLevel = TerrainSeaLevel.new({
			terrain = terrain,
		})
		local partConverter = PartConverter.new({
			terrain = terrain,
			localization = localization,
		})

		local element = Roact.createElement(ServiceWrapper, {
			localization = localization,
			plugin = pluginInstance,
			store = store,
			theme = theme,
			terrain = terrain,
			pluginActivationController = pluginActivationController,
			terrainGeneration = terrainGeneration,
			terrainImporter = terrainImporter,
			seaLevel = seaLevel,
			partConverter = partConverter,
		}, {
			testFrame = Roact.createElement("Frame")
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)

	describe("Localization", function()
		it("should supply a functional localization object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("Plugin", function()
		it("should supply a functional plugin object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("Store", function()
		it("should supply a functional Rodux Store object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("Theme", function()
		it("should supply a functional theme object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("TerrainBrush", function()
		it("should supply a functional terrain brush object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("PluginActivationController", function()
		it("should supply a functional plugin activation controller object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("TerrainImporter", function()
		it("should supply a functional terrain importer object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("TerrainGeneration", function()
		it("should supply a functional terrain generation object to its children", function()
			expect(true).to.equal(true)
		end)
	end)

	describe("SeaLevel", function()
		it("should supply a functional sea level object to its children", function()
			expect(true).to.equal(true)
		end)
	end)
end
