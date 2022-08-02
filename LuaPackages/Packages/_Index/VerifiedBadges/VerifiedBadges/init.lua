local constants = require(script.constants)

return {
	EmojiWrapper = require(script.Components.EmojiWrapper),

	installReducer = require(script.installReducer),

	emoji = {
		verified = constants.VERIFIED_EMOJI,
		premium = constants.PREMIUM_EMOJI,
	},

	getFFlagUseVerifiedBadge = require(script.Flags.getFFlagUseVerifiedBadge),
	getFFlagVerifiedBadgeIXPEnabled = require(script.Flags.getFFlagVerifiedBadgeIXPEnabled),
	getFStringVerifiedBadgeLayer = require(script.Flags.getFStringVerifiedBadgeLayer),

	appendVerifiedBadge = require(script.Utils.appendVerifiedBadge),
	appendPremiumBadge = require(script.Utils.appendPremiumBadge),
	isCreatorOfGameVerified = require(script.Utils.isCreatorOfGameVerified),
}
