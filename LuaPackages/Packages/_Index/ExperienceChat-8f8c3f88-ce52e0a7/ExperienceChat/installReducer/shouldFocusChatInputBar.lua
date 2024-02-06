local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local Logger = require(ExperienceChat.Logger):new("ExpChat/Reducers/" .. script.Name)

local Actions = ExperienceChat.Actions
local AvatarContextMenuWhisperSelected = require(Actions.AvatarContextMenuWhisperSelected)

type State = number

return Rodux.createReducer(1, {
	[AvatarContextMenuWhisperSelected.name] = function(state: State, _)
		-- Negate state so we can find difference in ChatInputBar didUpdate lifecycle method.
		Logger:trace("AvatarContextMenuWhisperSelected dispatched")
		return state * -1
	end :: any,
})
