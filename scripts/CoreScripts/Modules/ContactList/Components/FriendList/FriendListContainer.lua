--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local GetFriendsFromUserId = dependencies.NetworkingFriends.GetFriendsFromUserId

local useStyle = UIBlox.Core.Style.useStyle

local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player

export type Props = {
	localUserId: number?,
	isDevMode: boolean?,
}

local defaultProps = {
	localUserId = if localPlayer then localPlayer.UserId else nil,
}

local function FriendListContainer(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local style = useStyle()
	local dispatch = useDispatch()
	local theme = style.Theme
	local font = style.Font

	local noFriendsText = React.useMemo(function()
		return React.createElement("TextLabel", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Font = font.Body.Font,
			Text = "Add friends on Roblox to be able to make a call",
			TextColor3 = theme.TextDefault.Color,
			TextSize = 16 * font.Body.RelativeSize,
			TextTransparency = theme.TextDefault.Transparency,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
		}, {
			NoFriendsTextUIPadding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			}),
		}, nil)
	end)

	if props.isDevMode then
		React.useEffect(function()
			if props.localUserId then
				dispatch(GetFriendsFromUserId.API(props.localUserId))
			end
		end, { props.localUserId })

		local selectFriends = React.useCallback(function(state: any)
			local selectFriends = {}
			if props.localUserId then
				selectFriends = state.Friends.byUserId[tostring(props.localUserId)] or {}
			end

			return selectFriends
		end)

		local friendUserIds = useSelector(selectFriends)

		local friends = {}
		friends["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})

		for index, friendUserId in ipairs(friendUserIds) do
			friends[index] = React.createElement(FriendListItem, {
				userId = friendUserId,
			})
		end

		local friendList: any = React.useMemo(function()
			if #friendUserIds == 0 then
				-- TODO (timothyhsu): Localization
				friends["NoFriendsText"] = noFriendsText
			end

			return friends
		end, { friendUserIds })

		return React.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.new(),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
		}, friendList)
	else
		local allPlayers, setAllPlayers = React.useState({})

		React.useEffect(function()
			local playerAddedConn = Players.PlayerAdded:Connect(function(player)
				local userId = player.UserId
				setAllPlayers(Cryo.Dictionary.join(allPlayers, { userId = userId }))
			end)

			local playerRemovingConn = Players.PlayerRemoving:Connect(function(player)
				setAllPlayers(Cryo.Dictionary.join(allPlayers, { [player.UserId] = Cryo.None }))
			end)

			return function()
				playerAddedConn:Disconnect()
				playerRemovingConn:Disconnect()
			end
		end, {})

		for i, player in ipairs(Players:GetPlayers()) do
			if player.UserId ~= localPlayer.UserId then
				allPlayers[player.UserId] = player.UserId
			end
		end

		local friends = {}
		friends["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})

		local numPlayers = 0
		for _, friendUserId in pairs(allPlayers) do
			numPlayers = numPlayers + 1
			friends[friendUserId] = React.createElement(FriendListItem, {
				userId = friendUserId,
			})
		end

		local friendList: any = React.useMemo(function()
			if numPlayers == 0 then
				friends["NoFriendsText"] = noFriendsText
			end

			return friends
		end, { allPlayers })

		return React.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.new(),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
		}, friendList)
	end
end

return FriendListContainer
