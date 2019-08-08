--[[
	Manages DeveloperSubscriptions stuff
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local FileUtils = require(Plugin.Src.Util.FileUtils)
local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)

local IMAGE_URL = "ide/publish/UploadNewImage?Name=\"%s\"&Description=\"%s\""
local IMAGE_REQUEST_TYPE = "www"

local PLANS_URL = "developer-subscriptions/v1/universes/%d/plans"
local PLANS_REQUEST_TYPE = "apis"

local PLAN_URL = "developer-subscriptions/v1/universes/plans/%d"
local PLAN_REQUEST_TYPE = "apis"

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

local function discontinueDeveloperSubscription(devSub)
	local url = Http.BuildRobloxUrl(PLAN_REQUEST_TYPE, PLAN_URL, devSub.Id)
	local body = HttpService:JSONEncode({
		status = "Closed"
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
		-- TODO(esauer): do stuff with this
	end)
end

local function changedDeveloperSubscription(devSub)
	-- handle the image of this developer subscription
	uploadImage(devSub.Image):andThen(function(imageId)
		local url = Http.BuildRobloxUrl(PLAN_REQUEST_TYPE, PLAN_URL, devSub.Id)
		local body = HttpService:JSONEncode({
			imageAssetId = imageId,
			name = devSub.Name,
			description = devSub.Description,
			priceInRobux = tonumber(devSub.Price),
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
			-- TODO(esauer): do stuff with this
		end)
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
			-- TODO(esauer): do stuff with this
		end)
	end)
end

local DeveloperSubscriptions = {}

function DeveloperSubscriptions.AcceptsValue(key)
	return key == "DeveloperSubscriptions"
end

local function GetOpenOrClosedSubscriptions(getOpenDevSubs)
	local developerSubscriptions = {}

	local function request(cursor)
		local url = Http.BuildRobloxUrl(PLANS_REQUEST_TYPE, PLANS_URL, game.GameId)

		-- define parameters (we only need the cursor if we have one)
		local params = {
			status = getOpenDevSubs and "Open" or "Closed",
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
					IsNew = false,
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
				return developerSubscriptions
			end
		end)
		:catch(function(err)
			warn("Could not retrieve developer subscriptions:", err)

			return nil
		end)
	end

	return request()
end

function DeveloperSubscriptions.Get()
	local requests = {}

	table.insert(requests, GetOpenOrClosedSubscriptions(true))
	table.insert(requests, GetOpenOrClosedSubscriptions(false))

	return Promise.all(requests):andThen(function(devSubResponses)
		for _,devSubs in ipairs(devSubResponses) do
			if devSubs == nil then
				return {
					DeveloperSubscriptions = {},
				}
			end
		end

		return {
			DeveloperSubscriptions = DeepMergeTables.Merge(devSubResponses[1], devSubResponses[2]),
		}
	end)
end

function DeveloperSubscriptions.Set(gameId, developerSubscriptions)
	if not developerSubscriptions then
		return Promise.resolve({})
	end

	local current = developerSubscriptions.Current
	local changed = developerSubscriptions.Changed
	local devSubs = DeepMergeTables.Merge(current, changed)

	for key, _ in pairs(changed) do
		local devSub = devSubs[key]
		if devSub.IsNew then
			newDeveloperSubscription(devSub)
		else
			if not devSub.Active then
				discontinueDeveloperSubscription(devSub)
			else
				changedDeveloperSubscription(devSub)
			end
		end
	end

	return Promise.resolve({})
end

return DeveloperSubscriptions