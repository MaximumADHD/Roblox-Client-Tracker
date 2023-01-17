local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local Dictionary = require(Packages.llama).Dictionary

local function getConnect(context)
	return function(mapper)
		local function transformedMapper(translator: Translator, props: any)
			return Dictionary.map(mapper(props), function(value: string | { any }, _key)
				if type(value) == "table" then
					return translator:FormatByKey(value[1], value[2])
				elseif type(value) == "string" then
					return translator:FormatByKey(value)
				else
					return ""
				end
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
