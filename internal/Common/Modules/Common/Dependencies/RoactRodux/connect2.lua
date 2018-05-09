local Roact = require(script.Parent.Parent.Roact)
local storeKey = require(script.Parent.storeKey)
local shallowEqual = require(script.Parent.shallowEqual)
local join = require(script.Parent.join)

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
	mapStateToProps: (storeState, props) -> partialProps
	mapDispatchToProps: (dispatch) -> partialProps
]]
local function connect(mapStateToProps, mapDispatchToProps)
	local connectTrace = debug.traceback()

	if mapStateToProps ~= nil then
		assert(typeof(mapStateToProps) == "function", "mapStateToProps must be a function or nil!")
	else
		mapStateToProps = noop
	end

	if mapDispatchToProps ~= nil then
		assert(typeof(mapDispatchToProps) == "function", "mapDispatchToProps must be a function or nil!")
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

			error(message, 0)
		end

		local componentName = ("RoduxConnection(%s)"):format(tostring(innerComponent))

		local outerComponent = Roact.Component:extend(componentName)

		function outerComponent.getDerivedStateFromProps(nextProps, prevState)
			local stateValues = prevState.stateMapper(prevState.storeState, nextProps)
			local combinedValues = join(nextProps, stateValues, prevState.dispatchValues)

			return {
				stateValues = stateValues,
				combinedValues = combinedValues,
			}
		end

		function outerComponent:init()
			self.store = self._context[storeKey]

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

			local stateMapper = mapStateToProps

			local stateValues = mapStateToProps(storeState, self.props)

			-- mapStateToProps can return a function instead of a state value.
			-- In this variant, we keep that value as our 'state mapper' instead
			-- of the original mapStateToProps. This matches react-redux and
			-- enables connectors to keep instance-level state.
			if typeof(stateValues) == "function" then
				stateMapper = stateValues
				stateValues = stateValues(storeState, self.props)
			end

			if typeof(stateValues) ~= "table" then
				local message = formatMessage({
					"mapStateToProps must either return a table, or return another function that returns a table.",
					"Instead, it returned %q, which is of type %s.",
				}, {
					tostring(stateValues),
					typeof(stateValues),
				})

				error(message)
			end

			local dispatchValues = mapDispatchToProps(function(...)
				self.store:dispatch(...)
			end)

			self.state = {
				storeState = storeState,
				stateMapper = stateMapper,
				stateValues = stateValues,
				dispatchValues = dispatchValues,
				combinedValues = join(self.props, stateValues, dispatchValues)
			}
		end

		function outerComponent:updateState(newStoreState)
			self:setState(function(prevState, props)
				local newStateValues = prevState.stateMapper(newStoreState, props)

				-- We don't need to update if the result was the same.
				if shallowEqual(newStateValues, prevState.stateValues) then
					return nil
				end

				local newCombinedState = join(props, newStateValues, prevState.dispatchValues)

				return {
					storeState = newStoreState,
					stateValues = newStateValues,
					combinedState = newCombinedState,
				}
			end)
		end

		function outerComponent:didMount()
			self.eventHandle = self.store.changed:connect(function(storeState)
				self:updateState(storeState)
			end)
		end

		function outerComponent:willUnmount()
			self.eventHandle:disconnect()
		end

		function outerComponent:render()
			return Roact.createElement(innerComponent, self.state.combinedValues)
		end

		return outerComponent
	end
end

return connect