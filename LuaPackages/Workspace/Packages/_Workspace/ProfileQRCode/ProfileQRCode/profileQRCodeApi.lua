return {
	["jest.config"] = script.Parent["jest.config"],
	Experiments = require(script.Parent.Experiments),
	installReducer = require(script.Parent.Rodux).installReducer,
	ProfileQRCodeEntryPoint = require(script.Parent.Components.ProfileQRCodeEntryPoint),
	RoduxKey = require(script.Parent.Common.Constants).RODUX_KEY,
	TitleKey = require(script.Parent.Common.TextKeys).Title,
}
