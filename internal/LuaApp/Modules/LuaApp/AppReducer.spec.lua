return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local AppReducer = require(Modules.LuaApp.AppReducer)

	it("has the expected fields, and only the expected fields", function()
		local state = AppReducer(nil, {})

		local expectedKeys = {
			DeviceOrientation = true,
			GameSorts = true,
			Games = true,
			GameSortGroups = true,
			GamesInSort = true,
			GameThumbnails = true,
			Users = true,
			UsersAsync = true,
			LocalUser = true,
			AppRouter = true,
			PlaceInfos = true,
			PlaceThumbnails = true,
			FriendCount = true,
			ConnectionState = true,
			FormFactor = true,
			ChatAppReducer = true,
		}

		for key in pairs(expectedKeys) do
			assert(state[key] ~= nil, string.format("Expected field %q", key))
		end

		for key in pairs(state) do
			assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
		end
	end)
end