--[[
	Manages DeveloperSubscriptions stuff
]]

local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local FileUtils = require(Plugin.Src.Util.FileUtils)

local IMAGE_URL = "ide/publish/UploadNewImage?Name=\"%s\"&Description=\"%s\""
local IMAGE_REQUEST_TYPE = "www"

local PLANS_URL = "developer-subscriptions/v1/universes/%d/plans"
local PLANS_REQUEST_TYPE = "apis"

local PLAN_URL = "developer-subscriptions/v1/universes/plans/%d"
local PLAN_REQUEST_TYPE = "apis"

local function compareDeveloperSubscriptions(a, b)
	for key, value in pairs(a) do
		if b[key] ~= value then
			return false
		end
	end
	for key, value in pairs(b) do
		if a[key] ~= value then
			return false
		end
	end
	return true
end

local function uploadImage(image)
	if image == nil then
		return Promise.resolve()
	end

	local url = Http.BuildRobloxUrl(IMAGE_REQUEST_TYPE, IMAGE_URL, "DevSubImage", "None")

	local requestInfo = FileUtils.GetAssetPublishRequestInfo(image, url)
	requestInfo.Body = image:GetBinaryContents()

	return Http.RequestInternal(requestInfo)
	:andThen(function(imageId)
		return imageId
	end)
	:catch(function()
		return 0
	end)
end

local function newDeveloperSubscription(new)
	uploadImage(new.Image):andThen(function(imageId)
		local url = Http.BuildRobloxUrl(PLANS_REQUEST_TYPE, PLANS_URL, game.GameId)
		local body = HttpService:JSONEncode({
			imageAssetId = imageId,
			name = new.Name,
			description = new.Description,
			priceInRobux = new.Price,
		})
		local requestInfo = {
			Url = url,
			Method = "POST",
			Body = body,
			CachePolicy = Enum.HttpCachePolicy.None,
			Headers = {
				["Content-Type"] = "application/json",
			},
		}

		Http.RequestInternal(requestInfo)
		:andThen(function(response)
			-- TODO(dnurkkala): do stuff with this
		end)
	end)
end

local function changedDeveloperSubscription(old, new)
	-- handle the image of this developer subscription
	uploadImage(new.Image):andThen(function(imageId)
		local url = Http.BuildRobloxUrl(PLAN_REQUEST_TYPE, PLAN_URL, old.Id)
		local body = HttpService:JSONEncode({
			imageAssetId = imageId,
			name = new.Name,
			description = new.Description,
			priceInRobux = new.Price,
		})
		local requestInfo = {
			Url = url,
			Method = "PATCH",
			Body = body,
			CachePolicy = Enum.HttpCachePolicy.None,
			Headers = {
				["Content-Type"] = "application/json",
			},
		}

		Http.RequestInternal(requestInfo)
		:andThen(function(response)
			-- TODO(dnurkkala): do stuff with this
		end)
	end)
end

local DeveloperSubscriptions = {}

function DeveloperSubscriptions.AcceptsValue(key)
	return key == "DeveloperSubscriptions"
end

function DeveloperSubscriptions.Get()
	local developerSubscriptions = {}

	local function request(cursor)
		local url = Http.BuildRobloxUrl(PLANS_REQUEST_TYPE, PLANS_URL, game.GameId)

		-- define parameters (we only need the cursor if we have one)
		local params = {
			status = "Open",
			sortOrder = "Asc",
			cursor = cursor,
		}

		-- construct the request
		local requestInfo = {
			Url = url,
			Method = "GET",
			CachePolicy = Enum.HttpCachePolicy.None,
			Headers = {},
			Params = params,
		}

		return Http.RequestInternal(requestInfo):
		andThen(function(response)
			response = HttpService:JSONDecode(response)

			for _, data in pairs(response.data) do
				local subscription = {
					Key = data.id,
					Id = data.id,
					Image = "rbxassetid://"..data.imageAssetId,
					Name = data.name,
					Price = data.priceInRobux,
					Active = (data.status == "Open"),
					Subscribers = 0,
				}
				developerSubscriptions[subscription.Key] = subscription
			end

			if response.nextPageCursor then
				return request(response.nextPageCursor)
			else
				return {
					DeveloperSubscriptions = developerSubscriptions,
				}
			end
		end)
		:catch(function(err)
			warn("Could not retrieve developer subscriptions:", err)

			return {
				DeveloperSubscriptions = developerSubscriptions,
			}
		end)
	end

	return request()
end

function DeveloperSubscriptions.Set(gameId, developerSubscriptions)
	local current = developerSubscriptions.Current
	local changed = developerSubscriptions.Changed

	for key, developerSubscription in pairs(changed) do
		local isNew = (current[key] == nil)
		if isNew then
			newDeveloperSubscription(developerSubscription)
		else
			local isChanged = (compareDeveloperSubscriptions(changed[key], current[key]) == false)
			if isChanged then
				changedDeveloperSubscription(current[key], changed[key])
			end
		end
	end

	return Promise.resolve({})
end

return DeveloperSubscriptions