return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)
	local RoactRodux = require(Plugin.RoactRodux)

	local SettingsImplProvider = require(Plugin.Src.Providers.DEPRECATED_SettingsImplProvider)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local SettingsReducer = require(Plugin.Src.Reducers.Settings)
	local getSettingsImpl = require(Plugin.Src.Consumers.getSettingsImpl)

	it("should return a SettingsImpl when one is present", function()
		local settingsStore = Rodux.Store.new(
			SettingsReducer,
			nil,
			{Rodux.thunkMiddleware}
		)

		local settingsImpl = SettingsImpl_mock.new()

		local consumedImpl = nil
		local SettingsImplConsumer = Roact.Component:extend("SettingsImplConsumer")

		function SettingsImplConsumer:init()
			consumedImpl = getSettingsImpl(self)
		end

		function SettingsImplConsumer:render()
			return nil
		end

		local element = Roact.createElement(SettingsImplConsumer, {})

		local storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = settingsStore
		}, {
			settingsImplProvider = Roact.createElement(SettingsImplProvider, {
				settingsImpl = settingsImpl,
			}, {
				consumer = element,
			}),
		})

		local handle = Roact.mount(storeProvider)

		expect(consumedImpl).to.equal(settingsImpl)

		Roact.unmount(handle)
	end)

	it("should return nil when no SettingsImpl is present", function()
		local consumedImpl = nil
		local SettingsImplConsumer = Roact.Component:extend("InterfaceConsumer")

		function SettingsImplConsumer:init()
			consumedImpl = getSettingsImpl(self)
		end

		function SettingsImplConsumer:render()
			return nil
		end

		local element = Roact.createElement(SettingsImplConsumer, {})
		local handle = Roact.mount(element)

		expect(consumedImpl).never.to.be.ok()

		Roact.unmount(handle)
	end)
end