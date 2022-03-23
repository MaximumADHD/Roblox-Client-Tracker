local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local Dictionary = require(ProjectRoot.llama).Dictionary

local function getConnect(context)
	return function(mapper)
		local function transformedMapper(translator: Translator, props: any)
			return Dictionary.map(mapper(props), function(value, _key)
				return translator:FormatByKey(value)
			end)
		end

		return function(component)
			local connectedComponent = Roact.Component:extend("Connected-" .. tostring(component))

			function connectedComponent:render()
				return Roact.createElement(context.Consumer, {
					render = function(translator: Translator)
						return Roact.createElement(
							component,
							Dictionary.join(self.props, transformedMapper(translator, self.props))
						)
					end,
				})
			end

			return connectedComponent
		end
	end
end

return function(translator: Translator)
	local context = Roact.createContext(translator)

	return {
		Consumer = context.Consumer,
		Provider = context.Provider,
		connect = getConnect(context),
	}
end
