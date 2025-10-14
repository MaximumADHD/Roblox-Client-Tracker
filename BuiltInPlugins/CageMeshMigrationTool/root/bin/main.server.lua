local StudioService = game:GetService("StudioService")

local root = script:FindFirstAncestor("root")

require(root.bin.defineLuaFlags)

-- early out if flag isn't enabled
if not StudioService:HasInternalPermission() or not game:GetFastFlag("DebugCageMeshMigrationTool") then
	return
end

local Roact = require(root.Packages.Roact)
local Rodux = require(root.Packages.Rodux)

local Framework = require(root.Packages.Framework)

local ContextServices: any = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Store = ContextServices.Store

local PluginBase = require(root.src.Components.PluginBase)
local PluginWrapper = require(root.src.Components.PluginWrapper)
local RootReducer = require(root.src.Reducers)
local MakeTheme = require(root.src.Resources.MakeTheme)

local store = Rodux.Store.new(RootReducer, nil, { Rodux.thunkMiddleware })

local handle
plugin.Unloading:Connect(function()
	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

handle = Roact.mount(ContextServices.provide({
	Plugin.new(plugin),
	Store.new(store),
	MakeTheme(),
}, {
	PluginWrapper = Roact.createElement(PluginWrapper, {}),
	PluginBase = Roact.createElement(PluginBase, {}),
}))
