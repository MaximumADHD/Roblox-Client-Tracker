local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)

local PlayerTile = UIBlox.App.Tile.PlayerTile
local useStyle = UIBlox.Core.Style.useStyle

local LocalTypes = require(UserSearch.Common.LocalTypes)
local useContextualInfo = require(script.Parent.useContextualInfo)
local useSearchTileButtons = require(script.Parent.useSearchTileButtons)

export type Props = {
	user: LocalTypes.SearchUser,
	index: number,
	size: UDim2,
	searchParameters: LocalTypes.SearchParameters,
	hasEmphasis: boolean?,

	luaAppNetworkingRequests: LocalTypes.LuaAppNetworkingRequests,
	luaAppNavigation: LocalTypes.LuaAppNavigation,
}

local getThumbnail = function(userId: string | number)
	return string.format("rbxthumb://type=Avatar&id=%s&w=720&h=720", tostring(userId))
end

local SearchUserTile = function(props: Props)
	local user = props.user
	local style = useStyle()

	local onActivated = function()
		props.luaAppNavigation.navigateToUserInfo({
			userId = user.id,
			index = props.index,
			hasEmphasis = props.hasEmphasis,
		})
	end

	local contextualInfo = useContextualInfo({
		userId = user.id,
		previousUsernames = user.previousUsernames,
		searchKeyword = props.searchParameters.searchKeyword,
	})

	local searchTileButtons = useSearchTileButtons({
		userId = user.id,
		index = props.index,
	}, props.luaAppNetworkingRequests)

	return React.createElement(PlayerTile, {
		tileSize = props.size,

		title = user.displayName,
		subtitle = "@" .. user.name,

		thumbnail = getThumbnail(user.id),
		onActivated = onActivated,
		buttons = searchTileButtons,

		relevancyInfo = contextualInfo and {
			text = contextualInfo.text,
			fontStyle = style.Font.CaptionBody,
		} or nil,
	})
end

return SearchUserTile
