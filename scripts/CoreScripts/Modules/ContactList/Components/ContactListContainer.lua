--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SocialService = game:GetService("SocialService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(CorePackages.Packages.React)
local PeekView = require(CorePackages.Workspace.Packages.PeekView).PeekView
local PeekViewState = require(CorePackages.Workspace.Packages.PeekView).PeekViewState
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local GetFFlagCorescriptsSoundManagerEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCorescriptsSoundManagerEnabled

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)

local dependencyArray = dependencies.Hooks.dependencyArray
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch
local usePrevious = dependencies.Hooks.usePrevious

local UIBlox = dependencies.UIBlox
local useStyle = UIBlox.Core.Style.useStyle

local GetFFlagPeekViewEnableSnapToViewState = dependencies.GetFFlagPeekViewEnableSnapToViewState

local ContactListHeader = require(ContactList.Components.ContactListHeader)
local CallHistoryContainer = require(ContactList.Components.CallHistory.CallHistoryContainer)
local FriendListContainer = require(ContactList.Components.FriendList.FriendListContainer)
local ContactListSearchBar = require(ContactList.Components.ContactListSearchBar)

local CloseContactList = require(ContactList.Actions.CloseContactList)
local OpenContactList = require(ContactList.Actions.OpenContactList)
local SetCurrentPage = require(ContactList.Actions.SetCurrentPage)

local Pages = require(ContactList.Enums.Pages)

local TopBarConstants = require(ContactList.Parent.TopBar.Constants)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player
local currentCamera = workspace.CurrentCamera :: Camera

-- Remove once we no longer need dev mode.
local SharedRS = nil

local EnableSocialServiceIrisInvite = game:GetEngineFeature("EnableSocialServiceIrisInvite")

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
	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()

	local contactListContainerRef = React.useRef(nil :: Frame?)
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

	local getIsDevMode = function()
		if not SharedRS then
			SharedRS = ReplicatedStorage:FindFirstChild("Shared")
		end

		if SharedRS then
			local IsUserInDevModeRemoteFunction =
				SharedRS:WaitForChild("IsUserInDevModeRemoteFunction") :: RemoteFunction
			return IsUserInDevModeRemoteFunction:InvokeServer(localPlayer.UserId)
		end

		return false
	end

	local isDevMode = getIsDevMode()

	if EnableSocialServiceIrisInvite then
		React.useEffect(function()
			local promptIrisInviteRequestedConn = SocialService.PromptIrisInviteRequested:Connect(
				function(player: any, tag: string)
					if localPlayer and localPlayer.UserId == player.UserId then
						if not getIsDevMode() then
							dispatch(SetCurrentPage(Pages.FriendList))
						else
							dispatch(OpenContactList(tag))
						end
					end
				end
			)

			local irisInvitePromptClosedConn = SocialService.IrisInvitePromptClosed:Connect(function(player: any)
				if localPlayer and localPlayer.UserId == player.UserId then
					dispatch(CloseContactList())
				end
			end)

			return function()
				promptIrisInviteRequestedConn:Disconnect()
				irisInvitePromptClosedConn:Disconnect()
			end
		end, {})
	end

	local dismissCallback = React.useCallback(function()
		if not isSmallScreen and contactListContainerRef.current then
			if GetFFlagCorescriptsSoundManagerEnabled() then
				SoundManager:PlaySound(Sounds.Swipe.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
			end
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

	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)
	local prevCurrentPage = usePrevious(currentPage)

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
		if not prevCurrentPage and currentPage then
			if GetFFlagCorescriptsSoundManagerEnabled() then
				SoundManager:PlaySound(Sounds.Swipe.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
			end
		end

		-- TODO (timothyhsu): Remove ClosePhonebookRemoteEvent once Call API is completed
		local ClosePhonebookRemoteEvent = ReplicatedStorage:WaitForChild("ClosePhonebookRemoteEvent", 5) :: RemoteEvent
		local closePhonebookConn
		if ClosePhonebookRemoteEvent then
			closePhonebookConn = ClosePhonebookRemoteEvent.OnClientEvent:Connect(function()
				if currentPage then
					dismissCallback()
				end
			end)
		end

		return function()
			if closePhonebookConn then
				closePhonebookConn:Disconnect()
			end
		end
	end, { currentPage })

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
			if localPlayer and EnableSocialServiceIrisInvite then
				SocialService:InvokeIrisInvitePromptClosed(localPlayer)
			end

			if GetFFlagCorescriptsSoundManagerEnabled() then
				SoundManager:PlaySound(Sounds.Swipe.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
			end
		end

		setExpectedPeekViewState(viewState)
	end, {})

	local onSearchBarFocused = React.useCallback(function()
		setExpectedPeekViewState(PeekViewState.Full)
	end, {})

	-- Use an ImageButton here so that it acts as a click sink
	local contactListContainerContent = React.useMemo(function()
		local currentContainer
		if currentPage == Pages.CallHistory then
			currentContainer = React.createElement(CallHistoryContainer, {
				dismissCallback = dismissCallback,
				searchText = searchText,
			}) :: any
		elseif currentPage == Pages.FriendList then
			currentContainer = React.createElement(FriendListContainer, {
				isDevMode = isDevMode,
				dismissCallback = dismissCallback,
				searchText = searchText,
			}) :: any
		end

		return React.createElement("ImageButton", {
			Size = if isSmallScreen
				then UDim2.new(1, 0, 0, contactListContainerContentHeight - PEEK_HEADER_HEIGHT)
				else UDim2.new(0, DOCKED_WIDTH, 1, -(PHONEBOOK_CONTAINER_MARGIN + PHONEBOOK_CONTAINER_TOP_MARGIN)),
			Position = if isSmallScreen
				then UDim2.new(0, 0, 0, 0)
				else UDim2.new(0, -DOCKED_WIDTH, 0, PHONEBOOK_CONTAINER_TOP_MARGIN),
			AutoButtonColor = false,
			BackgroundColor3 = theme.BackgroundDefault.Color,
			ref = contactListContainerRef,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, 12),
			}),
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = if isSmallScreen then UDim.new(0, 0) else UDim.new(0, PADDING),
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
				isDevMode = isDevMode,
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
	end, dependencyArray(contactListContainerContentHeight, currentPage, dismissCallback, isSmallScreen, searchText))

	return if currentPage
		then React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			[React.Event.InputBegan] = function(_, inputObject)
				if
					inputObject.UserInputType == Enum.UserInputType.MouseButton1
					or inputObject.UserInputType == Enum.UserInputType.Touch
				then
					dismissCallback()
				end
			end,
		}, {
			Content = if isSmallScreen
				then React.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -PHONEBOOK_CONTAINER_TOP_MARGIN),
					Position = UDim2.fromOffset(0, PHONEBOOK_CONTAINER_TOP_MARGIN),
					BackgroundTransparency = 1,
				}, {
					peekView = React.createElement(PeekView, {
						briefViewContentHeight = UDim.new(0.6, 0),
						canDragFullViewToBrief = true,
						closeSignal = closePeekViewSignal.current,
						elasticBehavior = Enum.ElasticBehavior.WhenScrollable,
						peekViewState = expectedPeekViewState,
						snapToSameViewStateOnIdle = if GetFFlagPeekViewEnableSnapToViewState() then true else nil,
						viewStateChanged = viewStateChanged,
					}, {
						Content = contactListContainerContent,
					}),
				})
				else contactListContainerContent,
		})
		else nil
end

return ContactListContainer
