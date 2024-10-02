--!nonstrict

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local Url = require(RobloxGui.Modules.Common.Url)
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------- BINDABLES --------------
local BatchUpdatePostScores = Instance.new("BindableFunction")

----------- METHODS --------------
local function onBatchUpdatePostScores(postScores)
	-- Guard required parameters
	if not postScores then
		error("postScores cannot be nil")
	end

	-- Construct the API path
	local apiPath = "posts-api/v1/content-posts/batchUpdateExperienceRankingScores"
	local url = string.format("%s%s", Url.APIS_URL, apiPath)

	local request = HttpService:JSONEncode(
		{
			experienceRankingScores = postScores
		}
	)

	-- Make the HTTP request
	local success, result = pcall(HttpRbxApiService.PostAsyncFullUrl, HttpRbxApiService, url, request)
	return success, result
end

----------- CONNECTIONS --------------
BatchUpdatePostScores.Name = "BatchUpdatePostScores"
BatchUpdatePostScores.Parent = ReplicatedStorage
BatchUpdatePostScores.OnInvoke = onBatchUpdatePostScores