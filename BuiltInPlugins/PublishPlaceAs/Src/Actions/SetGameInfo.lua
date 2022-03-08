local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Resources.Constants)

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

local FFlagDebugFixPublishAsWhenQueryFails = game:GetFastFlag("DebugFixPublishAsWhenQueryFails")

return Action(script.Name, function(gameInfoArg)
	AssertType.assertNullableType(gameInfoArg, "table", "SetGameInfo arg")
	local gameInfo = gameInfoArg or {}

	local games = gameInfo.games
	local nextPageCursor = gameInfo.nextPageCursor
	local previousPageCursor = gameInfo.previousPageCursor

	AssertType.assertType(games, "table", "SetGameInfo.games")
	AssertType.assertNullableType(nextPageCursor, "string", "SetGameInfo.nextPageCursor")
	AssertType.assertNullableType(previousPageCursor, "string", "SetGameInfo.previousPageCursor")

	if FFlagDebugFixPublishAsWhenQueryFails then
		return {
			gameInfo = {
				games = games,
				queryState = Constants.QUERY_STATE.QUERY_STATE_SUCCESS,
				nextPageCursor = nextPageCursor or Cryo.None,
				previousPageCursor = previousPageCursor or Cryo.None,
			}
		}
	else
		return {
			gameInfo = {
				games = games,
				nextPageCursor = nextPageCursor or Cryo.None,
				previousPageCursor = previousPageCursor or Cryo.None,
			}
		}
	end
end)
