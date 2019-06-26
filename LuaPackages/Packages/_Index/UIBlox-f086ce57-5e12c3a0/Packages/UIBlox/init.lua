return {
	AccordionView = require(script.AccordionView),
	Style = {
		Provider = require(script.Style.StyleProvider),
		Consumer = require(script.Style.StyleConsumer),
		withStyle = require(script.Style.withStyle),
		Validator = {
			validateStyle = require(script.Style.Validator.validateStyle),
			validateFont = require(script.Style.Validator.validateFont),
			validateTheme = require(script.Style.Validator.validateTheme),
		},
	},
	ImageSet = {
		Button = require(script.ImageSet.Components.ImageSetButton),
		Label = require(script.ImageSet.Components.ImageSetLabel),
		Provider = require(script.ImageSet.ImageSetProvider),
		withImageSet = require(script.ImageSet.withImageSet),
	},
	Grid = {
		Metrics = require(script.Grid.GridMetrics),
		DefaultMetricsView = require(script.Grid.DefaultMetricsGridView),
	},
}