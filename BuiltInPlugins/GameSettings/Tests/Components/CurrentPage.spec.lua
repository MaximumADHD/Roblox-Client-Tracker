return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	local CurrentPage = require(Plugin.Src.Components.CurrentPage)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()

	local settingsStore = Rodux.Store.new(
		MainReducer,
		nil,
		{Rodux.thunkMiddleware}
	)

	local function createTestCurrentPage(page)
		local services = Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
		}, {
			currentPage = Roact.createElement(CurrentPage, {
				Page = page,
			})
		})

		return services
	end

	it("should create and destroy without errors", function()
		local element = createTestCurrentPage("")
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = workspace

		local element = createTestCurrentPage("")
		local instance = Roact.mount(element, container)
		local currentPage = container.Frame

		expect(currentPage.ScrollingFrame).to.be.ok()
		expect(currentPage.ScrollingFrame.Padding).to.be.ok()
		expect(currentPage.ScrollingFrame.Layout).to.be.ok()
		expect(currentPage.ScrollingFrame.Header).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should display a page", function()
		local container = workspace

		local element = createTestCurrentPage("Avatar")
		local instance = Roact.mount(element, container)
		local currentPage = container.Frame

		expect(currentPage.ScrollingFrame).to.be.ok()
		expect(currentPage.ScrollingFrame.Avatar).to.be.ok()

		Roact.unmount(instance)
	end)
end