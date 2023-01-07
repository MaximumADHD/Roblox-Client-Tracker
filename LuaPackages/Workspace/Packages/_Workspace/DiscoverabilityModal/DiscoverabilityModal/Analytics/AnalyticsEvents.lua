local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local EventNames = require(script.Parent.Enums.EventNames)

local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Dash = dependencies.Dash

local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local BtnValues = require(script.Parent.Enums.BtnValues)

type GenericEvent = {
	context: any,
	eventType: any,
	additionalInfo: any?,
	formatRulesForAdditionalInfo: any?,
}

return {
	[EventNames.DiscoverabilityModalLoad] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.DiscoverabilityModalLoad,
		formatRulesForAdditionalInfo = {
			version = Dash.identity,
		},
	} :: GenericEvent,
	[EventNames.DiscoverabilityModalContinue] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.DiscoverabilityModalClick,
		additionalInfo = {
			btn = BtnValues.ContactImporter,
		},
		formatRulesForAdditionalInfo = {
			selected = Dash.identity,
		},
	},
	[EventNames.DiscoverabilityModalClose] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.DiscoverabilityModalClick,
		additionalInfo = {
			btn = BtnValues.Close,
		},
		formatRulesForAdditionalInfo = {
			selected = Dash.identity,
		},
	},
	[EventNames.DiscoverabilityModalRadioButtonClick] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.DiscoverabilityModalRadioButtonClick,
		formatRulesForAdditionalInfo = {
			selected = Dash.identity,
		},
	},
}
