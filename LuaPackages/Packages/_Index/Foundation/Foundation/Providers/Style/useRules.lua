local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local RulesContext = require(Style.RulesContext)
local React = require(Packages.React)

local function useRules()
	return React.useContext(RulesContext)
end

return useRules
