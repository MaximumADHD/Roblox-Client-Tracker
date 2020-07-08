local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Rodux = require(CorePackages.Rodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isNewGamepadMenuEnabled = require(RobloxGui.Modules.Flags.isNewGamepadMenuEnabled)

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
	respawn = isNewGamepadMenuEnabled() and Respawn or nil,
	gameInfo = isNewGamepadMenuEnabled() and GameInfo or nil,
})

return Reducer
