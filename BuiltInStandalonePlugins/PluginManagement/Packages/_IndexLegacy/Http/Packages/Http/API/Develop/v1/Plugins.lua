--[[
	Returns information about the list of provided pluginIds

	https://develop.roblox.com/v1/plugins?pluginIds=3454668784,165687726,...
	Documented at : https://develop.roblox.com/docs/

	Returns a JSON table with these fields :
	"data": [
	{
		"id": 3454668784,
		"name": "test_plugin3",
		"description": "test_plugin3",
		"commentsEnabled": true,
		"versionId": 4170963656,
		"created": "2019-07-11T23:04:39.167Z",
		"updated": "2019-07-11T23:04:39.183Z"
	},
	{
		"id": 165687726,
		"name": "Stravant - GapFill & Extrude *Fixed*",
		"description": "A plugin that lets you \"fill in\" gaps between edges of an arbitrary
			selection of parts in your place, letting you do things that are pretty much
			impossible using the existing tools, such as creating smooth rolling contours on
			your creations. Also allows you to extrude faces of parts; double clicking on a
			part's face will create a new part by \"stretching\" that face out in the direction
			it is facing. Best used in conjunction with the ResizeAlign plugin also by me:
			############################################################
			MESSAGE ME WITH ANY BUGS THAT YOU FIND, PREFERABLY GIVE ME A LINK TO A YOUTUBE VID WITH THE PROBLEM",
		"commentsEnabled": true,
		"versionId": 1887335469,
		"created": "2014-07-10T20:40:37.74Z",
		"updated": "2018-02-12T04:14:51.047Z"
	}]
]]

local Http = script.Parent.Parent.Parent.Parent
local BaseUrl = require(Http.BaseUrl)
local Networking = require(Http.Networking)

return function(networkingImpl)
	return function(pluginIds)
		assert(type(pluginIds) == "table", "Expected an array of pluginIds.")
		assert(#pluginIds > 0, "Expected a list of plugins to fetch data for.")
		if #pluginIds > 100 then
			warn("Requesting more than 100 plugins at a time is likely to cause problems.")
		end

		local idArgs = BaseUrl.makeQueryString({
			pluginIds = table.concat(pluginIds, ",")
		})
		local url = string.format("%sv1/plugins?%s", BaseUrl.DEVELOP_URL, idArgs)

		local httpPromise = networkingImpl:get(url)
		local retryPromise = networkingImpl:handleRetry(httpPromise)
		return Networking.parseJson(retryPromise)
	end
end