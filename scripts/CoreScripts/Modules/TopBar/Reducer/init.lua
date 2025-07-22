local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local CrossExperience = require(CorePackages.Workspace.Packages.CrossExperience)
local createPersistenceMiddleware = CrossExperience.Middlewares.createPersistenceMiddleware

local TopBar = script.Parent
local FFlagTopBarSignalizeHealthBar = require(TopBar.Flags.FFlagTopBarSignalizeHealthBar)
local GetFFlagEnableCrossExpVoice = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoice

local DisplayOptions = require(script.DisplayOptions)
local CoreGuiEnabled = require(script.CoreGuiEnabled)
local Health = require(script.Health)
local MoreMenu = require(script.MoreMenu)
local Chat = require(script.Chat)
local Respawn = require(script.Respawn)
local GameInfo = require(script.GameInfo)

local reducers = {
	displayOptions = DisplayOptions,
	coreGuiEnabled = CoreGuiEnabled,
	health = if FFlagTopBarSignalizeHealthBar then nil else Health,
	moreMenu = MoreMenu,
	chat = Chat,
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
