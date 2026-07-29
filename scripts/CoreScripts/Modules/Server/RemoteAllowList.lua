local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableModerateChatRemoteEvent = SharedFlags.FFlagEnableModerateChatRemoteEvent
local FFlagPlatformLeaderboardRccEnabled = SharedFlags.FFlagPlatformLeaderboardRccEnabled
local FFlagRemoteAllowListAddExpChatFeatureValueChanged =
	game:DefineFastFlag("RemoteAllowListAddExpChatFeatureValueChanged", false)

return function()
	assert(game:FindService("NetworkServer") ~= nil)
	local networkPeer = game:GetService("NetworkServer")

	-- BaseRemoteEvent and RemoteFunction names must be specified here or they will be disabled (flag: DFFlagEnforceLuaAppsRemoteAllowList)
	-- Remote names should be set _before_ they are parented to RobloxReplicatedStorage
	-- When submitting a PR for a new remote, please ensure all server functionality has been implemented so that it can be reviewed by engine security. Thanks!

	local allowList = {}

	-- content/scripts/CoreScripts/ServerStarterScript.lua
	table.insert(allowList, "GetServerVersion")
	table.insert(allowList, "GetServerChannel")

	-- modules/social/exp-chat/exp-chat-server/src/createDispatchRemoteFunction.lua
	table.insert(allowList, "WhisperChat")

	-- content/scripts/CoreScripts/ServerCoreScripts/ServerInGameMenu.lua
	table.insert(allowList, "GetServerType")

	-- content/scripts/CoreScripts/ServerCoreScripts/ServerBulkPurchaseEvent.lua
	table.insert(allowList, "ServerSideBulkPurchaseEvent")

	-- content/scripts/CoreScripts/ServerCoreScripts/ServerSocialScript.lua
	table.insert(allowList, "CanChatWith")
	table.insert(allowList, "SetPlayerBlockList")
	table.insert(allowList, "UpdatePlayerBlockList")
	table.insert(allowList, "NewPlayerGroupDetails")
	table.insert(allowList, "NewPlayerCanManageDetails")
	table.insert(allowList, "SendPlayerBlockList")
	table.insert(allowList, "UpdateLocalPlayerBlockList")
	table.insert(allowList, "SendPlayerProfileSettings")
	table.insert(allowList, "UpdatePlayerProfileSettings")
	table.insert(allowList, "ShowPlayerJoinedFriendsToast")
	table.insert(allowList, "ShowFriendJoinedPlayerToast")
	table.insert(allowList, "CreateOrJoinParty")
	table.insert(allowList, "RequestPlayerProfileSettings")
	if FFlagEnableModerateChatRemoteEvent then
		table.insert(allowList, "ModerateChatSettingUpdated")
	end
	if FFlagRemoteAllowListAddExpChatFeatureValueChanged then
		table.insert(allowList, "ExpChatFeatureValueChanged")
	end

	-- content/scripts/CoreScripts/ServerCoreScripts/ServerDialog.lua
	table.insert(allowList, "SetDialogInUse")

	-- content/scripts/CoreScripts/ServerCoreScripts/PlayerViewCapability.lua
	table.insert(allowList, "RequestDeviceCameraOrientationCapability")
	table.insert(allowList, "RequestDeviceCameraCFrame")
	table.insert(allowList, "ReplicateDeviceCameraCFrame")

	-- content/scripts/CoreScripts/ServerCoreScripts/ReferredByPlayerRemoteEvent.lua
	table.insert(allowList, "ReferredPlayerJoin")

	-- content/scripts/CoreScripts/ServerCoreScripts/ServerBuildExperiencePlaytestTeleport.lua
	table.insert(allowList, "BuildExperiencePlaytestTeleport")

	-- content/scripts/CoreScripts/ServerCoreScripts/VoiceDefault.lua
	table.insert(allowList, "SetUserActive")

	-- content/scripts/CoreScripts/Modules/Server/VR/VRAvatarGesturesServer.lua
	table.insert(allowList, "AvatarGesturesVRPlayer")

	-- content/scripts/CoreScripts/ServerCoreScripts/ServerPlatformLeaderboard.lua
	if FFlagPlatformLeaderboardRccEnabled then
		table.insert(allowList, "PlatformLeaderboardPush")
		table.insert(allowList, "PlatformLeaderboardTabOpened")
		table.insert(allowList, "PlatformLeaderboardTabClosed")
	end

	networkPeer:InitializeRemoteAllowList(allowList)
end
