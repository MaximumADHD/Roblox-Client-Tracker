--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)

local RetrievalStatus = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local GetFriendsFromUserId = dependencies.NetworkingFriends.GetFriendsFromUserId

local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner

local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	isDevMode: boolean?,
	dismissCallback: () -> (),
	searchText: string,
}

local function FriendListContainer(props: Props)
	local style = useStyle()
	local dispatch = useDispatch()
	local theme = style.Theme
	local font = style.Font

	local selectStatus = React.useCallback(function(state)
		if props.isDevMode then
			return GetFriendsFromUserId.getStatus(state, localUserId)
		else
			-- Non dev mode doesn't make a network request, so it just "succeeds".
			return RetrievalStatus.Done
		end
	end, { props.isDevMode })
	local status = useSelector(selectStatus)

	-- Not used for non dev mode but defined here due to the no friends component.
	local getFriends = React.useCallback(function()
		if localUserId then
			dispatch(GetFriendsFromUserId.API(localUserId))
		end
	end, {})

	local noFriendsText = React.useMemo(function()
		local message
		if props.searchText ~= "" then
			message = "No friends found"
		elseif status == RetrievalStatus.Failed then
			message = "Something went wrong! Please try again."
		else
			message = "Oh no you have no friends."
		end

		-- TODO (timothyhsu): Localization
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 20),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),

			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12),
				PaddingBottom = UDim.new(0, 12),
				PaddingLeft = UDim.new(0, 24),
				PaddingRight = UDim.new(0, 24),
			}),

			Image = if status ~= RetrievalStatus.Failed or props.searchText ~= ""
				then React.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Images[if props.searchText == ""
						then "icons/graphic/findfriends_xlarge"
						else "icons/status/oof_xlarge"],
					LayoutOrder = 1,
					Size = UDim2.fromOffset(96, 96),
				})
				else nil,

			Message = React.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Font = font.Body.Font,
				LayoutOrder = 2,
				Text = message,
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.Body.RelativeSize * font.BaseSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextWrapped = true,
			}),

			FailedButton = if status == RetrievalStatus.Failed and props.searchText == ""
				then React.createElement("TextButton", {
					Size = UDim2.new(0, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = theme.SystemPrimaryDefault.Color,
					BackgroundTransparency = theme.SystemPrimaryDefault.Transparency,
					BorderSizePixel = 0,
					Font = font.Header2.Font,
					LayoutOrder = 3,
					Text = "Retry",
					TextColor3 = theme.SystemPrimaryContent.Color,
					TextSize = font.Header2.RelativeSize * font.BaseSize,
					TextTransparency = theme.SystemPrimaryContent.Transparency,
					[React.Event.Activated] = getFriends,
				}, {
					UICorner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
					UIPadding = React.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 8),
						PaddingRight = UDim.new(0, 8),
					}),
					UISizeConstraint = React.createElement("UISizeConstraint", {
						MinSize = Vector2.new(108, 36),
					}),
				})
				else nil,
		})
	end, dependencyArray(props.searchText, status))

	if props.isDevMode then
		React.useEffect(getFriends, {})

		local selectFriends = React.useCallback(function(state: any)
			local friendIds = {}
			if localUserId then
				friendIds = state.Friends.byUserId[tostring(localUserId)] or {}
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
		end, dependencyArray(localUserId, props.searchText))

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
					showDivider = i ~= #friends,
				})
			end

			return entries
		end, dependencyArray(friends))

		return if #friends == 0
				and props.searchText == ""
				and (status == RetrievalStatus.NotStarted or status == RetrievalStatus.Fetching)
			then React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 92),
				BackgroundTransparency = 1,
			}, {
				LoadingSpinner = React.createElement(LoadingSpinner, {
					size = UDim2.fromOffset(48, 48),
					position = UDim2.fromScale(0.5, 0.5),
					anchorPoint = Vector2.new(0.5, 0.5),
				}),
			})
			elseif #friends == 0 then noFriendsText
			else React.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollBarImageColor3 = theme.UIEmphasis.Color,
				ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
				ScrollBarThickness = 4,
			}, children)
	else
		local allPlayers, setAllPlayers = React.useState(function()
			local players = {}
			for _, player in ipairs(Players:GetPlayers()) do
				if player.UserId ~= localUserId then
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
		end, dependencyArray(props.searchText, allPlayers))

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
					showDivider = i ~= #filteredPlayers,
				})
			end

			return entries
		end, dependencyArray(filteredPlayers))

		return if #filteredPlayers == 0
			then noFriendsText
			else React.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.new(),
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollBarImageColor3 = theme.UIEmphasis.Color,
				ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
				ScrollBarThickness = 4,
			}, children)
	end
end

return FriendListContainer
