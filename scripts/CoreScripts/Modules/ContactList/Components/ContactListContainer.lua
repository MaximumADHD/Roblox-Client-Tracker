--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SocialService = game:GetService("SocialService")

local React = require(CorePackages.Packages.React)
local PeekView = require(CorePackages.Workspace.Packages.PeekView).PeekView
local PeekViewState = require(CorePackages.Workspace.Packages.PeekView).PeekViewState
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local useIsSpatial = require(CorePackages.Workspace.Packages.Responsive).useIsSpatial

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)

local dependencyArray = dependencies.Hooks.dependencyArray
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local UIBlox = dependencies.UIBlox
local useStyle = UIBlox.Core.Style.useStyle

local useAnalytics = require(ContactList.Analytics.useAnalytics)
local EventNamesEnum = require(ContactList.Analytics.EventNamesEnum)

local ContactListHeader = require(ContactList.Components.ContactListHeader)
local CallHistoryContainer = require(ContactList.Components.CallHistory.CallHistoryContainer)
local FriendListContainer = require(ContactList.Components.FriendList.FriendListContainer)
local ContactListSearchBar = require(ContactList.Components.ContactListSearchBar)

local SetCurrentPage = require(ContactList.Actions.SetCurrentPage)
local SetCurrentTag = require(ContactList.Actions.SetCurrentTag)
local OpenOrUpdateDialog = require(ContactList.Actions.OpenOrUpdateDialog)

local Pages = require(ContactList.Enums.Pages)

local TopBarConstants = require(ContactList.Parent.TopBar.Constants)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player
local currentCamera = workspace.CurrentCamera :: Camera

local SEARCH_BAR_HEIGHT = 36
local HEADER_HEIGHT = 36
local PADDING = 8
local DOCKED_WIDTH = 376
-- Margin between left and bottom border of the screen when small screen is not applied
local PHONEBOOK_CONTAINER_MARGIN = 12
-- Margin between phonebook and top border of screen
local PHONEBOOK_CONTAINER_TOP_MARGIN = PHONEBOOK_CONTAINER_MARGIN + TopBarConstants.TopBarHeight
-- Peekview includes header as part of the scrolling frame
-- will need to substract the height to able to correctly
-- calculate the content size
local PEEK_HEADER_HEIGHT = 25

local function ContactListContainer()
	local analytics = useAnalytics()
	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()
	local isSpatialMode = useIsSpatial()

	local contactListContainerRef = React.useRef(nil :: Frame?)
	local contactListId, setContactListId = React.useState(0)
	local isSmallScreen, setIsSmallScreen = React.useState(currentCamera.ViewportSize.X < 640)
	local searchText, setSearchText = React.useState("")
	-- The desired height of the content that does not include the backdrop.
	-- Just used for the small screen size because the PeekView requires a set
	-- size. We assume that this container is stretched to the height of the
	-- viewport.
	local contactListContainerContentHeight, setContactListContainerContentHeight =
		React.useState(currentCamera.ViewportSize.Y - PHONEBOOK_CONTAINER_TOP_MARGIN)

	local expectedPeekViewState, setExpectedPeekViewState = React.useState(nil)

	local closePeekViewSignal = React.useRef(Signal.new())

	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)

	React.useEffect(function()
		local promptIrisInviteRequestedConn = SocialService.PromptIrisInviteRequested:Connect(
			function(player: any, tag: string)
				if localPlayer and localPlayer.UserId == player.UserId then
					if not isSpatialMode then
						dispatch(SetCurrentTag(tag))
						analytics.fireEvent(EventNamesEnum.PhoneBookNavigate, {
							eventTimestampMs = os.time() * 1000,
							startingPage = currentPage,
							destinationPage = Pages.CallHistory,
						})
						dispatch(SetCurrentPage(Pages.CallHistory))

						SoundManager:PlaySound(Sounds.Swipe.Name, { Volume = 0.5 }, SoundGroups.Iris)
					else
						dispatch(
							OpenOrUpdateDialog(
								RobloxTranslator:FormatByKey("Feature.Call.Error.Label.OhNo"),
								RobloxTranslator:FormatByKey("Feature.Call.Error.Description.DeviceNotSupported"),
								function()
									SocialService:InvokeIrisInvitePromptClosed(localPlayer)
								end
							)
						)
					end
				end
			end
		)

		local closeEvent: any
		closeEvent = SocialService.PhoneBookPromptClosed
		local phoneBookPromptClosedConn = closeEvent:Connect(function(player: any)
			if localPlayer and localPlayer.UserId == player.UserId then
				analytics.fireEvent(EventNamesEnum.PhoneBookNavigate, {
					eventTimestampMs = os.time() * 1000,
					startingPage = tostring(currentPage),
					destinationPage = nil,
				})
				dispatch(SetCurrentPage(nil))
				-- Increment the id so we create a new PeekView for the next open.
				setContactListId(contactListId + 1)
			end
		end)

		return function()
			promptIrisInviteRequestedConn:Disconnect()
			phoneBookPromptClosedConn:Disconnect()
		end
	end, dependencyArray(contactListId, currentPage))

	local dismissCallback = React.useCallback(function()
		if not isSmallScreen and contactListContainerRef.current then
			SoundManager:PlaySound(Sounds.Swipe.Name, { Volume = 0.5 }, SoundGroups.Iris)
			pcall(function()
				contactListContainerRef.current:TweenPosition(
					UDim2.new(0, -DOCKED_WIDTH, 0, PHONEBOOK_CONTAINER_TOP_MARGIN),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.3,
					true,
					function()
						SocialService:InvokeIrisInvitePromptClosed(localPlayer)
					end
				)
			end)
		else
			if closePeekViewSignal and closePeekViewSignal.current then
				closePeekViewSignal.current:fire()
			end
		end
	end, { isSmallScreen })

	local onSearchChanged = React.useCallback(function(newSearchQuery)
		setSearchText(newSearchQuery)
	end, {})

	-- Listen for screen size changes
	React.useEffect(function()
		local conn = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			if currentCamera.ViewportSize.X < 640 then
				setIsSmallScreen(true)
			else
				setIsSmallScreen(false)
			end

			setContactListContainerContentHeight(currentCamera.ViewportSize.Y - PHONEBOOK_CONTAINER_TOP_MARGIN)
		end)

		return function()
			conn:Disconnect()
		end
	end, {})

	React.useEffect(function()
		if currentPage and not isSmallScreen and contactListContainerRef.current then
			pcall(function()
				contactListContainerRef.current:TweenPosition(
					UDim2.new(0, PHONEBOOK_CONTAINER_MARGIN, 0, PHONEBOOK_CONTAINER_TOP_MARGIN),
					Enum.EasingDirection.In,
					Enum.EasingStyle.Quad,
					0.3,
					true
				)
			end)
		end

		-- Reset search query every time we navigate to a new page
		setSearchText("")
	end, { isSmallScreen, currentPage })

	local viewStateChanged = React.useCallback(function(viewState, prevViewState)
		if viewState == PeekViewState.Closed then
			if localPlayer then
				SocialService:InvokeIrisInvitePromptClosed(localPlayer)
			end

			SoundManager:PlaySound(Sounds.Swipe.Name, { Volume = 0.5 }, SoundGroups.Iris)
		end

		setExpectedPeekViewState(viewState)
	end, {})

	local onSearchBarFocused = React.useCallback(function()
		analytics.fireEvent(EventNamesEnum.PhoneBookSearchClicked, { eventTimestampMs = os.time() * 1000 })
		if currentPage ~= Pages.FriendList then
			analytics.fireEvent(EventNamesEnum.PhoneBookNavigate, {
				eventTimestampMs = os.time() * 1000,
				startingPage = currentPage,
				destinationPage = Pages.FriendList,
			})
		end
		dispatch(SetCurrentPage(Pages.FriendList))
		setExpectedPeekViewState(PeekViewState.Full)
	end, { currentPage })

	-- Use an ImageButton here so that it acts as a click sink
	local contactListContainerContent = React.useMemo(
		function()
			local currentContainer
			if currentPage == Pages.CallHistory then
				currentContainer = React.createElement(CallHistoryContainer, {
					dismissCallback = dismissCallback,
					isSmallScreen = isSmallScreen,
					scrollingEnabled = not isSmallScreen or expectedPeekViewState == PeekViewState.Full,
					searchText = searchText,
				}) :: any
			elseif currentPage == Pages.FriendList then
				currentContainer = React.createElement(FriendListContainer, {
					dismissCallback = dismissCallback,
					isSmallScreen = isSmallScreen,
					scrollingEnabled = not isSmallScreen or expectedPeekViewState == PeekViewState.Full,
					searchText = searchText,
				}) :: any
			end

			return React.createElement("ImageButton", {
				Size = if isSmallScreen
					then UDim2.new(1, 0, 0, contactListContainerContentHeight - PEEK_HEADER_HEIGHT)
					else UDim2.new(0, DOCKED_WIDTH, 1, -PHONEBOOK_CONTAINER_TOP_MARGIN),
				Position = if isSmallScreen
					then UDim2.new(0, 0, 0, 0)
					else UDim2.new(0, -DOCKED_WIDTH, 0, PHONEBOOK_CONTAINER_TOP_MARGIN),
				AutoButtonColor = false,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				ref = contactListContainerRef,
			}, {
				UICorner = if isSmallScreen
					then nil
					else React.createElement("UICorner", {
						CornerRadius = UDim.new(0, 12),
					}),
				UIPadding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, PADDING),
				}),
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, PADDING),
				}),
				Header = React.createElement(ContactListHeader, {
					currentPage = currentPage,
					headerHeight = HEADER_HEIGHT,
					layoutOrder = 1,
					dismissCallback = dismissCallback,
				}),
				SearchBar = React.createElement(ContactListSearchBar, {
					layoutOrder = 2,
					onSearchChanged = onSearchChanged,
					searchBarHeight = SEARCH_BAR_HEIGHT,
					searchText = searchText,
					onFocused = onSearchBarFocused,
				}),
				ContentContainer = React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 1, -(HEADER_HEIGHT + SEARCH_BAR_HEIGHT + PADDING * 2)),
				}, currentContainer),
			})
		end,
		dependencyArray(
			contactListContainerContentHeight,
			currentPage,
			dismissCallback,
			expectedPeekViewState,
			isSmallScreen,
			searchText
		)
	)

	local children: any = {}
	if isSmallScreen then
		-- Use a unique id to ensure that just one PeekView is associated with
		-- each open.
		children["ContactListContent" .. tostring(contactListId)] = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -PHONEBOOK_CONTAINER_TOP_MARGIN),
			Position = UDim2.fromOffset(0, PHONEBOOK_CONTAINER_TOP_MARGIN),
			BackgroundTransparency = 1,
		}, {
			React.createElement(PeekView, {
				briefViewContentHeight = UDim.new(0.6, 0),
				canDragFullViewToBrief = true,
				closeSignal = closePeekViewSignal.current,
				elasticBehavior = Enum.ElasticBehavior.Never,
				peekViewState = expectedPeekViewState,
				viewStateChanged = viewStateChanged,
			}, {
				Content = contactListContainerContent,
			}),
		})
	else
		children["ContactListContent"] = contactListContainerContent
	end

	return if currentPage
		then React.createElement("TextButton", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Text = "",
			[React.Event.Activated] = function()
				dismissCallback()
			end,
		}, children)
		else nil
end

return ContactListContainer
