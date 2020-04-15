--[[
	Reducer that combines the Settings and Status reducers.
]]

local FFlagStudioMoveMorpherEditorInsideGameSettings = game:GetFastFlag("StudioMoveMorpherEditorInsideGameSettings")

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Rodux)

local Settings = require(Plugin.Src.Reducers.Settings)
local Status = require(Plugin.Src.Reducers.Status)
local Thumbnails = require(Plugin.Src.Reducers.Thumbnails)
local CollaboratorSearch = require(Plugin.Src.Reducers.CollaboratorSearch)
local DevSubModeration = require(Plugin.Src.Reducers.DevSubModeration)
local AutoTranslationMetaData = require(Plugin.Src.Reducers.AutoTranslationMetaData)

local ReducerMorpher = (not FFlagStudioMoveMorpherEditorInsideGameSettings) and require(Plugin.MorpherEditor.Code.Reducers.ReducerRootExternal) or nil
local MorpherEditorRoot = require(Plugin.Src.Reducers.MorpherEditorRoot)

local FFlagStudioLocalizationInGameSettingsEnabled = game:GetFastFlag("StudioLocalizationInGameSettingsEnabled")

return Rodux.combineReducers({
	Settings = Settings,
	Status = Status,
	StateMorpher = (not FFlagStudioMoveMorpherEditorInsideGameSettings) and ReducerMorpher or nil,
	MorpherEditorRoot = FFlagStudioMoveMorpherEditorInsideGameSettings and MorpherEditorRoot or nil,
	Thumbnails = Thumbnails,
	CollaboratorSearch = CollaboratorSearch,
	DevSubModeration = settings():GetFFlag("DeveloperSubscriptionsEnabled") and DevSubModeration or nil,
	AutoTranslationMetaData = FFlagStudioLocalizationInGameSettingsEnabled and AutoTranslationMetaData or nil,
})