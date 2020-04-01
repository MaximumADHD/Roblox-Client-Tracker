local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local DisplayOptions = require(script.DisplayOptions)
local CoreGuiEnabled = require(script.CoreGuiEnabled)
local Health = require(script.Health)
local MoreMenu = require(script.MoreMenu)
local Chat = require(script.Chat)

local Reducer = Rodux.combineReducers({
	displayOptions = DisplayOptions,
	coreGuiEnabled = CoreGuiEnabled,
	health = Health,
	moreMenu = MoreMenu,
	chat = Chat,
})

return Reducer
