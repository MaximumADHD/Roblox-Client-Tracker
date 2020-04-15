return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local Localization = require(Plugin.Src.Localization.Localization)

	local MainView = require(Plugin.Src.Components.MainView)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local settingsStore = Rodux.Store.new(
		MainReducer,
		{Settings = nil},
		{Rodux.thunkMiddleware}
	)

	local function createTestMainView()
		return Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
			localization = localization,
		}, {
			mainView = Roact.createElement(MainView, {
				MenuEntries = {
					{Name = "Avatar"},
				},
				Selected = 1,
				SelectionChanged = function()
				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMainView()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestMainView()
		local instance = Roact.mount(element, container)
		local mainView = container.Frame

		expect(mainView.Padding).to.be.ok()
		expect(mainView.MenuBar).to.be.ok()
		expect(mainView.Separator).to.be.ok()
		expect(mainView.Page).to.be.ok()
		expect(mainView.Footer).to.be.ok()

		Roact.unmount(instance)
	end)
end