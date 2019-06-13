--[[
	Get game group owner name, and maybe other things in the future
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)

local OwnerMetadata = {}

function OwnerMetadata.Get(creatorType, creatorId)
	local groupOwnerUserId = creatorType == Enum.CreatorType.Group and creatorId or nil

	return Promise.new(function(resolve, _)
		resolve({
			groupOwnerUserId = groupOwnerUserId,
		})
	end)
end

return OwnerMetadata