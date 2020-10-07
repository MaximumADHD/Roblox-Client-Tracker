local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local Reducer = script.Parent
local AvatarEditorPrompts = Reducer.Parent

local ScreenSizeUpdated = require(AvatarEditorPrompts.Actions.ScreenSizeUpdated)

local ScreenSize = Rodux.createReducer(Vector2.new(0, 0), {
	[ScreenSizeUpdated.name] = function(state, action)
		return action.screenSize
	end,
})

return ScreenSize
