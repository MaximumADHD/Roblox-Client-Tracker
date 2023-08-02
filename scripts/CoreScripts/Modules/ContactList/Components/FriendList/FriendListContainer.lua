--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
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
	searchText: string,
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
		-- TODO (timothyhsu): Localization
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
				if
					friend
					and (
						props.searchText == ""
						or string.find(friend.displayName:lower(), props.searchText:lower())
						or string.find(friend.username:lower(), props.searchText:lower())
					)
				then
					list[#list + 1] = friend
				end
			end

			-- Sort the names alphabetical.
			return Cryo.List.sort(list, function(friend1: any, friend2: any)
				if friend1.displayName:lower() ~= friend2.displayName:lower() then
					return friend1.displayName:lower() < friend2.displayName:lower()
				else
					return friend1.username:lower() < friend2.username:lower()
				end
			end)
		end, { props.localUserId, props.searchText })

		local friends = useSelector(selectFriends, function(newFriends: any, oldFriends: any)
			if #newFriends ~= #oldFriends then
				-- Shortcut for unmatched list lengths.
				return false
			else
				-- Check to see if friends list was changed.
				for i, friend in ipairs(newFriends) do
					if friend.id ~= oldFriends[i].id then
						return false
					end
				end
				return true
			end
		end)

		local children: any = React.useMemo(function()
			local entries = {}
			entries["UIListLayout"] = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			for i, friend in ipairs(friends) do
				entries[i] = React.createElement(FriendListItem, {
					userId = friend.id,
					userName = friend.username,
					displayName = friend.displayName,
					dismissCallback = props.dismissCallback,
					layoutOrder = i,
				})
			end

			return entries
		end, dependencyArray(friends))

		return if #friends == 0 and props.searchText == ""
			then noFriendsText
			else React.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.new(),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
			}, children)
	else
		local allPlayers, setAllPlayers = React.useState(function()
			local players = {}
			for _, player in ipairs(Players:GetPlayers()) do
				if player.UserId ~= localPlayer.UserId then
					players[player.UserId] = player
				end
			end

			return players
		end)

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

		local filteredPlayers = React.useMemo(function()
			local list = {}
			for _, player in pairs(allPlayers) do
				if
					props.searchText == ""
					or string.find(player.DisplayName:lower(), props.searchText:lower())
					or string.find(player.Name:lower(), props.searchText:lower())
				then
					list[#list + 1] = player
				end
			end

			return Cryo.List.sort(list, function(player1: any, player2: any)
				if player1.DisplayName:lower() ~= player2.DisplayName:lower() then
					return player1.DisplayName:lower() < player2.DisplayName:lower()
				else
					return player1.Name:lower() < player2.Name:lower()
				end
			end)
		end, { props.searchText, allPlayers })

		local children: any = React.useMemo(function()
			local entries = {}
			entries["UIListLayout"] = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			for i, player in ipairs(filteredPlayers) do
				entries[i] = React.createElement(FriendListItem, {
					userId = player.UserId,
					userName = player.Name,
					displayName = player.DisplayName,
					dismissCallback = props.dismissCallback,
					layoutOrder = i,
				})
			end

			return entries
		end, dependencyArray(filteredPlayers))

		return if #filteredPlayers == 0 and props.searchText == ""
			then noFriendsText
			else React.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.new(),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
			}, children)
	end
end

return FriendListContainer
