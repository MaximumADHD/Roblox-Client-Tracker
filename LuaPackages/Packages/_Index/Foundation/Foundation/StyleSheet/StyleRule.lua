local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

type StyleRuleProps = {
	Selector: string,
	properties: {
		[string]: any,
	},
}

local function StyleRule(props: StyleRuleProps)
	local rule = React.useCallback(function(node)
		if node ~= nil then
			node:SetProperties(props.properties)
		end
	end, { props.properties })

	return React.createElement("StyleRule", {
		Selector = props.Selector,
		ref = rule,
	})
end

return React.memo(StyleRule)
