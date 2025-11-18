--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent

local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SetMainPageMoreMenuOpen = require(InGameMenu.Actions.SetMainPageMoreMenuOpen)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetScreenSize = require(InGameMenu.Actions.SetScreenSize)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)
local CancelLeavingGame = require(InGameMenu.Actions.CancelLeavingGame)
local SetControlLayout = require(InGameMenu.Actions.SetControlLayout)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local SetCurrentZone = require(InGameMenu.Actions.SetCurrentZone)
local SetControllerBarHeight = require(InGameMenu.Actions.SetControllerBarHeight)
local DecrementControllerBar = require(InGameMenu.Actions.DecrementControllerBar)
local IncrementControllerBar = require(InGameMenu.Actions.IncrementControllerBar)

local navigationReducer = require(script.navigationReducer)
local respawn = require(script.respawn)
local invites = require(script.invites)
local gameInfo = require(script.gameInfo)
local report = require(script.report)
local friends = require(script.friends)
local displayOptions = require(script.displayOptions)
local nativeClosePrompt = require(script.nativeClosePrompt)
local voiceStateReducer = require(InGameMenu.Parent.VoiceChat.Reducers.voiceState)

local Constants = require(InGameMenu.Resources.Constants)
local Controls = require(InGameMenu.Resources.Controls)

local topLevelReducers = {
	[SetMenuOpen.name] = function(state, action)
		local isMainPageMoreMenuOpen = nil
		if not action.isMenuOpen then
			isMainPageMoreMenuOpen = false
		end

		return Cryo.Dictionary.join(state, {
			isMenuOpen = action.isMenuOpen,
			-- Closing the entire menu also closes moreMenu
			isMainPageMoreMenuOpen = isMainPageMoreMenuOpen,
			currentZone = state.isMenuOpen ~= action.isMenuOpen and 1 or nil,
		})
	end,
	[SetMainPageMoreMenuOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isMainPageMoreMenuOpen = action.isMainPageMoreMenuOpen,
		})
	end,
	[StartLeavingGame.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			leavingGame = true,
		})
	end,
	[CancelLeavingGame.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			leavingGame = false,
		})
	end,
	[SetCurrentPage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			menuPage = action.newPage,
			-- Changing pages closes moreMenu
			isMainPageMoreMenuOpen = false,
			currentZone = action.newPage == Constants.InitalPageKey and 0 or 1,
		})
	end,
	[SetControlLayout.name] = function(state, action)
		local controlLayout = action.controlLayout

		return Cryo.Dictionary.join(state, {
			controlLayout = controlLayout,
		})
	end,
	[SetScreenSize.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			screenSize = action.newScreenSize,
		})
	end,
	[SetRespawning.name] = function(state, action)
		local isMainPageMoreMenuOpen
		if action.respawning then
			isMainPageMoreMenuOpen = false
		else
			isMainPageMoreMenuOpen = state.isMainPageMoreMenuOpen
		end

		return Cryo.Dictionary.join(state, {
			isMainPageMoreMenuOpen = isMainPageMoreMenuOpen,
		})
	end,
	[SetCurrentZone.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentZone = action.zone,
		})
	end,
	[SetControllerBarHeight.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			controllerBarHeight = action.controllerBarHeight,
		})
	end,
	[IncrementControllerBar.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			controllerBarCount = state.controllerBarCount + 1,
		})
	end,
	[DecrementControllerBar.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			controllerBarCount = state.controllerBarCount - 1,
		})
	end,
}

local function reducer(state, action)
	-- TODO: refactor to use combineReducers and have a root reducer provide the initial state
	if state == nil then
		state = {
			controlLayout = Controls.ControlLayouts.KEYBOARD,
			isMenuOpen = false,
			leavingGame = false,
			currentZone = nil,
			menuPage = Constants.defaultPageKey,
			voiceState = nil,
			invites = invites(nil, action),
			respawn = respawn(nil, action),
			gameInfo = gameInfo(nil, action),
			friends = friends(nil, action),
			displayOptions = displayOptions(nil, action),
			screenSize = Vector2.new(0, 0),
			recording = false,
			isMainPageMoreMenuOpen = false,
			nativeClosePrompt = nativeClosePrompt(nil, action),
			controllerBarHeight = 0,
			controllerBarCount = 0,
		}
	end

	local topLevelReducer = topLevelReducers[action.type]
	if topLevelReducer ~= nil then
		state = topLevelReducer(state, action)
	end
	state = navigationReducer(state, action)

	state.respawn = respawn(state.respawn, action)
	state.invites = invites(state.invites, action)
	state.voiceState = voiceStateReducer(state.voiceState, action)
	state.gameInfo = gameInfo(state.gameInfo, action)
	state.report = report(state.report, action)
	state.friends = friends(state.friends, action)
	state.displayOptions = displayOptions(state.displayOptions, action)
	state.nativeClosePrompt = nativeClosePrompt(state.nativeClosePrompt, action)

	return state
end

return reducer
