return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local Localization = require(Plugin.Src.Localization.Localization)

	local World = require(Plugin.Src.Components.SettingsPages.World)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local settingsOptionsTest = {
		Current = {
			HttpEnabled = true,
		},
		Changed = {},
	}

	local function createTestWorld(startState)
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
			world = Roact.createElement(World),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestWorld()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestWorld()
		local instance = Roact.mount(element, container)
		local world = container.Frame

		expect(world.Layout).to.be.ok()
		expect(world.Gravity).to.be.ok()
		expect(world.JumpDistance).to.be.ok()
		expect(world.JumpSelect).to.be.ok()
		expect(world.MaxSlopeAngle).to.be.ok()
		expect(world.Presets).to.be.ok()
		expect(world.WalkSpeed).to.be.ok()

		Roact.unmount(instance)
	end)
end