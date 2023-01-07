return {
	DiscoverabilityOverlay = require(script.Components.DiscoverabilityOverlay),
	FetchUserSettingsMetadata = require(script.Networking.FetchUserSettingsMetadata),
	installReducer = require(script.installReducer),
	RoduxKey = require(script.Common.Constants).RODUX_KEY,
	Analytics = require(script.Analytics),
	["jest.config"] = script["jest.config"],
}
