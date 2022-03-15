local AppStorageService = game:GetService("AppStorageService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local function getCurrentUser()
	if Players.LocalPlayer and Players.LocalPlayer.UserId > 0 then
		return tostring(Players.LocalPlayer.UserId)
	end
	return "0"
end

local DEFAULT_KEY = "default"

local function getUserKey(userId)
	return  "u_" .. tostring(userId or "0")
end

local function getValuesForAllUsers(key)
	local data = AppStorageService:GetItem(key)
	local success, parsedData = pcall(function()
		return HttpService:JSONDecode(data)
	end)
	if success and type(parsedData) == "table" then
		return parsedData
	else
		return {
			[DEFAULT_KEY] = data,
		}
	end
end

local function setValuesForAllUsers(key, data)
	local json = HttpService:JSONEncode(data)
	AppStorageService:SetItem(key, json)
end

local UserLocalStore = {}
UserLocalStore.__index = UserLocalStore

function UserLocalStore.new(userId)
	if not userId then
		userId = getCurrentUser()
	end

	local self = {
		userId = tostring(userId),
	}
	setmetatable(self, UserLocalStore)
	return self
end

function UserLocalStore:GetItem(key)
	local parsedData = getValuesForAllUsers(key)
	local userKey = getUserKey(self.userId)
	local value = parsedData[userKey]
	if value == nil then
		value = parsedData[DEFAULT_KEY]
	end
	return value
end

function UserLocalStore:SetItem(key, value)
	local data = getValuesForAllUsers(key)
	local userKey = getUserKey(self.userId)
	data[userKey] = value
	setValuesForAllUsers(key, data)
end

function UserLocalStore:Flush()
	AppStorageService:Flush()
end

UserLocalStore.getItem = UserLocalStore.GetItem
UserLocalStore.setItem = UserLocalStore.SetItem
UserLocalStore.flush = UserLocalStore.Flush

return UserLocalStore
