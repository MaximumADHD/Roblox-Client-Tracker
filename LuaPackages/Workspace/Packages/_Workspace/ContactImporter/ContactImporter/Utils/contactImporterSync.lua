-- this function updates how many times a user has seen the modal and the timestamp

local Constants = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local EMPTY_STRING = ""
local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
local getFIntContactImporterSyncMinHours = require(script.Parent.Parent.Flags.getFIntContactImporterSyncMinHours)
local HOURS_TO_MS = 60 * 60 * 1000

local contactImporterSync = {}

function contactImporterSync:updateSyncTimestamp(appStorageService: any, userid: string, currentTime: number)
	if not HAS_ENGINE_FEATURE then
		return
	end
	local success, syncTimestampInfo = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
	end)
	if success then
		local updatedTimestampInfo = ""
		-- early return if empty
		if syncTimestampInfo == "" then
			updatedTimestampInfo = userid .. ":" .. tostring(currentTime)
		else
			local hasUserSeenModalBefore = false
			-- string format is in "USER_1:TIME_1,USER_2:TIME_2,..."
			for user in string.gmatch(syncTimestampInfo or EMPTY_STRING, "([^,]+)") do
				local userInfo = string.split(user, ":")
				local currentUserid = userInfo[1]
				local timestamp = tonumber(userInfo[2]) or 0
				if currentUserid == userid then
					hasUserSeenModalBefore = true
					timestamp = currentTime
				end
				local newUserInfo = currentUserid .. ":" .. tostring(timestamp)
				if updatedTimestampInfo ~= "" then
					updatedTimestampInfo = updatedTimestampInfo .. "," .. newUserInfo
				else
					updatedTimestampInfo = newUserInfo
				end
			end

			if not hasUserSeenModalBefore then
				updatedTimestampInfo = updatedTimestampInfo .. "," .. userid .. ":" .. tostring(currentTime)
			end
		end
		pcall(function()
			appStorageService:SetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC, updatedTimestampInfo)
			appStorageService:Flush()
		end)
	end
end

function contactImporterSync:shouldSyncContacts(appStorageService: any, userid: string, currentTime: number)
	if not HAS_ENGINE_FEATURE then
		return true
	end
	local success, syncTimestampInfo = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
	end)
	if not success then
		return true
	end
	local timestamp = 0
	for user in string.gmatch(syncTimestampInfo or EMPTY_STRING, "([^,]+)") do
		local userSyncTimestampInfo = string.split(user, ":")
		local currentUserid = userSyncTimestampInfo[1]
		if currentUserid == userid then
			timestamp = tonumber(userSyncTimestampInfo[2]) :: number
			break
		end
	end
	local timeInMS = getFIntContactImporterSyncMinHours() * HOURS_TO_MS
	if currentTime - timestamp >= timeInMS then
		return true
	else
		return false
	end
end

return contactImporterSync
