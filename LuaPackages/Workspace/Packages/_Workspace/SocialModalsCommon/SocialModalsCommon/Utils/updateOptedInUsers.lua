local Constants = require(script.Parent.Parent.Constants)
local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)

local updateOptedInUsers = {}

function updateOptedInUsers:clearLocalStorage(appStorageService)
	if not HAS_ENGINE_FEATURE then
		return
	end
	pcall(function()
		appStorageService:SetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS, "")
		appStorageService:Flush()
	end)
end

function updateOptedInUsers:addUserToLocalStorage(appStorageService, userid)
	if not HAS_ENGINE_FEATURE then
		return
	end

	local success, optedInUsers = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS)
	end)
	if success then
		local updatedUsers = {}
		updatedUsers[1] = userid
		if optedInUsers ~= nil and optedInUsers ~= "" then
			local index = #updatedUsers + 1
			-- add the current user to the list of users if user does not appear on the list already
			for user in string.gmatch(optedInUsers, "([^,]+)") do
				if user == userid then
					return
				end
				updatedUsers[index] = user
				index = index + 1
			end
		end
		local users = table.concat(updatedUsers, ",")
		-- remove whitespaces
		users = users:gsub("%s+", "")
		pcall(function()
			appStorageService:SetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS, users)
			appStorageService:Flush()
		end)
	end
end

return updateOptedInUsers
