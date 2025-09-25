--!nonstrict
-- Remove with FFlagTopBarDeprecateGameInfoRodux
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Promise = require(CorePackages.Packages.Promise)

local httpRequest = require(RobloxGui.Modules.Common.httpRequest)

local httpImpl = httpRequest(HttpRbxApiService)

local Thunks = script.Parent
local TopBar = Thunks.Parent
local SetGameName = require(TopBar.Actions.SetGameName)

local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateGameInfoRodux = require(TopBar.Flags.FFlagTopBarDeprecateGameInfoRodux)

if FFlagTopBarDeprecateGameInfoRodux then
	return nil :: never
end

return function(store)
	if game.GameId == 0 then
		return Promise.resolve()
	end

	return GetGameNameAndDescription(httpImpl, game.GameId):andThen(function(result)
		store:dispatch(SetGameName(result.Name))

		return result.Name
	end, function()
		warn("Unable to get game name for Gamepad Menu")
		return Promise.reject()
	end)
end
