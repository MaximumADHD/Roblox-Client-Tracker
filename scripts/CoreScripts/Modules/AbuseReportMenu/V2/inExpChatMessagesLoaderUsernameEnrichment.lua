local CorePackages = game:GetService("CorePackages")

local Promise = require(CorePackages.Packages.Promise)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local UserProfileStore = UserProfiles.Stores.UserProfileStore

local function collectUserIdsMissingUsername(groups): { string }
	local seen: { [string]: boolean } = {}
	local userIds: { string } = {}

	for _, group in groups do
		for _, item in group.items do
			local meta = item.meta
			local userId = meta and meta.userId
			local username = meta and meta.username
			if userId and userId ~= "0" and (not username or username == "") and not seen[userId] then
				seen[userId] = true
				table.insert(userIds, userId)
			end
		end
	end

	return userIds
end

local function enrichGroupsWithProfileUsernames(groups, profiles)
	local usernameByUserId: { [string]: string } = {}

	for _, profile in profiles do
		local username = profile.names.getUsername(false)
		if username and #username > 0 then
			usernameByUserId[profile.userId] = username
		end
	end

	for _, group in groups do
		for _, item in group.items do
			local meta = item.meta
			if meta and (not meta.username or meta.username == "") then
				local username = usernameByUserId[meta.userId]
				if username then
					meta.username = username
				end
			end
		end
	end
end

local function enrichMissingUsernames(groups)
	local missingUserIds = collectUserIdsMissingUsername(groups)
	if #missingUserIds == 0 then
		return Promise.resolve(groups)
	end

	return Promise.new(function(resolve)
		UserProfileStore.get().fetchNamesByUserIds(missingUserIds, function(fetchResult)
			-- fetchByUserIds invokes the callback synchronously with status "fetching"
			-- before the HTTP request completes; only act on terminal states.
			if fetchResult.status == "success" and fetchResult.data then
				enrichGroupsWithProfileUsernames(groups, fetchResult.data)
				resolve(groups)
			elseif fetchResult.status == "failed" then
				resolve(groups)
			end
		end)
	end)
end

return {
	collectUserIdsMissingUsername = collectUserIdsMissingUsername,
	enrichGroupsWithProfileUsernames = enrichGroupsWithProfileUsernames,
	enrichMissingUsernames = enrichMissingUsernames,
}
