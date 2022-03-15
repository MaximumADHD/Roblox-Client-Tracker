local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InGameMenu = script.Parent.Parent

local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local GamePostFavorite = require(InGameMenu.Thunks.GamePostFavorite)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ImageSetButton = UIBlox.Core.ImageSet.Button

local FAVORITE_IMAGE_FILLED = Images["icons/actions/favoriteOn"]
local FAVORITE_IMAGE_NOT_FILLED = Images["icons/actions/favoriteOff"]
local FAVORITE_IMAGE_BOX = Images["squircles/hollow"]

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

	return Roact.createElement(ImageSetButton, {
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 0.25,
		Size = UDim2.new(0, 44, 0, 44),
		LayoutOrder = 1,
		Image = (self.state.hover or self.state.selected) and FAVORITE_IMAGE_BOX or nil,
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		Position = self.props.Position,

		[Roact.Event.Activated] = function()
			self.props.setFavorite(not favoriteChecked)
			self.props.postFavorite(networkImpl, not favoriteChecked)
		end,
		[Roact.Event.SelectionGained] = function()
			self:setState({
				selected = true,
			})
		end,
		[Roact.Event.SelectionLost] = function()
			self:setState({
				selected = false,
			})
		end,
		[Roact.Event.MouseEnter] = function()
			self:setState({
				hover = true,
			})
		end,
		[Roact.Event.MouseLeave] = function()
			self:setState({
				hover = false,
			})
		end,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0,14),
		}),
		FavoriteIcon = Roact.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 36, 0, 36),
			Position = UDim2.new(0, 22, 0, 22),
			Image = favoriteChecked and FAVORITE_IMAGE_FILLED or FAVORITE_IMAGE_NOT_FILLED,
		}),
	})
end

return RoactRodux.connect(
	function(state, props)
		return {
			isFavorited = state.gameInfo.isFavorited,
		}
	end,
	function(dispatch)
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
	end
)(FavoriteButton)
