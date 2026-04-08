local Constants = require(script.Constants)
local CreationFlowContext = require(script.Context.CreationFlowContext)
local CreationFlowContextProvider = require(script.Context.CreationFlowContextProvider)
local CreationFlowScreen = require(script.Components.CreationFlowScreen)
local EventNames = require(script.Analytics.EventNames)
local installReducer = require(script.Reducers.installReducer)

local CreationFlowStateUpdated = require(script.Actions.CreationFlowStateUpdated)
local SelectedCaptureUpdated = require(script.Actions.SelectedCaptureUpdated)

local CreationFlowLocalization = require(script.Enums.CreationFlowLocalization)
export type CreationFlowLocalization = CreationFlowLocalization.CreationFlowLocalization

local CreationFlowState = require(script.Enums.CreationFlowState)
export type CreationFlowState = CreationFlowState.CreationFlowState

local Packages = script.Parent
local MomentsCommon = require(Packages.MomentsCommon)

-- reexport MomentsCommon types
export type MomentMetadata = MomentsCommon.MomentMetadata
export type RecommendationRegistrationInfo = MomentsCommon.RecommendationRegistrationInfo

return {
	-- Analytics
	EventNames = EventNames,

	-- Rodux
	Actions = {
		CreationFlowStateUpdated = CreationFlowStateUpdated,
		SelectedCaptureUpdated = SelectedCaptureUpdated,
	},

	Constants = {
		RoduxKey = Constants.RoduxKey,
	},
	installReducer = installReducer,

	-- Context
	CreationFlowContext = CreationFlowContext,
	CreationFlowContextProvider = CreationFlowContextProvider,

	-- Components
	CreationFlowScreen = CreationFlowScreen,

	-- Enums
	Enums = {
		CreationFlowState = CreationFlowState,
	},

	-- Localization
	CreationFlowLocalization = CreationFlowLocalization,

	["jest.config"] = script["jest.config"],
}
