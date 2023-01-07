local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local initify = require(CorePackages.initify)
initify(CorePackages)
initify(Modules)

local GraphQLServer = require(CorePackages.Workspace.Packages.GraphQLServer)
local FetchModule = require(CorePackages.Workspace.Packages.Fetch)
local Promise = require(CorePackages.Packages.Promise)
local HttpService = game:GetService("HttpService")
HttpService.HttpEnabled = true

local fetch = FetchModule.fetch

--[[
	The lua implementation of GraphQL replaces the javascript null value with a singleton table
	that stringifies to "null". This can cause some issues when using JSONEncode, which encodes
	the null sentinel as a table. This isn't a problem when everything is contained in lua, but
	it causes some issues when trying to communicate with a javascript graphql implementation.
]]
local function replaceNullSingleton(obj: { [string]: any })
	for key, value in obj do
		if type(value) == "table" then
			if tostring(value) == "null" then
				-- HttpService:JSONEncode encodes math.huge as null
				obj[key] = math.huge
			elseif key == "errors" then
				-- GraphQL errors are cyclic tables that cannot be encoded. err:toJSON() encodes the relevant methods
				for i, err in value do
					(obj[key] :: { [number]: any })[i] = HttpService:JSONDecode(err:toJSON())
				end
			else
				replaceNullSingleton(value)
			end
		end
	end
	return obj
end

local Server = GraphQLServer.GraphQLServer.new({})

local function checkQueue()
	-- Errors in this Promise get caught by the main loop
	return Promise.new(function(resolve, reject)
		local response = fetch("http://localhost:4000/dequeue", {
			method = "GET",
			headers = {
				["Content-Type"] = "application/json",
			},
		}):expect()
		local responseJson = response:json():expect()

		-- Resolve if there is nothing in the queue
		if not responseJson.shouldQuery then
			resolve()
			return
		end

		local requestBody = {
			body = HttpService:JSONEncode(responseJson.params),
		}
		local requestId = responseJson.requestId

		-- Execute the GraphQL request
		Server:fetchLocal(requestBody)
			:andThen(function(result)
				local responseBody = HttpService:JSONEncode({
					luaResponse = replaceNullSingleton(result),
					requestId = requestId,
				})

				local resolveResponse = fetch("http://localhost:4000/resolve", {
					method = "POST",
					headers = {
						["Content-Type"] = "application/json",
					},
					body = responseBody,
				}):expect()

				if not resolveResponse.ok then
					reject("TypeScript server had a failure")
				else
					resolve()
				end
				return
			end)
			:catch(function(err)
				-- Rethrow the error
				reject(err)
				return
			end)
		return
	end)
end

while true do
	checkQueue():catch(function(err)
		-- Just print the error, since this is a test environment
		print(err)
	end)
	-- Wait to avoid timeout. This could potentially be removed if we switch to long polling
	task.wait(0.2)
end
