local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local Symbol = require(Plugin.Roact.Symbol)
local actionKey = Symbol.named("Action")

local ActionProvider = Roact.PureComponent:extend("ActionProvider")
function ActionProvider:init()
	local pluginActions = self.props.pluginActions
	assert(pluginActions ~= nil, "No plugin actions were given to this ActionProvider.")

	self._context[actionKey] = pluginActions
end
function ActionProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

-- Gets the plugin at the passed in component's context.
local function getActions(component)
	assert(component._context[actionKey] ~= nil, "No ActionProvider found.")
	local pluginActions = component._context[actionKey]
	return pluginActions
end

return {
	Provider = ActionProvider,
	getActions = getActions,
}