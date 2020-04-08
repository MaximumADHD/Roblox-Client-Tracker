local FFlagEnableAudioPreview = settings():GetFFlag("EnableAudioPreview")

local Plugin = script.Parent.Parent.Parent.Parent

local RequestReason = require(Plugin.Core.Types.RequestReason)
local GetAssetsRequest = require(Plugin.Core.Networking.Requests.GetAssetsRequest)
local GetToolboxItems = require(Plugin.Core.Networking.Requests.GetToolboxItems)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)

local Constants = require(Plugin.Core.Util.Constants)

return function(networkInterface, settings, newPageInfo)
	return function(store)
		if not RequestReason.IsUpdate(newPageInfo.requestReason) then
			-- For updating current page, we don't refresh the page, everything else, yes, we do.
			store:dispatch(ClearAssets())
		end

		-- Then, in the GetAssetsRequest, we can check if current pageInfo matches pageInfo when started the request.
		store:dispatch(UpdatePageInfo(newPageInfo, settings))

		local pageInfo = store:getState().pageInfo
		local audioSearchInfo = pageInfo.audioSearchInfo -- or store:getState().assets.audioSearchInfo
		if FFlagEnableAudioPreview and audioSearchInfo then
			store:dispatch(GetToolboxItems(networkInterface, Constants.AUDIO_SERACH_CATEGORY_NAME, audioSearchInfo, pageInfo, settings))
		else
			store:dispatch(GetAssetsRequest(networkInterface, pageInfo))
		end
	end
end
