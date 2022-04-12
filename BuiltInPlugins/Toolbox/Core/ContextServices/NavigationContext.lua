--[[
	The RoactNavigation context item (v0.2.8) does not expose the full breadcrumb routes, even though it stores all of it.

	This context item observes the navigation stack and stores the current breadcrumb trail, and unifies the accessor so it is accessible with DevFramework's withContext.

	Also, as a note about the odd usage of this ContextItem...
	Since RoactNavigation renders all of its routes as siblings, it's not possible to use a single unified `navigation` object.
	As a work around, any time a view is exposed using RoactNavigation.withNavigation, update the singleton reference.
]]
local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = Framework.ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local NavigationContext = ContextItem:extend("NavigationContext")

function NavigationContext.new(defaultRouteName: string)
	local noOptNavigation = {
		push = function() end,
		pop = function() end,
		popToTop = function() end,
	}

	local self = {
		navigation = noOptNavigation, -- empty implementation until set by RoactNavigation.withNavigation
		observedNavStack = { defaultRouteName },
		localizedBreadcrumbs = { defaultRouteName },
		rootRoute = defaultRouteName,
	}

	setmetatable(self, NavigationContext)
	return self
end

function NavigationContext:updateNavigation(navigation)
	self.navigation = navigation
end

function NavigationContext:get()
	return self
end

function NavigationContext:push(routeName, pathName, viewProps)
	table.insert(self.observedNavStack, pathName)
	self.navigation.push(routeName, viewProps)
end

function NavigationContext:pop()
	table.remove(self.observedNavStack, #self.observedNavStack)
	if #self.observedNavStack <= 0 then
		self.observedNavStack = { self.rootRoute }
	end
	self.navigation.pop()
end

function NavigationContext:popToTop()
	self.observedNavStack = { self.rootRoute }
	self.navigation.popToTop()
end

function NavigationContext:getBreadcrumbRoute()
	return self.observedNavStack
end

function NavigationContext:getCurrentPath()
	return self.observedNavStack[#self.observedNavStack]
end

if not FFlagDevFrameworkUseCreateContext then
	function NavigationContext:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, { root })
	end
end

return NavigationContext
