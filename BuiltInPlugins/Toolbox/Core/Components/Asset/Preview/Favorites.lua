--[[
	This component is designed to show the favorites counts for the assetPreview.
	It will send request to fetch the data when loaded. And update accordingly.

	Necessary Properties:
	assetId = id
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Images = require(Util.Images)
local ContextGetter = require(Util.ContextGetter)
local getUserId = require(Util.getUserId)

local getNetwork = ContextGetter.getNetwork

local Requests = Plugin.Core.Networking.Requests
local GetFavoriteCountsRequest = require(Requests.GetFavoriteCountsRequest)
local GetFavoritedRequest = require(Requests.GetFavoritedRequest)
local ToggleFavoriteStatusRequest = require(Requests.ToggleFavoriteStatusRequest)

local Favorites = Roact.PureComponent:extend("Favorites")

-- For less then 10k, we use , to seperate the number.
-- For larger than 10k, we use xxk+
local function getFavoritesString(counts)
	local countsString
	if counts > 10000 then
		countsString = ("%dk+"):format(math.floor(counts / 1000))
	else
		if counts > 1000 then
			countsString = ("%d,%d"):format(counts / 1000, counts % 1000)
		else
			countsString = tostring(counts)
		end
	end

	return countsString
end

function Favorites:init(props)
	local networkInterface = getNetwork(self)

	self.state = {
		hovered = false
	}

	self.requestFavoriteCounts = function()
		local props = self.props
		local assetId = props.assetId
		props.getFavoriteCounts(networkInterface, assetId)
	end

	self.checkFavorited = function()
		local props = self.props
		local assetId = props.assetId
		props.getFavorited(networkInterface, getUserId(), assetId)
	end

	self.onMouseEnter = function(rbx, x, y)
		self:setState({
			hovered = true
		})
	end

	self.onMouseLeave = function(rbx, x, y)
		self:setState({
			hovered = false
		})
	end

	self.onActivated = function(rbx)
		local props = self.props
		local assetId = props.assetId
		local favorited = props.favorited
		self.props.toggleFavoriteStatus(networkInterface, getUserId(), assetId, favorited)
	end
end

function Favorites:didMount()
	self.requestFavoriteCounts()
	self.checkFavorited()
end

function Favorites:render()
	local props = self.props
	local state = self.state

	local favoriteCounts = props.favoriteCounts or 0

	local imageContent = (state.hovered or props.favorited) and Images.Favorited or Images.Unfavorited
	local textContent = getFavoritesString(tonumber(favoriteCounts))
	local contentColor = Color3.fromRGB(246, 183, 2)
	local size = props.size

	local layoutOrder = props.layoutOrder
	local verticalAlignment = props.verticalAlignment or Enum.VerticalAlignment.Center

	return Roact.createElement("TextLabel", {
		Size = size,

		Text = "",
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = verticalAlignment,
			Padding = UDim.new(0, 4),
		}),

		ImageContent = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, 20, 0, 20),

			BackgroundTransparency = 1,

			Image = imageContent,

			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.Activated] = self.onActivated,

			LayoutOrder = 1,
		}),

		TextContent = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),

			Text = tostring(textContent),
			TextColor3 = contentColor,
			Font = Enum.Font.Arial,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,

			BackgroundTransparency = 1,

			LayoutOrder = 2,
		})
	})
end

local function mapStateToProps(state, props)
	state = state or {}
	local assetId = props.assetId

	local favorite = state.favorite or {}
	local assetIdToCountsMap = favorite.assetIdToCountsMap or {}
	local assetIdToFavoritedMap = favorite.assetIdToFavoritedMap or {}

	return {
		favoriteCounts = assetIdToCountsMap[assetId] or 0,
		favorited = assetIdToFavoritedMap[assetId] or false
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getFavoriteCounts = function(networkInterface, assetId)
			dispatch(GetFavoriteCountsRequest(networkInterface, assetId))
		end,

		getFavorited = function(networkInterface, userId, assetId)
			dispatch(GetFavoritedRequest(networkInterface, userId, assetId))
		end,

		toggleFavoriteStatus = function(networkInterface, userId, assetId, favorited)
			dispatch(ToggleFavoriteStatusRequest(networkInterface, userId, assetId, favorited))
		end
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(Favorites)


