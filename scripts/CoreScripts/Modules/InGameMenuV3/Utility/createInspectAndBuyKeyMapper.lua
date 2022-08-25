--In inspect and buy we use a store ID in the keymapper so that if inspect and buy is closed and re-opened
--previous inspect and buy requests are not grouped with the current requests. This causes issues because
--inspect and buy uses a new store when closed and re-opened.

--Creates a key mapper for a given method name
local function createInspectAndBuyKeyMapper(methodName)
	--Takes a storeId and then any number of addiontal arguments
	return function(storeId, ...)
		local key = "inspectAndBuy." ..storeId.. "." ..methodName

		local length = select("#", ...)
		for i = 1, length do
			key = key .. "." ..tostring(select(i, ...))
		end

		return key
	end
end
return createInspectAndBuyKeyMapper