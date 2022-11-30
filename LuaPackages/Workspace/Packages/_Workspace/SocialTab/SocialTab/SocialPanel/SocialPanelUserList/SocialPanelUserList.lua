local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local getUserAvatarImage = require(SocialTab.User.getUserAvatarImage)

local llama = dependencies.llama

local React = dependencies.React

local RoduxPresence = dependencies.RoduxPresence

local SocialLibraries = dependencies.SocialLibraries
local User = SocialLibraries.User

local useSelector = dependencies.useSelector

local USER_ROW_HEIGHT = 72

export type Props = {
	layoutOrder: number,
	renderItem: any,
}

local function mapStateToUser(state, props)
	return function(userId)
		return llama.Dictionary.join(
			state.SocialTab.Users.byUserId[userId],
			RoduxPresence.Selectors.getUserPresenceByUserId(state, userId),
			{
				thumbnail = getUserAvatarImage(userId),
				isPremium = state.SocialTab.PremiumByUserId[userId] or false,
			}
		)
	end
end

local function SocialPanelUserList(props: Props)
	local renderItem = props.renderItem
	local layoutOrder = props.layoutOrder

	local function usersListSelector(state)
		local localFriendsList = state.SocialTab and state.SocialTab.Friends.byUserId.localUserId or {}

		local success, result = xpcall(function()
			return llama.List.sort(
				llama.List.map(localFriendsList, mapStateToUser(state, props)),
				if dependencies.GetFFlagUseCorrectedFriendSortUtil()
					then User.sortFriendsByCorrectedPresenceAndRank
					else User.sortFriendsByPresenceAndRank
			)
		end, debug.traceback)
		assert(success, tostring(result))
		return result
	end

	local usersList = useSelector(usersListSelector)

	local userComponents = {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for key, value in pairs(usersList) do
		local userProps = llama.Dictionary.join({
			layoutOrder = key,
			hasDivider = key < #usersList,
		}, value)
		userComponents["User_" .. key] = renderItem(userProps, key)
	end

	return React.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, #usersList * USER_ROW_HEIGHT),
		BackgroundTransparency = 1,
	}, userComponents)
end

return SocialPanelUserList
