return {
	DiscoverabilityOverlay = require(script.Components.DiscoverabilityOverlay),
	FetchUserSettingsMetadata = require(script.Networking.FetchUserSettingsMetadata),
	installReducer = require(script.installReducer),
	dependencies = require(script.dependencies),
	RoduxKey = require(script.Common.Constants).RODUX_KEY,
	Analytics = require(script.Analytics),
	Navigator = require(script.Navigator),
	Flags = require(script.Flags),
	["jest.config"] = script["jest.config"],
}
