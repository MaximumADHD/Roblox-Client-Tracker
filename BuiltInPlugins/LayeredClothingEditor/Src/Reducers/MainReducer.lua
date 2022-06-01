local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Status = require(Plugin.Src.Reducers.Status)
local PreviewStatus = require(Plugin.Src.Reducers.PreviewStatus)
local SelectItem = require(Plugin.Src.Reducers.SelectItem)
local ControlsPanelBlocker = require(Plugin.Src.Reducers.ControlsPanelBlocker)
local PreviewAssets = require(Plugin.Src.Reducers.PreviewAssets)
local Animation = require(Plugin.Src.Reducers.Animation)

local MainReducer = Rodux.combineReducers({
	status = Status,
	previewStatus = PreviewStatus,
	selectItem = SelectItem,
	controlsPanelBlocker = ControlsPanelBlocker,
	previewAssets = PreviewAssets,
	animation = Animation,
})

return MainReducer