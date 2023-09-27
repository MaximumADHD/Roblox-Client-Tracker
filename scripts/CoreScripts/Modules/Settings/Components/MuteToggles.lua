--[[
	This component renders a headphone icon, "Mute" text, and a dropdown menu that
	allows users to change who they want muted in their experience. The options are to
	mute everyone, mute non-friends, and mute nobody.
]]
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Cryo)
local Modules = CoreGui.RobloxGui.Modules
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local DropdownMenu = require(Modules.Settings.Components.DropdownMenu)

local FFlagMuteNonFriendsEvent = require(RobloxGui.Modules.Flags.FFlagMuteNonFriendsEvent)

local MUTE_ICON_SIZE = 38
local MUTE_TOGGLES_HEIGHT = 40
local MUTE_TOGGLES_PADDING = 12
local MUTE_IMAGE = Images["icons/controls/headphoneDeafen"]

local localPlayer = Players.LocalPlayer

export type MuteTogglesType = () -> React.ReactElement

local function MuteToggles()
	local localizedText = useLocalization({
		muteLabel = "Feature.SettingsHub.Label.Mute",
		nobodyLabel = "Feature.SettingsHub.Action.NobodyToggle",
		nonFriendsLabel = "Feature.SettingsHub.Action.NonfriendsToggle",
		everyoneLabel = "Feature.SettingsHub.Action.EveryoneToggle",
	})
	local muteLabel = if localizedText.muteLabel == "" then "Mute" else localizedText.muteLabel
	local nobodyLabel = if localizedText.nobodyLabel == "" then "Nobody" else localizedText.nobodyLabel
	local nonFriendsLabel = if localizedText.nonFriendsLabel == "" then "Non-friends" else localizedText.nonFriendsLabel
	local everyoneLabel = if localizedText.everyoneLabel == "" then "Everyone" else localizedText.everyoneLabel

	local style = useStyle()
	local fontStyle = style.Font.SubHeader1

	local selectedIndex, setSelectedIndex = React.useState(1)
	local friends, setFriends = React.useState({})
	local nonFriends, setNonFriends = React.useState({})

	local muteAllUsers = React.useCallback(function()
		VoiceChatServiceManager:MuteAll(true)
	end)

	local muteNobody = React.useCallback(function()
		VoiceChatServiceManager:MuteAll(false)
	end)

	local muteNonFriends = React.useCallback(function()
		if not Cryo.isEmpty(nonFriends) then
			VoiceChatServiceManager:ToggleMuteSome(nonFriends, true)
		end
		if FFlagMuteNonFriendsEvent then
			VoiceChatServiceManager:FireMuteNonFriendsEvent()
		end
	end)

	local unmuteFriends = React.useCallback(function()
		if not Cryo.isEmpty(friends) then
			VoiceChatServiceManager:ToggleMuteSome(friends, false)
		end
	end)

	local onSelection = React.useCallback(function(index: number)
		if index == 1 then
			muteNobody()
		elseif index == 2 then
			unmuteFriends()
			muteNonFriends()
		else
			muteAllUsers()
		end
		setSelectedIndex(index)
	end)

	local muteAllChangedCallback = React.useCallback(function(allPlayersMuted)
		setSelectedIndex(if allPlayersMuted then 3 else 1)
	end)

	local playerJoinedVoiceCallback = React.useCallback(function(_, userId)
		if localPlayer then
			if localPlayer:IsFriendsWith(userId) then
				if not Cryo.List.find(friends, userId) then
					local newFriends = Cryo.List.join(friends, { userId })
					setFriends(newFriends)
				end
			else
				if not Cryo.List.find(nonFriends, userId) then
					local newNonFriends = Cryo.List.join(nonFriends, { userId })
					setNonFriends(newNonFriends)
				end

				-- If we have Mute Non-friends selected, we should mute the new non-friend that joined
				if selectedIndex == 2 then
					VoiceChatServiceManager:ToggleMuteSome({ userId }, true)
				end
			end
		end
	end)

	local playerLeftVoiceCallback = React.useCallback(function(_, userId)
		if localPlayer then
			if localPlayer:IsFriendsWith(userId) then
				local newFriends = Cryo.List.removeValue(friends, userId)
				setFriends(newFriends)
			else
				local newNonFriends = Cryo.List.removeValue(nonFriends, userId)
				setNonFriends(newNonFriends)
			end
		end
	end)

	local friendStatusChangeCallback = React.useCallback(function(player, friendStatus)
		local otherPlayerUserId = player.UserId
		if friendStatus == Enum.FriendStatus.Friend then
			-- If the player is now a friend, we should add this player to the friends state
			-- and remove them from the non-friends state
			if not Cryo.List.find(friends, otherPlayerUserId) then
				local newFriends = Cryo.List.join(friends, { otherPlayerUserId })
				local newNonFriends = Cryo.List.removeValue(nonFriends, otherPlayerUserId)
				setFriends(newFriends)
				setNonFriends(newNonFriends)
			end

			-- If the currently selected option is non-friends, we should unmute this newly
			-- friended player
			if selectedIndex == 2 then
				VoiceChatServiceManager:ToggleMuteSome({ player.UserId }, false)
			end
		elseif friendStatus == Enum.FriendStatus.NotFriend then
			-- If the player is not a friend anymore, we should add this player to the non-friends
			-- state and remove them from the friends state
			if not Cryo.List.find(nonFriends, otherPlayerUserId) then
				local newNonFriends = Cryo.List.join(nonFriends, { otherPlayerUserId })
				local newFriends = Cryo.List.removeValue(friends, otherPlayerUserId)
				setFriends(newFriends)
				setNonFriends(newNonFriends)
			end

			-- If the currently selected option is non-friends, we should mute this newly
			-- unfriended player
			if selectedIndex == 2 then
				VoiceChatServiceManager:ToggleMutePlayer(player.UserId)
			end
		end
	end)

	React.useEffect(function()
		local players = Players:GetPlayers()
		local friends = {}
		local nonFriends = {}
		for _, player in pairs(players) do
			if localPlayer and player then
				if localPlayer:IsFriendsWith(player.UserId) then
					table.insert(friends, player.UserId)
				else
					table.insert(nonFriends, player.UserId)
				end
			end
		end
		setFriends(friends)
		setNonFriends(nonFriends)
	end, {})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, MUTE_TOGGLES_HEIGHT),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = 1,
		ZIndex = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, MUTE_TOGGLES_PADDING),
			PaddingRight = UDim.new(0, MUTE_TOGGLES_PADDING),
		}),
		MuteFrame = Roact.createElement("Frame", {
			Size = UDim2.new(0.5, 0, 0, MUTE_TOGGLES_HEIGHT),
			BorderSizePixel = 0,
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = if style.UIBloxThemeEnabled then UDim.new(0, 4) else UDim.new(0, -1),
			}),
			ImageSetLabel = Roact.createElement(ImageSetLabel, {
				Image = MUTE_IMAGE,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, MUTE_ICON_SIZE, 0, MUTE_ICON_SIZE),
				LayoutOrder = 1,
			}),
			TextFrame = Roact.createElement("Frame", {
				Size = UDim2.new(0.6, 0, 0, MUTE_TOGGLES_HEIGHT),
				BorderSizePixel = 0,
				LayoutOrder = 2,
				BackgroundTransparency = 1,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = if style.UIBloxThemeEnabled then UDim.new(0, 6) else UDim.new(0, 11),
				}),
				TextLabel = Roact.createElement(StyledTextLabel, {
					text = muteLabel,
					fontStyle = fontStyle,
					textXAlignment = Enum.TextXAlignment.Left,
					colorStyle = {
						Color = Color3.new(1, 1, 1),
						Transparency = 0,
					},
					size = UDim2.new(1, 0, 0, MUTE_TOGGLES_HEIGHT),
				}),
			}),
		}),
		DropdownMenu = Roact.createElement(DropdownMenu, {
			buttonSize = UDim2.new(0.5, 0, 0, MUTE_TOGGLES_HEIGHT),
			dropdownList = { nobodyLabel, nonFriendsLabel, everyoneLabel },
			selectedIndex = selectedIndex,
			onSelection = onSelection,
			layoutOrder = 2,
		}),
		MuteAllChangedEvent = if VoiceChatServiceManager.muteAllChanged
			then Roact.createElement(ExternalEventConnection, {
				event = VoiceChatServiceManager.muteAllChanged.Event,
				callback = muteAllChangedCallback,
			})
			else nil,
		PlayerJoinedVoiceEvent = Roact.createElement(ExternalEventConnection, {
			event = VoiceChatServiceManager.participantJoined.Event,
			callback = playerJoinedVoiceCallback,
		}),
		PlayerLeftVoiceEvent = Roact.createElement(ExternalEventConnection, {
			event = VoiceChatServiceManager.participantLeft.Event,
			callback = playerLeftVoiceCallback,
		}),
		FriendStatusChangeEvent = if localPlayer
			then Roact.createElement(ExternalEventConnection, {
				event = localPlayer.FriendStatusChanged,
				callback = friendStatusChangeCallback,
			})
			else nil,
	})
end

return MuteToggles :: MuteTogglesType
