local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local StyleSheet = require(Foundation.StyleSheet.StyleSheet)
type StyleRuleNoTag = StyleSheet.StyleRuleNoTag

return React.createContext({} :: { [string]: StyleRuleNoTag })
