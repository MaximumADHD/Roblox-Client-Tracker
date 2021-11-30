local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local join = Cryo.Dictionary.join

local Types = require(Plugin.Src.Types)
local Enums = require(Plugin.Src.Util.Enums)

local SetPluginState = require(Plugin.Src.Actions.Common.SetPluginState)

type CommonStore = {
	pluginState: Types.PluginState,
}

local defaultCommonStore: CommonStore = {
	pluginState = Enums.PluginState.Default,
}

return Rodux.createReducer(defaultCommonStore, {
	SetPluginState = function(state: CommonStore, action: SetPluginState.Props): CommonStore
		return join(state, {
			pluginState = action.state,
		})
	end,
})