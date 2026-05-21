local Framework = script.Parent.Parent
local Dash = require(Framework.Parent.Dash)
local find = Dash.find

local function shouldOrderStyleRulesByInsertion(rules: { StyleRule | false | nil })
	local hasOnlyZeros = true
	local firstRule = find(rules, function(rule)
		return rule ~= nil and rule ~= false
	end)
	if not firstRule then
		return true
	end
	hasOnlyZeros = firstRule.Priority == 0
	for _, rule in rules do
		if rule then
			local foundBadZero = rule.Priority == 0 and not hasOnlyZeros
			local foundBadNonZero = rule.Priority ~= 0 and hasOnlyZeros
			if foundBadZero or foundBadNonZero then
				error(`Zero priorities mixed with non-zero priorities in StyleRule children`)
			end
		end
	end
	return hasOnlyZeros
end

return shouldOrderStyleRulesByInsertion
