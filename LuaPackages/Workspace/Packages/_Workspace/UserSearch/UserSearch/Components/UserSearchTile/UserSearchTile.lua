local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)

local PlayerTile = UIBlox.App.Tile.PlayerTile
local useStyle = UIBlox.Core.Style.useStyle

local useContextualInfo = require(script.Parent.useContextualInfo)
local useSearchTileButtons = require(script.Parent.useSearchTileButtons)
local LocalTypes = require(UserSearch.Common.LocalTypes)
local GraphQLServerModule = require(Packages.GraphQLServer)
type ProfileInsights = GraphQLServerModule.ProfileInsights

export type Props = {
	user: LocalTypes.SearchUser,
	index: number,
	size: UDim2,
	searchParameters: LocalTypes.SearchParameters,
	hasEmphasis: boolean?,
	profileInsight: ProfileInsights?,

	luaAppNetworkingRequests: LocalTypes.LuaAppNetworkingRequests,
	luaAppNavigation: LocalTypes.LuaAppNavigation,
}

local getThumbnail = function(userId: string | number)
	return string.format("rbxthumb://type=Avatar&id=%s&w=720&h=720", tostring(userId))
end

local SearchUserTile = function(props: Props)
	local user = props.user
	local style = useStyle()

	local contextualInfoDisplay, contextualInfoType = useContextualInfo({
		userId = user.id,
		previousUsernames = user.previousUsernames,
		searchKeyword = props.searchParameters.searchKeyword,
		profileInsight = props.profileInsight,
	})

	local onActivated = function()
		props.luaAppNavigation.navigateToUserInfo({
			userId = user.id,
			index = props.index,
			hasEmphasis = props.hasEmphasis,
			contextualInfoType = contextualInfoType,
			contextualInfoDisplay = contextualInfoDisplay,
		})
	end

	local searchTileButtons = useSearchTileButtons({
		userId = user.id,
		index = props.index,
		contextualInfoType = contextualInfoType,
	}, props.luaAppNetworkingRequests)

	local relevancyInfo = contextualInfoDisplay
			and {
				text = contextualInfoDisplay.text,
				fontStyle = style.Font.CaptionBody,
				icon = contextualInfoDisplay.icon,
			}
		or nil

	return React.createElement(PlayerTile, {
		tileSize = props.size,

		title = user.displayName,
		subtitle = "@" .. user.name,

		thumbnail = getThumbnail(user.id),
		onActivated = onActivated,
		buttons = searchTileButtons,

		relevancyInfo = relevancyInfo,
	})
end

return SearchUserTile
