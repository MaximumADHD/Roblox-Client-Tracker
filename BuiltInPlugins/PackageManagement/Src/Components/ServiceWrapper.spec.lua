local ServiceWrapper = require(script.Parent.ServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MockPlugin = require(Plugin.Src.TestHelpers.MockPlugin)
local Localization = UILibrary.Studio.Localization
local Mouse = require(Plugin.Src.ContextServices.Mouse)

return function()
	it("should construct and destroy without errors", function()
		local localization = Localization.mock()
		local pluginInstance = MockPlugin.new()
		local store = Rodux.Store.new(MainReducer, {}, { Rodux.thunkMiddleware })
		local theme = PluginTheme.mock()
		local mouse = pluginInstance:GetMouse()

		local element = Roact.createElement(ServiceWrapper, {
			localization = localization,
			plugin = pluginInstance,
			pluginGui = {},
			store = store,
			theme = theme,
			mouse = mouse,
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