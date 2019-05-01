--[[
	Manages DeveloperSubscriptions stuff
]]

local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

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

local DeveloperSubscriptions = {}

function DeveloperSubscriptions.AcceptsValue(key)
	return key == "DeveloperSubscriptions"
end

function DeveloperSubscriptions.Get()
	-- eventually replace this fake list with actually acquiring the list
	-- of developer subscription ids using a web endpoint
	local fakeIdList = {
		1309547806,
		1180038036,
		1135824239,
		1025873519,
	}

	-- populate and curate the data that the website returns so that it's
	-- in a usable format for the code here in game settings
	local developerSubscriptions = {}
	for _, fakeId in pairs(fakeIdList) do
		local data = MarketplaceService:GetProductInfo(fakeId, Enum.InfoType.Subscription)
		data.Id = fakeId
		data.Image = "rbxassetid://"..data.IconImageAssetId
		data.Price = data.PriceInRobux

		developerSubscriptions[fakeId] = data
	end

	-- assign each developer subscription its own index for self reference
	for index, value in pairs(developerSubscriptions) do
		value.Key = index
	end

	-- return the data
	local fakeData = {
		DeveloperSubscriptions = developerSubscriptions
	}

	return Promise.resolve(fakeData)
end

function DeveloperSubscriptions.Set(gameId, developerSubscriptions)
	local current = developerSubscriptions.Current
	local changed = developerSubscriptions.Changed

	for key, developerSubscription in pairs(changed) do
		local isNew = (current[key] == nil)
		if isNew then
			-- new developer subscription
			print("New subscription", developerSubscription.Name)
		else
			local isChanged = (compareDeveloperSubscriptions(changed[key], current[key]) == false)
			if isChanged then
				-- changed developer subscription
				print("Changed subscription", developerSubscription.Name)
			end
		end
	end

	return Promise.resolve({})
end

return DeveloperSubscriptions