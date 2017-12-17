local Common = script.Parent

local Roact = require(Common.Roact)
local Immutable = require(Common.Immutable)
local Symbol = require(Common.Symbol)

local StoreKey = Symbol.named("RoduxStore")

-- A version of 'error' that outputs over multiple lines
local function errorLines(...)
	error(table.concat({...}, "\n"))
end

local RoactRodux = {}

local StoreProvider = Roact.Component:extend("StoreProvider")
RoactRodux.StoreProvider = StoreProvider

function StoreProvider:init(props)
	local store = props.store

	if store == nil then
		error("Error initializing StoreProvider. Expected a `store` prop to be a Rodux store.")
	end

	self._context = {
		[StoreKey] = store,
	}
end

function StoreProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function RoactRodux.connect(mapStoreToProps)
	local rootTrace = debug.traceback()

	local mapConnect = function(store, props)
		local result = mapStoreToProps(store, props)

		if type(result) ~= "table" then
			errorLines(
				"mapStoreToProps must return a table! Check the function passed into 'connect' at:",
				rootTrace
			)
		end

		return result
	end

	return function(component)
		if component == nil then
			error("Expected component to be passed to connection, got nil.")
		end

		local name = ("Connection(%s)"):format(
			tostring(component)
		)
		local Connection = Roact.Component:extend(name)

		function Connection:init(props)
			local store = self._context[StoreKey]

			if not store then
				errorLines(
					"Cannot initialize React-Rodux component without being a descendent of StoreProvider!",
					("Tried to wrap component %q"):format(tostring(component)),
					"Make sure there is a StoreProvider above this component in the tree."
				)
			end

			self.store = store

			self.state = {
				storeProps = mapConnect(store, props),
			}
		end

		function Connection:didMount()
			self.eventHandle = self.store.Changed:Connect(function(state)
				local storeProps = mapConnect(self.store, self.props)

				self:setState({
					storeProps = storeProps
				})
			end)
		end

		function Connection:willUnmount()
			self.eventHandle:Disconnect()
		end

		function Connection:render()
			local props = Immutable.JoinDictionaries(self.props, self.state.storeProps)

			return Roact.createElement(component, props)
		end

		return Connection
	end
end

return RoactRodux