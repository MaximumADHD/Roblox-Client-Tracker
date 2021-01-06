local DefaultHttpService = game:GetService("HttpService")
local DefaultMemStorageService = game:GetService("MemStorageService")
local DefaultPlayersService = game:GetService("Players")

return function(dependencies)
	dependencies = dependencies or {}
	dependencies.HttpService = dependencies.HttpService or DefaultHttpService
	dependencies.MemStorageService = dependencies.MemStorageService or DefaultMemStorageService
	dependencies.PlayersService = dependencies.PlayersService or DefaultPlayersService

	assert(dependencies.HttpService, "expected dependencies.HttpService")
	assert(dependencies.MemStorageService, "expected dependencies.MemStorageService")
	assert(dependencies.PlayersService, "expected dependencies.PlayersService")

	local HttpService = dependencies.HttpService
	local MemStorageService = dependencies.MemStorageService
	local PlayersService = dependencies.PlayersService

	return function(behavior)
		assert(behavior, "expected behavior")

		local function getStoreKey()
			local userId = -1
			if PlayersService.LocalPlayer then
				userId = PlayersService.LocalPlayer.UserId
			end
			return "GUAC:" .. userId .. ":" .. behavior
		end

		local previouslyReadValue

		return {
			read = function()
				local storeKey = getStoreKey()
				local policyData = MemStorageService:GetItem(storeKey)
				if policyData and #policyData > 0 then
					local success, policy = pcall(function()
						return HttpService:JSONDecode(policyData)
					end)
					if success then
						-- Be sure to store the json string
						previouslyReadValue = policyData
						return policy
					end
				end

				return nil
			end,

			onPolicyChanged = function(func)
				local storeKey = getStoreKey()
				local memStorageConnection = MemStorageService:BindAndFire(storeKey, function(newPolicyData)
					-- MemStorageService will not du-duplicate the same item from storage
					if newPolicyData ~= previouslyReadValue then
						if newPolicyData and #newPolicyData > 0 then
							local success, decodedExternalPolicy = pcall(function()
								return HttpService:JSONDecode(newPolicyData)
							end)
							if success then
								-- never store garbage
								previouslyReadValue = newPolicyData
								if func then
									func(decodedExternalPolicy)
								end
							end
						end
					end
				end)

				return memStorageConnection
			end,
		}
	end
end