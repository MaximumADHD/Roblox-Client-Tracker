local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(script.Parent.Rules.Types)
local formatTokens = require(script.Parent.formatTokens)

type Tokens = Tokens.Tokens
type RulesGenerator = Types.RulesGenerator

local function generateRules(tokens: Tokens, rulesGenerator: RulesGenerator)
	local formattedTokens = formatTokens(tokens)
	local common, size, theme = rulesGenerator(tokens, formattedTokens)
	local rules = Dash.joinArrays(common, size, theme)

	return rules, common, size, theme
end

return generateRules
