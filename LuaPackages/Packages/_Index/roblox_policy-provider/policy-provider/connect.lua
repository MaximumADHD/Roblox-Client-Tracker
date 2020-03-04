local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local Promise = require(Packages.Promise)

local Logger = require(script.Parent.Logger)
local appPolicyKey = require(script.Parent.appPolicyKey)

local function mergePolicies(base, params)
	local policyWrapper = {}

	for _, wrapper in ipairs(params) do
		policyWrapper = Cryo.Dictionary.join(policyWrapper, wrapper(base))
	end

	return policyWrapper
end

return function(getPolicyImpl)
	assert(getPolicyImpl, "expected getPolicyImpl")

	return function(mapper)
		assert(type(mapper) == "function", "connect expects mapper to be a function")

		return function(component)
			local name = ("AppPolicy(%s)"):format(tostring(component))
			local componentLogger = Logger:new(name)
			componentLogger:setContext({
				prefix = string.format("%s: ", name),
			})

			local providerNotFound = string.format("%s: Not a descendent of PolicyProvider", name)
			local Connection = Roact.PureComponent:extend(name)

			componentLogger:trace("Connected to component: {}", tostring(component))

			function Connection:init(props)
				self.policyContext = self._context[appPolicyKey]
				assert(self.policyContext, providerNotFound)

				self.setWithEmptyPolicy = function()
					self.state = {
						policy = mergePolicies({}, self.policyContext.presentationPolicy),
					}
				end

				if self.policyContext.staticExternalPolicy then
					-- if we already have a staticExternalPolicy, there is
					-- no need to read it from our implementation
					self.state = {
						policy = mergePolicies(self.policyContext.staticExternalPolicy, self.policyContext.presentationPolicy),
					}
				else
					local retrievedExternalPolicy = getPolicyImpl.read()
					if retrievedExternalPolicy then
						self.state = {
							policy = mergePolicies(retrievedExternalPolicy, self.policyContext.presentationPolicy),
						}
					else
						self.setWithEmptyPolicy()
						componentLogger:trace("No app policy data available")
					end

					self.onPolicyChanged = function(newExternalPolicy)
						self:setState({
							policy = mergePolicies(newExternalPolicy, self.policyContext.presentationPolicy),
						})
					end
				end
			end

			function Connection:didMount()
				if self._context[appPolicyKey].staticExternalPolicy then
					return
				end
				self.connection = getPolicyImpl.onPolicyChanged(function(incomingExternalPolicy)
					componentLogger:trace("Received policy update from MemStorageService")
					self.onPolicyChanged(incomingExternalPolicy)
				end)
			end

			function Connection:render()
				local policyProps = mapper(self.state.policy, self.props)
				local newProps = Cryo.Dictionary.join(self.props, policyProps)
				return Roact.createElement(component, newProps)
			end

			function Connection:willUnmount()
				if self.connection then
					self.connection:Disconnect()
				end
				-- sometimes the callback will fire even after :Disconnect was called
				self.onPolicyChange = nil
			end

			return Connection
		end
	end
end
