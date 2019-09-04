return function()
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Roact)

	local SettingsImplProvider = require(Plugin.Src.Providers.SettingsImplProvider)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)

	it("should create and destroy without errors", function()
		local settingsImpl = SettingsImpl_mock.new()

		local element = Roact.createElement(SettingsImplProvider, {
			settingsImpl = settingsImpl
		})

		expect(element).to.be.ok()

		local handle = Roact.mount(element)

		Roact.unmount(handle)
	end)

	it("should expect an 'interface' prop", function()
		local element = Roact.createElement(SettingsImplProvider)

		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)
end