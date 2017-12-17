--[[
			// Http.lua
			// API for all web endpoints
			// Calls are async

			// Any calls to roblox.com need to use game:HttpGetAynsc() and game:HttpPostAynsc()
				// use rbxGetAsync() and rbxPostAsync()
			// Any calls to api.roblox.com should use HttpRbxApiService
				// use rbxApiGetAsync() and rbxApiPostAsync()

			// NOTE: You cannot currently get thumbnails with this API (please see the Thumbnail module), because
			// Roblox GUIs cannot accept rbxcnd.com for the Image property.
]]

--[[ Services ]]--
local HttpService = game:GetService('HttpService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')

local CoreGui = Game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local IsNewUsernameCheckEnabled = settings():GetFFlag("XboxUseNewValidUsernameCheck2")

local Http = {}

local BaseUrl = game:GetService('ContentProvider').BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
-- TODO: There are some calls that fail when using https. Wait for web to fix.
BaseUrl = string.gsub(BaseUrl, "http://", "https://")

local AssetGameBaseUrl = string.gsub(BaseUrl, "https://www.", "https://assetgame.")
local AccountSettingsUrl = string.gsub(BaseUrl, "https://www.", "https://accountsettings.")

Http.BaseUrl = BaseUrl
Http.AssetGameBaseUrl = AssetGameBaseUrl

--[[ Helper Functions ]]--
local function decodeJSON(json)
	if json == nil or #json == 0 then
		return nil
	end

	local success, result = pcall(function()
		return HttpService:JSONDecode(json)
	end)
	if not success then
		Utility.DebugLog("decodeJSON() failed because", result, "Input:", json)
		return nil
	end

	return result
end

local function rbxGetAsync(path, returnRaw)
	local success, result = pcall(function()
		return game:HttpGetAsync(path)
	end)
	--
	if not success then
		Utility.DebugLog(path, "rbxGetAsync() failed because", result)
		return nil
	end

	if returnRaw then
		return result
	end
	return decodeJSON(result)
end

local function rbxPostAsync(path, params, contentType)
	local success, result = pcall(function()
		return game:HttpPostAsync(path, params, contentType)
	end)
	--
	if not success then
		Utility.DebugLog(path, "rbxPostAsync() failed because", result)
		return nil
	end

	return decodeJSON(result)
end

local function rbxApiGetAsync(path)
	local success, result = pcall(function()
		return HttpRbxApiService:GetAsync(path)
	end)
	--
	if not success then
		Utility.DebugLog(path, "rbxApiGetAsync() failed because", result)
		return nil
	end

	return decodeJSON(result)
end

local function rbxApiPostAsync(path, params, throttlePriority, contentType)
	local success, result = pcall(function()
		return HttpRbxApiService:PostAsync(path, params, throttlePriority, contentType)
	end)
	--
	if not success then
		Utility.DebugLog(path..params, "rbxApiPostAsync() failed because", result)
		return nil
	end

	return decodeJSON(result)
end

--[[ Public API ]]--

--[[ Helper Functions ]]--
function Http.DecodeJSON(json)
	return decodeJSON(json)
end

--[[ Games Endpoints ]]--

--[[
		// Return Array of tables
		// Table Keys
			// Id - number
			// Name - string
			// TimeOptionsAvailable - boolean
			// DefaultTimeOption - number
			// GenresOptionsAvailable - boolean
			// NumberOfRows - number
			// GameSetTargetId - number
]]
function Http.GetGameSortsAsync()
	return rbxGetAsync(BaseUrl..'games/default-sorts')
end

--[[ Curated Game sort Endpoints ]]--

--[[
		// Return table
		// Table Keys
			// Paging - table
				// previousCursor - string
				// previousUrl - string
				// nextCursor - string
				// nextUrl - string
			// Data - Array of Tables
			// Table Keys
				// CreatorID - number
				// CreatorName- string
				// CreatorUrl - string
				// Plays - number
				// Price - number
				// ProductID - number
				// IsOwned - boolean
				// IsVotingEnabled - boolean
				// TotalUpVotes - number
				// TotalDownVotes - number
				// TotalBought - number
				// UniverseID - number
				// HasErrorOcurred - boolean
				// GameDetailReferralUrl - string
				// Url - string
				// RetryUrl - string
				// Final - boolean
				// Name - string
				// PlaceID - number
				// PlayerCount - number
				// ImageId - number
]]
function Http.GetCuratedSortAsync(gameSetTargetId, maxRows)
	local path = string.format("%sgames/set?GameSetTargetId=%d&MaxRows=%d", BaseUrl, gameSetTargetId, maxRows)
--	Utility.DebugLog("Http.GetCuratedSortAsync path: ", path)
	return rbxGetAsync(path)
end

-- the subsequent page request's maxRows depends on the first request (Http.GetCuratedSortAsync)
-- the maxRows info is included in pageUrl
function Http.GetCuratedSortByUrlAsync(pageUrl)
--	Utility.DebugLog("Http.GetCuratedSortByUrlAsync path: ", pageUrl)
	return rbxGetAsync(pageUrl)
end

--[[
	All Sorts return the following json

		// Returns Array of Tables
		// Table Keys
			// CreatorID - number
			// CreatorName- string
			// CreatorUrl - string
			// Plays - number
			// Price - number
			// ProductID - number
			// IsOwned - boolean
			// IsVotingEnabled - boolean
			// TotalUpVotes - number
			// TotalDownVotes - number
			// TotalBought - number
			// UniverseID - number
			// HasErrorOcurred - boolean
			// Name - string
			// PlaceID - number
			// PlayerCount - number
			// ImageId - number
]]
function Http.GetSortAsync(startRows, maxRows, sortId, timeFilter)
	local path = string.format("%sgames/list-json?sortFilter=%d&StartRows=%d&MaxRows=%d&searchAllGames=false&filterByDeviceType=true",
		BaseUrl, sortId, startRows, maxRows)

	if timeFilter then
		path = string.format("%s&timeFilter=%d", path, timeFilter)
	end
--	Utility.DebugLog("Http.GetSortAsync path: ", path)
	return rbxGetAsync(path)
end

function Http.GetUserFavoritesAsync(startRows, maxRows)
	local path = string.format("%sgames/moreresultsuncached-json?sortFilter=MyFavorite&StartRows=%d&MaxRows=%d&searchAllGames=true&filterByDeviceType=true",
		BaseUrl, startRows, maxRows)

	return rbxGetAsync(path)
end

function Http.GetUserRecentAsync(startRows, maxRows)
	local path = string.format("%sgames/moreresultsuncached-json?sortFilter=MyRecent&StartRows=%d&MaxRows=%d&searchAllGames=true&filterByDeviceType=true",
		BaseUrl, startRows, maxRows)

	return rbxGetAsync(path)
end

function Http.GetUserPlacesAsync(startIndex, pageSize, userid)
	local path = string.format("%sgames/list-users-games-json?userid=%d&startIndex=%d&pageSize=%d", BaseUrl, userid, startIndex, pageSize)

	return rbxGetAsync(path)
end

-- Here for future use
function Http.SearchGamesAsync(startRows, maxRows, keyword)
	local path = string.format("%sgames/list-json?keyword=%s&StartRows=%d&MaxRows=%d&filterByDeviceType=true", BaseUrl, HttpService:UrlEncode(keyword), startRows, maxRows)

	return rbxGetAsync(path)
end

--[[ Asset Endpoints ]]--

--[[
		// Returns Table
		// Table Keys
			// Url - string
			// Final - boolean
]]
function Http.GetAssetThumbnailFinalAsync(assetId, width, height, format)
	return rbxGetAsync(AssetGameBaseUrl..'asset-thumbnail/json?assetId='..tostring(assetId)..'&width='..tostring(width)..
		'&height='..tostring(height)..'&format='..format)
end

--[[
		// See Above
]]
function Http.GetAssetAvatarFinalAsync(userId, width, height, format)
	local result = rbxGetAsync(BaseUrl..'avatar-thumbnail/json?userId='..tostring(userId)..'&width='..tostring(width)..
		'&height='..tostring(height)..'&format='..format)
	return result
end

function Http.GetOutfitThumbnailFinalAsync(outfitId, width, height, format)
	local requestData = {['userOutfitId'] = outfitId}
	local requestDataJson = HttpService:JSONEncode(requestData)
	local encodedRequestData = requestDataJson and HttpService:UrlEncode(requestDataJson) or ""

	local url = string.format('%savatar-thumbnails?params=%s', BaseUrl, encodedRequestData)
	Utility.DebugLog("Get outfit thumbnail url:", url)

	local result = rbxGetAsync(url)
	return result
end

--[[ Game Endpoints ]]--

--[[
		// Return Table
		// Table Keys
			// AssetId - number
    		// Name - string
    		// Description - string
    		// Created - string date (m/dd/yyyy)
    		// Updated - string date (m/dd/yyyy)
    		// FavoritedCount - number
    		// Url - string url ex : "/games/192800/Work-at-a-Pizza-Place"
    		// ReportAbuseUrl - string url ex : "/abusereport/asset?id=192800&RedirectUrl=%2fgames%2f192800%2fWork-at-a-Pizza-Place",
    		// IsFavoritedByUser - boolean
    		// IsCreatedByUser - boolean
    		// VisitedCount - number
    		// MaxPlayers - number
    		// Builder - string
    		// BuilderId - number
    		// BuilderUrl - string url ex: "/User.aspx?ID=82471"
    		// IsPlayable - boolean
    		// ReasonProhibited - string
    		// ReasonProhibitedMessage - string
    		// IsBuildersClubOnly - boolean
    		// IsCopyLocked - boolean
    		// IsPersonalServer - boolean
    		// IsPersonalServerOverlay - boolean
    		// BuildersClubOverlay - string
    		// PlayButtonType - string (Enum?)
    		// AssetGenre - string
    		// AssetGenreViewModel - table
    		//     DisplayName - string
    		//     Id - number
    		// OnlineCount - number
    		// UniverseId - number
    		// UniverseRootPlaceId - number
    		// TotalUpVotes - number
    		// TotalDownVotes - number
    		// UserVote - null (?)
    		// OverridesDefaultAvatar - boolean

]]
function Http.GetGameDetailsAsync(placeId)
	return rbxGetAsync(BaseUrl..'places/api-get-details?assetId='..tostring(placeId))
end

--[[
		// Returns Table
		// Table Keys
			// Id - number
			// PlaceId - number
			// ImageId - number
			// IconUrl - string
			// IconFinal - boolean
			// WikiUrl - string
			// ReleaseDate - string
			// IconUpdateSuccess - boolean
			// IconUpdateMessage - string
]]
function Http.GetGameIconIdAsync(placeId)
	return rbxGetAsync(BaseUrl..'places/icons/json?placeId='..tostring(placeId))
end

--[[
		// Return Table
		// Table Keys
			// ShowVotes - boolean
			// VotingModel - table
				// ShowVotes - boolean
				// UpVotes - number
				// DownVotes - number
				// CanVote - boolean
				// UserVote - boolean / null if user has not voted on this game
				// ReasonForNotVoteable - string
					// Will be empty if CanVote is true
					// Otherwise, it can be InvalidAssetOrUser / AssetNotVoteable / FloodCheckThresholdMet / PlayGame / UseModel / InstallPlugin / BuyGamePass
]]
function Http.GetGameVotesAsync(placeId)
	return rbxGetAsync(BaseUrl..'PlaceItem/GameDetailsVotingPanelJson?placeId='..tostring(placeId))
end

--[[
		// Returns Array of tables - Length should always be 6
		// Table Keys
			// PlaceId - number
			// GameName - string
			// GameSeoUrl - string
			// Creator - table
				// CreatorName - string
				// CreatorTargetId - number
				// CreatorType - number
			// GameThumbnail - table
				// Url - string
				// IsFinal - boolean
				// AssetId - number
				// AssetType - number
				// AssetHash - can be null
			// ImageId - number, NEW
]]
function Http.GetRecommendedGamesAsync(currentPlaceId)
	return rbxGetAsync(BaseUrl..'Games/GetRecommendedGamesJson?currentPlaceId='..tostring(currentPlaceId))
end

--[[
		// Returns Table
		// Table Keys
			// IsMobile - boolean
			// IsVideoAutoplayedOnReady - boolean
			// thumbnailCount - number
			// thumbnails - array of tables
				// Tabke Keys
					// AssetId - number
					// AssetTypeId - number
					// Url - string
					// IsFinal - boolean
					// AssetHash - can be null
]]
function Http.GetGameThumbnailsAsync(placeId)
	return rbxGetAsync(BaseUrl..'thumbnail/place-thumbnails?placeId='..tostring(placeId))
end

--[[
		// Returns Table
		// Table Keys
			// PlaceId - number
			// GameBadges - array of tables
				// BadgeAssetId - number
				// IsOwned - boolean
				// Rarity - number
				// RarityName - string
				// TotalAwarded - number
				// TotalAwardedYesterday - number
				// Created - string
				// Updated - string
				// BadgeSeoUrl - string
				// CreatorId - number
				// ImageUrl - string (DO NOT USE)
				// IsImageUrlFinal - boolean
				// Name - string
				// Description - string
]]
function Http.GetGameBadgeDataAsync(placeId)
	return rbxGetAsync(BaseUrl..'badges/list-badges-for-place/json?placeId='..tostring(placeId))
end

--[[
		// Returns Table
		// Table Keys
			// PlaceId - number
			// totalItems - number
			// IsViewerPlaceOwner - boolean
			// data - array of tables
				// PassID - number
				// PassName - string
				// TotalSales - number
				// PriceInRobux - number
				// PriceInTickets - number
				// Description - string
				// UserOwns - boolean
				// PassItemURL - string
				// ProductID - number
				// TotalUpVotes - number
				// TotalDownVotes - number
				// UserVote - null if user has not voted
				// TotalFavorites - number
				// IsFavoritedByUser - boolean
				// PlaceOwnerId - number
				// PlaceOwnerName - string
]]
function Http.GetGamePassesAsync(placeId, startIndex, maxRows)
	return rbxGetAsync(BaseUrl..'Games/GetGamePassesPaged?placeId='..tostring(placeId)..
		'&startIndex='..tostring(startIndex)..'&maxRows='..tostring(maxRows))
end

--[[
		// Returns table
		// Table Keys
			// PlaceId - number
			// totalItems - number
			// IsViewerPlaceOwner - boolean
			// data - array of tables
				// Name - string
				// Description - string
				// PriceInRobux - number
				// PriceInTickets - number
				// ProductID - number
				// AssetID - number
				// TotalSales - number
				// UserOwns - boolean
				// SellerID - number
				// SellerName - string
				// ItemUrl - string
				// IsRentable - boolean
				// PromotionID - number
				// BCRequirement - number
				// IsForSale - boolean
				// TotalUpVotes - number
				// TotalDownVotes - number
				// UserVote - boolean, can be null if user has not voted
				// TotalFavorites - number
				// IsFavoritedByUser - boolean
				// AffiliateSalePlaceId - number
]]
function Http.GetPlaceProductsAsync(placeId, startIndex, maxRows)
	return rbxGetAsync(BaseUrl..'Games/GetPlaceProductPromotions?placeId='..tostring(placeId)..
		'&startIndex='..tostring(startIndex)..'&maxRows='..tostring(maxRows))
end

--[[
		// Returns table
		// Table Keys
			// PlaceId - number
			// TotalCollectionSize - number
			// ShowShutdownAllButton - boolean
			// Collection - Array of tables
				// Table Keys
					// PlaceId - number
					// Capacity - number
					// UserCanJoin - boolean
					// ServerIpAddress - string
					// Fps - number
					// Guid - string
					// JoinScript - string
					// ShowSlowGameMessage - boolean
					// Ping - number
					// CurrentPlayers - array of tables
						// Table Keys
							// Id - number
							// Username - string
							// Thumbnail - table
								// Table Keys
									// AssetId - number
									// AssetTypeId - number
									// Url - string
									// IsFinal - boolean
									// AssetHash - can be null
]]
function Http.GetGameInstancesAsync(placeId, startIndex)
	return rbxGetAsync(BaseUrl..'Games/GetGameInstancesJson?placeId='..tostring(placeId)..'&startIndex='..tostring(startIndex))
end

--[[
		// Returns table
		// Table Keys
			// success - boolean
			// message - string (is Whoa. Slow Down.)
]]
function Http.PostFavoriteToggleAsync(assetID)
	return rbxPostAsync(BaseUrl..'favorite/toggle?assetID='..tostring(assetID), 'favoriteToggle')
end

-- TODO: Need to test flood check
--[[
		// Returns Table
		// Table Keys
			// Success - boolean
			// Model - table
			// ModalType - string | Will be FloodCheckThresholdMet, PlayGame, EmailIsVerified
			// Table Keys
				// UserVote - boolean
				// ShowVotes - boolean
				// CanVote - boolean
				// DownVotes - number
				// UpVotes - number
]]
-- status can be true, false or null (null is a neutral vote)
function Http.PostGameVoteAsync(assetId, status)
	return rbxPostAsync(BaseUrl..'voting/vote?assetId='..tostring(assetId)..'&vote='..tostring(status), 'vote')
end

--[[ Social ]]--

--[[
		// Returns Table
		// Table Keys
			// GameId - number (can be null)
			// IsOnline - boolean
			// LastOnline - string
			// LastLocation - string
			// LocationType - number
			// PlaceId - number (can be null)
]]
function Http.GetUserPresenceAsync(userId)
	return rbxApiGetAsync('users/'..tostring(userId)..'/onlinestatus')
end

function Http.RegisterAppPresence()
	return rbxApiPostAsync('presence/register-app-presence', "",
		Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson)
end

--[[
		// Returns table
		// Table Keys
			// UserPresences - array of tables
				// Table Keys
					// VisitorId - number
					// GameId - number or null
					// IsOnline - boolean
					// LastOnline - string
					// LastLocation - string
					// LocationType - number/enum
					// PlaceId - number
]]
function Http.GetUsersOnlinePresenceAsync(listOfUsers)
	--rbxApiPostAsync(path, params, useHttps, throttlePriority, contentType)
	return rbxApiPostAsync('users/online-status', listOfUsers,
		Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson)
end

--[[
		// Returns Table
		// Table Keys
			// UserId - number
			// TotalFriends - number
			// CurrentPage - number
			// PageSize - number
			// TotalPages - number
			// Friends - Array of Tables
				// Table Keys
					// UserId - number
					// Username - string
					// AvatarUri - string
					// AvatarFinal - boolean
					// InvitationId - number
					// FriendshipStatus - number
					// OnlineStatus - table
						// Table Keys
							// LocationOrLastSeen - string
							// ImageUrl - string
							// AlternateText - string
]]
function Http.GetFriendsAsync(userId, currentPage, pageSize)
	return rbxGetAsync(BaseUrl..'friends/json?userId='..tostring(userId)..'&currentPage='..tostring(currentPage)..'&pageSize='..tostring(pageSize)..
		'&friendsType=1')
end

function Http.GetCrossplayEnabledStatusAsync()
	return rbxApiGetAsync('user/CrossPlayStatus')
end

--[[
		// See Http.GetFriendsAsync
]]
function Http.GetRequestedFriendsAsync(userId, currentPage, pageSize)
	return rbxGetAsync(BaseUrl..'friends/json?userId='..tostring(userId)..'&currentPage='..tostring(currentPage)..'&pageSize='..tostring(pageSize)..
		'&friendsType=3')
end

--[[
		// Returns array of tables
		// Table Keys
			// VisitorId - number
			// GameId - string (hash)
			// IsOnline - boolean
			// LastOnline - string
			// LastLocation - string
			// LocationType - number (enum)
			// PlaceId - number

]]
function Http.GetOnlineFriendsAsync()
	return rbxApiGetAsync('my/friendsonline')
end

--[[
			// Returns Table
]]
function Http.GetPlatformUserBalanceAsync()
	return rbxApiGetAsync('my/platform-currency-budget')
end
function Http.GetTotalUserBalanceAsync()
	return rbxApiGetAsync('currency/balance')
end

--[[
			// Returns true if the user owns the asset, otherwise, returns false
]]
function Http.GetUserOwnsAssetAsync(userId, assetId)
	-- local BaseUrl = 'http://api.sitetest2.robloxlabs.com/'
	return rbxApiGetAsync(BaseUrl..'ownership/hasasset?userId='..tostring(userId)..'&assetId='..tostring(assetId))
end

--[[
			// Returns Table
			// Table Keys
				// IsValid - boolean
			 	// Data - Table of keys
			 		// Table Keys
			 			// TotalItems - number
			 			// Start - number
			 			// End - number
			 			// Page - number
			 			// Items - Array of tables
			 				// Table Keys
			 					// Item - Table
			 						// Table Keys
			 							// AssetId - number
			 							// Name - string
					  			// Creator - Table
					  				// Table Keys
					  					// Id - number
					  					// Name - string
					  					// Type - number
					  			// Product - Table
					  				// Table Keys
					  					// PriceInRobux - number (nullable)
					  					// PriceInTickets - - number (nullable)
					  					// IsForSale - boolean
					  					// IsPublicDomain - boolean
					  					// IsResellable - boolean
					  					// IsLimitedEdition - boolean
					  					// IsUnique - boolean
					  					// ExpireTime - time (nullable)
					  					// IsExpired - boolean

					  		// OTHER JUNK
					  "PrivateServer":null,
					  "Thumbnail": {"Final":true,"Url":"http://t4.rbxcdn.com/213527c418b9ea4fc7bbcfb79afd770f","RetryUrl":null}
						},
]]
function Http.GetUserOwnedPackagesAsync(userId, currentPage)
	currentPage = currentPage or 1
	local packageAssetIdType = 32
	-- return rbxGetAsync('http://www.sitetest2.robloxlabs.com/' ..'users/inventory/list-json?userId='..tostring(userId)..
	-- 	'&assetTypeId='..tostring(packageAssetIdType)..'&pageNumber='..tostring(currentPage))
	return rbxGetAsync(BaseUrl..'users/inventory/list-json?userId='..tostring(userId)..
		'&assetTypeId='..tostring(packageAssetIdType)..'&pageNumber='..tostring(currentPage))
end

function Http.GetMyUserOutfitsAsync(startIndex, count)
	startIndex = startIndex or 0
	count = count or 20
	local url = string.format('appearance/get-my-user-outfits?startIndex=%d&count=%d', startIndex, count)
	return rbxApiGetAsync(url)
end

--Get all wearing assetids
function Http.GetWornAssetsAsync(userId)
	local url = string.format(BaseUrl..'Asset/AvatarAccoutrements.ashx?userId=%d', userId)
	local assetIdsStr = rbxGetAsync(url, true)
	local assetIds = {}
	if type(assetIdsStr) == "string" and assetIdsStr ~= '' then
		for assetIdStr in string.gmatch(assetIdsStr, '([^;]+)') do
			local asssetId = string.match(assetIdStr, "?id=(%d+)")
			if asssetId then
				table.insert(assetIds, asssetId)
			end
		end
	end
	table.sort(assetIds)
	return assetIds
end

--Get all assetids for pacakge
function Http.GetAssetIdsForPackageIdAsync(packageId)
	local url = string.format(BaseUrl..'Game/GetAssetIdsForPackageId?packageId=%d', packageId)
	return rbxGetAsync(url)
end

function Http.GetCharactersAssetsAsync(userId)
	local url = string.format(AssetGameBaseUrl..'asset/characterfetch.ashx?userId=%d', userId)
	return rbxGetAsync(url, true)
end

function Http.PostCrossplayStatusAsync(value)
	return rbxApiPostAsync('user/CrossPlayStatus?isEnabled='..(value and 'true' or 'false'), '')
end

function Http.PostWearUserOutfitAsync(id)
	local url = string.format('appearance/wear-user-outfit?id=%d', id)
	return rbxApiPostAsync(url, '')
end

function Http.PostWearAssetAsync(assetId)
	--local BaseUrl = 'http://api.gametest5.robloxlabs.com/'
	return rbxApiPostAsync('appearance/set-clothing?assetIds='..tostring(assetId), '')
end

-- @ Params
-- productId - integer number of the id of the product (different from assetId)
-- expectedPrice - integer for how much of the currency is required to purchase
-- expectedSellerId - UserId integer for the seller of the product
-- expectedCurrency - integer denoting whether the currency is robux or tickets
--                    1 = robux

-- @ Example result is a table:
-- balanceAfterSale 197620
-- sl_translate title, errorMsg
-- AssetID 86500185
-- shortfallPrice -197620
-- errorMsg You already own this item.
-- statusCode 500
-- title Item Owned
-- currentPrice 25
-- expectedPrice 25
-- showDivID TransactionFailureView
-- expectedCurrency 1
-- currentCurrency 1
function Http.PurchaseProductAsync(productId, expectedPrice, expectedSellerId, expectedCurrency)
	-- local formattedUrl = BaseUrl .. 'API/Item.ashx?rqtype=purchase' ..
	-- 					           '&productID=' .. tostring(productId) ..
	-- 					           '&expectedCurrency=' .. tostring(expectedCurrency) ..
	-- 					           '&expectedPrice=' .. tostring(expectedPrice) ..
	-- 					           '&expectedSellerID=' .. tostring(expectedSellerId)
	local formattedUrl = string.format('%sAPI/Item.ashx?rqtype=purchase&productID=%d&expectedCurrency=%d&expectedPrice=%d&expectedSellerID=%d', BaseUrl, productId, expectedCurrency, expectedPrice, expectedSellerId)
	Utility.DebugLog('PurchaseProductAsync:' , formattedUrl)
	return rbxPostAsync(formattedUrl, '')
	-- path, params, contentType)
	-- return http://www.roblox.com/API/Item.ashx?rqtype=purchase&productID=24805065&expectedCurrency=1&expectedPrice=88&expectedSellerID=1
end



-- Sample response:
--[=[
	{Products = {{AssetTypeId = 32, IconImageAssetId = 0, IsNew = false, Updated = '2015-08-03T22:26:25.447Z', IsLimitedUnique = false, ProductId = 9187002, MinimumMembershipLevel = 1, Created = '2011-08-05T21:50:20.67Z', Creator = {Name = 'Roblox', Id = 1}, IsLimited = false, ContentRatingTypeId = 0, AssetId = 58537634, IsPublicDomain = false, Name = 'Knight of the Splintered Sky', IsForSale = true, Description = 'He fights bravely along side his brothers and the Knights of Redcliff to defeat the evil Korblox and their zombies.', PriceInRobux = 1000, Sales = 19}}}
--]=]
function Http.GetXboxProductsAsync(startIndex, count)
	startIndex = startIndex or 0
	count = count or 100
	local url = string.format('xbox/catalog/contents?startIndex=%d&count=%d', startIndex, count)
	return rbxApiGetAsync(url)
end

function Http.GetXboxCurrentlyWearingPackageAsync()
	local url = string.format('xbox/currently-wearing')
	return rbxApiGetAsync(url)
end

-----

function Http.GetThumbnailUrlForAsset(assetId, width, height)
	width = width or 420
	height = height or 420
	return AssetGameBaseUrl .. 'Thumbs/Asset.ashx?width='..tostring(width)..'&height='..tostring(height)..'&assetId='..tostring(assetId)
end

-- Report Abuse
function Http.ReportAbuseAsync(reportingItemTypeName, reportingItemId, reportCategoryId, comment)
	local jsonPostBody = {
		reportingItemTypeName = reportingItemTypeName;
		reportingItemId = tostring(reportingItemId);
		reportCategoryId = tostring(reportCategoryId);
		comment = comment;
	}
	local params = HttpService:JSONEncode(jsonPostBody)
	if params then
		return rbxApiPostAsync('moderation/reportabuse', params,
			Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson)
	end
end

--- Achievements
function Http.GetConsecutiveDaysLoggedInAsync()
	local url = string.format('/xbox/get-login-consecutive-days')
	return rbxApiGetAsync(url)
end

function Http.GetVoteCountAsync()
	local url = string.format('/user/get-vote-count?targetType=Place')
	return rbxApiGetAsync(url)
end
-- Account Linking
--[[
			// Returns table
			// Table Keys
				// IsValid - boolean
				// ErrorMessage - string
]]
function Http.IsValidUsername(username)
	if not username then
		return
	end

	if IsNewUsernameCheckEnabled then
		local url = string.format("%sv1/xbox/is-username-valid?username=%s", AccountSettingsUrl, HttpService:UrlEncode(username))
		return rbxGetAsync(url)
	else
		local url = string.format('signup/is-username-valid?username=%s', HttpService:UrlEncode(username))
		return rbxApiGetAsync(url)
	end
end

--[[
			// Returns table
			// Table Keys
				// IsValid - boolean
				// ErrorMessage - string
]]
function Http.IsValidPassword(username, password)
	if not username or not password then
		return
	end
	local url = string.format('signup/is-password-valid?username=%s&password=%s', HttpService:UrlEncode(username), HttpService:UrlEncode(password))
	return rbxApiGetAsync(url)
end

function Http.GetRobloxAccountInfo()
	return rbxApiGetAsync('users/account-info')
end


return Http
