local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)
local ContextServices = require(Plugin.Packages.Framework).ContextServices

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

return function(props, rootElement)
	local mockPlugin = props.Plugin or {}
	local mockMouse = props.Mouse or {}
	local store = props.Store or Rodux.Store.new(MainReducer, nil, {Rodux.thunkMiddleware})

	return ContextServices.provide({
		ContextServices.Plugin.new(mockPlugin),
		ContextServices.Mouse.new(mockMouse),
		ContextServices.Store.new(store),
		-- TODO: Localization in DEVTOOLS-4105
	}, rootElement)
end
