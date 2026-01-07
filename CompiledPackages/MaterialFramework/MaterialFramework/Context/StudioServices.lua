local main = script.Parent.Parent
local Packages = main.Parent

local Framework = require(Packages.Framework)
local ContextItem = (Framework.ContextServices :: any).ContextItem
local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local StudioServices = ContextItem:extend("StudioServices")

function StudioServices.new(mock: boolean?)
	local self = setmetatable({
		_serviceWrappers = {},
	}, StudioServices)

	self.createServiceIfNeeded = function(serviceName: string)
		if not self._serviceWrappers[serviceName] then
			local wrapper = ServiceWrapper.new(serviceName, mock)
			self._serviceWrappers[serviceName] = wrapper
		end
		return self._serviceWrappers[serviceName]
	end

	return self
end

function StudioServices.mock()
	return StudioServices.new(true)
end

function StudioServices:destroy()
	for _, wrapper in self._serviceWrappers do
		wrapper:destroy()
	end
	self._serviceWrappers = {}
end

function StudioServices:getService(serviceName: string)
	local wrapper = self.createServiceIfNeeded(serviceName)
	return wrapper:asService()
end

function StudioServices:getServiceInstance(serviceName: string)
	local wrapper = self.createServiceIfNeeded(serviceName)
	return wrapper:asInstance()
end

return StudioServices
