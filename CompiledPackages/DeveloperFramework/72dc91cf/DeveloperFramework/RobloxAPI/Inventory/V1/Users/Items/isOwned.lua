--[[
	Returns whether user owns an item.

	Example : https://inventory.roblox.com/v1/users/2760936645/items/asset/6829585000/is-owned

	Documented at : https://inventory.roblox.com/docs#!/Inventory/get_v1_users_userId_items_itemType_itemTargetId_is_owned

	Returns a bool, true if the user owns the item, false otherwise
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	-- userId : (number) ID of the user in question
	-- itemType : (Enum.AvatarItemType) Type of the item in question (i.e. Asset, GamePass, Badge, Bundle)
	-- itemTargetId : (number) ID of the item in question
	return function(userId: number, itemType: Enum.AvatarItemType, itemTargetId: number)
		assert(userId > 0, "Expected userId to be a positive number.")
		assert(itemTargetId > 0, "Expected itemTargetId to be a positive number.")

		local url = baseUrl.composeUrl(
			baseUrl.INVENTORY_URL,
			string.format("v1/users/%d/items/%s/%d/is-owned", userId, itemType.Name, itemTargetId)
		)

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise = networkingImpl:get(url)
				return networkingImpl:handleRetry(httpPromise)
			end,
		}
	end
end
