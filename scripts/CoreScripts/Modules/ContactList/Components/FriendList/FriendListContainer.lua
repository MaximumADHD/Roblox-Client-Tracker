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
	dismissCallback: () -> (),
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
			local friendIds = {}
			if props.localUserId then
				friendIds = state.Friends.byUserId[tostring(props.localUserId)] or {}
			end

			local list = {}
			for _, friendId in ipairs(friendIds) do
				local friend = state.Users.byUserId[tostring(friendId)]
				if friend then
					list[#list + 1] = friend
				end
			end

			return list
		end)

		local friendsList = useSelector(selectFriends)

		local friends = {}
		friends["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})

		for index, friend in ipairs(friendsList) do
			friends[index] = React.createElement(FriendListItem, {
				userId = friend.id,
				userName = friend.username,
				displayName = friend.displayName,
				dismissCallback = props.dismissCallback,
			})
		end

		local friendList: any = React.useMemo(function()
			if #friendsList == 0 then
				-- TODO (timothyhsu): Localization
				friends["NoFriendsText"] = noFriendsText
			end

			return friends
		end, { friendsList })

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
				setAllPlayers(Cryo.Dictionary.join(allPlayers, { userId = player }))
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
				allPlayers[player.UserId] = player
			end
		end

		local friends = {}
		friends["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})

		local numPlayers = 0
		for _, player in pairs(allPlayers) do
			numPlayers = numPlayers + 1
			friends[player.UserId] = React.createElement(FriendListItem, {
				userId = player.UserId,
				userName = player.Name,
				displayName = player.DisplayName,
				dismissCallback = props.dismissCallback,
			})
		end

		local friendList: any = React.useMemo(function()
			if numPlayers == 0 then
				friends["NoFriendsText"] = noFriendsText
			end

			return friends
		end, { numPlayers })

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
