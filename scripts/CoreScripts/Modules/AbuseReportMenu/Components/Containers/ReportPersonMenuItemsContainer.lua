--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)

local getMenuItemsFromConfigs = require(root.MenuConfigs.getMenuItemsFromConfigs)
local getMenuItemSizings = require(root.Utility.getMenuItemSizings)
local Types = require(root.Components.Types)
local Constants = require(root.Components.Constants)
local ReportPlayerMenuItemConfigList = require(root.MenuConfigs.Players.ReportPlayerMenuItemConfigList)
local reportPersonUIStateReducer = require(root.Reducers.reportPersonUIStateReducer)
local handlePreselectedPlayer = require(root.Utility.handlePreselectedPlayer)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceUsersByProximity = require(RobloxGui.Modules.VoiceChat.VoiceUsersByProximity)
local VoiceChatCoreConstants = require(CorePackages.Workspace.Packages.VoiceChatCore).Constants

local PlayerMenuActions = Constants.PlayerMenuActions

local FFlagPreselectedPlayerReportBugfix = game:DefineFastFlag("PreselectedPlayerReportBugfix", false)

type Props = {
	utilityProps: Types.MenuUtilityProps,
	isSmallPortraitViewport: boolean,
}

local function alphabeticalSort(playerA: any, playerB: any)
	return playerA.Name:lower() < playerB.Name:lower()
end

local function ReportPersonMenuItemsContainer(props: Props)
	local sizings = getMenuItemSizings()
	local menuUIStates, dispatchUIStates = React.useReducer(reportPersonUIStateReducer, Constants.InitPersonUIState)

	React.useEffect(function()
		if props.utilityProps.isReportTabVisible ~= true then
			return
		end
		props.utilityProps.analyticsDispatch({
			type = Constants.AnalyticsActions.SwitchToPersonInitialSelections,
		})

		if FFlagPreselectedPlayerReportBugfix then
			local voiceEnabled = VoiceChatServiceManager:UserVoiceEnabled()
				and VoiceChatServiceManager:GetVoiceJoinProgress()
					~= VoiceChatCoreConstants.VOICE_JOIN_PROGRESS.Suspended

			if not voiceEnabled then
				if props.utilityProps.preselectedPlayer then
					handlePreselectedPlayer(
						props.utilityProps.preselectedPlayer,
						false,
						dispatchUIStates,
						props.utilityProps.analyticsDispatch
					)
				end
				dispatchUIStates({ type = PlayerMenuActions.SetVoiceEnabled, enabled = false })
				return
			end
		end

		VoiceChatServiceManager:asyncInit()
			:andThen(function()
				-- Voice enabled

				-- deal with preselected player
				if props.utilityProps.preselectedPlayer then
					handlePreselectedPlayer(
						props.utilityProps.preselectedPlayer,
						true,
						dispatchUIStates,
						props.utilityProps.analyticsDispatch
					)
				end
				dispatchUIStates({ type = PlayerMenuActions.SetVoiceEnabled, enabled = true })
			end)
			:catch(function()
				-- Voice not enabled
				if props.utilityProps.preselectedPlayer then
					handlePreselectedPlayer(
						props.utilityProps.preselectedPlayer,
						false,
						dispatchUIStates,
						props.utilityProps.analyticsDispatch
					)
				end
			end)
	end, { props.utilityProps.isReportTabVisible })

	-- player list related updates
	React.useEffect(
		function()
			local playerObjects = {}
			if menuUIStates.methodOfAbuse == Constants.AbuseMethods.VoiceChat then
				-- TODO: Revisit voice proximity sorting after player report list has been updated
				if false then
					-- Determine local player camera position
					local humanoidRootPart = PlayersService.LocalPlayer
						and PlayersService.LocalPlayer.Character
						and PlayersService.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

					local humanoidRootPartPosition = humanoidRootPart
						and humanoidRootPart.CFrame
						and humanoidRootPart.CFrame.Position

					-- Determine workspace camera position
					local cameraPosition = workspace.CurrentCamera and workspace.CurrentCamera.CFrame.Position

					-- Include all players who have interacted with the local player
					local maxRadius = nil
					local interactedWithLocalPlayer = true
					local excludedPlayer = nil
					local keepPlayersWithNoCharacter = true

					if cameraPosition then
						-- Voice proximity based sorting using camera position
						playerObjects = VoiceUsersByProximity.getSortedPlayers(
							PlayersService,
							VoiceChatServiceManager,
							cameraPosition,
							maxRadius,
							interactedWithLocalPlayer,
							excludedPlayer,
							keepPlayersWithNoCharacter
						)
					elseif humanoidRootPartPosition then
						-- Voice proximity based sorting using local player humanoid root part position
						playerObjects = VoiceUsersByProximity.getSortedPlayers(
							PlayersService,
							VoiceChatServiceManager,
							humanoidRootPartPosition,
							maxRadius,
							interactedWithLocalPlayer,
							excludedPlayer,
							keepPlayersWithNoCharacter
						)
					else
						-- cameraPosition and humanoidRootPartPosition are nil, so we cannot sort by proximity
						-- Obtain the list of players who had been heard by the user
						local voiceData = VoiceChatServiceManager:getRecentUsersInteractionData()
						-- voiceData here consists of {player, lastHeardTime} we need to extract the player object
						for _userId, playerVoiceData in pairs(voiceData) do
							table.insert(playerObjects, playerVoiceData.player)
						end
						-- Do alphabetical sort since cameraPosition and humanoidRootPartPosition are nil
						table.sort(playerObjects, alphabeticalSort)
					end
				else
					-- Obtain the list of players who had been heard by the user
					local voiceData = VoiceChatServiceManager:getRecentUsersInteractionData()
					-- voiceData here consists of {player, lastHeardTime} we need to extract the player object
					for _userId, playerVoiceData in pairs(voiceData) do
						table.insert(playerObjects, playerVoiceData.player)
					end
					-- TODO add the proximity based sorting logic
					table.sort(playerObjects, alphabeticalSort)
				end
			elseif
				menuUIStates.methodOfAbuse == Constants.AbuseMethods.TextChat
				or menuUIStates.methodOfAbuse == Constants.AbuseMethods.Other
				or menuUIStates.methodOfAbuse == Constants.AbuseMethods.Avatar
				or menuUIStates.methodOfAbuse == nil
			then
				playerObjects = PlayersService:GetPlayers()
				table.sort(playerObjects, alphabeticalSort)
			end

			local preselectedPlayerInList = false
			local currentSelectedPlayerInList = false
			-- remove the current user itself and bad userId
			playerObjects = Cryo.List.filter(playerObjects, function(playerObject)
				if menuUIStates.preselectedPlayer and playerObject.UserId == menuUIStates.preselectedPlayer.UserId then
					preselectedPlayerInList = true
				end
				if menuUIStates.allegedAbuser and playerObject.UserId == menuUIStates.allegedAbuserId then
					currentSelectedPlayerInList = true
				end

				return playerObject ~= PlayersService.LocalPlayer and playerObject.UserId > 0
			end)

			dispatchUIStates({ type = PlayerMenuActions.UpdatePlayerNameMap, playerObjects = playerObjects })
			if menuUIStates.preselectedPlayer and preselectedPlayerInList then
				dispatchUIStates({
					type = Constants.PlayerMenuActions.UpdateAbuser,
					abuseId = menuUIStates.preselectedPlayer.UserId,
					abuser = menuUIStates.preselectedPlayer,
				})
				-- Clear this out since we don't want to keep setting it if the user changes the Method of Abuse
				dispatchUIStates({
					type = Constants.PlayerMenuActions.SetPreselectedPlayer,
					player = nil,
				})
			elseif not currentSelectedPlayerInList then
				dispatchUIStates({
					type = Constants.PlayerMenuActions.UpdateAbuser,
					abuseId = nil,
					abuser = nil,
				})
			end
		end,
		{
			menuUIStates.methodOfAbuse,
			menuUIStates.isVoiceEnabled,
			props.utilityProps.isReportTabVisible,
			menuUIStates.preselectedPlayer,
		} :: { any }
	)

	local configItems = getMenuItemsFromConfigs(
		menuUIStates,
		dispatchUIStates,
		props.utilityProps,
		ReportPlayerMenuItemConfigList,
		props.isSmallPortraitViewport
	)

	local menuItems = Cryo.Dictionary.join({
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, sizings.ItemPadding),
		}),
	}, configItems)

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		MenuItems = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, menuItems),
	})
end

return ReportPersonMenuItemsContainer
