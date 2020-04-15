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

	local MenuBar = require(Plugin.Src.Components.MenuBar)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local function createTestMenuBar(entries, startState)
		local settingsStore = Rodux.Store.new(
			MainReducer,
			{Settings = startState},
			{Rodux.thunkMiddleware}
		)

		return Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
			localization = localization,
		}, {
			menuBar = Roact.createElement(MenuBar, {
				Entries = entries,
				SelectionChanged = function()
				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMenuBar({})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestMenuBar({}), container)
		local menuBar = container.Frame

		expect(menuBar.Layout).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render its MenuEntries", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestMenuBar({
			{Name = "Entry1"},
			{Name = "Entry2"},
			{Name = "Entry3"},
		}), container)
		local menuBar = container.Frame

		expect(menuBar.Layout).to.be.ok()
		expect(menuBar["1"]).to.be.ok()
		expect(menuBar["2"]).to.be.ok()
		expect(menuBar["3"]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should tell MenuEntries with errors to highlight", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestMenuBar({
			{Name = "Basic Info"},
			{Name = "Entry2"},
		}, {
			Current = {},
			Changed = {},
			Errors = {
				name = "Filtered",
			},
			Warnings = {},
		}), container)
		local menuBar = container.Frame

		expect(menuBar["1"].Error.Visible).to.equal(true)
		expect(menuBar["2"].Error.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should tell MenuEntries with warnings to highlight", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestMenuBar({
			{Name = "Basic Info"},
			{Name = "Entry2"},
		}, {
			Current = {},
			Changed = {},
			Errors = {},
			Warnings = {"isActive"}
		}), container)
		local menuBar = container.Frame

		expect(menuBar["1"].Error.Visible).to.equal(true)
		expect(menuBar["2"].Error.Visible).to.equal(false)

		Roact.unmount(instance)
	end)
end