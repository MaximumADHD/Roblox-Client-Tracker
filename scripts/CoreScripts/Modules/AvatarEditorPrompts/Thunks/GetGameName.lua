--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Promise = require(CorePackages.Promise)

local httpRequest = require(RobloxGui.Modules.Common.httpRequest)

local httpImpl = httpRequest(HttpRbxApiService)

local Thunks = script.Parent
local AvatarEditorPrompts = Thunks.Parent
local GameNameFetched = require(AvatarEditorPrompts.Actions.GameNameFetched)

local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription

return function(store)
	if game.GameId == 0 then
		return Promise.resolve()
	end

	return GetGameNameAndDescription(httpImpl, game.GameId):andThen(function(result)
		store:dispatch(GameNameFetched(result.Name))

		return result.Name
	end,
	function()
		warn("Unable to get game name for Avatar Editor Prompts")
		return Promise.reject()
	end)
end
