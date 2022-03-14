local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local DisplayOptions = require(script.DisplayOptions)
local CoreGuiEnabled = require(script.CoreGuiEnabled)
local Health = require(script.Health)
local MoreMenu = require(script.MoreMenu)
local Chat = require(script.Chat)
local Respawn = require(script.Respawn)
local GameInfo = require(script.GameInfo)

local Reducer = Rodux.combineReducers({
	displayOptions = DisplayOptions,
	coreGuiEnabled = CoreGuiEnabled,
	health = Health,
	moreMenu = MoreMenu,
	chat = Chat,
	respawn = Respawn,
	gameInfo = GameInfo,
})

return Reducer
