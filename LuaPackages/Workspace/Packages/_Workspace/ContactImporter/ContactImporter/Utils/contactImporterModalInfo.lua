--!nolint LocalShadow
-- this function defines the eligibility for whether we should show the contact
-- importer modal for a user

local Constants = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local MILLISECONDS_PER_DAY = 24 * 60 * 60 * 1000

local getFIntContactImporterModalDisplayMaxCount =
	require(script.Parent.Parent.Flags.getFIntContactImporterModalDisplayMaxCount)
local getFIntContactImporterModalDisplayMinDays =
	require(script.Parent.Parent.Flags.getFIntContactImporterModalDisplayMinDays)

local HAS_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
local EMPTY_STRING = ""

local contactImporterModalInfo = {}

function contactImporterModalInfo:isUserOptedInLocalStorage(appStorageService, userid)
	-- check if the storage keys are defined in game engine that is running
	if not HAS_FEATURE then
		return false
	end

	-- Check whether userid is opted into feature inside of local storage
	-- if user has not opted in, we need to resurface this modal.
	-- We need to do this check here to for the case of multiple users, single
	-- device (user A opts in, user B signs into App and we should not treat
	-- user as opted in)
	local success, users = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS)
	end)
	-- string format is in "USER_1,USER_2,USER_3"
	if success then
		for optedUserId in string.gmatch(users or EMPTY_STRING, "([^,]+)") do
			if userid == optedUserId then
				return true
			end
		end
	end
	return false
end

function contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, userid)
	if not HAS_FEATURE then
		return true
	end

	-- check whether user has seen modal less than or equal to max number of times
	local success, modalDisplayCount = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
	end)
	if not success then
		return true
	end
	local userSeenModalCount = 0
	-- string format is in "USER_1:3,USER_2:2"
	for user in string.gmatch(modalDisplayCount or EMPTY_STRING, "([^,]+)") do
		local userCountInfo = string.split(user, ":")
		if userCountInfo[1] == userid then
			userSeenModalCount = tonumber(userCountInfo[2]) or 0
			break
		end
	end
	if userSeenModalCount <= getFIntContactImporterModalDisplayMaxCount() then
		return true
	end

	-- check whether the user has seen the modal in the last 7 days
	local success, modalLastDisplayedTime = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
	end)
	if not success then
		return true
	end
	local userLastSeenModal = 0
	-- string format is in "USER_1:TIME_1,USER_2:TIME_2" where time is in
	-- milliseconds
	for user in string.gmatch(modalLastDisplayedTime or EMPTY_STRING, "([^,]+)") do
		local userModalTimestampInfo = string.split(user, ":")
		if userModalTimestampInfo[1] == userid then
			userLastSeenModal = tonumber(userModalTimestampInfo[2]) or 0
			break
		end
	end
	local timeInSeconds = getFIntContactImporterModalDisplayMinDays() * MILLISECONDS_PER_DAY
	local currentTimestamp = DateTime.now().UnixTimestampMillis
	return userLastSeenModal + timeInSeconds <= currentTimestamp
end

return contactImporterModalInfo
