return function()
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Roact)

	local Localization = require(Plugin.Src.Localization.Localization)
	local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

	local localization = Localization.newDummyLocalization()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LocalizationProvider, {
			localization = localization
		})

		expect(element).to.be.ok()

		local handle = Roact.mount(element)

		Roact.unmount(handle)
	end)

	it("should expect a 'localization' prop", function()
		local element = Roact.createElement(LocalizationProvider)

		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)
end