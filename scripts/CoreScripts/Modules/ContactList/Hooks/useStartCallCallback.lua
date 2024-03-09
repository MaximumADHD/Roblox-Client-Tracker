local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local VoiceChatServiceManager

local React = require(CorePackages.Packages.React)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local dependencyArray = dependencies.Hooks.dependencyArray

local useAnalytics = require(ContactList.Analytics.useAnalytics)
local EventNamesEnum = require(ContactList.Analytics.EventNamesEnum)
local Pages = require(ContactList.Enums.Pages)
type PagesType = Pages.PagesType

return function(
	tag,
	userId,
	combinedName,
	onStartCallProcessed,
	analyticsInfo: { searchQueryString: string | nil, itemListIndex: number, isSuggestedUser: boolean, page: PagesType }
)
	local analytics = useAnalytics()

	return React.useCallback(function()
		SoundManager:PlaySound(Sounds.Select.Name, { Volume = 0.5 }, SoundGroups.Iris)

		if VoiceChatServiceManager == nil then
			VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
		end
		local isMuted = if VoiceChatServiceManager.localMuted ~= nil then VoiceChatServiceManager.localMuted else true
		local isCamEnabled = if FaceAnimatorService:IsStarted()
			then FaceAnimatorService.VideoAnimationEnabled
			else false

		analytics.fireEvent(EventNamesEnum.PhoneBookCallFriendClicked, {
			eventTimestampMs = os.time() * 1000,
			friendUserId = tonumber(userId),
			searchQueryString = analyticsInfo.searchQueryString,
			itemListIndex = analyticsInfo.itemListIndex,
			isSuggestedUser = analyticsInfo.isSuggestedUser,
			page = tostring(analyticsInfo.page),
		})
		coroutine.wrap(function()
			local invokeIrisInviteRemoteEvent =
				RobloxReplicatedStorage:WaitForChild("ContactListInvokeIrisInvite", math.huge) :: RemoteEvent
			invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(userId), combinedName, isMuted, isCamEnabled)
		end)()

		onStartCallProcessed()
	end, dependencyArray(tag, userId, combinedName, onStartCallProcessed, analyticsInfo))
end
