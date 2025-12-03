local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)

local Reducers = script.Parent
local EmotesMenu = Reducers.Parent

local Actions = EmotesMenu.Actions
local FocusSegment = require(Actions.FocusSegment)
local HideMenu = require(Actions.HideMenu)

local default = {
	focusedSegmentIndex = 0,
}

return Rodux.createReducer(default, {
	[FocusSegment.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			focusedSegmentIndex = action.segmentIndex,
		})
	end,

	-- Reset EmotesWheel state when the menu is hidden
	[HideMenu.name] = function(state, action)
		return Cryo.Dictionary.join(state, default)
	end,
})
