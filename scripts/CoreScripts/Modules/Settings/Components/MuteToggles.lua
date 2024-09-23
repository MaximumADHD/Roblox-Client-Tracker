--[[
	This component renders a headphone icon, "Mute" text, and a dropdown menu that
	allows users to change who they want muted in their experience. The options are to
	mute everyone, mute non-friends, and mute nobody.
]]
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Cryo)
local Promise = require(CorePackages.Promise)
local t = require(CorePackages.Packages.t)
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local Modules = CoreGui.RobloxGui.Modules
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local Constants = require(Modules.VoiceChat.Constants)

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local DropdownMenu = require(Modules.Settings.Components.DropdownMenu)

local FFlagMuteNonFriendsEvent = require(RobloxGui.Modules.Flags.FFlagMuteNonFriendsEvent)
local GetFFlagUseFriendsPropsInMuteToggles =
	require(RobloxGui.Modules.Settings.Flags.GetFFlagUseFriendsPropsInMuteToggles)
local GetFFlagRetryMutingNonFriends = require(RobloxGui.Modules.Settings.Flags.GetFFlagRetryMutingNonFriends)

local MUTE_ICON_SIZE = 38
local MUTE_TOGGLES_HEIGHT = 40
local MUTE_TOGGLES_PADDING = 12
local MUTE_IMAGE = Images["icons/controls/headphoneDeafen"]

local ActionEnums = {
	PlayerJoined = "playerJoined",
	PlayerLeft = "playerLeft",
	PlayerFriended = "playerFriended",
	PlayerUnfriended = "playerUnfriended",
}

local PartialOptions = {
	Nobody = 1,
	Everyone = 2,
}

local Options = {
	Nobody = 1,
	NonFriends = 2,
	Everyone = 3,
}

export type Props = {
	Players: Players,
	initialTogglesState: boolean,
	playersFriends: { [number]: boolean },
}

local validateProps = ArgCheck.wrap(t.strictInterface({
	Players = t.union(
		t.instanceOf("Players"),
		t.interface({
			GetPlayers = t.callback,
			GetFriendsAsync = t.callback,
			LocalPlayer = t.union(
				t.instanceOf("Player"),
				t.interface({
					UserId = t.number,
					FriendStatusChanged = t.RBXScriptSignal,
				})
			),
		})
	),
	initialTogglesState = t.boolean,
	playersFriends = t.table,
}))

export type MuteTogglesType = (props: Props) -> React.ReactElement

local function MuteToggles(props: Props)
	assert(validateProps(props))

	local Players = props.Players
	local localPlayer = Players.LocalPlayer
	local initialTogglesState = props.initialTogglesState
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

	local isLoadingFriends, setIsLoadingFriends = React.useState(not GetFFlagUseFriendsPropsInMuteToggles())
	local loadingFriendsError, setLoadingFriendsError = React.useState(false)
	local isProcessing, setIsProcessing = React.useState(false)
	local usersToProcess, setUsersToProcess = React.useState({})
	local selectedIndex, setSelectedIndex =
		React.useState(if not initialTogglesState then PartialOptions.Nobody else PartialOptions.Everyone)
	local usersFriends, setUsersFriends = React.useState({})
	local dropdownList, setDropdownList
	if GetFFlagUseFriendsPropsInMuteToggles() then
		dropdownList, setDropdownList = React.useState({ nobodyLabel, nonFriendsLabel, everyoneLabel })
	else
		dropdownList, setDropdownList = React.useState({ nobodyLabel, everyoneLabel })
	end

	local muteAllUsers = React.useCallback(function()
		VoiceChatServiceManager:MuteAll(true, Constants.VOICE_CONTEXT_TYPE.MUTE_TOGGLES)
	end)

	local muteNobody = React.useCallback(function()
		VoiceChatServiceManager:MuteAll(false, Constants.VOICE_CONTEXT_TYPE.MUTE_TOGGLES)
	end)

	local muteNonFriends = React.useCallback(function(nonFriends)
		if not Cryo.isEmpty(nonFriends) then
			VoiceChatServiceManager:ToggleMuteSome(
				nonFriends,
				true,
				Constants.VOICE_GROUP_TYPE.NONFRIENDS,
				Constants.VOICE_CONTEXT_TYPE.MUTE_TOGGLES
			)
		end
		if FFlagMuteNonFriendsEvent then
			VoiceChatServiceManager:FireMuteNonFriendsEvent()
		end
	end)

	local unmuteFriends = React.useCallback(function(friends)
		if not Cryo.isEmpty(friends) then
			VoiceChatServiceManager:ToggleMuteSome(
				friends,
				false,
				Constants.VOICE_GROUP_TYPE.FRIENDS,
				Constants.VOICE_CONTEXT_TYPE.MUTE_TOGGLES
			)
		end
	end)

	local onSelection = React.useCallback(function(index: number)
		setSelectedIndex(index)
		if index == Options.Nobody then
			muteNobody()
		elseif index == Options.NonFriends and not (isLoadingFriends or loadingFriendsError) then
			local friendsList = if GetFFlagUseFriendsPropsInMuteToggles() then props.playersFriends else usersFriends
			local nonFriends = {}
			local friends = {}
			for userId, isFriend in pairs(friendsList) do
				table.insert(if isFriend then friends else nonFriends, userId)
			end
			unmuteFriends(friends)
			muteNonFriends(nonFriends)

			if GetFFlagRetryMutingNonFriends() then
				task.delay(0.25, function()
					VoiceChatServiceManager:EnsureCorrectMuteState(nonFriends, true)
					VoiceChatServiceManager:EnsureCorrectMuteState(friends, false)
				end)
			end
		else
			muteAllUsers()
		end
	end)

	local muteAllChangedCallback = React.useCallback(function(allPlayersMuted)
		-- If we are still loading the friends list or there is an error with loading friends,
		-- the index of "Everyone" is 2. Otherwise, the index of "Everyone" is 3, because
		-- index 2 is taken by "Non-friends".
		local everyoneIndex = if isLoadingFriends or loadingFriendsError
			then PartialOptions.Everyone
			else Options.Everyone
		setSelectedIndex(if allPlayersMuted then everyoneIndex else Options.Nobody)
	end)

	local toggleMuteIfNonFriendsMuted = React.useCallback(function(userId, muteState)
		if not loadingFriendsError and selectedIndex == Options.NonFriends then
			VoiceChatServiceManager:ToggleMuteSome({ userId }, muteState)
		end
	end)

	local playerJoinedVoiceCallback = React.useCallback(function(userId)
		-- If a friend joins, they'll already be in usersFriends so we don't need to do anything
		-- We only need to add to usersFriends if a non-friend joins
		if not usersFriends[userId] then
			setUsersFriends(function(prevUsersFriends)
				return Cryo.Dictionary.join(prevUsersFriends, {
					[userId] = false,
				})
			end)
			-- If we have Mute Non-friends selected, we should mute the new non-friend that joined
			toggleMuteIfNonFriendsMuted(userId, true)
		end
	end)

	--[[
		We should keep friends in usersFriends because if a friend is removed from usersFriends when
		they leave and that friend joins again, usersFriends[friendId] will be nil rather than true. Muting
		non-friends would mute that friend as a result.

		On the other hand, non-friends can be removed because if they leave and join again,
		usersFriends[nonFriendId] will be nil as expected.
	]]
	local playerLeftVoiceCallback = React.useCallback(function(userId)
		if not usersFriends[userId] then
			setUsersFriends(function(prevUsersFriends)
				return Cryo.Dictionary.join(prevUsersFriends, {
					[userId] = Cryo.None,
				})
			end)
		end
	end)

	local friendStatusChangeCallback = React.useCallback(function(userId, friendStatus)
		if friendStatus == ActionEnums.PlayerFriended then
			-- If the player is now a friend, we need to update the state so that checking
			-- usersFriends returns true for this player
			if not usersFriends[userId] then
				setUsersFriends(function(prevUsersFriends)
					return Cryo.Dictionary.join(prevUsersFriends, {
						[userId] = true,
					})
				end)
			end

			-- If the currently selected option is non-friends, we should unmute this newly
			-- friended player
			toggleMuteIfNonFriendsMuted(userId, false)
		elseif friendStatus == ActionEnums.PlayerUnfriended then
			-- If the player is not a friend anymore, we need to update the state so that
			-- checking usersFriends returns false for this player
			if usersFriends[userId] then
				setUsersFriends(function(prevUsersFriends)
					return Cryo.Dictionary.join(prevUsersFriends, {
						[userId] = false,
					})
				end)
			end

			-- If the currently selected option is non-friends, we should mute this newly
			-- unfriended player
			toggleMuteIfNonFriendsMuted(userId, true)
		end
	end)

	local addUserToProcess = React.useCallback(function(userId, action)
		setUsersToProcess(function(prevUsersToProcess)
			return Cryo.Dictionary.join(prevUsersToProcess, {
				[#prevUsersToProcess + 1] = {
					UserId = userId,
					Action = action,
				},
			})
		end)
	end)

	if not GetFFlagUseFriendsPropsInMuteToggles() then
		--[[
			If a user opens the in-game menu and chooses "Mute Everyone" while the friends list isn't loaded,
			the dropdown will switch from "Everyone" to "Non-friends" after the friends list is loaded. This
			happens because before the friends list is loaded in, the index for "Everyone" is 2, but after
			the friends list is loaded in, 2 becomes the index of "Non-friends". To prevent this switch from
			happening, we need to change the selected index to 3, which is the new index for "Everyone" in
			the new dropdown list after we finish loading in the friends list.
		]]
		React.useEffect(function()
			if not isLoadingFriends and not loadingFriendsError then
				if initialTogglesState or selectedIndex == PartialOptions.Everyone then
					setSelectedIndex(Options.Everyone)
				end
			end
		end, { isLoadingFriends })

		React.useEffect(function()
			local function getUsersFriendsList()
				return Promise.new(function(resolve, reject)
					coroutine.wrap(function()
						local success, friendsPages = pcall(function()
							return if localPlayer then Players:GetFriendsAsync(localPlayer.UserId) else nil
						end)

						if not success then
							reject("Error loading friends")
							return
						end

						local friends = {}
						if friendsPages then
							while true do
								for _, item in friendsPages:GetCurrentPage() do
									friends[item.Id] = true
								end

								if not friendsPages.IsFinished then
									success = pcall(function()
										friendsPages:AdvanceToNextPageAsync()
									end)
									if not success then
										reject("Error loading friends")
										return
									end
								else
									break
								end
							end
						end

						resolve(friends)
					end)()
				end)
			end

			local function getUsersFriendsListWithRetries(retries: number)
				return getUsersFriendsList():catch(function()
					return if retries > 0 then getUsersFriendsListWithRetries(retries - 1) else Promise.reject()
				end)
			end

			local maxRetries = 3
			getUsersFriendsListWithRetries(maxRetries)
				:andThen(function(friends)
					-- Getting the user's friend list was a success
					local nonFriends = {}
					local players = Players:GetPlayers()
					for _, player in players do
						if localPlayer and player then
							if not (friends :: {})[player.UserId] then
								nonFriends[player.UserId] = false
							end
						end
					end
					local usersFriends = Cryo.Dictionary.join(friends, nonFriends)
					setUsersFriends(usersFriends)
					setIsLoadingFriends(false)
					setDropdownList({ nobodyLabel, nonFriendsLabel, everyoneLabel })
				end)
				:catch(function()
					-- Getting the user's friends list was a failure even with retries
					setIsLoadingFriends(false)
					setLoadingFriendsError(true)
					log:warning("MuteToggles: Failed to get list of friends from GetFriendsAsync")
				end)
		end, {})

		--[[
			Certain events may happen at the same time (for example, a player joins while we are building
			the user's friend list, or two players joining at the same time), which can cause inconsistent
			states due to event callbacks running at the same time and overwriting each other's state changes.
			To try to make the state more consistent, we maintain a queue of users to process that
			gets updated when a player joins/leaves voice, or when their friend status gets updated.
			When the queue gets updated, we check to see if a user is already being processed and if not, we
			run the correct callback based on the user's action, and then remove them from the queue.
		]]
		React.useEffect(function()
			if not isLoadingFriends and not isProcessing and not Cryo.isEmpty(usersToProcess) then
				setIsProcessing(true)

				local userToProcess = usersToProcess[1]
				if userToProcess.Action == ActionEnums.PlayerJoined then
					playerJoinedVoiceCallback(userToProcess.UserId)
				elseif userToProcess.Action == ActionEnums.PlayerLeft then
					playerLeftVoiceCallback(userToProcess.UserId)
				else
					friendStatusChangeCallback(userToProcess.UserId, userToProcess.Action)
				end
				setUsersToProcess(function(prevUsersToProcess)
					return Cryo.List.removeIndex(prevUsersToProcess, 1)
				end)

				setIsProcessing(false)
			end
		end, { isProcessing, usersToProcess, isLoadingFriends } :: { any })
	end

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
			dropdownList = dropdownList,
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
			callback = function(_, userId)
				if GetFFlagUseFriendsPropsInMuteToggles() then
					if not props.playersFriends[userId] then
						toggleMuteIfNonFriendsMuted(userId, true)
					end
				else
					addUserToProcess(userId, ActionEnums.PlayerJoined)
				end
			end,
		}),
		PlayerLeftVoiceEvent = if not GetFFlagUseFriendsPropsInMuteToggles()
			then Roact.createElement(ExternalEventConnection, {
				event = VoiceChatServiceManager.participantLeft.Event,
				callback = function(_, userId)
					addUserToProcess(userId, ActionEnums.PlayerLeft)
				end,
			})
			else nil,
		FriendStatusChangeEvent = if localPlayer
			then Roact.createElement(ExternalEventConnection, {
				event = localPlayer.FriendStatusChanged,
				callback = function(player, friendStatus)
					if friendStatus == Enum.FriendStatus.Friend then
						if GetFFlagUseFriendsPropsInMuteToggles() then
							toggleMuteIfNonFriendsMuted(player.UserId, false)
						else
							addUserToProcess(player.UserId, ActionEnums.PlayerFriended)
						end
					else
						if GetFFlagUseFriendsPropsInMuteToggles() then
							toggleMuteIfNonFriendsMuted(player.UserId, true)
						else
							addUserToProcess(player.UserId, ActionEnums.PlayerUnfriended)
						end
					end
				end,
			})
			else nil,
	})
end

return MuteToggles :: MuteTogglesType
