--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)

local Reducers = script.Parent
local EmotesMenu = Reducers.Parent

local Actions = EmotesMenu.Actions

local EmotesChanged = require(Actions.EmotesChanged)
local EquippedEmotesChanged = require(Actions.EquippedEmotesChanged)
local NumberEmotesLoadedChanged = require(Actions.NumberEmotesLoadedChanged)

local default = {
	emotesInfo = {},
	equippedEmotes = {},

	numberEmotesLoaded = -1,
	currentEmotes = {},
}

local function createCurrentEmotes(emotesInfoTable, equippedEmotesTable)
	local currentEmotes = {}

	for _, emoteInfo in ipairs(equippedEmotesTable) do
		local slot = emoteInfo.Slot
		local emoteName = emoteInfo.Name

		if slot and emoteName then
			if emotesInfoTable[emoteName] then
				currentEmotes[slot] = emoteName
			end
		end
	end

	return currentEmotes
end

return Rodux.createReducer(default, {
	[EmotesChanged.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			emotesInfo = action.emotes,
			currentEmotes = createCurrentEmotes(action.emotes, state.equippedEmotes),
		})
	end,

	[EquippedEmotesChanged.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			equippedEmotes = action.equippedEmotes,
			currentEmotes = createCurrentEmotes(state.emotesInfo, action.equippedEmotes),
		})
	end,

	[NumberEmotesLoadedChanged.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			numberEmotesLoaded = action.numberEmotesLoaded,
		})
	end,
})
