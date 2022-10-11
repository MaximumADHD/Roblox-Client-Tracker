--[=[
	@class VerifiedBadges
]=]

--[=[
	Dictionary containing the various emoji that can be used in conjunction
	with EmojiWrapper.

	@prop emoji { verified: string, premium: string }
	@within VerifiedBadges
]=]

local constants = require(script.constants)

return {
	EmojiWrapper = require(script.Components.EmojiWrapper),

	installReducer = require(script.installReducer),

	emoji = {
		verified = constants.VERIFIED_EMOJI,
		premium = constants.PREMIUM_EMOJI,
	},

	appendVerifiedBadge = require(script.Utils.appendVerifiedBadge),
	appendPremiumBadge = require(script.Utils.appendPremiumBadge),
	isCreatorOfGameVerified = require(script.Utils.isCreatorOfGameVerified),
	isPlayerVerified = require(script.Utils.isPlayerVerified),
}
