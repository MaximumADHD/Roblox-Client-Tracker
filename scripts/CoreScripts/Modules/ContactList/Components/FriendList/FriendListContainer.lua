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
local localPlayer = Players.LocalPlayer

export type Props = {
	localUserId: number?,
}

local defaultProps = {
	localUserId = if localPlayer then localPlayer.UserId else nil,
}

local function FriendListContainer(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local style = useStyle()
	local dispatch = useDispatch()
	local theme = style.Theme

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

	local friendList: any = React.useMemo(function()
		local friends = {}
		friends["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})

		for index, friendUserId in ipairs(friendUserIds) do
			friends[index] = React.createElement(FriendListItem, {
				userId = friendUserId,
			})
		end
		return friends
	end, { friendUserIds })

	return React.createElement("ScrollingFrame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(0.5, 0.5),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		CanvasSize = UDim2.new(),
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
	}, friendList)
end

return FriendListContainer
