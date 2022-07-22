local constants = require(script.constants)

return {
	EmojiWrapper = require(script.Components.EmojiWrapper),

	installReducer = require(script.installReducer),

	emoji = {
		verified = constants.VERIFIED_EMOJI,
		premium = constants.PREMIUM_EMOJI,
	},

	getFFlagUseVerifiedBadge = require(script.Flags.getFFlagUseVerifiedBadge),
}
