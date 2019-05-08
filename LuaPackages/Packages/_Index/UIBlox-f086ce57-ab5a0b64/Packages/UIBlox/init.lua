return {
	Style = {
		Provider = require(script.Style.StyleProvider),
		Consumer = require(script.Style.StyleConsumer),
		withStyle = require(script.Style.withStyle),
		Validator = {
			validateStyle = require(script.Style.Validator.validateStyle),
			validateFont = require(script.Style.Validator.validateFont),
			validateTheme = require(script.Style.Validator.validateTheme),
		}
	},
}