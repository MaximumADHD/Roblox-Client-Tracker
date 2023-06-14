--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local SocialService = game:GetService("SocialService")

local React = require(CorePackages.Packages.React)
local PeekView = require(CorePackages.Workspace.Packages.PeekView).PeekView
local PeekViewState = require(CorePackages.Workspace.Packages.PeekView).PeekViewState

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)

local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local UIBlox = dependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local useStyle = UIBlox.Core.Style.useStyle

local CallHistoryContainer = require(ContactList.Components.CallHistory.CallHistoryContainer)
local CallDetailsContainer = require(ContactList.Components.CallDetails.CallDetailsContainer)
local FriendListContainer = require(ContactList.Components.FriendList.FriendListContainer)

local CloseContactList = require(ContactList.Actions.CloseContactList)
local OpenContactList = require(ContactList.Actions.OpenContactList)

local Pages = require(ContactList.Enums.Pages)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local EnableSocialServiceIrisInvite = game:GetEngineFeature("EnableSocialServiceIrisInvite")

export type Props = {
	camera: Camera,
}

local HEADER_HEIGHT = 48
local TOP_PADDING = 12

local function ContactListContainer(props: Props)
	local style = useStyle()
	local theme = style.Theme

	local dispatch = useDispatch()

	local isSmallScreen, setIsSmallScreen = React.useState(props.camera.ViewportSize.X < 640)

	-- Listen for screen size changes
	React.useEffect(function()
		local conn = props.camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			if props.camera.ViewportSize.X < 640 then
				setIsSmallScreen(true)
			else
				setIsSmallScreen(false)
			end
		end)

		return function()
			conn:Disconnect()
		end
	end, { props.camera })

	if EnableSocialServiceIrisInvite then
		React.useEffect(function()
			local promptIrisInviteRequestedConn = SocialService.PromptIrisInviteRequested:Connect(
				function(player: any, tag: string)
					if localPlayer and localPlayer.UserId == player.UserId then
						dispatch(OpenContactList(tag))
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

	local selectCurrentPage = React.useCallback(function(state: any)
		return state.Navigation.currentPage
	end, {})
	local currentPage = useSelector(selectCurrentPage)

	local currentContainer
	if currentPage == Pages.CallHistory then
		currentContainer = React.createElement(CallHistoryContainer) :: any
	elseif currentPage == Pages.CallDetails then
		currentContainer = React.createElement(CallDetailsContainer) :: any
	elseif currentPage == Pages.FriendList then
		currentContainer = React.createElement(FriendListContainer) :: any
	end

	local viewStateChanged = function(viewState, prevViewState)
		if viewState == PeekViewState.Closed then
			if localPlayer and EnableSocialServiceIrisInvite then
				SocialService:InvokeIrisInvitePromptClosed(localPlayer)
			end
		end
	end

	local contactListContainerContent = function()
		return React.createElement("Frame", {
			Size = if isSmallScreen then UDim2.new(1, 0, 1, -TOP_PADDING) else UDim2.new(0, 376, 1, -TOP_PADDING),
			Position = UDim2.new(0, 0, 0, TOP_PADDING),
			BackgroundColor3 = theme.BackgroundDefault.Color,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, 12),
			}),
			Header = React.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
				BackgroundTransparency = 1,
			}, {
				DismissButton = if EnableSocialServiceIrisInvite
					then React.createElement(IconButton, {
						size = UDim2.fromOffset(28, 28),
						iconSize = IconSize.Large,
						position = UDim2.new(0, 8, 0, 0),
						iconColor3 = theme.ContextualPrimaryDefault.Color,
						iconTransparency = theme.ContextualPrimaryDefault.Transparency,
						icon = "rbxassetid://12716504880",
						onActivated = function()
							if localPlayer then
								SocialService:InvokeIrisInvitePromptClosed(localPlayer)
							end
						end,
					})
					else nil,
			}),

			ContentContainer = React.createElement("Frame", {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 1, -(HEADER_HEIGHT + TOP_PADDING)),
				BackgroundTransparency = 1,
			}, currentContainer),
		})
	end

	return if currentPage and isSmallScreen
		then React.createElement(PeekView, {
			briefViewContentHeight = UDim.new(0.5, 0),
			viewStateChanged = viewStateChanged,
		}, {
			Content = contactListContainerContent(),
		})
		elseif currentPage and not isSmallScreen then contactListContainerContent()
		else nil
end

return ContactListContainer
