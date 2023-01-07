return {
	installReducer = require(script.Parent.installReducer),
	PYMKCarouselComponent = require(script.Parent.Components.PYMKCarouselComponent),
	RoduxKey = require(script.Parent.Common.Constants).RODUX_KEY,
	PYMKCarouselModel = {
		fromJsonData = require(script.Parent.installReducer.fromOmniJsonData),
	},
	["jest.config"] = script.Parent["jest.config"],
}
