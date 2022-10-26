local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SetUniverseId = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetUniverseId)
local Url = require(CorePackages.Workspace.Packages.Http).Url

return function(networking, placeId)

	local getIdsFromGameDM = function(roduxStore)
		-- get place id and game id from game dm
		-- ids in game dm are set when a server is availabe to start the place which is usually slower.
		local pid = game.PlaceId
		local uid = game.GameId
		while pid <= 0 or uid <= 0 do
			wait()
			pid = game.PlaceId
			uid = game.GameId
		end
		roduxStore:dispatch(SetUniverseId({
			universeId = uid,
			placeId = pid,
		}))
	end

	return function(store)
		coroutine.wrap(function()
			local pid = placeId
			local uid = game.GameId
			if pid > 0 and uid <= 0 then
				-- if place id exists, but universe id doesn't, get universe id from api endpoint for fast look up
				-- https://apis.roblox.com/universes/v1/places/{placeId}/universe
				local url = string.format("%suniverses/v1/places/%d/universe", Url.APIS_URL, pid)
				networking(url, "GET"):andThen(
					function(result)
						if result and result.responseBody then
							uid = result.responseBody.universeId
							if uid and uid >= 0 then
								store:dispatch(SetUniverseId({
									universeId = uid,
									placeId = pid,
								}))
								return
							end
						end
						-- if anything goes wrong, fallback to game dm id
						getIdsFromGameDM(store)
					end,
					function(err)
						-- if anything goes wrong, fallback to game dm id
						getIdsFromGameDM(store)
					end
				)
			else
				getIdsFromGameDM(store)
			end
		end)()
	end
end
