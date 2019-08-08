local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local NAME_DESC_CHECK_URL = "developer-subscriptions/v1/universes/plans/check-name-and-description"
local NAME_DESC_CHECK_REQUEST_TYPE = "apis"

local DevSubModeration = {}

function DevSubModeration.Get(devSub)
	if devSub == nil then
		warn("DeveloperSubscriptions.CheckNameDesc was given invalid arguements")
		return Promise.reject()
	end
	
	if devSub.Name == nil or devSub.Name == "" then
		return Promise.resolve({
			isAcceptable = true,
            filteredName = nil,
			filteredDescription = nil
		})
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(NAME_DESC_CHECK_REQUEST_TYPE, NAME_DESC_CHECK_URL),
		Params = {
			name = devSub.Name,
			description = devSub.Description,
		},
		Method = "GET",
		CachePolicy = Enum.HttpCachePolicy.None,
	}

	return Http.RequestInternal(requestInfo):andThen(function(response)
		response = HttpService:JSONDecode(response)

		local filteredName = response.filteredName
		if filteredName == "" then
			filteredName = nil
		end

		local filteredDescription = response.filteredDescription
		if filteredDescription == "" then
			filteredDescription = nil
		end

		return {isAcceptable = response.isAcceptable, filteredName = filteredName, filteredDescription = filteredDescription}
	end)
	:catch(function(err)
		warn("Developer subscription name/desc ran into an error: "..err)
		return Promise.reject()
	end)
end

return DevSubModeration