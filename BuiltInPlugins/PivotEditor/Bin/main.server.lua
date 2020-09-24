if not game:GetEngineFeature("EditPivot") then
	return
end

local Plugin = script.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local EditPivotPlugin = require(Plugin.Src.RoduxComponents.EditPivotPlugin)

local function main()
	local roactHandle = Roact.mount(ContextServices.provide({
		ContextServices.Plugin.new(plugin),
		ContextServices.Mouse.new(plugin:GetMouse()),
		ContextServices.Store.new(Rodux.Store.new(MainReducer, nil, {Rodux.thunkMiddleware})),
		-- TODO: Localization in DEVTOOLS-4105
	}, {
		Plugin = Roact.createElement(EditPivotPlugin),
	}))

	plugin.Unloading:Connect(function()
		Roact.unmount(roactHandle)
	end)
end

main()