local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local CrossExperience = require(CorePackages.Workspace.Packages.CrossExperience)
local createPersistenceMiddleware = CrossExperience.Middlewares.createPersistenceMiddleware

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar
local GetFFlagEnableCrossExpVoice = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoice

local TopBar = script.Parent

local FFlagTopBarDeprecateCoreGuiRodux = require(TopBar.Flags.FFlagTopBarDeprecateCoreGuiRodux)
local FFlagTopBarDeprecateChatRodux = require(TopBar.Flags.FFlagTopBarDeprecateChatRodux)

local DisplayOptions = require(script.DisplayOptions)
local CoreGuiEnabled = require(script.CoreGuiEnabled)
local Health = require(script.Health)
local MoreMenu = require(script.MoreMenu)
local Chat = require(script.Chat)
local Respawn = require(script.Respawn)
local GameInfo = require(script.GameInfo)

local reducers = {
	displayOptions = DisplayOptions,
	coreGuiEnabled = if FFlagTopBarDeprecateCoreGuiRodux then nil else CoreGuiEnabled,
	health = if FFlagTopBarSignalizeHealthBar then nil else Health,
	moreMenu = MoreMenu,
	chat = if FFlagTopBarDeprecateChatRodux then nil else Chat,
	respawn = Respawn,
	gameInfo = GameInfo,
}

if GetFFlagEnableCrossExpVoice() then
	local PersistenceMiddleware = createPersistenceMiddleware({
		storeKey = CrossExperience.Constants.STORAGE_CEV_STORE_KEY,
	})
	local cevInitialState = nil
	local initialState = PersistenceMiddleware.restore()
	if initialState and initialState.Squad and initialState.Squad.CrossExperienceVoice then
		cevInitialState = initialState.Squad.CrossExperienceVoice
	end
	reducers.Squad = Rodux.combineReducers({
		CrossExperienceVoice = CrossExperienceVoice.installReducer(cevInitialState),
	})
end

local Reducer = Rodux.combineReducers(reducers)

return Reducer
