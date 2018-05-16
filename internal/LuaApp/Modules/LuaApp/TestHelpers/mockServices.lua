--[[
	Unit testing components tends to require a lot of boilerplate,
	use this to easily hook up RoactServices with all the appropriate pieces.

	Any component that uses analytics, makes networking calls, or has localized children should use this in tests.
]]

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Analytics = require(Modules.Common.Analytics)
local AppReducer = require(Modules.LuaApp.AppReducer)
local Localization = require(Modules.LuaApp.Localization)
local Networking = require(Modules.LuaApp.Http.Networking)
local Roact = require(Modules.Common.Roact)
local RoactAnalytics = require(Modules.LuaApp.Services.RoactAnalytics)
local RoactLocalization = require(Modules.LuaApp.Services.RoactLocalization)
local RoactNetworking = require(Modules.LuaApp.Services.RoactNetworking)
local RoactRodux = require(Modules.Common.RoactRodux)
local RoactServices = require(Modules.LuaApp.RoactServices)
local Rodux = require(Modules.Common.Rodux)

-- mockServices() : provides a test heirarchy for rendering a component that requires services
-- componentMap : (map<string, Roact.Component>) a map of elements to test render
-- extraArgs : (table, optional)
--   includeStoreProvider : (bool) when true, adds a StoreProvider in the heirarchy
--   store : (map<string, table>) a populated table of data from a reducer to include with the StoreProvider
--   extraServices : (map<table, value>) a map of services as keys that will be added to the services prop
local function mockServices(componentMap, extraArgs)
	assert(componentMap, "Expected a map of components, recieved none")

	local includeStoreProvider = false
	local store = Rodux.Store.new(AppReducer)
	local fakeServiceProps = {
		services = {
			[RoactAnalytics] = Analytics.mock(),
			[RoactLocalization] = Localization.mock(),
			[RoactNetworking] = Networking.mock(),
		}
	}

	if extraArgs then
		if extraArgs["includeStoreProvider"] ~= nil then
			includeStoreProvider = extraArgs["includeStoreProvider"]
			assert(type(includeStoreProvider) == "boolean", "Expected includeStoreProvider to be a bool")
		end

		if extraArgs["store"] ~= nil then
			store = extraArgs["store"]
			assert(type(store) == "table", "Expected store to be a table")
		end

		if extraArgs["extraServices"] ~= nil then
			local extraServices = extraArgs["extraServices"]
			assert(type(extraServices) == "table", "Expected extraServices to be a table")
			for service, value in pairs(extraServices) do
				assert(type(service) == "table", "Expected key to be a table")
				fakeServiceProps.services[service] = value
			end
		end
	end


	local root
	if includeStoreProvider then
		root = Roact.createElement(RoactServices.ServiceProvider,
			fakeServiceProps, {
				StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, componentMap),
			})
	else
		root = Roact.createElement(RoactServices.ServiceProvider,
			fakeServiceProps,
			componentMap)
	end

	return root
end


return mockServices
