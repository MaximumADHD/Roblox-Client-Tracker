local Plugin = script.Parent.Parent.Parent.Parent
local Http = require(Plugin.Packages.Http)
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)
local InitPolicySettingStatus = require(Plugin.Src.Thunks.InitPolicySettingStatus)

local SUBDOMAIN = "gameinternationalization"
local ALL_POLICIES_PATH = "v1/player-policies/all-values"
local PLAYER_POLICY_PATH = "v1/player-policies-client"

local allPoliciesUrl = UrlConstructor.BuildUrl(SUBDOMAIN, ALL_POLICIES_PATH)
local playerPolicyUrl = UrlConstructor.BuildUrl(SUBDOMAIN, PLAYER_POLICY_PATH)

local function getPlayerPolicyInfo(allPoliciesResponse, store, networkingImpl, plugin)
	local playerPolicyHttpPromise = networkingImpl:get(playerPolicyUrl)
	local playerPolicyRetryPromise = networkingImpl:handleRetry(playerPolicyHttpPromise)
	networkingImpl.parseJson(playerPolicyRetryPromise):andThen(function(result)
		if result.responseCode == Http.StatusCodes.OK then
			local playerPolicyResponse = result.responseBody
			store:dispatch(InitPolicySettingStatus(allPoliciesResponse, playerPolicyResponse, plugin))
		else
			store:dispatch(InitPolicySettingStatus(allPoliciesResponse, {}, plugin))
			warn("Player Emulator can't get player policy info: HTTP error "..tostring(result.responseCode))
		end
	end, function(err)
		store:dispatch(InitPolicySettingStatus(allPoliciesResponse, {}, plugin))
		warn("Player Emulator can't get player policy info: " .. err)
	end)
end

return function(networkingImpl, plugin)
	return function(store)
		local allPoliciesHttpPromise = networkingImpl:get(allPoliciesUrl)
		local allPoliciesRetryPromise = networkingImpl:handleRetry(allPoliciesHttpPromise)
		networkingImpl.parseJson(allPoliciesRetryPromise):andThen(function(result)
			if result.responseCode == Http.StatusCodes.OK then
				local allPoliciesResponse = result.responseBody
				getPlayerPolicyInfo(allPoliciesResponse, store, networkingImpl, plugin)
			else
				warn("Player Emulator failed to load policy section data")
			end
		end, function(err)
			warn("Player Emulator can't get policies info: " .. err)
		end)
	end
end


