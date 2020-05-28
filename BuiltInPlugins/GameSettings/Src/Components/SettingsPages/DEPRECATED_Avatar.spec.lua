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

	local Avatar = require(Plugin.Src.Components.SettingsPages.DEPRECATED_Avatar)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local settingsAvatarTest = {
		Current = {
			universeAvatarType = "MorphToR15",
			universeScaleType = "AllScales",
			universeAnimationType = "PlayerChoice",
			universeCollisionType = "OuterBox",
		},
		Changed = {},
	}

	local function createTestAvatar(startState)
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
			avatar = Roact.createElement(Avatar),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestAvatar()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end