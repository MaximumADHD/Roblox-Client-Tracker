--[[
	An initial stub for the withContext implementation, which currently just provides a chainable
	alternative that can be made immutable in the future.
	See https://jira.rbx.com/browse/RIDE-4509
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local mapToProps = require(Framework.ContextServices.mapToProps)
local Context = require(Framework.ContextServices.Context)
local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local missingRenderMessage = [[
The Component %q is missing the `render` method.
`withContext` must be called after `render` is defined!]]

local function withContext(contextClasses)
	if not FFlagDevFrameworkUseCreateContext then
		return function(component)
			mapToProps(component, contextClasses, true)
			return component
		end
	end

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
						error(("Component %s cannot consume missing context item %s key"):format(component.__componentName, key))
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
				render = self.__onRenderWithContext
			})
		end
		return component
	end
end

return withContext
