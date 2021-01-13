return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Rodux = require(Plugin.Packages.Rodux)
	local Framework = require(Plugin.Packages.Framework)

	local PluginTheme = require(Plugin.Src.Util.Theme)
	local ContextServices = Framework.ContextServices
	local Analytics = Framework.ContextServices.Analytics
	local Localization = Framework.ContextServices.Localization
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)


	local MockPlugin = Framework.TestHelpers.Instances.MockPlugin


	local MainProvider = require(script.Parent.MainProvider)

	it("should create and destroy without errors", function()
		local analytics = Analytics.mock()
		local focusGui = Instance.new("ScreenGui")
		local localization = Localization.mock()
		local pluginInstance = MockPlugin.new()
		local mouse = pluginInstance:GetMouse()

		local store = Rodux.Store.new(MainReducer, {}, { Rodux.thunkMiddleware })
		local theme = PluginTheme.mock()

		local pluginActions = {}


		local element = Roact.createElement(MainProvider, {
			analytics = analytics,
			focusGui = focusGui,
			plugin = pluginInstance,
			localization = localization,
			theme = theme,
			mouse = mouse,
			store = store,
		}, {
			testFrame = Roact.createElement("Frame")
		})
		
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render its children if items are provided", function ()
		local container = Instance.new("Folder")

		local analytics = Analytics.mock()
		local focusGui = Instance.new("ScreenGui")
		local localization = Localization.mock()
		local pluginInstance = MockPlugin.new()
		local mouse = pluginInstance:GetMouse()
		local store = Rodux.Store.new(MainReducer, {}, { Rodux.thunkMiddleware })
		local theme = PluginTheme.mock()
		local pluginActions = ContextServices.PluginActions.new(pluginInstance, {
			{
				id = "rerunLastStory",
				text = "MOCK",
			}
		})

		local instance = Roact.createElement(MainProvider, {
			analytics = analytics,
			focusGui = focusGui,
			plugin = pluginInstance,
			localization = localization,
			theme = theme,
			mouse = mouse,
			store = store,
			pluginActions = pluginActions,
		}, {
			Frame = Roact.createElement("Frame")
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(instance, container)

		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
	end)

end