local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local Promise = require(Packages.Promise)

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
}

return resolvers
