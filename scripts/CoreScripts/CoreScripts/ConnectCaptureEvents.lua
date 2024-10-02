--!nonstrict

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local Url = require(RobloxGui.Modules.Common.Url)
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

----------- BINDABLES --------------
local GetUserPosts = Instance.new("BindableFunction")
local LoadFeedItems = Instance.new("BindableFunction")
local GetVotingCategories = Instance.new("BindableFunction")
local OnPostDeleted = Instance.new("BindableEvent")
local OnPostReported = Instance.new("BindableEvent")

----------- METHODS --------------
local function onGetUserPosts(userId, postTypeFilter, sortOrder, cursor, limit)
    -- Guard required parameters
    if userId == nil then 
        error(`userId cannot be nil`)
    end

    -- Construct the API path and parameters
    local apiPath = "posts-api/v1/content-posts/findByUser"

    
    local params = "userId=" .. userId
    if postTypeFilter then
        params = params .. "&postTypeFilter=" .. postTypeFilter
    end
    if sortOrder then
        params = params .. "&sortOrder=" .. sortOrder
    end
    if cursor ~= nil then 
        params = params .. "&cursor=" .. cursor
    end
    if limit ~= nil then 
        params = params .. "&limit=" .. limit
    end

    local url = string.format("%s%s?%s", Url.APIS_URL, apiPath, params)

    -- Make the HTTP request
    local success, result = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, url)
    if result then
        return success, result
    end
    return success, {}
end

local function transformPost(post)
    post.screenshotMetadata = nil
    post.contentId = "rbxpost://" .. post.postId
end

local function transformPosts(posts)
    for _, post in ipairs(posts) do
        transformPost(post)
    end
end

local function onLoadFeedItems(postTypeFilter, feedType, experienceId, cursor, limit)
    -- Guard required parameters
    if postTypeFilter == nil then 
        error(`postTypeFilter cannot be nil`)
    end

    -- Construct the API path and parameters
    local apiPath = "posts-api/v1/content-posts/findFeedPosts"

    local params = "postTypeFilter=" .. postTypeFilter
    if feedType ~= nil then 
        params = params .. "&feedType=" .. feedType
    end
    if experienceId ~= nil then 
        params = params .. "&experienceId=" .. experienceId
    end
    if cursor ~= nil then 
        params = params .. "&cursor=" .. cursor
    end
    if limit ~= nil then 
        params = params .. "&limit=" .. limit
    end

    local url = string.format("%s%s?%s", Url.APIS_URL, apiPath, params)

    -- Make the HTTP request
    local success, result = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, url)
    if result then
        if result.posts then
            transformPosts(result.posts)
        end
        return success, result
    end

    return success, {}
end

local function onGetVotingCategories()
     -- Construct the API path
    local apiPath = "posts-api/v1/content-posts/getActiveCategories"
    local url = string.format("%s%s", Url.APIS_URL, apiPath)

    -- Make the HTTP request
    local success, result = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, url)
    return success, result
end

local function onPostDeleted(postId)
	local apiPath = "posts-api/v1/content-posts/delete"
	local url = string.format("%s%s/%s", Url.APIS_URL, apiPath, postId)

	-- Make the HTTP request
	pcall(HttpRbxApiService.PostAsyncFullUrl, HttpRbxApiService, url)
end

local function onPostReported(postId)
    -- Guard required parameters
    if not postId then
		error("postId cannot be nil")
	end

	-- Construct the API path
	local apiPath = "posts-api/v1/content-posts/report"
	local url = string.format("%s%s", Url.APIS_URL, apiPath)

    local request = HttpService:JSONEncode(
			{
				postId = postId
			}
		)

	-- Make the HTTP request
    pcall(HttpRbxApiService.PostAsyncFullUrl, HttpRbxApiService, url, request)
end


----------- CONNECTIONS --------------
-- FindPostsByUser
GetUserPosts.Name = "GetUserPosts"
GetUserPosts.Parent = ReplicatedStorage
GetUserPosts.OnInvoke = onGetUserPosts

-- FindFeedPosts
LoadFeedItems.Name = "LoadFeedItems"
LoadFeedItems.Parent = ReplicatedStorage
LoadFeedItems.OnInvoke = onLoadFeedItems

-- GetVotingCategories
GetVotingCategories.Name = "GetVotingCategories"
GetVotingCategories.Parent = ReplicatedStorage
GetVotingCategories.OnInvoke = onGetVotingCategories

-- PostDeleted
OnPostDeleted.Name = "OnPostDeleted"
OnPostDeleted.Parent = ReplicatedStorage
OnPostDeleted.Event:Connect(onPostDeleted)

-- PostReported
OnPostReported.Name = "OnPostReported"
OnPostReported.Parent = ReplicatedStorage
OnPostReported.Event:Connect(onPostReported)