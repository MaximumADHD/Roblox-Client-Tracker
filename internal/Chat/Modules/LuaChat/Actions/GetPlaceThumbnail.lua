local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)
local Constants = require(Modules.Constants)
local ThumbnailModel = require(Modules.Models.ThumbnailModel)

local RETRY_COUNT  = 3
local WAIT_TIME  = 2

return function(imageToken, width, height)
	return function(store)
		spawn(function()
			local state = store:GetState()
			if state.PlaceThumbnails and state.PlaceThumbnails[imageToken]
				and state.PlaceThumbnails[imageToken].status ~= Constants.WebStatus.FAILED then
				return
			end
			store:Dispatch({
				type = ActionType.FetchingImageToken,
				imageToken = imageToken,
			})

			local thumbnail = ''
			local retryCount = RETRY_COUNT
			local waitTime = WAIT_TIME

			while (retryCount > 0) do
				local status, result = WebApi.GetPlaceThumbnail(imageToken, width, height)
				if status ~= WebApi.Status.OK then
					warn("WebApi failure in GetPlaceThumbnail")
					break
				else
					local placeThumbnailData = result[1]
					if placeThumbnailData.final == true then
						thumbnail = placeThumbnailData.url
						break
					end
				end

				retryCount = retryCount - 1
				if retryCount > 0 then
					wait(waitTime)
					waitTime = waitTime * 2
				end
			end

			local thumbnailModel = ThumbnailModel.fromWeb(thumbnail)

			store:Dispatch({
				type = ActionType.FetchedPlaceThumbnail,
				imageToken = imageToken,
				thumbnail = thumbnailModel,
			})

		end)
	end
end
