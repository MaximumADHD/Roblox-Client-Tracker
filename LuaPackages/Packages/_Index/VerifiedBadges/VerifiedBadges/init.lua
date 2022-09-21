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
	SmartEmoji = require(script.Components.SmartEmoji),

	installReducer = require(script.installReducer),

	emoji = {
		verified = constants.VERIFIED_EMOJI,
		premium = constants.PREMIUM_EMOJI,
	},

	getFStringVerifiedBadgeLayer = require(script.Flags.getFStringVerifiedBadgeLayer),

	appendVerifiedBadge = require(script.Utils.appendVerifiedBadge),
	appendPremiumBadge = require(script.Utils.appendPremiumBadge),
	isCreatorOfGameVerified = require(script.Utils.isCreatorOfGameVerified),
	sendExposureEvent = require(script.Utils.sendExposureEvent),
}
