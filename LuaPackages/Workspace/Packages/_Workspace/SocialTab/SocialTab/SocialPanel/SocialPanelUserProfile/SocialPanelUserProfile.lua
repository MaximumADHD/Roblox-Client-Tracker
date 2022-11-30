local SocialTab = script:FindFirstAncestor("SocialTab")
local TextService = game:GetService("TextService")
local dependencies = require(SocialTab.dependencies)

local GuiService = game:GetService("GuiService")

local SocialTabContext = require(SocialTab.SocialTabContext)

local React = dependencies.React
local UIBlox = dependencies.UIBlox

local RoduxGames = dependencies.RoduxGames
local PlayabilityStatus = RoduxGames.Enums.PlayabilityStatus
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local NetworkingGames = dependencies.NetworkingGames

local useStyle = UIBlox.Core.Style.useStyle
local useSelector = dependencies.useSelector
local useLocalization = dependencies.useLocalization
local useDispatch = dependencies.useDispatch

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local IconButton = UIBlox.App.Button.IconButton
local ImageSetButton = UIBlox.Core.ImageSet.Button

local PrimaryContextualButton = UIBlox.App.Button.PrimaryContextualButton

local FFlagExperienceJoinAttemptId = dependencies.FFlagExperienceJoinAttemptId

local ADD_BUTTON_HEIGHT = 36
local ADD_BUTTON_WIDTH = 44
local HEADSHOT_SIZE = 60
local CONTACTS_ENTRY_HEIGHT = 72
local INNER_PADDING = 12
local CONTEXTUAL_TEXT_PADDING = 5
local CONTEXTUAL_TEXT_HEIGHT = 20

local PRESENCE_ICON_SIZE = 12
local PRESENCE_ICON_IMAGE_SIZE = 16

local MAX_NUMBER_OF_LINES = 2

export type Props = {
	displayName: string,
	friendRank: number,
	id: string,
	lastLocation: string,
	thumbnail: string,
	userId: string,
	universeId: string?,
	userPresenceType: string,
	rootPlaceId: number?,
	hasDivider: boolean,
	layoutOrder: number,
	gameInstanceId: string?,
}

local function SocialPanelUserProfile(props: Props)
	local displayName = props.displayName
	local hasDivider = props.hasDivider

	local friendRank = props.friendRank
	local id = props.id
	local layoutOrder = props.layoutOrder

	local socialContext: any = React.useContext(SocialTabContext.Context)
	local analytics = socialContext.useRoactService(socialContext.roactAnalytics)
	local gameAnalytics = socialContext.useRoactService(socialContext.roactAnalyticsCommonGameEvents)

	local presenceType = socialContext.presenceType
	local notificationType = socialContext.notificationType
	local convertUniverseIdToString = socialContext.convertUniverseIdToString

	local openGameDetails = socialContext.openGameDetails
	local joinGame = socialContext.joinGame
	local navigateDown = socialContext.navigateDown

	local appPage = socialContext.appPage

	local lastLocation = props.lastLocation
	local thumbnail = props.thumbnail
	local userId = props.userId
	local userPresenceType = props.userPresenceType
	local gameInstanceId = props.gameInstanceId
	local universeId = convertUniverseIdToString(props.universeId)
	local rootPlaceId = props.rootPlaceId

	local function userProfileSelector(state)
		local universePlaceInfo = nil
		if universeId ~= nil then
			universePlaceInfo = state.UniversePlaceInfos[universeId]
		end
		return {
			universePlaceInfo = universePlaceInfo,
			uid = state.LocalUserId or nil,
			inGameFriendCount = state.FriendPresenceCounts[presenceType.IN_GAME],
		}
	end

	local style = useStyle()
	local dispatch = useDispatch()
	local selector = useSelector(userProfileSelector)
	local localized = useLocalization({
		offline = "Common.Presence.Label.Offline",
		online = "Common.Presence.Label.Online",
	})

	local uid = selector.uid
	local inGameFriendCount = selector.inGameFriendCount
	local universePlaceInfo = selector.universePlaceInfo

	local isOnline = userPresenceType ~= nil and userPresenceType ~= PresenceType.Offline
	local inGame = userPresenceType ~= nil and userPresenceType == PresenceType.InGame and universePlaceInfo ~= nil
	local inStudio = userPresenceType ~= nil and userPresenceType == PresenceType.InStudio

	local joinExperience = function()
		if FFlagExperienceJoinAttemptId then
			joinGame:ByUser(props, "peopleListInHomePage", function(joinAttemptId)
				gameAnalytics.reportPeopleListJoinGame(
					id,
					friendRank,
					layoutOrder,
					universePlaceInfo.placeId,
					universePlaceInfo.universeRootPlaceId,
					gameInstanceId,
					inGameFriendCount,
					joinAttemptId
				)
			end)
		else
			gameAnalytics.reportPeopleListJoinGame(
				id,
				friendRank,
				layoutOrder,
				universePlaceInfo.placeId,
				universePlaceInfo.universeRootPlaceId,
				gameInstanceId,
				inGameFriendCount
			)
			joinGame:ByUser(props)
		end
	end

	local openExperienceDetails = function()
		local extraProps = {
			source = "",
			referralSource = "",
			onPeekViewClosed = nil,
		}

		gameAnalytics.reportOpenGameDetailFromPeopleList(
			id,
			layoutOrder,
			layoutOrder + 1,
			rootPlaceId,
			universePlaceInfo.universeRootPlaceId,
			"gameButton",
			"GameDetailFromGameButton"
		)

		dispatch(openGameDetails(universeId, extraProps))
	end

	local onJoinExperience = function()
		analytics.EventStream:setRBXEvent("SocialTab", "buttonClick", {
			btn = "JoinProfileExperience",
			uid = uid,
		})

		dispatch(NetworkingGames.GetExperiencesPlayabilityStatus.API({ universeId })):andThen(function(response)
			local playabilityStatus = response.responseBody[1].playabilityStatus

			if playabilityStatus == PlayabilityStatus.PurchaseRequired.rawValue() then
				openExperienceDetails()
			elseif playabilityStatus == PlayabilityStatus.Playable.rawValue() then
				joinExperience()
			else
				openExperienceDetails()
			end
		end)
	end

	local openProfileView = function()
		gameAnalytics.reportPeopleListInteraction("ProfileDropdown", userId, layoutOrder, layoutOrder + 1, "SocialTab")

		dispatch(navigateDown({
			name = appPage.ViewUserProfile,
			detail = userId,
			extraProps = {},
		}))
	end

	local onChatWithFriend = function()
		gameAnalytics.reportPeopleListInteraction("ChatDropdown", userId, layoutOrder + 1, layoutOrder, "SocialTab")
		GuiService:BroadcastNotification(userId, notificationType.LAUNCH_CONVERSATION)
	end

	local presenceIcon = nil
	local contextualColorStyle = style.Theme.TextDefault
	local contextualLabel = localized.offline

	local font = style.Font.CaptionBody
	local fontSize = font.RelativeSize * style.Font.BaseSize

	if inGame then
		contextualColorStyle = style.Theme.TextEmphasis
		contextualLabel = lastLocation ~= "" and lastLocation or localized.online
		presenceIcon = universeId ~= nil
				and React.createElement(ImageSetLabel, {
					Image = Images["icons/menu/games_small"],
					Size = UDim2.fromOffset(PRESENCE_ICON_IMAGE_SIZE, PRESENCE_ICON_IMAGE_SIZE),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				})
			or React.createElement("Frame", {
				BackgroundTransparency = style.Theme.OnlineStatus.Transparency,
				BackgroundColor3 = style.Theme.OnlineStatus.Color,
				Size = UDim2.new(0, PRESENCE_ICON_SIZE, 0, PRESENCE_ICON_SIZE),
				LayoutOrder = 1,
			}, {
				CornerRadius = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, PRESENCE_ICON_SIZE),
				}),
			})
	elseif inStudio then
		contextualLabel = lastLocation
		presenceIcon = React.createElement(ImageSetLabel, {
			Image = Images["icons/logo/studiologo_small"],
			Size = UDim2.fromOffset(PRESENCE_ICON_IMAGE_SIZE, PRESENCE_ICON_IMAGE_SIZE),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		})
	elseif isOnline then
		contextualLabel = localized.online
		presenceIcon = React.createElement("Frame", {
			BackgroundTransparency = style.Theme.OnlineStatus.Transparency,
			BackgroundColor3 = style.Theme.OnlineStatus.Color,
			Size = UDim2.new(0, PRESENCE_ICON_SIZE, 0, PRESENCE_ICON_SIZE),
			LayoutOrder = 1,
		}, {
			CornerRadius = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, PRESENCE_ICON_SIZE),
			}),
		})
	end

	local contextLineSizeY = TextService:GetTextSize(contextualLabel, fontSize, font.Font, Vector2.new(100, fontSize)).Y

	local contextualLabelHeight = contextLineSizeY * MAX_NUMBER_OF_LINES
	-- Ensure we can join by checking the in game presence, and whether permission grants access to the universe info
	local canJoinExperience = inGame and universePlaceInfo

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, CONTACTS_ENTRY_HEIGHT),
		LayoutOrder = layoutOrder,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		entryContent = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, INNER_PADDING),
			}),
			botAlignedGroup = React.createElement("Frame", {
				Size = UDim2.new(0, HEADSHOT_SIZE, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0, 1),
				LayoutOrder = 1,
			}, {
				genericHead = React.createElement(ImageSetButton, {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Image = thumbnail,
					Size = UDim2.new(0, HEADSHOT_SIZE, 0, HEADSHOT_SIZE),
					Position = UDim2.fromScale(0, 1),
					AnchorPoint = Vector2.new(0, 1),

					[React.Event.Activated] = openProfileView,
				}),
			}),
			middleTextGroup = React.createElement("TextButton", {
				Size = UDim2.new(1, -HEADSHOT_SIZE - ADD_BUTTON_WIDTH - 2 * INNER_PADDING, 1, 0),
				Text = "",
				BackgroundTransparency = 1,
				[React.Event.Activated] = openProfileView,
				LayoutOrder = 2,
			}, {
				layout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, CONTEXTUAL_TEXT_PADDING),
				}),
				displayNameLabel = React.createElement("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Font = style.Font.Header2.Font,
					TextSize = style.Font.Header2.RelativeSize * style.Font.BaseSize,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextTransparency = style.Theme.TextEmphasis.Transparency,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LineHeight = 1,
					Size = UDim2.new(1, 0, 0, 20),
					Text = displayName,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Bottom,
					LayoutOrder = 1,
				}),
				contactContextualFrame = React.createElement("Frame", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, CONTEXTUAL_TEXT_HEIGHT),
				}, {
					layout = React.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						FillDirection = Enum.FillDirection.Horizontal,
						Padding = UDim.new(0, CONTEXTUAL_TEXT_PADDING),
					}),

					presenceIcon = presenceIcon,

					contactContextual = React.createElement("TextLabel", {
						TextColor3 = contextualColorStyle.Color,
						TextTransparency = contextualColorStyle.Transparency,
						BackgroundTransparency = 1,
						Font = style.Font.CaptionBody.Font,
						TextSize = style.Font.CaptionBody.RelativeSize * style.Font.BaseSize,
						Size = UDim2.new(
							1,
							-(presenceIcon ~= nil and (CONTEXTUAL_TEXT_PADDING + PRESENCE_ICON_SIZE) or 0),
							0,
							contextualLabelHeight
						),
						Text = contextualLabel,
						RichText = false,
						TextWrapped = true,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						LayoutOrder = 2,
					}),
				}),
			}),

			joinExperienceButton = canJoinExperience and React.createElement(PrimaryContextualButton, {
				icon = Images["icons/common/play"],
				size = UDim2.fromOffset(ADD_BUTTON_WIDTH, ADD_BUTTON_HEIGHT),
				onActivated = onJoinExperience,
				layoutOrder = 3,
			}),

			chatButton = if not canJoinExperience
				then React.createElement(IconButton, {
					icon = Images["icons/menu/chat_off"],
					iconSize = IconSize.Medium,
					size = UDim2.fromOffset(ADD_BUTTON_WIDTH, ADD_BUTTON_HEIGHT),
					onActivated = onChatWithFriend,
					layoutOrder = 3,
				})
				else nil,
		}),

		divider = if hasDivider
			then React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = style.Theme.Divider.Color,
				BackgroundTransparency = style.Theme.Divider.Transparency,
			})
			else nil,
	})
end

return SocialPanelUserProfile
