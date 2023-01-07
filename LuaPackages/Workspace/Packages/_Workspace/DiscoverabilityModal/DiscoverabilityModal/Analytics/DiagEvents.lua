local EventNames = require(script.Parent.Enums.EventNames)

type GenericDiagAction = { name: string, count: number? }

return {
	[EventNames.DiscoverabilityModalLoad] = {
		name = game:DefineFastString("DiscoverabilityModalLoadCounter", "DiscoverabilityModalLoad"),
	} :: GenericDiagAction,
	[EventNames.DiscoverabilityModalContinue] = {
		name = game:DefineFastString("DiscoverabilityModalContinueCounter", "DiscoverabilityModalContinue"),
	},
	[EventNames.DiscoverabilityModalClose] = {
		name = game:DefineFastString("DiscoverabilityModalCloseCounter", "DiscoverabilityModalClose"),
	},
	[EventNames.DiscoverabilityModalRadioButtonClick] = {
		name = game:DefineFastString(
			"DiscoverabilityModalRadioButtonClickCounter",
			"DiscoverabilityModalRadioButtonClick"
		),
	},
}
