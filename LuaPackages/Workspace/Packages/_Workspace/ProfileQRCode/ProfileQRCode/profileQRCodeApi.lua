return {
	installReducer = require(script.Parent.Rodux).installReducer,
	RoduxKey = require(script.Parent.Common.Constants).RODUX_KEY,
	ProfileQRCodeEntryPoint = require(script.Parent.Components.ProfileQRCodeEntryPoint),
	profileQRCodeIXP = require(script.Parent.Experiment.profileQRCodeIXP),
	["jest.config"] = script.Parent["jest.config"],
}
