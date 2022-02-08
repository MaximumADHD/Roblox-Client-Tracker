--[[
	API is a single source of truth for interacting with all of our network endpoints.
	Whenever a new endpoint is implemented, it can be added here and all other code can benefit from it.

	Props :
		networking - (Networking, optional) an object that returns promises when you call http functions

	Usage :
		-- create a thunk for fetching information about plugins
		local assetId = 11241241

		local API = Http.API.new()
		local fetchPromise = API.Develop.v1.Plugins({ assetId })

		-- parse the response and handle any errors
		fetchPromise:andThen(function(response)
			local json = response.responseBody
			for k, v in pairs(json) do
				print(k, v)
			end
		end, function(err)
			print("Could not fetch information for ", assetId)
		end)
]]

local Networking = require(script.Parent.Networking)

local API = {}
function API.new(props)
	if not props then
		props = {}
	end

	local networkingImpl = props.networking
	if not networkingImpl then
		networkingImpl = Networking.new()
	end

	-- construct the full API table
	local api = {
		-- for constructing helpful urls
		Images = require(script.Images),

		-- API Endpoint Lists
		API = require(script.API)(networkingImpl),
		Develop = require(script.Develop)(networkingImpl),
		WWW = require(script.WWW)(networkingImpl),
		-- add more endpoint domains here
	}
	setmetatable(api, API)

	return api
end

function API.mock(responseMap)
	local networkingImpl = Networking.mock(responseMap)
	return API.new({
		networking = networkingImpl
	})
end


return API