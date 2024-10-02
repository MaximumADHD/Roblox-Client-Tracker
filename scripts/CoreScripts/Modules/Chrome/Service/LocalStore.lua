local AppStorageService = game:GetService("AppStorageService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local hasEngineSupport = game:GetEngineFeature("InGameMenuStateStorageKey")

local APP_STORAGE_KEY = "InGameMenuState"
local CHROME_SEEN_COUNT_KEY = "ChromeSeenCount"
local GetFFlagEnableUnibarMaxDefaultOpen = require(script.Parent.Parent.Flags.GetFFlagEnableUnibarMaxDefaultOpen)
local GetFFlagChromeSurveySupport = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeSurveySupport
local GetFFlagEnableChromeFTUX = require(script.Parent.Parent.Flags.GetFFlagEnableChromeFTUX)
local FFlagEnableUnibarFtuxTooltips = require(script.Parent.Parent.Parent.Flags.FFlagEnableUnibarFtuxTooltips)

local storeRoot: any
local loaded = false

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

local localUserId = if localPlayer then localPlayer.UserId else 0
local localPlayerId = "player_" .. tostring(localUserId)

local function initStore()
	if storeRoot.LocalPlayer == nil then
		storeRoot.LocalPlayer = {}
	end
	if storeRoot.LocalPlayer[localPlayerId] == nil then
		storeRoot.LocalPlayer[localPlayerId] = {}
	end
	if storeRoot.AnyPlayer == nil then
		storeRoot.AnyPlayer = {}
	end
end

local function localPlayerSelector(storage)
	if storage and storage.LocalPlayer and storage.LocalPlayer[localPlayerId] then
		return storage.LocalPlayer[localPlayerId]
	end
	return storage
end

local function anyPlayerSelector(storage)
	if storage and storage.AnyPlayer then
		return storage.AnyPlayer
	end
	return storage
end

local function loadStore()
	if not hasEngineSupport then
		return
	end
	local success, jsonString = pcall(function()
		return AppStorageService:GetItem(APP_STORAGE_KEY)
	end)
	if success then
		loaded = true
		if #jsonString > 0 then
			local decodeSuccess, decodedTbl = pcall(function()
				return HttpService:JSONDecode(jsonString)
			end)
			if decodeSuccess then
				storeRoot = decodedTbl
			else
				storeRoot = {}
			end
		else
			storeRoot = {}
		end
		initStore()
	end
end

local function saveStore()
	if not hasEngineSupport then
		return
	end
	if loaded then
		local encodeSuccess, jsonString = pcall(function()
			return HttpService:JSONEncode(storeRoot)
		end)
		if encodeSuccess then
			local success, err = pcall(function()
				AppStorageService:SetItem(APP_STORAGE_KEY, jsonString)
				AppStorageService:Flush()
			end)
			if not success then
				print(err)
				error("Failed to write JSON to AppStorageService", 0)
			end
		else
			error("Failed to encode JSON", 0)
		end
	end
end

local function deepCopy(t)
	if type(t) ~= "table" then
		return t
	end

	local result = {}
	for key, value in pairs(t) do
		result[key] = deepCopy(value)
	end
	return result
end

local function store(key: string, value: any, selector)
	if not loaded then
		loadStore()
	end
	if loaded then
		local storeDir = selector and selector(storeRoot) or storeRoot
		local prior = storeDir[key]
		storeDir[key] = deepCopy(value)
		if prior ~= storeDir[key] then
			saveStore()
		end
	end
end

local function load(key: string, selector): any
	if not loaded then
		loadStore()
	end
	if loaded then
		local storeDir = selector and selector(storeRoot) or storeRoot
		if storeDir then
			return deepCopy(storeDir[key])
		end
	end
	return nil
end

local function getChromeSeenCount(): number
	if GetFFlagChromeSurveySupport() and GetFFlagEnableUnibarMaxDefaultOpen() and hasEngineSupport then
		local chromeSeenCount = load(CHROME_SEEN_COUNT_KEY, localPlayerSelector)
		if chromeSeenCount and tonumber(chromeSeenCount) then
			return chromeSeenCount
		end
	end

	return 0
end

local function getValue(key: string): any
	if GetFFlagEnableChromeFTUX() or FFlagEnableUnibarFtuxTooltips then
		local value = load(key, localPlayerSelector)
		return value
	end
	return nil
end

local function deleteValue(key: string)
	if GetFFlagEnableChromeFTUX() then
		store(key, nil, localPlayerSelector)
	end
end

return {
	isEnabled = function()
		return hasEngineSupport
	end,
	storeForLocalPlayer = function(key, value: any)
		store(key, value, localPlayerSelector)
	end,
	loadForLocalPlayer = function(key)
		return load(key, localPlayerSelector)
	end,

	storeForAnyPlayer = function(key, value: any)
		store(key, value, anyPlayerSelector)
	end,
	loadForAnyPlayer = function(key)
		return load(key, anyPlayerSelector)
	end,

	clearCache = function()
		loaded = false
		storeRoot = nil
	end,

	getChromeSeenCount = function()
		return getChromeSeenCount()
	end,
	getValue = getValue,
	deleteValue = deleteValue,
}
