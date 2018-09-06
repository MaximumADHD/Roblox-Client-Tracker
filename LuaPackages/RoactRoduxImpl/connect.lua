local Roact = require(script.Parent.Parent.Roact)

local storeKey = require(script.Parent.storeKey)

local function shallowEqual(a, b)
	for key, value in pairs(a) do
		if b[key] ~= value then
			return false
		end
	end

	for key, value in pairs(b) do
		if a[key] ~= value then
			return false
		end
	end

	return true
end

--[[
	Joins two tables together into a new table
]]
local function join(a, b)
	local result = {}

	for key, value in pairs(a) do
		result[key] = value
	end

	for key, value in pairs(b) do
		result[key] = value
	end

	return result
end

-- A version of 'error' that outputs over multiple lines
local function errorLines(...)
	error(table.concat({...}, "\n"))
end

local function connect(mapStoreToProps)
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
			local store = self._context[storeKey]

			if not store then
				errorLines(
					"Cannot initialize Roact-Rodux component without being a descendent of StoreProvider!",
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
			self.eventHandle = self.store.changed:connect(function(state)
				local storeProps = mapConnect(self.store, self.props)

				if not shallowEqual(self.state.storeProps, storeProps) then
					self:setState({
						storeProps = storeProps
					})
				end
			end)
		end

		function Connection:willUnmount()
			self.eventHandle:disconnect()
		end

		function Connection:render()
			local props = join(self.props, self.state.storeProps)

			return Roact.createElement(component, props)
		end

		return Connection
	end
end

return connect