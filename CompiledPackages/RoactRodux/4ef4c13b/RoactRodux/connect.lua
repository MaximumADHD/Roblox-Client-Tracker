local Roact = require(script.Parent.Parent.Roact)
local shallowEqual = require(script.Parent.shallowEqual)
local join = require(script.Parent.join)
local StoreContext = require(script.Parent.StoreContext)

--[[
	Formats a multi-line message with printf-style placeholders.
]]
local function formatMessage(lines, parameters)
	return table.concat(lines, "\n"):format(unpack(parameters or {}))
end

local function noop()
	return nil
end

--[[
	The stateUpdater accepts props when they update and computes the
	complete set of props that should be passed to the wrapped component.

	Each connected component will have a stateUpdater created for it.

	stateUpdater is put into the component's state in order for
	getDerivedStateFromProps to be able to access it. It is not mutated.
]]
local function makeStateUpdater(store)
	return function(nextProps, prevState, mappedStoreState)
		-- The caller can optionally provide mappedStoreState if it needed that
		-- value beforehand. Doing so is purely an optimization.
		if mappedStoreState == nil then
			mappedStoreState = prevState.mapStateToProps(store:getState(), nextProps)
		end

		local propsForChild = join(nextProps, mappedStoreState, prevState.mappedStoreDispatch)

		return {
			mappedStoreState = mappedStoreState,
			propsForChild = propsForChild,
		}
	end
end

--[[
	mapStateToProps:
		(storeState, props) -> partialProps
		OR
		() -> (storeState, props) -> partialProps
	mapDispatchToProps: (dispatch) -> partialProps
]]
local function connect(mapStateToPropsOrThunk, mapDispatchToProps)
	local connectTrace = debug.traceback()

	if mapStateToPropsOrThunk ~= nil then
		assert(typeof(mapStateToPropsOrThunk) == "function", "mapStateToProps must be a function or nil!")
	else
		mapStateToPropsOrThunk = noop
	end

	local mapDispatchType = typeof(mapDispatchToProps)
	if mapDispatchToProps ~= nil then
		assert(
			mapDispatchType == "function" or mapDispatchType == "table",
			"mapDispatchToProps must be a function, table, or nil!"
		)
	else
		mapDispatchToProps = noop
	end

	return function(innerComponent)
		if innerComponent == nil then
			local message = formatMessage({
				"connect returns a function that must be passed a component.",
				"Check the connection at:",
				"%s",
			}, {
				connectTrace,
			})

			error(message, 2)
		end

		local componentName = ("RoduxConnection(%s)"):format(tostring(innerComponent))

		local Connection = Roact.Component:extend(componentName)

		function Connection.getDerivedStateFromProps(nextProps, prevState)
			if prevState.stateUpdater ~= nil then
				return prevState.stateUpdater(nextProps.innerProps, prevState)
			end
		end

		function Connection:init(props)
			self.store = props.store

			if self.store == nil then
				local message = formatMessage({
					"Cannot initialize Roact-Rodux connection without being a descendent of StoreProvider!",
					"Tried to wrap component %q",
					"Make sure there is a StoreProvider above this component in the tree.",
				}, {
					tostring(innerComponent),
				})

				error(message)
			end

			local storeState = self.store:getState()

			local mapStateToProps = mapStateToPropsOrThunk
			local mappedStoreState = mapStateToProps(storeState, self.props.innerProps)

			-- mapStateToPropsOrThunk can return a function instead of a state
			-- value. In this variant, we keep that value as mapStateToProps
			-- instead of the original mapStateToProps. This matches react-redux
			-- and enables connectors to keep instance-level state.
			if typeof(mappedStoreState) == "function" then
				mapStateToProps = mappedStoreState
				mappedStoreState = mapStateToProps(storeState, self.props.innerProps)
			end

			if mappedStoreState ~= nil and typeof(mappedStoreState) ~= "table" then
				local message = formatMessage({
					"mapStateToProps must either return a table, or return another function that returns a table.",
					"Instead, it returned %q, which is of type %s.",
				}, {
					tostring(mappedStoreState),
					typeof(mappedStoreState),
				})

				error(message)
			end

			local function dispatch(...)
				return self.store:dispatch(...)
			end

			local mappedStoreDispatch
			if mapDispatchType == "table" then
				mappedStoreDispatch = {}

				for key, actionCreator in pairs(mapDispatchToProps) do
					assert(typeof(actionCreator) == "function", "mapDispatchToProps must contain function values")

					mappedStoreDispatch[key] = function(...)
						dispatch(actionCreator(...))
					end
				end
			elseif mapDispatchType == "function" then
				mappedStoreDispatch = mapDispatchToProps(dispatch)
			end

			local stateUpdater = makeStateUpdater(self.store)

			self.state = {
				-- Combines props, mappedStoreDispatch, and the result of
				-- mapStateToProps into propsForChild. Stored in state so that
				-- getDerivedStateFromProps can access it.
				stateUpdater = stateUpdater,

				-- Used by the store changed connection and stateUpdater to
				-- construct propsForChild.
				mapStateToProps = mapStateToProps,

				-- Used by stateUpdater to construct propsForChild.
				mappedStoreDispatch = mappedStoreDispatch,

				-- Passed directly into the component that Connection is
				-- wrapping.
				propsForChild = nil,
			}

			local extraState = stateUpdater(self.props.innerProps, self.state, mappedStoreState)

			for key, value in pairs(extraState) do
				self.state[key] = value
			end
		end

		function Connection:didMount()
			local updateStateWithStore = function(storeState)
				self:setState(function(prevState, props)
					local mappedStoreState = prevState.mapStateToProps(storeState, props.innerProps)

					-- We run this check here so that we only check shallow
					-- equality with the result of mapStateToProps, and not the
					-- other props that could be passed through the connector.
					if shallowEqual(mappedStoreState, prevState.mappedStoreState) then
						return nil
					end

					return prevState.stateUpdater(props.innerProps, prevState, mappedStoreState)
				end)
			end

			-- Update store state on mount to catch missed state updates between
			-- init and mount. State could be stale otherwise.
			updateStateWithStore(self.store:getState())

			-- Connect state updater to the Rodux store
			self.storeChangedConnection = self.store.changed:connect(updateStateWithStore)
		end

		function Connection:willUnmount()
			if self.storeChangedConnection then
				self.storeChangedConnection:disconnect()
				self.storeChangedConnection = nil
			end
		end

		function Connection:render()
			return Roact.createElement(innerComponent, self.state.propsForChild)
		end

		local ConnectedComponent = Roact.Component:extend(componentName)

		function ConnectedComponent:render()
			return Roact.createElement(StoreContext.Consumer, {
				render = function(store)
					return Roact.createElement(Connection, {
						innerProps = self.props,
						store = store,
					})
				end,
			})
		end

		return ConnectedComponent
	end
end

return connect
