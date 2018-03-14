local CoreGui = game:GetService("CoreGui")
local PlayersService = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common

local Functional = require(Common.Functional)

local THUMB_TYPE = Enum.ThumbnailType.HeadShot
local THUMB_SIZE = Enum.ThumbnailSize.Size48x48

local HeadshotLoader = {}
HeadshotLoader.uriCache = {}
HeadshotLoader.requestPools = {}

function HeadshotLoader:Load(imageObject, userId)
	if (not imageObject) or (not userId) then
		return
	end

	local hit = self.uriCache[userId]
	if hit then
		imageObject.Image = hit
		return
	end

	local pool = self.requestPools[userId]
	if not pool then
		pool = { imageObject }
		self.requestPools[userId] = pool
	else
		if not Functional.Find(pool, imageObject) then
			table.insert(pool, imageObject)
		end
		return
	end

	spawn(function()
		local uri, _ = PlayersService:GetUserThumbnailAsync(userId, THUMB_TYPE, THUMB_SIZE)

		if uri then
			for i = 1, #pool do
				pool[i].Image = uri
			end
			HeadshotLoader.uriCache[userId] = uri
		end

		HeadshotLoader.requestPools[userId] = nil
	end)
end

return HeadshotLoader
