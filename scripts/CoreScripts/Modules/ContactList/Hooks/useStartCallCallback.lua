local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local React = require(CorePackages.Packages.React)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local dependencyArray = dependencies.Hooks.dependencyArray
local useDispatch = dependencies.Hooks.useDispatch

local CanMakeCallWithModal = require(ContactList.Hooks.CanMakeCallWithModal)

local GetFFlagSoundManagerRefactor = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSoundManagerRefactor

return function(tag, userId, combinedName, onStartCallProcessed)
	local dispatch = useDispatch()

	local validateToMakeCall = React.useCallback(function()
		local canMakeCall, action = CanMakeCallWithModal()
		if not canMakeCall then
			dispatch(action)
		end

		return canMakeCall
	end, {})

	return React.useCallback(function()
		if not validateToMakeCall() then
			return
		end

		if GetFFlagSoundManagerRefactor() then
			SoundManager:PlaySound(Sounds.Select.Name, { Volume = 0.5 }, SoundGroups.Iris)
		else
			SoundManager:PlaySound_old(Sounds.Select.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
		end

		local isMuted = if VoiceChatServiceManager.localMuted ~= nil then VoiceChatServiceManager.localMuted else true
		local isCamEnabled = if FaceAnimatorService:IsStarted()
			then FaceAnimatorService.VideoAnimationEnabled
			else false

		coroutine.wrap(function()
			local invokeIrisInviteRemoteEvent =
				RobloxReplicatedStorage:WaitForChild("ContactListInvokeIrisInvite", math.huge) :: RemoteEvent
			invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(userId), combinedName, isMuted, isCamEnabled)
		end)()

		onStartCallProcessed()
	end, dependencyArray(tag, userId, combinedName, validateToMakeCall, onStartCallProcessed))
end
