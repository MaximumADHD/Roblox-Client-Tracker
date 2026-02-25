local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.StyleSheet.Rules.Types)
type StyleRuleNoTag = Types.StyleRuleNoTag

type RulesContext = {
	rules: { [string]: StyleRuleNoTag },
	scale: number,
}

return React.createContext({} :: RulesContext)
