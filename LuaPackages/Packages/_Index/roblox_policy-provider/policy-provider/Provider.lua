local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)

local appPolicyKey = require(script.Parent.appPolicyKey)

return function()
	local PolicyProvider = Roact.Component:extend("PolicyProvider")

	function PolicyProvider:init(props)
		assert(type(props.policy) == "table", "Provider expects props.policy to be a table")

		self._context[appPolicyKey] = {
			presentationPolicy = props.policy,
			staticExternalPolicy = props.policyData,
		}
	end

	function PolicyProvider:render()
		return Roact.oneChild(self.props[Roact.Children])
	end

	return PolicyProvider
end
