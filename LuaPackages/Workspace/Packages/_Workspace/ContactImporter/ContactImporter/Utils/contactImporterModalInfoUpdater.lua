-- this function updates how many times a user has seen the modal and the timestamp

local Constants = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local EMPTY_STRING = ""
local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)

local contactImporterModalInfoUpdater = {}

function contactImporterModalInfoUpdater:addSeenCount(appStorageService: any, userid: string)
	if not HAS_ENGINE_FEATURE then
		return
	end
	local success, modalDisplayInfo = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
	end)
	if success then
		local updatedCountInfo = ""
		-- early return if empty
		if modalDisplayInfo == "" then
			updatedCountInfo = userid .. ":" .. "1"
		else
			local hasUserSeenModalBefore = false
			-- string format is in "USER_1:3,USER_2:2"
			for user in string.gmatch(modalDisplayInfo or EMPTY_STRING, "([^,]+)") do
				local userCountInfo = string.split(user, ":")
				local currentUserid = userCountInfo[1]
				local count = tonumber(userCountInfo[2]) or 0
				if currentUserid == userid then
					hasUserSeenModalBefore = true
					count = count + 1
				end
				local newUserInfo = currentUserid .. ":" .. tostring(count)
				if updatedCountInfo ~= "" then
					updatedCountInfo = updatedCountInfo .. "," .. newUserInfo
				else
					updatedCountInfo = newUserInfo
				end
			end

			if not hasUserSeenModalBefore then
				updatedCountInfo = updatedCountInfo .. "," .. userid .. ":" .. "1"
			end
		end
		pcall(function()
			appStorageService:SetItem(Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT, updatedCountInfo)
			appStorageService:Flush()
		end)
	end
end

function contactImporterModalInfoUpdater:updateTimestamp(
	appStorageService: any,
	userid: string,
	currentTimestamp: number
)
	if not HAS_ENGINE_FEATURE then
		return
	end

	local success, userTimestamps = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
	end)
	if success then
		local updatedUserTimestampInfo = ""
		if userTimestamps == "" then
			updatedUserTimestampInfo = userid .. ":" .. tostring(currentTimestamp)
		else
			local hasUserSeenModalBefore = false
			for user in string.gmatch(userTimestamps or EMPTY_STRING, "([^,]+)") do
				local userTimestampInfo = string.split(user, ":")
				local userID = userTimestampInfo[1]
				local timestamp = userTimestampInfo[2]
				if userID == userid then
					timestamp = tostring(currentTimestamp)
					hasUserSeenModalBefore = true
				end
				local newUserInfo = userID .. ":" .. tostring(timestamp)
				if updatedUserTimestampInfo ~= "" then
					updatedUserTimestampInfo = updatedUserTimestampInfo .. "," .. newUserInfo
				else
					updatedUserTimestampInfo = newUserInfo
				end
			end
			if not hasUserSeenModalBefore then
				updatedUserTimestampInfo = updatedUserTimestampInfo
					.. ","
					.. userid
					.. ":"
					.. tostring(currentTimestamp)
			end
		end
		pcall(function()
			appStorageService:SetItem(Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP, updatedUserTimestampInfo)
			appStorageService:Flush()
		end)
	end
end

return contactImporterModalInfoUpdater
