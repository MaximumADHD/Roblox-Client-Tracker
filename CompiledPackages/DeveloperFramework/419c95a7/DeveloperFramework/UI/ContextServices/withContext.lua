--[[
	An initial stub for the withContext implementation, which currently just provides a chainable
	alternative that can be made immutable in the future.
	See https://jira.rbx.com/browse/RIDE-4509
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Cryo = require(Framework.Parent.Cryo)
local Roact = require(Framework.Parent.Roact)
local Context = require(Framework.UI.ContextServices.Context)
local Stylizer = require(Framework.UI.ContextServices.Stylizer)

-- All members of a component class, except the ones in this list, get hoisted
-- to the wrapper component. This is to ensure that static members defined on a
-- component class get carried along, which is required by several plugins
local ROACT_INTERNAL_MEMBERS = {
	-- Roact/React
	defaultProps = true,
	getDerivedStateFromProps = true,
	init = true,
	render = true,
	setState = true,
	validateProps = true,

	-- Roact
	didMount = true,
	didUpdate = true,
	shouldUpdate = true,
	willUnmount = true,
	willUpdate = true,

	-- React
	childContextTypes = true,
	componentDidCatch = true,
	componentDidMount = true,
	componentDidUpdate = true,
	componentWillMount = true,
	componentWillReceiveProps = true,
	componentWillUnmount = true,
	componentWillUpdate = true,
	contextType = true,
	contextTypes = true,
	forceUpdate = true,
	getChildContext = true,
	getDerivedStateFromError = true,
	getSnapshotBeforeUpdate = true,
	propTypes = true,
	shouldComponentUpdate = true,

	-- DEPRECATED_withContext
	__initWithContext = true,
	__onRenderWithContext = true,
	__renderWithContext = true,
}

type ContextClasses = { [string]: any }

local missingRenderMessage = [[
The Component %q is missing the `render` method.
`withContext` must be called after `render` is defined!]]

local function DEPRECATED_withContext(contextClasses: ContextClasses)
	assert(typeof(contextClasses) == "table", "withContext must be passed a table of context items")

	return function(component)
		assert(component.render ~= Roact.Component.render, string.format(missingRenderMessage, tostring(component)))
		if not component.__initWithContext then
			component.__renderWithContext = component.render
			component.__initWithContext = component.init
		end
		function component:init()
			if self.__initWithContext then
				self:__initWithContext(self.props)
			end
			self.__onRenderWithContext = function(contextItems)
				local props = self.props
				for key, contextClass in pairs(contextClasses) do
					local item = contextItems[contextClass.Key]
					if not item then
						error(
							("Component %s cannot consume missing context item %s key"):format(
								component.__componentName,
								key
							)
						)
					end
					if item.getConsumerItem then
						props[key] = item:getConsumerItem(self)
					else
						props[key] = item
					end
				end
				return self:__renderWithContext()
			end
		end
		function component:render()
			return Roact.createElement(Context.Consumer, {
				render = self.__onRenderWithContext,
			})
		end
		return component
	end
end

local function withContext(contextClasses: ContextClasses)
	return function(WrappedComponent: any)
		local componentName = tostring(WrappedComponent)

		local ComponentWithContext = Roact.PureComponent:extend(`withContext({componentName})`)

		-- There are cases where a component has constants and other static
		-- members applied to it. This block ensures they come along for the
		-- ride
		for k, v in WrappedComponent do
			if not ComponentWithContext[k] and not ROACT_INTERNAL_MEMBERS[k] then
				ComponentWithContext[k] = v
			end
		end

		function ComponentWithContext:render()
			return Roact.createElement(Context.Consumer, {
				render = function(contextItems)
					local context = {}

					for key, contextClass in contextClasses do
						local item = contextItems[contextClass.Key]
						if not item then
							error(`Component {componentName} cannot consume missing context item {key} key`)
						end

						if item.getConsumerItem then
							context[key] = item:getConsumerItem()
						else
							context[key] = item
						end
					end

					local props = Cryo.Dictionary.join(self.props, context)

					return Roact.createElement(WrappedComponent, props)
				end,
			})
		end

		return ComponentWithContext
	end
end

local function getStylizerKey(contextClasses: ContextClasses)
	for k, v in contextClasses do
		if v.Key == Stylizer.Key then
			return k
		end
	end
	return nil
end

local function withContextCompat(contextClasses: ContextClasses)
	local stylizerKey = getStylizerKey(contextClasses)

	if stylizerKey then
		contextClasses = Cryo.Dictionary.join(contextClasses, {
			[stylizerKey] = Cryo.None,
		})

		return function(WrappedComponent: any)
			WrappedComponent = DEPRECATED_withContext({
				[stylizerKey] = Stylizer,
			})(WrappedComponent)

			if not Cryo.isEmpty(contextClasses) then
				WrappedComponent = withContext(contextClasses)(WrappedComponent)
			end

			return WrappedComponent
		end
	else
		return withContext(contextClasses)
	end
end

return withContextCompat
