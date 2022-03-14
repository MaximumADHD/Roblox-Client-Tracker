--[[
	Usage:
		local soundAssetChecker = SoundAssetChecker.new(Networking.new({isInternal = true,})

		-- Start it sending web requests when batches are ready
		soundAssetChecker:start()

		-- When you find an asset id
		-- This will automatically start sending requests as we reach limits of batch sizes
		soundAssetChecker:addAssetId(assetId)

		-- After you've found all asset ids
		soundAssetChecker:flush()

		-- Signal that fires upon response from server telling us we found sound assets
		soundAssetChecker.soundsFound:Connect(function(sounds)
			-- sounds is array of structs
			-- structs have assetId, creator and name fields

			roduxStore:dispatch(AddSounds(sounds))
		end)

		-- Plugin unloading
		soundAssetChecker:destroy()
]]

game:DefineFastFlag("StudioAudioDiscoveryFixBaseUrl", false)

local FIntStudioAudioDiscoveryMaxAssetIdsPerRequest = game:GetFastInt("StudioAudioDiscoveryMaxAssetIdsPerRequest")
local FIntStudioAudioDiscoveryPerRequestCooldown = game:GetFastInt("StudioAudioDiscoveryPerRequestCooldown")
local FIntStudioAudioDiscoveryCooldownAfterHttp429 = game:GetFastInt("StudioAudioDiscoveryCooldownAfterHttp429")
local FIntStudioAudioDiscoveryMaxRecentRequests = game:GetFastInt("StudioAudioDiscoveryMaxRecentRequests")

local FIntSoundEffectMaxDuration = game:GetFastInt("SoundEffectMaxDuration")

local FFlagStudioAudioDiscoveryFixBaseUrl = game:GetFastFlag("StudioAudioDiscoveryFixBaseUrl")

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local Url = Framework.RobloxAPI.Url
local BaseUrl = if FFlagStudioAudioDiscoveryFixBaseUrl then Url.new() else nil

local Signal = Framework.Util.Signal

local Types = require(Plugin.Src.Types)

local RunService = game:GetService("RunService")

local Analytics = require(Plugin.Src.Util.Analytics)

local SoundAssetChecker = {}
SoundAssetChecker.__index = SoundAssetChecker

function SoundAssetChecker.new(networking, timingOverride : {[string]: any}?)
	local self = {
		-- Fires array of SoundDetails
		soundsFound = Signal.new(),

		-- Map of asset id to SoundDetails
		_soundAssets = {},

		-- Set of asset ids that we know are not sounds
		_nonSoundAssetIds = {},

		-- Array of asset ids to send
		_currentBatch = {},

		-- Set of asset ids in pending batches so we don't waste duplicate requests
		_pendingAssetIds = {},

		-- Array of batches (array of asset ids) we've queued
		_batchesToSend = {},

		-- How many network requests are currently in flight?
		_batchRequestsInFlight = 0,

		_maxAssetsPerRequest = (timingOverride and timingOverride.maxAssetsPerRequest) or FIntStudioAudioDiscoveryMaxAssetIdsPerRequest,
		_perRequestCooldown = (timingOverride and timingOverride.perRequestCooldown) or FIntStudioAudioDiscoveryPerRequestCooldown,
		_cooldownAfterHttp429 = (timingOverride and timingOverride.cooldownAfterHttp429) or FIntStudioAudioDiscoveryCooldownAfterHttp429,
		_maxRecentRequests = (timingOverride and timingOverride.maxRecentRequests) or FIntStudioAudioDiscoveryMaxRecentRequests,

		-- Track how long ago we sent each request
		-- Counts down (i.e. once it hits zero, remove from this)
		-- Lets us see how many requests we sent in last X seconds
		_lastSentRequests = {},

		-- How many seconds since we hit a 429 Too Many Requests error
		-- Counts down (so 0 means haven't hit the error)
		_hit429 = 0,

		_started = false,
		_dead = false,
		_httpTask = nil,
		_renderSteppedConnection = nil,

		_goodAssets = 0,
		_badAssets = 0,
		_resolvedAssets = {},

		_networking = networking,
	}

	setmetatable(self, SoundAssetChecker)
	return self
end

function SoundAssetChecker:start()
	if self._started or self._dead then
		return
	end
	self._started = true

	self._renderSteppedConnection = RunService.RenderStepped:Connect(function(dt)
		self:_renderStepped(dt)
	end)

	self._httpTask = coroutine.create(function()
		while not self._dead do
			self:_stepHttpTask()
		end
	end)

	self:_wakeUpHttpTask()
end

function SoundAssetChecker:destroy()
	self._dead = true

	if self._renderSteppedConnection then
		self._renderSteppedConnection:Disconnect()
		self._renderSteppedConnection = nil
	end

	if self._httpTask then
		coroutine.close(self._httpTask)
		self._httpTask = nil
	end
end

function SoundAssetChecker:_wakeUpHttpTask()
	if self._dead or not self._httpTask or coroutine.status(self._httpTask) ~= "suspended" then
		return
	end

	coroutine.resume(self._httpTask)
end

function SoundAssetChecker:addAssetId(assetId : number)
	if assetId == "" or assetId == 0 or assetId == "0" then
		return
	end
	-- Already checked this asset id, or we are already checking it
	if self._soundAssets[assetId] or self._nonSoundAssetIds[assetId] or self._pendingAssetIds[assetId] then
		return
	end

	table.insert(self._currentBatch, assetId)
	self._pendingAssetIds[assetId] = true

	if #self._currentBatch >= self._maxAssetsPerRequest then
		self:flush()
	end
end

function SoundAssetChecker:flush()
	local batch = self._currentBatch
	self._currentBatch = {}

	if #batch > 0 then
		table.insert(self._batchesToSend, batch)
		self:_wakeUpHttpTask()
	end
end


function SoundAssetChecker:resolved(id: string)
	if not self._resolvedAssets[id] then
		self._resolvedAssets[id] = true
		self._badAssets -= 1
	end
end

function SoundAssetChecker:_hasBatchesToSend()
	return #self._batchesToSend > 0
end

function SoundAssetChecker:_stepHttpTask()
	if self._dead then
		return
	end

	if not self:_hasBatchesToSend() then
		coroutine.yield()
	end

	-- Sent too many requests recently
	-- Either hit a 429 recently, or we know we've sent too many requests recently
	-- So wait
	if self._hit429 > 0 or #self._lastSentRequests >= self._maxRecentRequests then
		coroutine.yield()
	end

	local batch = table.remove(self._batchesToSend, 1)
	self:_sendBatch(batch)

	coroutine.yield()
end

function SoundAssetChecker:_renderStepped(dt : number)
	if self._dead then
		return
	end

	-- Decrement all our request timers
	-- Clear out any that hit 0 (i.e. it's been long enough since we sent the request we don't care about it anymore)
	local index = 1
	while index <= #self._lastSentRequests do
		self._lastSentRequests[index] -= dt
		if self._lastSentRequests[index] <= 0 then
			table.remove(self._lastSentRequests, index)
		else
			index += 1
		end
	end

	-- Decrement our Http 429 timer
	self._hit429 -= dt
	if self._hit429 <= 0 then
		self._hit429 = 0
	end

	-- Try to send off pending requests if possible
	-- - Must have requests to send
	-- - Can't have sent too many recently
	-- - Must not have hit a 429 Too Many Requests recently
	if self:_hasBatchesToSend() and self._hit429 <= 0 and  #self._lastSentRequests < self._maxRecentRequests then
		self:_wakeUpHttpTask()
	end
end

function SoundAssetChecker:_sendBatch(batch : {number})
	local assetIdsString = table.concat(batch, ",")
	local url
	if FFlagStudioAudioDiscoveryFixBaseUrl then
		url = BaseUrl.composeUrl(BaseUrl.APIS_URL, "toolbox-service/v1/items/details", {
			assetIds = assetIdsString,
		})
	else
		url = "https://apis.roblox.com/toolbox-service/v1/items/details?assetIds=" .. assetIdsString
	end

	table.insert(self._lastSentRequests, self._perRequestCooldown)

	self._batchRequestsInFlight += 1
	local function noLongerInFlight(response)
		self._batchRequestsInFlight -= 1
		return response
	end
	local httpPromise = self._networking:get(url):andThen(noLongerInFlight, noLongerInFlight)
	local jsonPromise = self._networking:parseJson(httpPromise)

	jsonPromise:andThen(function(response)
		self:_onBatchResponse(batch, response.responseBody)
	end, function(response)
		if response.responseCode == 429 then
			-- Sent too many requests
			self._hit429 = self._cooldownAfterHttp429
			table.insert(self._batchesToSend, batch)

		elseif not (response.responseCode >= 400 and response.responseCode < 500) then
			-- Same retry logic as dev framework
			table.insert(self._batchesToSend, batch)

		else
			-- Request failed, not retrying, log error somehow
			warn(("Fetching sound asset details failed: %d %s"):format(response.responseCode, response.responseBody.message))
		end
	end)
end

local AUDIO_TYPE_ID = 3
local USER_TYPE_ID = 1
local MONSTERCAT_USER_ID = 1750384777

-- Luau types for the response we get from the endpoint
-- https://apis.roblox.com/toolbox-service/v1/items/details?assetIds=13579,24680,12345,67890
type AssetDetails = {
	id : number,
	name : string,
	typeId : number,
}

type AssetCreator = {
	id : number,
	name : string,
	type : number,
}

type AssetAllDetails = {
	asset : AssetDetails,
	creator : AssetCreator,
}

type AssetDetailsResponseBody = {
	data : {AssetAllDetails}
}

local gameCreator = game.CreatorId
local gameType = game.CreatorType

local ROBLOX_ID = 1

function SoundAssetChecker:_checkSound(creatorId: number, creatorType: Enum.CreatorType)
	return (creatorType == Enum.CreatorType.User and (creatorId == ROBLOX_ID or creatorId == MONSTERCAT_USER_ID)) or (gameCreator == creatorId and gameType == creatorType)
end

function SoundAssetChecker:_onBatchResponse(requestedBatch : {number}, responseBody : AssetDetailsResponseBody)
	-- Asset ids that aren't valid won't appear in the response
	-- So track what we actually requested, so we can see which ones are missing
	local requestedSet = {}
	for _, assetId in ipairs(requestedBatch) do
		requestedSet[assetId] = true
	end

	local foundSounds : {Types.SoundDetails} = {}

	for _, assetAllDetails in ipairs(responseBody.data) do
		local assetId = assetAllDetails.asset.id
		self._pendingAssetIds[assetId] = nil
		requestedSet[assetId] = nil

		-- If this isn't a sound, then just cache that and bail early
		if assetAllDetails.asset.typeId ~= AUDIO_TYPE_ID then
			self._nonSoundAssetIds[assetId] = true
			continue
		end

		local time = assetAllDetails.asset.duration
		local creatorType = if assetAllDetails.creator.type == USER_TYPE_ID then Enum.CreatorType.User else Enum.CreatorType.Group
		local isGoodAsset = (time < FIntSoundEffectMaxDuration or self:_checkSound(assetAllDetails.creator.id, creatorType))
		local ok = if isGoodAsset then "ok" else "error"
		if isGoodAsset then
			self._goodAssets += 1
		else
			self._badAssets += 1
		end

		local soundDetails: Types.SoundDetails = {
			OK = ok,
			Id = tostring(assetId),
			Name = assetAllDetails.asset.name,
			CreatorId = assetAllDetails.creator.id,
			CreatorType = if assetAllDetails.creator.type == USER_TYPE_ID then "User" else "Group",
			Creator = assetAllDetails.creator.name,
			Time = time,
		}

		self._soundAssets[assetId] = soundDetails
		table.insert(foundSounds, soundDetails)
	end

	for assetId in pairs(requestedSet) do
		self._pendingAssetIds[assetId] = nil
		self._nonSoundAssetIds[assetId] = true
	end

	if #foundSounds > 0 then
		self.soundsFound:Fire(foundSounds)
	end

	if not self:_hasBatchesToSend() and self._batchRequestsInFlight == 0 then
		-- Done sending batches, report the breakdown
		Analytics:reportBreakdown(self._goodAssets, self._badAssets)
	end
end

return SoundAssetChecker
