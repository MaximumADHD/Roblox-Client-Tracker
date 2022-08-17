--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InGameMenu = script.Parent.Parent

local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local GamePostFavorite = require(InGameMenu.Thunks.GamePostFavorite)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton

local FAVORITE_IMAGE_FILLED = Images["icons/actions/favoriteOn"]
local FAVORITE_IMAGE_NOT_FILLED = Images["icons/actions/favoriteOff"]

local FavoriteButton = Roact.PureComponent:extend("FavoriteButton")

function FavoriteButton:init()
	self.fetchGameIsFavorite = function()
		return self.props.fetchGameIsFavorite(networkImpl)
	end
	self:setState({
		hover = false,
		selected = false,
	})
end

function FavoriteButton:didMount()
	self.fetchGameIsFavorite()
end

function FavoriteButton:render()
	local favoriteChecked = (self.props.isFavorited ~= nil) and self.props.isFavorited or false

	return withStyle(function(style)
		return Roact.createElement(IconButton, {
			showBackground = true,
			layoutOrder = self.props.layoutOrder,
			icon = favoriteChecked and FAVORITE_IMAGE_FILLED or FAVORITE_IMAGE_NOT_FILLED,
			anchorPoint = self.props.AnchorPoint,
			position = self.props.Position,
			iconSize = UIBlox.App.ImageSet.Enum.IconSize.Medium,
			backgroundColor = {
				Color = style.Theme.UIMuted.Color,
				Transparency = 0,
			},
			onActivated = function()
				self.props.setFavorite(not favoriteChecked)
				self.props.postFavorite(networkImpl, not favoriteChecked)

				SendAnalytics(
					Constants.AnalyticsMenuActionName,
					favoriteChecked and Constants.AnalyticsUnfavoritingExperience
						or Constants.AnalyticsFavoritingExperience,
					{ source = Constants.AnalyticsLeavePromptSource }
				)
			end,
		})
	end)
end

return RoactRodux.connect(function(state, props)
	return {
		isFavorited = state.gameInfo.isFavorited,
	}
end, function(dispatch)
	local universeId = game.GameId

	return {
		fetchGameIsFavorite = function(networking)
			return universeId > 0 and dispatch(ApiFetchGameIsFavorite(networking, tostring(universeId)))
		end,
		postFavorite = function(networking, isFavorite)
			return dispatch(GamePostFavorite(networking, tostring(universeId), isFavorite))
		end,
		setFavorite = function(isFavorite)
			return dispatch(SetGameFavorite(tostring(universeId), isFavorite))
		end,
	}
end)(FavoriteButton)
