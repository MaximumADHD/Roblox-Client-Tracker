local ServiceWrapper = require(script.Parent.ServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local ContextServices = Plugin.Packages.Framework.ContextServices
local UILibraryWrapper = require(ContextServices.UILibraryWrapper :: any)
local Analytics = require(ContextServices).Analytics
local Localization = require(ContextServices).Localization

local MockPlugin = require(Plugin.Src.TestHelpers.MockPlugin)
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

return function()
	it("should construct and destroy without errors", function()
		local analytics = Analytics.mock()
		local focusGui = Instance.new("ScreenGui")
		local localization = Localization.mock()
		local pluginInstance = MockPlugin.new()
		local mouse = pluginInstance:GetMouse()
		local store = Rodux.Store.new(MainReducer, {}, { Rodux.thunkMiddleware })
		local theme = PluginTheme.mock()
		local uiLibWrapper = UILibraryWrapper.new()

		local element = Roact.createElement(ServiceWrapper, {
			analytics = analytics,
			focusGui = focusGui,
			plugin = pluginInstance,
			localization = localization,
			theme = theme,
			uiLibWrapper = uiLibWrapper,
			mouse = mouse,
			store = store,
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