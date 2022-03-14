local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddPlayer = require(Actions.AddPlayer)
local RemovePlayer = require(Actions.RemovePlayer)
local SetPlayerLeaderstat = require(Actions.SetPlayerLeaderstat)

local function createKey(player: Player, primaryStat, stats)
	local stat
	if primaryStat ~= nil and stats ~= nil and stats[player.UserId] ~= nil then
		stat = stats[player.UserId][primaryStat]
	end

	return {
		name = player.DisplayName:upper(),
		stat = stat and tonumber(stat) or stat,
	}
end

local function PlayerKeys(state, action, store)
	local primaryStat = store.gameStats[1] and store.gameStats[1].name or nil

	if not state or primaryStat ~= state.primaryStat then
		-- Rebuild all
		local keys = {}
		for _, player in pairs(store.players) do
			keys[player] = createKey(player, primaryStat, store.playerStats)
		end

		return {
			primaryStat = primaryStat,
			keys = keys,
		}
	end

	if action.type == AddPlayer.name or action.type == SetPlayerLeaderstat.name then
		return {
			primaryStat = primaryStat,
			keys = Cryo.Dictionary.join(state.keys, {
				[action.player] = createKey(action.player, primaryStat, store.playerStats)
			})
		}
	end

	if action.type == RemovePlayer.name then
		return {
			primaryStat = primaryStat,
			keys = Cryo.Dictionary.join(state.keys, {
				[action.player] = Cryo.None,
			})
		}
	end

	return state
end

return PlayerKeys
