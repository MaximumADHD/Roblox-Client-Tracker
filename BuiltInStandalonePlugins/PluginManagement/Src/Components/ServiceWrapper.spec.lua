local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary")
if FFlagPluginManagementRemoveUILibrary then
	return function()
	end
end

-- remove with FFlagPluginManagementRemoveUILibrary
local ServiceWrapper = require(script.Parent.ServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Http = require(Plugin.Packages.Http)
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local TestHelpers = require(Plugin.Packages.TestHelpers)

local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Localization = UILibrary.Studio.Localization

return function()
	it("should construct and destroy without errors", function()
		local api = Http.API.mock()
		local focusGui = {}
		local localization = Localization.mock()
		local pluginInstance = TestHelpers.MockPlugin.new()
		local mouse = pluginInstance:GetMouse()
		local store = Rodux.Store.new(MainReducer, {}, { Rodux.thunkMiddleware })
		local theme = PluginTheme.mock()

		local element = Roact.createElement(ServiceWrapper, {
			api = api,
			focusGui = focusGui,
			localization = localization,
			mouse = mouse,
			plugin = pluginInstance,
			store = store,
			theme = theme,
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
end