local CorePackages = game:GetService("CorePackages")
local FetchingStatus = require(CorePackages.AppTempCommon.LuaApp.Reducers.FetchingStatus)
local Reducers = script.Parent
local Rodux = require(CorePackages.Rodux)
local View = require(Reducers.View)
local PlayerId = require(Reducers.PlayerId)
local PlayerName = require(Reducers.PlayerName)
local Assets = require(Reducers.Assets)
local Bundles = require(Reducers.Bundles)
local EquippedAssets = require(Reducers.EquippedAssets)
local DetailsInformation = require(Reducers.DetailsInformation)
local TryingOnInfo = require(Reducers.TryingOnInfo)
local Favorites = require(Reducers.Favorites)
local Locale = require(Reducers.Locale)
local Visible = require(Reducers.Visible)
local ItemBeingPurchased = require(Reducers.ItemBeingPurchased)
local IsLoaded = require(Reducers.IsLoaded)
local GamepadEnabled = require(Reducers.GamepadEnabled)
local StoreId = require(Reducers.StoreId)

return Rodux.combineReducers({
	view = View,
	playerId = PlayerId,
	playerName = PlayerName,
	assets = Assets,
	bundles = Bundles,
	equippedAssets = EquippedAssets,
	detailsInformation = DetailsInformation,
	tryingOnInfo = TryingOnInfo,
	favorites = Favorites,
	locale = Locale,
	visible = Visible,
	itemBeingPurchased = ItemBeingPurchased,
	gamepadEnabled = GamepadEnabled,
	isLoaded = IsLoaded,
	FetchingStatus = FetchingStatus,
	storeId = StoreId,
})