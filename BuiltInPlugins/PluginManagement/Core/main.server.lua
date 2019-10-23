local FFlagStudioEnablePluginManagementPlugin = settings():GetFFlag("StudioEnablePluginManagementPlugin")
if not FFlagStudioEnablePluginManagementPlugin then
	return
end

if not plugin then
	return
end

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Libs.Roact)
local Rodux = require(Plugin.Libs.Rodux)
local RootReducer = require(Plugin.Core.Reducers.RootReducer)
local App = require(Plugin.Core.App)

local handle

local function main()
	local store = Rodux.Store.new(RootReducer, nil, {
		Rodux.thunkMiddleware
	})

	local function onPluginWillDestroy()
		if handle then
			Roact.unmount(handle)
		end
	end

	local ribbonComponent = Roact.createElement(App, {
		plugin = plugin,
		store = store,
		onPluginWillDestroy = onPluginWillDestroy,
	})

	handle = Roact.mount(ribbonComponent)
end

main()