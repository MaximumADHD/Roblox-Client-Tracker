--[[
	RoactServices is designed to provide a way to access global singletons.

	RoactServices operates by stashing objects into the ServiceProvider's _context, and retreiving them later.
	The services are later exposed as props in wrapped component.

	_context cascades through all children components, so ServiceProvider is expected to be
	initialized as one of the first components in the hierarchy.
]]

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Immutable = require(Modules.Common.Immutable)
local Roact = require(Modules.Common.Roact)
local Symbol = require(Modules.Common.Symbol)


local ServiceProvider = Roact.PureComponent:extend("ServiceProvider")
local RoactServices = {
	ServiceProvider = ServiceProvider,
}

-- props.services : (map<service, serviceValue>)
function ServiceProvider:init(props)
	if props and props.services then
		-- STASH ALL THE STUFF INTO THE CONTEXT
		assert(props.services, "Expected some services to connect, found none")
		assert(type(props.services) == "table", "Expected the provided services to be a map")
		for service, implementation in pairs(props.services) do
			-- iterating over all of the props also exposes the Children, so only run setters on services
			if type(service) == "table" then
				service.set(self._context, implementation)
			end
		end
end
end

function ServiceProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end


-- createService : given a name for a service, return an object that knows where its stuff is stored
-- serviceName : (string)
function RoactServices.createService(serviceName)
	assert(type(serviceName) == "string", "Expected serviceName to be a string")
	local sharedSymbol = Symbol.named(serviceName)

	local service = {}

	function service.get(context)
		return context[sharedSymbol]
	end

	function service.set(context, value)
		context[sharedSymbol] = value
	end

	return service
end


-- connectServices : given an map of services, returns a component with the provided keys as props
-- services - (map<string, service>)
function RoactServices.connect(serviceMap)
	assert(serviceMap ~= nil, "Expected some services to connect, found none.")
	return function(component)
		assert(component ~= nil, "Expected a component to connect, found none.")

		local serviceProps = {}
		local name = ("Services(%s)"):format(tostring(component))

		local Connection = Roact.PureComponent:extend(name)

		function Connection:init(props)
			for propName, service in pairs(serviceMap) do
				-- pull the service out of stored context value
				assert(type(propName) == "string", string.format("serviceMap must be indexed by strings, not %s", type(propName)))
				assert(type(service) == "table", "serviceMap must have a service created by createService()")
				assert(type(service.get) == "function", "serviceMap must have a service created by createService()")
				assert(props[propName] == nil, "Naming conflict with prop : " .. propName)
				serviceProps[propName] = service.get(self._context)
			end
		end

		function Connection:render()
			local props = Immutable.JoinDictionaries(self.props, serviceProps)
			return Roact.createElement(component, props)
		end

		return Connection
	end
end

return RoactServices
