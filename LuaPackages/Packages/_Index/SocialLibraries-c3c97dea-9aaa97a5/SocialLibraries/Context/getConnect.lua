local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama

return function(context)
	return function(mapper)
		return function(component)
			local connectedComponent = Roact.Component:extend("Connected-" .. tostring(component))

			function connectedComponent:render()
				return Roact.createElement(context.Consumer, {
					render = function(value)
						return Roact.createElement(component, llama.Dictionary.join(self.props, mapper(value)))
					end,
				})
			end

			return connectedComponent
		end
	end
end
