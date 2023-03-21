local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local Promise = require(Packages.Promise)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local generatedTypes = require(script.Parent.Parent.generatedTypes)
type QueryExperienceThumbnailsArgs = generatedTypes.QueryExperienceThumbnailsArgs

local resolvers = {
	Experience = {
		thumbnails = function(root, args, context)
			local thumbnailLoader = context.dataLoaders.thumbnails
			if not thumbnailLoader then
				return Promise.resolve({})
			end
			local thumbnailData = thumbnailLoader
				:load(root.universeId)
				:andThen(function(result)
					if not result then
						return {}
					end
					return { { url = result.imageUrl } }
				end)
				:catch(function()
					return {}
				end)
			return thumbnailData
		end,
	},
	Query = {
		experienceThumbnails = function(_root, args: QueryExperienceThumbnailsArgs)
			return Array.map(args.universeIds, function(universeId)
				return {
					universeId = universeId,
				}
			end)
		end,
	},
}

return resolvers
