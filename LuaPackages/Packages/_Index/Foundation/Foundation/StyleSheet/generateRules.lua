local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(script.Parent.Rules.Types)
local formatTokens = require(script.Parent.formatTokens)

type Tokens = Tokens.Tokens
type RulesGenerator = Types.RulesGenerator

-- Remove useFontFace when cleaning up FFlagFoundationFontFaceMigration
local function generateRules(tokens: Tokens, rulesGenerator: RulesGenerator, useFontFace: boolean?)
	local formattedTokens = formatTokens(tokens)
	local common, size, colorMode, typography = rulesGenerator(tokens, formattedTokens, useFontFace)
	local rules = Dash.joinArrays(common, size, colorMode)

	return rules, common, size, colorMode, typography
end

return generateRules
