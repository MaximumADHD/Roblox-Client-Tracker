local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Libs.Cryo)

local RequestReason = require(Plugin.Core.Types.RequestReason)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local SetLiveSearch = require(Plugin.Core.Actions.SetLiveSearch)
local SetLoading = require(Plugin.Core.Actions.SetLoading)
local StopPreviewSound = require(Plugin.Core.Actions.StopPreviewSound)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local FFlagStudioFixGroupCreatorInfo3 = game:GetFastFlag("StudioFixGroupCreatorInfo3")

local function searchUsers(networkInterface, searchTerm, store)
	return networkInterface:getUsers(searchTerm, 1):andThen(function(result)
		local data = result.responseBody
		if data then
			local userSearchResults = data.UserSearchResults
			if userSearchResults and #userSearchResults > 0 then
				local info = userSearchResults[1]
				return {
					Name = info.Name,
					Id = info.UserId,
					Type = FFlagStudioFixGroupCreatorInfo3 and Enum.CreatorType.User.Value or nil,
				}
			end
		end

		return {
			Name = searchTerm,
			Id = -1,
			Type = FFlagStudioFixGroupCreatorInfo3 and Enum.CreatorType.User.Value or nil,
		}
	end)
end

return function(networkInterface, settings, options)
	return function(store)
		store:dispatch(SetLoading(true))
		store:dispatch(ClearAssets())

		local audioSearchInfo = options.AudioSearch or Cryo.None

		local sound = store:getState().sound
		if sound ~= nil and sound.isPlaying then
			store:dispatch(StopPreviewSound())
		end

		if options.Creator and options.Creator ~= "" then
			searchUsers(networkInterface, options.Creator, store):andThen(
				function(results)
					store:dispatch(SetLoading(false))
					store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
						audioSearchInfo = audioSearchInfo,
						targetPage = 1,
						currentPage = 0,
						creator = results,
						sortIndex = options.SortIndex or 1, -- defualt to 1
						requestReason = RequestReason.StartSearch,
					}))

					Analytics.onCreatorSearched(options.Creator, results.Id)
				end,
				function(err)
					-- We should still handle the error if searchUser fails.
				end)

		else
			store:dispatch(SetLoading(false))
			store:dispatch(SetLiveSearch("", {}))
			store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
				audioSearchInfo = audioSearchInfo,
				targetPage = 1,
				currentPage = 0,
				sortIndex = options.SortIndex or 1, -- defualt to 1
				creator = Cryo.None,
				requestReason = RequestReason.StartSearch,
			}))
		end
	end
end
