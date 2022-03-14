local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)

local AppPolicyContext = require(script.Parent.AppPolicyContext)

return function()
	local PolicyProvider = Roact.Component:extend("PolicyProvider")

	function PolicyProvider:init(props)
		assert(type(props.policy) == "table", "Provider expects props.policy to be a table")

		self.policy = {
			presentationPolicy = props.policy,
			staticExternalPolicy = props.policyData,
		}
	end

	function PolicyProvider:render()
		return Roact.createElement(AppPolicyContext.Provider, {
			value = self.policy,
		}, self.props[Roact.Children])
	end

	return PolicyProvider
end
