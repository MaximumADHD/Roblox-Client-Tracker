local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local PlayerList = script.Parent.Parent
local Actions = PlayerList.Actions
local AddGameStat = require(Actions.AddGameStat)
local RemoveGameStat = require(Actions.RemoveGameStat)
local SetGameStatText = require(Actions.SetGameStatText)
local SetGameStatAddId = require(Actions.SetGameStatAddId)

local FFlagLeaderstatsWithASideOfClient = require(PlayerList.Flags.FFlagLeaderstatsWithASideOfClient)

local FormatStatString = require(PlayerList.FormatStatString)

local function gameStatsComp(a, b)
	if a.isPrimary ~= b.isPrimary then
		return a.isPrimary
	end
	if a.priority == b.priority then
		if FFlagLeaderstatsWithASideOfClient then
			local aServerAddId, bServerAddId = a.serverAddId, b.serverAddId
			if aServerAddId and bServerAddId then
				return aServerAddId < bServerAddId
			end
		end
		return a.addId < b.addId
	end
	return a.priority > b.priority
end

local gameStatAddIdCounter = 0

local function GameStats(state, action)
	state = state or {}

	if action.type == AddGameStat.name then
		local oldAddId = nil
		local oldServerAddId = nil
		local oldText = FormatStatString(nil)
		local newState = {}
		for _, stat in ipairs(state) do
			if stat.name == action.statName then
				oldAddId = stat.addId
				oldText = stat.text
				if FFlagLeaderstatsWithASideOfClient then
					oldServerAddId = stat.serverAddId
				end
			else
				table.insert(newState, stat)
			end
		end
		gameStatAddIdCounter = gameStatAddIdCounter + 1
		newState = Cryo.List.join(newState, {
			{
				name = action.statName,
				text = oldText,
				addId = oldAddId or gameStatAddIdCounter,
				isPrimary = action.isPrimary,
				priority = action.priority,
				serverAddId = oldServerAddId
			}
		})
		table.sort(newState, gameStatsComp)
		return newState
	elseif action.type == RemoveGameStat.name then
		return Cryo.List.filter(state, function(stat)
			return stat.name ~= action.statName
		end)
	elseif action.type == SetGameStatText.name then
		return Cryo.List.map(state, function(stat)
			return (stat.name == action.statName and
					Cryo.Dictionary.join(stat, {text = action.text}) or stat)
		end)
	elseif FFlagLeaderstatsWithASideOfClient and action.type == SetGameStatAddId.name then
		local newState = Cryo.List.map(state, function(stat)
			return (stat.name == action.statName and
					Cryo.Dictionary.join(stat, {serverAddId = action.serverAddId}) or stat)
		end)
		table.sort(newState, gameStatsComp)
		return newState
	end

	return state
end

return GameStats
