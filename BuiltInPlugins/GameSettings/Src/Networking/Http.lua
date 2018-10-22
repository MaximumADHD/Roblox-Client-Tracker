local HttpRbxApiService = game:GetService("HttpRbxApiService")
local ContentProvider = game:GetService("ContentProvider")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)

local BASE_URL = ContentProvider.BaseUrl
if BASE_URL:find("https://www.") then
	BASE_URL = BASE_URL:sub(13)
elseif BASE_URL:find("http://www.") then
	BASE_URL = BASE_URL:sub(12)
end

local Http = {}

function Http.BuildRobloxUrl(front, back, ...)
	return "https://" .. front .. "." .. BASE_URL .. (string.format(back, ...) or "")
end

function Http.Request(requestInfo)
	return Promise.new(function(resolve, reject)
		-- Prevent yielding
		spawn(function()
			local ok, result = pcall(HttpRbxApiService.RequestAsync,
				HttpRbxApiService, requestInfo)

			if ok then
				resolve(result)
			else
				reject(result)
			end
		end)
	end)
end

return Http