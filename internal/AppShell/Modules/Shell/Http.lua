--[[
			// Http.lua
			// API for all web endpoints
			// Calls are async

			// Any calls to roblox.com need to use game:HttpGetAynsc() and game:HttpPostAynsc()
				// use rbxGetAsync() and rbxPostAsync()
			// Any calls to api.roblox.com should use HttpRbxApiService
				// use rbxApiGetAsync() and rbxApiPostAsync()
			// For calls to new services like avatar.roblox.com use game:HttpGetAsync()
				// user rbxGetAsync() and rbxPostAsync()

			// NOTE: You cannot currently get thumbnails with this API (please see the Thumbnail module), because
			// Roblox GUIs cannot accept rbxcnd.com for the Image property.

			// NOTE: game:HttpGetAsync() can no longer be used in networked DataModels.
			// You may need to move endpoint call to C++ if you need to use an
			// endpoint in-game
]]
local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local IsNewUsernameCheckEnabled = settings():GetFFlag("XboxUseNewValidUsernameCheck2")

local Http = {}

local BaseUrl = game:GetService("ContentProvider").BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
BaseUrl = string.gsub(BaseUrl, "http://", "https://")

local AssetGameBaseUrl = string.gsub(BaseUrl, "https://www.", "https://assetgame.")
local AccountSettingsUrl = string.gsub(BaseUrl, "https://www.", "https://accountsettings.")

Http.BaseUrl = BaseUrl
Http.AssetGameBaseUrl = AssetGameBaseUrl

-- Helper Functions
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

local function buildServiceUrl(service)
	return string.format("https://%s.roblox.com", service)
end

-- Game Endpoints

--[[
	Response json
	[
		{
			"Id": 0,
			"Name": "string",
			"TimeOptionsAvailable": false,
			"DefaultTimeOption": 0,
			"GenresOptionsAvailable": true,
			"NumberOfRows": 0,
			"GameSetTargetId": 0
		},
	]
]]
function Http.GetGameSortsAsync()
	return rbxGetAsync(BaseUrl.."games/default-sorts")
end

--[[
	Respone json
	{
		"data": [
			{
				"CreatorID": 0,
				"CreatorName": "string",
				"CreatorUrl": "string",
				"Plays": 0,
				"Price": 0,
				"ProductID": 0,
				"IsOwned": false,
				"IsVotingEnabled": true,
				"TotalUpVotes": 0,
				"TotalDownVotes": 0,
				"TotalBought": 0,
				"UniverseID": 0,
				"HasErrorOcurred":false,
				"GameDetailReferralUrl": "string",
				"Url": "string",
				"RetryUrl": "string",
				"Final": true,
				"Name": "string",
				"PlaceID": 0,
				"PlayerCount": 0,
				"ImageId": 0,
				"IsSecure": false,
				"ShowExperimentalMode": false
			},
		]
		"paging" {
			"previousCursor": "string",
			"previousUrl": "string",
			"nextCursor": "string",
			"nextUrl": "string"
		}
	}
]]
function Http.GetCuratedSortAsync(gameSetTargetId, maxRows)
	local path = string.format("%sgames/set?GameSetTargetId=%d&MaxRows=%d", BaseUrl, gameSetTargetId, maxRows)
	return rbxGetAsync(path)
end

-- the subsequent page request's maxRows depends on the first request (Http.GetCuratedSortAsync)
-- the maxRows info is included in pageUrl
-- this has the same response as Http.GetCuratedSortAsync
function Http.GetCuratedSortByUrlAsync(pageUrl)
	return rbxGetAsync(pageUrl)
end

--[[
	Response json
	[
		{
			"CreatorID": 0,
			"CreatorName": "string",
			"CreatorUrl": "string",
			"Plays": 0,
			"Price": 0,
			"ProductID": 0,
			"IsOwned": false,
			"IsVotingEnabled": true,
			"TotalUpVotes": 0,
			"TotalDownVotes": 0,
			"TotalBought": 0,
			"UniverseID": 0,
			"HasErrorOcurred": false,
			"GameDetailReferralUrl": "string",
			"Url": "string",
			"RetryUrl": "string",
			"Final": true,
			"Name": "string",
			"PlaceID": 0,
			"PlayerCount": 0,
			"ImageId": 0,
			"IsSecure": false,
			"ShowExperimentalMode": false
		},
	]
]]
function Http.GetSortAsync(startRows, maxRows, sortId, timeFilter)
	local path =
		string.format("%sgames/list-json?sortFilter=%d&StartRows=%d&MaxRows=%d&searchAllGames=false&filterByDeviceType=true",
		BaseUrl, sortId, startRows, maxRows)

	if timeFilter then
		path = string.format("%s&timeFilter=%d", path, timeFilter)
	end

	return rbxGetAsync(path)
end

-- Response, see Http.GetSortAsync
function Http.GetUserFavoritesAsync(startRows, maxRows)
	local path = string.format("%sgames/moreresultsuncached-json?sortFilter=MyFavorite&StartRows=%d&"..
		"MaxRows=%d&searchAllGames=true&filterByDeviceType=true",
		BaseUrl, startRows, maxRows)

	return rbxGetAsync(path)
end

-- Response, see Http.GetSortAsync
function Http.GetUserRecentAsync(startRows, maxRows)
	local path = string.format("%sgames/moreresultsuncached-json?sortFilter=MyRecent&StartRows=%d&"..
		"MaxRows=%d&searchAllGames=true&filterByDeviceType=true",
		BaseUrl, startRows, maxRows)

	return rbxGetAsync(path)
end

-- Response, see Http.GetSortAsync
function Http.GetUserPlacesAsync(startIndex, pageSize, userid)
	local path = string.format("%sgames/list-users-games-json?userid=%d&startIndex=%d&pageSize=%d",
		BaseUrl, userid, startIndex, pageSize)

	return rbxGetAsync(path)
end

-- Response, see Http.GetSortAsync
function Http.SearchGamesAsync(startRows, maxRows, keyword)
	local path = string.format("%sgames/list-json?keyword=%s&StartRows=%d&MaxRows=%d&filterByDeviceType=true",
		BaseUrl, HttpService:UrlEncode(keyword), startRows, maxRows)

	return rbxGetAsync(path)
end

--[[
	Response json
	{
		"AssetId": 0,
		"Name": "string",
		"Description": "string",
		"Created": "string",
		"Updated": "string",
		"FavoritedCount": 0,
		"Url": "string",
		"ReportAbuseAbsoluteUrl": "string",
		"IsFavoritedByUser": false,
		"IsFavoritesUnavailable": false,
		"UserCanManagePlace": false,
		"VisitedCount": 0,
		"MaxPlayers": 8,
		"Builder": "string",
		"BuilderId": 0,
		"BuilderAbsoluteUrl": "string",
		"IsPlayable": true,
		"ReasonProhibited": "string",
		"ReasonProhibitedMessage": "string",
		"IsBuildersClubOnly": false,
		"IsCopyingAllowed": true,
		"BuildersClubOverlay": "string",
		"PlayButtonType": "string",
		"AssetGenre": "string",
		"AssetGenreViewModel": {
			"DisplayName": "string",
			"Id": 0
		},
		"OnlineCount": 0,
		"UniverseId": 0,
		"UniverseRootPlaceId": 0,
		"TotalUpVotes": 0,
		"TotalDownVotes": 0,
		"UserVote": true,
		"OverridesDefaultAvatar": false,
		"UsePortraitMode": false,
		"IsExperimental": false,
		"Price": 0
	}
]]
function Http.GetGameDetailsAsync(placeId)
	return rbxGetAsync(BaseUrl.."places/api-get-details?assetId="..tostring(placeId))
end

--[[
	Response json
	{
		"Id": 0,
		"PlaceId": 0,
		"ImageId": 0,
		"IconUrl": "string",
		"IconFinal": true,
		"WikiUrl": "string",
		"ReleaseDate": "string",
		"IconUpdateSuccess": true,
		"IconUpdateMessage": "string"
	}
]]
function Http.GetGameIconIdAsync(placeId)
	return rbxGetAsync(BaseUrl.."places/icons/json?placeId="..tostring(placeId))
end

--[[
	Response json
	{
		"VotingModel":{
			"ShowVotes": true,
			"UpVotes": 0,
			"DownVotes": 0,
			"CanVote": false,
			"UserVote": false,
			"HasVoted": false,
			"ReasonForNotVoteable": "string"
		},
		"ShowVotes": true
	}
]]
function Http.GetGameVotesAsync(placeId)
	return rbxGetAsync(BaseUrl.."PlaceItem/GameDetailsVotingPanelJson?placeId="..tostring(placeId))
end

--[[
	Response json
	[
		{
			"Creator":{
				"CreatorName": "string",
				"CreatorTargetId": 0,
				"CreatorType": 0
			},
			"GameName": "string",
			"GameSeoUrl": "string",
			"GameThumbnail": {
				"AssetId": 0,
				"AssetHash": null,
				"AssetTypeId": 0,
				"Url": "string",
				"IsFinal": true
			},
			"PlaceId": 0,
			"ImageId": 0
		},
	]
]]
function Http.GetRecommendedGamesAsync(currentPlaceId)
	return rbxGetAsync(BaseUrl.."Games/GetRecommendedGamesJson?currentPlaceId="..tostring(currentPlaceId))
end

--[[
	Response json
	{
		"IsJpegThumbnailEnabled": true,
		"PlaceId": 0,
		"thumbnails": [
			{
				"AssetId": 0,
				"AssetHash":null,
				"AssetTypeId": 0,
				"Url": "string",
				"IsFinal": true
			}
		],
		"thumbnailCount": 1,
		"IsVideoAutoplayedOnReady": false,
		"ShowYouTubeVideo": true,
		"IsMobile": false,
		"PlaceThumbnailsResources": {
			"LabelNext": "string",
			"LabelPrevious": "string",
			"State": 0
		}
	}
]]
function Http.GetGameThumbnailsAsync(placeId)
	return rbxGetAsync(BaseUrl.."thumbnail/place-thumbnails?placeId="..tostring(placeId))
end

--[[
	Response json
	{
		"PlaceId": 0,
		"GameBadges": [
			{
				"BadgeAssetId": 0,
				"CreatorId": 0,
				"IsOwned": true,
				"Rarity": 0,
				"RarityName": "string",
				"TotalAwarded": 0,
				"TotalAwardedYesterday": 0,
				"Created": "string",
				"Updated": "string",
				"AssetSeoUrl": "string",
				"Thumbnail": {
					"Final": false,
					"Url": "string",
					"RetryUrl": "string",
					"UserId": 0,
					"EndpointType": "string"
				},
				"Name": "string",
				"FormatName": "string",
				"Description": "string",
				"AssetRestrictionIcon": null
			},
		],
			"GameBadgesResources": {
				"HeadingGameBadges":"Game Badges",
				"LabelRarityCakeWalk":"Cake Walk",
				"LabelRarityChallenging":"Challenging",
				"LabelRarityEasy":"Easy",
				"LabelRarityExtreme":"Extreme",
				"LabelRarityFreebie":"Freebie",
				"LabelRarityHard":"Hard",
				"LabelRarityImpossible":"Impossible",
				"LabelRarityInsane":"Insane",
				"LabelRarityModerate":"Moderate",
				"LabelRarity":"Rarity",
				"LabelSeeMore":"See More",
				"LabelWonEver":"Won Ever",
				"LabelWonYesterday":"Won Yesterday",
				"State":0
			}
	}
]]
function Http.GetGameBadgeDataAsync(placeId)
	return rbxGetAsync(BaseUrl.."badges/list-badges-for-place/json?placeId="..tostring(placeId))
end

--[[
	Response json
	{
		"success": true,
		"message": "string"
	}
]]
function Http.PostFavoriteToggleAsync(assetId)
	return rbxPostAsync(BaseUrl.."favorite/toggle?assetID="..tostring(assetId), "favoriteToggle")
end

--[[
	Response json
	{
		"Success": true,
		"Message": "string",
		"ModalType": "string",
		"Model": {
			"ShowVotes": true,
			"UpVotes": 0,
			"DownVotes": 0,
			"CanVote": true,
			"UserVote": true,
			"HasVoted": false,
			"ReasonForNotVoteable": "string"
		}
	}
]]
function Http.PostGameVoteAsync(assetId, status)
	return rbxPostAsync(BaseUrl.."voting/vote?assetId="..tostring(assetId).."&vote="..tostring(status), "vote")
end

-- Social

--[[
	Response json - none
]]
function Http.RegisterAppPresence()
	return rbxApiPostAsync("presence/register-app-presence", "",
		Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson)
end

--[[
	Response json
	{
		"userId": 0,
		"isEnabled": true,
		"created": "string",
		"updated": "string"
	}
]]
function Http.GetCrossplayEnabledStatusAsync()
	return rbxApiGetAsync("user/CrossPlayStatus")
end

--[[
	Response json
	{
		"success": true
	}
]]
function Http.PostCrossplayStatusAsync(value)
	return rbxApiPostAsync("user/CrossPlayStatus?isEnabled="..tostring(value), "")
end

--[[
	Response json
	{
		{
			"VisitorId": 0,
			"GameId": "string",
			"IsOnline": true,
			"LastOnline": "string",
			"LastLocation": "string",
			"LocationType": 0,
			"PlaceId": 0,
			"UserName": "string"
		},
	}
]]
function Http.GetOnlineFriendsAsync()
	return rbxApiGetAsync("my/friendsonline")
end

-- Account

--[[
	Response json
	{
		"Robux": 0
	}
]]
function Http.GetPlatformUserBalanceAsync()
	return rbxApiGetAsync("my/platform-currency-budget")
end

--[[
	Response json
	{
		"robux": 0
	}
]]
function Http.GetTotalUserBalanceAsync()
	return rbxApiGetAsync("currency/balance")
end

--[[
	Response json
	{
		"IsValid": true
		"Data": {
			"TotalItems": null,
			"Start": 0,
			"End": 0,
			"Page": 0,
			"nextPageCursor": "string",
			"previousPageCursor": "string",
			"ItemsPerPage":0 ,
			"PageType": "string",
			"Items": [
				{
					"AssetRestrictionIcon": {
						"TooltipText": "string",
						"CssTag": "string",
						"LoadAssetRestrictionIconCss": true,
						"HasTooltip": false
					},
					"Item":{
						"AssetId": 0,
						"Name": "string",
						"AbsoluteUrl": "string",
						"AssetType": 0,
						"AssetTypeFriendlyLabel": "string",
						"Description": "string",
						"Genres": "string",
						"GearAttributes": "string",
						"AssetCategory": 0,
						"CurrentVersionId": 0,
						"IsApproved": false,
						"LastUpdated": "string",
						"LastUpdatedBy": "string",
						"AudioUrl": "string"
					},
					"Creator":{
						"Id": 1,
						"Name": "string",
						"Type": 1,
						"CreatorProfileLink": "string"
					},
					"Product":{
						"Id": 0,
						"PriceInRobux": 0,
						"IsForSale": false,
						"IsPublicDomain": true,
						"IsResellable": false,
						"IsLimited": false,
						"IsLimitedUnique": false,
						"SerialNumber": 0,
						"IsRental": false,
						"RentalDurationInHours": 0,
						"BcRequirement": 0,
						"TotalPrivateSales": 0,
						"SellerId": 0,
						"SellerName": "string",
						"LowestPrivateSaleUserAssetId": 0,
						"IsXboxExclusiveItem": false,
						"OffsaleDeadline": "string",
						"NoPriceText": "string",
						"IsFree": true
					},
					"PrivateServer": false,
					"Thumbnail": {
						"Final": true,
						"Url": "string",
						"RetryUrl": "string",
						"IsApproved": false
					},
					"UserItem":{
						"UserAsset": 0,
						"IsItemOwned": false,
						"ItemOwnedCount": 0,
						"IsRentalExpired": false,
						"IsItemCurrentlyRented": false,
						"CanUserBuyItem": false,
						"RentalExpireTime": "string",
						"CanUserRentItem": false
					}
				}
			]
		}
	}
]]
function Http.GetUserOwnedPackagesAsync(userId, currentPage)
	currentPage = currentPage or 1
	local packageAssetIdType = 32

	return rbxGetAsync(BaseUrl.."users/inventory/list-json?userId="..tostring(userId)..
		"&assetTypeId="..tostring(packageAssetIdType).."&pageNumber="..tostring(currentPage))
end


--[[
	Response

	returns a semi-colon separated list of urls
	this is why we need to parse out the assetIds
]]
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

-- Avatar/Inventory

--[[
	Response json - array of assetIds
	[]
]]
function Http.GetAssetIdsForPackageIdAsync(packageId)
	local url = string.format("%sGame/GetAssetIdsForPackageId?packageId=%d", BaseUrl, packageId)
	return rbxGetAsync(url)
end

--[[
	Response json
	{
		"success": true
	}
]]
function Http.PostWearAssetAsync(assetId)
	return rbxApiPostAsync("appearance/set-clothing?assetIds="..tostring(assetId), "")
end

--[[
	Response json
	{
		"sl_translate": "string",
		"AssetID": 0,
		"AssetName": "string",
		"AssetType": "string",
		"AssetIsWearable": true,
		"SellerName": "string",
		"TransactionVerb": "string",
		"Price": 0,
		"Currency": 0,
		"IsMultiPrivateSale": false
	}
]]
function Http.PurchaseProductAsync(productId, expectedPrice, expectedSellerId, expectedCurrency)
	local formattedUrl = string.format("%sAPI/Item.ashx?rqtype=purchase&productID=%d&expectedCurrency="..
		"%d&expectedPrice=%d&expectedSellerID=%d",
		BaseUrl, productId, expectedCurrency, expectedPrice, expectedSellerId)
	return rbxPostAsync(formattedUrl, "")
end

--[[
	Response json
	{
		"Products": [
			{
				"TargetId": 0,
				"ProductType": "string",
				"AssetId": 0,
				"ProductId": 0,
				"Name": "string",
				"Description": "string",
				"AssetTypeId": 0,
				"Creator": {
					"Id": 0,
					"Name": "string",
					"CreatorType": "string",
					"CreatorTargetId": 0
				},
				"IconImageAssetId": 0,
				"Created": "string",
				"Updated": "string",
				"PriceInRobux": 0,
				"PriceInTickets": null,
				"Sales": 0,
				"IsNew": false,
				"IsForSale": true,
				"IsPublicDomain": false,
				"IsLimited": false,
				"IsLimitedUnique": false,
				"Remaining": 0,
				"MinimumMembershipLevel": 0,
				"ContentRatingTypeId": 0
			},
		]
	}
]]
function Http.GetXboxProductsAsync(startIndex, count)
	startIndex = startIndex or 0
	count = count or 100
	local url = string.format("xbox/catalog/contents?startIndex=%d&count=%d", startIndex, count)
	return rbxApiGetAsync(url)
end

--[[
	Response - redirects to the cdn url; game engine takes care of this
]]
function Http.GetThumbnailUrlForAsset(assetId, width, height)
	width = width or 420
	height = height or 420

	return AssetGameBaseUrl.."Thumbs/Asset.ashx?width="..tostring(width).."&height="..tostring(height)..
		"&assetId="..tostring(assetId)
end

--[[
	Response json
	{
		"Url": "string",
		"Final": true,
		"SubstitutionType": 0
	}
]]
function Http.GetAssetThumbnailFinalAsync(assetId, width, height, format)
	return rbxGetAsync(AssetGameBaseUrl.."asset-thumbnail/json?assetId="..tostring(assetId).."&width="..tostring(width)..
		"&height="..tostring(height).."&format="..format)
end

--[[
	Response json
	{
		"Url": "string",
		"Final": true,
		"SubstitutionType": 0
	}
]]
function Http.GetAssetAvatarFinalAsync(userId, width, height, format)
	local result = rbxGetAsync(BaseUrl..'avatar-thumbnail/json?userId='..tostring(userId)..'&width='..tostring(width)..
		'&height='..tostring(height)..'&format='..format)
	return result
end

--[[
]]
function Http.GetOutfitThumbnailFinalAsync(outfitId, width, height, format)
	local requestData = {["userOutfitId"] = outfitId}
	local requestDataJson = HttpService:JSONEncode(requestData)
	local encodedRequestData = requestDataJson and HttpService:UrlEncode(requestDataJson) or ""

	local url = string.format("%savatar-thumbnails?params=%s", BaseUrl, encodedRequestData)

	local result = rbxGetAsync(url)
	return result
end

--[[
	Response json - none
]]
function Http.ReportAbuseAsync(reportingItemTypeName, reportingItemId, reportCategoryId, comment)
	local jsonPostBody = {
		reportingItemTypeName = reportingItemTypeName;
		reportingItemId = tostring(reportingItemId);
		reportCategoryId = tostring(reportCategoryId);
		comment = comment;
	}
	local params = HttpService:JSONEncode(jsonPostBody)
	if params then
		return rbxApiPostAsync("moderation/reportabuse", params,
			Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationJson)
	end
end

-- Achievements

--[[
	Response json
	{
		"count": 1
	}
]]
function Http.GetConsecutiveDaysLoggedInAsync()
	local url = string.format("/xbox/get-login-consecutive-days")
	return rbxApiGetAsync(url)
end

--[[
	Response json
	{
		"UserId": 0,
		"TargetType": "string",
		"PlatformTypeId": 0,
		"VoteCount": 0
	}
]]
function Http.GetVoteCountAsync()
	local url = string.format("/user/get-vote-count?targetType=Place")
	return rbxApiGetAsync(url)
end

-- Account Linking

--[[
	Response - TODO
]]
function Http.IsValidUsername(username)
	if not username then
		return
	end

	if IsNewUsernameCheckEnabled then
		local url = string.format("%sv1/xbox/is-username-valid?username=%s",
			AccountSettingsUrl, HttpService:UrlEncode(username))
		return rbxGetAsync(url)
	else
		local url = string.format("signup/is-username-valid?username=%s", HttpService:UrlEncode(username))
		return rbxApiGetAsync(url)
	end
end

--[[
	Response json
	{
		"IsValid": true,
		"ErrorCode": 0,
		"ErrorMessage": "string"
	}
]]
function Http.IsValidPassword(username, password)
	if not username or not password then
		return
	end
	local url = string.format("signup/is-password-valid?username=%s&password=%s",
		HttpService:UrlEncode(username), HttpService:UrlEncode(password))
	return rbxApiGetAsync(url)
end

return Http
