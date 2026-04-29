local Roact = require(script.Parent.Parent.Roact)

local StoreContext = require(script.Parent.StoreContext)

local StoreProvider = Roact.Component:extend("StoreProvider")

function StoreProvider.validateProps(props)
	local store = props.store
	if store == nil then
		return false, "Error initializing StoreProvider. Expected a `store` prop to be a Rodux store."
	end
	return true
end

function StoreProvider:init(props)
	self.store = props.store
end

function StoreProvider:render()
	return Roact.createElement(StoreContext.Provider, {
		value = self.store,
	}, Roact.oneChild(self.props[Roact.Children]))
end

return StoreProvider
