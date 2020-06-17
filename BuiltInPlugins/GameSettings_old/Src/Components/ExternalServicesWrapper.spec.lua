return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local Theme = require(Plugin.Src.Util.Theme)
	local Localization = require(Plugin.Src.Localization.Localization)

	local theme = Theme.newDummyTheme()
	local store = Rodux.Store.new(function()
	end)
	local settingsImpl = SettingsImpl_mock.new()
	local localization = Localization.newDummyLocalization()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ExternalServicesWrapper, {
			settingsSaverLoader = settingsImpl,
			theme = theme,
			store = store,
			localization = localization,
		})

		expect(element).to.be.ok()

		local handle = Roact.mount(element)

		Roact.unmount(handle)
	end)

	it("should expect a 'store' prop", function()
		local element = Roact.createElement(ExternalServicesWrapper, {
			settingsSaverLoader = settingsImpl,
			theme = theme,
			localization = localization,
		})

		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should expect an 'settingsSaverLoader' prop", function()
		local element = Roact.createElement(ExternalServicesWrapper, {
			theme = theme,
			store = store,
			localization = localization,
		})

		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should expect a 'theme' prop", function()
		local element = Roact.createElement(ExternalServicesWrapper, {
			settingsSaverLoader = settingsImpl,
			store = store,
			localization = localization,
		})

		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should expect a 'localization' prop", function()
		local element = Roact.createElement(ExternalServicesWrapper, {
			settingsSaverLoader = settingsImpl,
			store = store,
			theme = theme,
		})

		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)
end