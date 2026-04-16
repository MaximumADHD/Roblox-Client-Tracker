local Foundation = script:FindFirstAncestor("Foundation")

local StaticRules = require(Foundation.StyleSheet.Rules.staticRules)
local Tokens = require(Foundation.Providers.Style.Tokens)
local formatTokens = require(Foundation.StyleSheet.formatTokens)

-- Extract layout tag names from static rules
local function getLayoutTags(): { [string]: boolean }
	local layoutTags = {}

	-- Get tokens and format them using the existing function. Token values may change
	-- based on parameters, but the keys used to generate the rules are constant.
	local formattedTokens = formatTokens(Tokens.defaultTokens)

	-- Get all rules related to UIListLayouts
	local listLayoutRules = StaticRules.rules.ListLayoutRules()
	local spacingRules = StaticRules.rules.ListLayoutSpacingRules(formattedTokens.gaps, formattedTokens.gutters)

	for _, rules in { listLayoutRules, spacingRules } do
		for _, rule in rules do
			if rule.pseudo == "UIListLayout" and rule.tag then
				layoutTags[rule.tag] = true
			end
		end
	end

	return layoutTags
end

return getLayoutTags
