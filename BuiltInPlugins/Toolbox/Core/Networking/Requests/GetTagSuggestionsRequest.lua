local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local TagsUtil = require(Util.TagsUtil)
local DebugFlags = require(Util.DebugFlags)

local SetTagSuggestions = require(Plugin.Core.Actions.SetTagSuggestions)

return function(networkInterface, tags, prefix)
	return function(store)
		local sentTime = tick()

		local handlerFunc = function(response)

			local suggestions = {}

			if response.responseBody and response.responseBody.data then
				for i = 1, #response.responseBody.data do
					local suggestion = response.responseBody.data[i]
					local tagId = suggestion.tagId
					if tagId and suggestion.status == AssetConfigConstants.TAGS_SUGGESTION_SUCCESS and not TagsUtil.hasTag(tags, tagId) then
						table.insert(suggestions, suggestion)
					end
					if #suggestions > AssetConfigConstants.MAX_DISPLAY_SUGGESTIONS then
						break
					end
				end
			end

			store:dispatch(SetTagSuggestions(suggestions, sentTime, prefix))
		end

		local errorFunc = function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Failed to fetch tag suggestions!")
			end
		end

		return networkInterface:tagsPrefixSearch(prefix, AssetConfigConstants.MAX_FETCH_SUGGESTIONS):andThen(handlerFunc, errorFunc)
	end
end
