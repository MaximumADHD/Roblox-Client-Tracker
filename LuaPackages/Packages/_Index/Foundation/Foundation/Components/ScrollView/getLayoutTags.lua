local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
local attributeRules = require(Foundation.StyleSheet.Rules.attributeRules)
local formatTokens = require(Foundation.StyleSheet.formatTokens)

-- Extract every UIListLayout-pseudo tag from the rules pipeline.
local function getLayoutTags(): { [string]: boolean }
	local layoutTags = {}

	local tokens = Tokens.defaultTokens
	local formattedTokens = formatTokens(tokens)
	-- Only the `size` bucket contains UIListLayout pseudo rules (from
	-- ListLayoutRules and ListLayoutSpacingRules); `common` and `colorMode` never do.
	local _common, size = attributeRules.rulesGenerator(tokens, formattedTokens)

	for _, rule in size do
		if rule.pseudo == "UIListLayout" and rule.tag then
			layoutTags[rule.tag] = true
		end
	end

	return layoutTags
end

return getLayoutTags
