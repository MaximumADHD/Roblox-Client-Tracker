--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SocialService = game:GetService("SocialService")

local React = require(CorePackages.Packages.React)
local PeekView = require(CorePackages.Workspace.Packages.PeekView).PeekView
local PeekViewState = require(CorePackages.Workspace.Packages.PeekView).PeekViewState
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)

local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local UIBlox = dependencies.UIBlox
local useStyle = UIBlox.Core.Style.useStyle

local ContactListHeader = require(ContactList.Components.ContactListHeader)
local CallHistoryContainer = require(ContactList.Components.CallHistory.CallHistoryContainer)
local FriendListContainer = require(ContactList.Components.FriendList.FriendListContainer)
local ContactListSearchBar = require(ContactList.Components.ContactListSearchBar)

local CloseContactList = require(ContactList.Actions.CloseContactList)
local OpenContactList = require(ContactList.Actions.OpenContactList)
local SetCurrentPage = require(ContactList.Actions.SetCurrentPage)

local Pages = require(ContactList.Enums.Pages)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player
local currentCamera = workspace.CurrentCamera :: Camera

local EnableSocialServiceIrisInvite = game:GetEngineFeature("EnableSocialServiceIrisInvite")

export type Props = {}

local SEARCH_BAR_HEIGHT = 36
local HEADER_HEIGHT = 48
local PADDING = 12
local DOCKED_WIDTH = 376

local function ContactListContainer(props: Props)
	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()

	local contactListContainerRef = React.useRef(nil :: Frame?)
	local isSmallScreen, setIsSmallScreen = React.useState(currentCamera.ViewportSize.X < 640)
	local searchText, setSearchText = React.useState("")

	local closePeekViewSignal = Signal.new()

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local SharedRS = ReplicatedStorage:FindFirstChild("Shared")

	local getIsDevMode = function()
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

	local dismissCallback = function()
		if not isSmallScreen and contactListContainerRef.current then
			pcall(function()
				contactListContainerRef.current:TweenPosition(
					UDim2.new(0, -DOCKED_WIDTH, 0, PADDING),
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
			closePeekViewSignal:fire()
		end
	end

	local onSearchChanged = function(newSearchQuery)
		setSearchText(newSearchQuery)
	end

	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)

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

	-- Listen for screen size changes
	React.useEffect(function()
		local conn = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			if currentCamera.ViewportSize.X < 640 then
				setIsSmallScreen(true)
			else
				setIsSmallScreen(false)
			end
		end)

		return function()
			conn:Disconnect()
		end
	end, {})

	React.useEffect(function()
		if currentPage and not isSmallScreen and contactListContainerRef.current then
			pcall(function()
				contactListContainerRef.current:TweenPosition(
					UDim2.new(0, PADDING, 0, PADDING),
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

	local viewStateChanged = function(viewState, prevViewState)
		if viewState == PeekViewState.Closed then
			if localPlayer and EnableSocialServiceIrisInvite then
				SocialService:InvokeIrisInvitePromptClosed(localPlayer)
			end
		end
	end

	local contactListContainerContent = function()
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
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
			-- Use an ImageButton here so that it acts as a click sink
			ContactList = React.createElement("ImageButton", {
				Size = if isSmallScreen
					then UDim2.new(1, 0, 1, -PADDING)
					else UDim2.new(0, DOCKED_WIDTH, 1, -PADDING * 2),
				Position = if isSmallScreen
					then UDim2.new(0, 0, 0, PADDING)
					else UDim2.new(0, -DOCKED_WIDTH, 0, PADDING),
				AutoButtonColor = false,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				ref = contactListContainerRef,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 12),
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
				}),
				ContentContainer = React.createElement("Frame", {
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 1, -(HEADER_HEIGHT + SEARCH_BAR_HEIGHT + PADDING)),
					BackgroundTransparency = 1,
				}, currentContainer),
			}),
		})
	end

	return if currentPage and isSmallScreen
		then React.createElement(PeekView, {
			briefViewContentHeight = UDim.new(0.5, 0),
			canDragFullViewToBrief = true,
			closeSignal = closePeekViewSignal,
			viewStateChanged = viewStateChanged,
		}, {
			Content = contactListContainerContent(),
		})
		elseif currentPage and not isSmallScreen then contactListContainerContent()
		else nil
end

return ContactListContainer
