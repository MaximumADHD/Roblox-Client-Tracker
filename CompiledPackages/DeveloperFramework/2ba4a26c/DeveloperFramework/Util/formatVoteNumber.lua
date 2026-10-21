local Framework = script.Parent.Parent
local RoundingBehaviour = require(Framework.Util.RoundingBehaviour)
local Resources = require(Framework.Resources)

-- constants
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local COMPONENT_NAME = "VoteBar"
local ENOUGH_RATINGS_THRESHOLD = 10
local MAX_NUMBER_THAT_INCLUDES_PLUS_SIGN_AFTER_NUMBER = 9999
-- Min number that we start abbreviating with "K", "M", etc
local MAX_NUMBER_WITH_NO_ABBREVIATING = 9999

local formatVoteNumber = {}

function formatVoteNumber.hasEnoughRatings(voteCounts: number)
	return voteCounts >= ENOUGH_RATINGS_THRESHOLD
end

function formatVoteNumber.getFormattedVoteNumber(voteCounts: number, localizationComponent: any)
	if not formatVoteNumber.hasEnoughRatings(voteCounts) then
		-- If there are < ENOUGH_RATINGS_THRESHOLD votes, don't show a vote count.
		return ""
	end
	local abbreviatedLocalizedVotes
	if voteCounts <= MAX_NUMBER_WITH_NO_ABBREVIATING then
		-- In this case, just round it to the sig figs but don't truncate. e.g. 1,234 --> 1,000 instead of 1K
		-- But the number we're getting from the backend is already rounded, so just convert it to a string so it doesn't render as a number like "102.00"
		abbreviatedLocalizedVotes = tostring(voteCounts)
	else
		abbreviatedLocalizedVotes =
			localizationComponent:localizeAndAbbreviateNumber(voteCounts, RoundingBehaviour.Truncate, 1)
	end
	if voteCounts <= MAX_NUMBER_THAT_INCLUDES_PLUS_SIGN_AFTER_NUMBER then
		local voteCountSymbolKey = "VoteCountGreaterThanEqualTen1"
		return localizationComponent:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, voteCountSymbolKey, {
			count = abbreviatedLocalizedVotes,
		})
	else
		return abbreviatedLocalizedVotes
	end
end

--[[
	Format a vote number to be abbreviated to 1 sig fig and localized.
	If the number is < ENOUGH_RATINGS_THRESHOLD, it just returns the text "NOT ENOUGH RATINGS" but localized
	e.g. 1,230 --> 1K in english, 1mil in spanish
	voteCounts: {int} the number of votes
	localizationComponent: {Localization} the localizatinoComponent from ContextServices in Developer Framework
	includeParens: {boolean} whether or not to include parenthesis around the abbreviated number. e.g. (<10) vs. <10
	includeText: {boolean} whether or not to include the "votes" text after the vote number
]]
function formatVoteNumber.getFormattedVoteNumberAndText(
	voteCounts: number,
	localizationComponent: any,
	includeParens: boolean,
	includeText: boolean
)
	if not formatVoteNumber.hasEnoughRatings(voteCounts) then
		return localizationComponent:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "VoteCountTooSmall")
	end
	local resultingVoteText = formatVoteNumber.getFormattedVoteNumber(voteCounts, localizationComponent)
	if includeParens then
		resultingVoteText = localizationComponent:getProjectText(
			LOCALIZATION_PROJECT_NAME,
			COMPONENT_NAME,
			"VoteCountWrappedInParens1",
			{
				count = resultingVoteText,
			}
		)
	end
	if includeText then
		resultingVoteText =
			localizationComponent:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "VoteCountAndText1", {
				count = resultingVoteText,
			})
	end
	return resultingVoteText
end

return formatVoteNumber
