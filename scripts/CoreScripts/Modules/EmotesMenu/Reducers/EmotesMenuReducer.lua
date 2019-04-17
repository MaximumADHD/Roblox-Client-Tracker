local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local Reducers = script.Parent

local DisplayOptions = require(Reducers.DisplayOptions)
local EmotesPage = require(Reducers.EmotesPage)
local EmotesWheel = require(Reducers.EmotesWheel)
local Layout = require(Reducers.Layout)
local Locale = require(Reducers.Locale)

local EmotesMenuReducer = Rodux.combineReducers({
    displayOptions = DisplayOptions,
    emotesPage = EmotesPage,
    emotesWheel = EmotesWheel,
    layout = Layout,
    locale = Locale,
})

return EmotesMenuReducer