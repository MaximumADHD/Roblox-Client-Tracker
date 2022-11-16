--!nonstrict
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent
local SocialDependencies = require(InGameMenu.SocialDependencies)

local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SetMainPageMoreMenuOpen = require(InGameMenu.Actions.SetMainPageMoreMenuOpen)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetScreenSize = require(InGameMenu.Actions.SetScreenSize)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)
local CancelLeavingGame = require(InGameMenu.Actions.CancelLeavingGame)
local SetControlLayout = require(InGameMenu.Actions.SetControlLayout)
local SetVideoRecording = require(InGameMenu.Actions.SetVideoRecording)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local SetServerType = require(InGameMenu.Actions.SetServerType)
local SetCurrentZone = require(InGameMenu.Actions.SetCurrentZone)
local SetControllerBarHeight = require(InGameMenu.Actions.SetControllerBarHeight)
local DecrementControllerBar = require(InGameMenu.Actions.DecrementControllerBar)
local IncrementControllerBar = require(InGameMenu.Actions.IncrementControllerBar)

local educationalTooltip = require(script.educationalTooltip)
local navigationReducer = require(script.navigationReducer)
local languageSelectionReducer = require(script.languageSelectionReducer)
local respawn = require(script.respawn)
local invites = require(script.invites)
local gameInfo = require(script.gameInfo)
local friends = require(script.friends)
local inviteFriends = require(script.inviteFriends)
local quickActions = require(script.quickActions)
local displayOptions = require(script.displayOptions)
local nativeClosePrompt = require(script.nativeClosePrompt)
local inspectAndBuy = require(script.inspectAndBuy)
local FetchingStatus = require(CorePackages.Workspace.Packages.Http).Reducers.FetchingStatus
local RoduxShareLinks = SocialDependencies.RoduxShareLinks
local RoduxNetworking = SocialDependencies.RoduxNetworking
local ShareLinks = RoduxShareLinks.installReducer()
local NetworkStatus = RoduxNetworking.installReducer()

local FFlagRecordRecording = require(InGameMenu.Flags.FFlagRecordRecording)
local GetFFlagUseIGMControllerBar = require(InGameMenu.Flags.GetFFlagUseIGMControllerBar)
local GetFFlagShareInviteLinkContextMenuV3Enabled = require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)
local InspectAndBuyV2IXPTest = require(InGameMenu.Flags.InspectAndBuyV2IXPTest)

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
			-- don't push LeaveGamePrompt as previousPage
			previousPage = (state.menuPage == Constants.LeaveGamePromptPageKey or action.newPage == state.menuPage)
					and state.previousPage
				or state.menuPage,
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
	[SetVideoRecording.name] = FFlagRecordRecording and function(state, action)
		return Cryo.Dictionary.join(state, {
			recording = action.recording,
		})
	end or nil,
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
	[SetControllerBarHeight.name] = GetFFlagUseIGMControllerBar() and function(state, action)
		return Cryo.Dictionary.join(state, {
			controllerBarHeight = action.controllerBarHeight,
		})
	end or nil,
	[IncrementControllerBar.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			controllerBarCount = state.controllerBarCount + 1,
		})
	end or nil,
	[DecrementControllerBar.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			controllerBarCount = state.controllerBarCount - 1,
		})
	end or nil,
	[SetServerType.name] = if GetFFlagShareInviteLinkContextMenuV3Enabled() then function(state, action)
		return Cryo.Dictionary.join(state, {
			serverType = action.serverType
		})
	end else nil,
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
			previousPage = nil,
			invites = invites(nil, action),
			respawn = respawn(nil, action),
			gameInfo = gameInfo(nil, action),
			languageSelectionReducer = languageSelectionReducer(nil, action),
			friends = friends(nil, action),
			inviteFriends = inviteFriends(nil, action),
			quickActions = quickActions(nil, action),
			displayOptions = displayOptions(nil, action),
			inspectAndBuy = InspectAndBuyV2IXPTest.isEnabled() and inspectAndBuy(nil, action) or nil,
			screenSize = Vector2.new(0, 0),
			recording = false,
			isMainPageMoreMenuOpen = false,
			nativeClosePrompt = nativeClosePrompt(nil, action),
			controllerBarHeight = GetFFlagUseIGMControllerBar() and 0 or nil,
			controllerBarCount = 0,
			FetchingStatus = {},
			NetworkStatus = {},
			shareLinks = nil,
			serverType = nil,
			educationalTooltip = educationalTooltip(nil, action)
		}
	end

	local topLevelReducer = topLevelReducers[action.type]
	if topLevelReducer ~= nil then
		state = topLevelReducer(state, action)
	end
	state = navigationReducer(state, action)

	state.languageSelectionReducer = languageSelectionReducer(state.languageSelectionReducer, action)
	state.respawn = respawn(state.respawn, action)
	state.invites = invites(state.invites, action)
	state.gameInfo = gameInfo(state.gameInfo, action)
	state.friends = friends(state.friends, action)
	state.inviteFriends = inviteFriends(state.inviteFriends, action)
	state.quickActions = quickActions(state.quickActions, action)
	state.displayOptions = displayOptions(state.displayOptions, action)
	state.inspectAndBuy = InspectAndBuyV2IXPTest.isEnabled() and inspectAndBuy(state.inspectAndBuy, action) or nil
	state.nativeClosePrompt = nativeClosePrompt(state.nativeClosePrompt, action)
	state.shareLinks = ShareLinks(state.shareLinks, action)
	state.NetworkStatus = NetworkStatus(state.NetworkStatus, action)
	state.FetchingStatus = FetchingStatus(state.FetchingStatus, action)
	state.educationalTooltip = educationalTooltip(state.educationalTooltip, action)

	return state
end

return reducer
