local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local Dash = require(Packages.Dash)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local LocalTypes = require(UserSearch.Common.LocalTypes)
local useRelationshipSelector = require(script.Parent.useRelationshipSelector)

type Button = {
	icon: UIBlox.ImageSetImage,
	isSecondary: boolean?,
	isDisabled: boolean?,
	onActivated: () -> (),
}

local useSearchTileButtons = function(
	args: LocalTypes.Args,
	luaAppNetworkingRequests: LocalTypes.LuaAppNetworkingRequests
): { [number]: Button }?
	local relationship = useRelationshipSelector(args.userId)

	if relationship.isMyself or relationship.status == Enum.FriendStatus.Friend then
		return nil
	end

	if relationship.status == Enum.FriendStatus.FriendRequestReceived then
		return {
			{
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				isDisabled = false,
				onActivated = function()
					luaAppNetworkingRequests.acceptFriendRequest(args)
				end,
			},
		}
	elseif relationship.status == Enum.FriendStatus.FriendRequestSent then
		return {
			{
				icon = Images["icons/actions/friends/friendpending"],
				isSecondary = false,
				isDisabled = true,
				onActivated = Dash.noop(),
			},
		}
	elseif not relationship.status or relationship.status == Enum.FriendStatus.NotFriend then
		return {
			{
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				isDisabled = false,
				onActivated = function()
					luaAppNetworkingRequests.requestFriendship(args)
				end,
			},
		}
	end

	return nil
end

return useSearchTileButtons
