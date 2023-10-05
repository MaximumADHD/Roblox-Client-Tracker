return function()
	local CorePackages = game:GetService("CorePackages")

	local AppStorageService = game:GetService("AppStorageService")
	local UserLocalStore = require(script.Parent.UserLocalStore)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	-- we need to use a registered key for testing
	local testKey = "NativeCloseLuaPromptDisplayCount"

	it("can set and get a value for the same user", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "")

		local store = UserLocalStore.new("123456")
		store:SetItem(testKey, "test")
		expect(store:GetItem(testKey)).toBe("test")

		AppStorageService:SetItem(testKey, initialValue)
	end)

	it("does not impact other user values", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "")

		local store1 = UserLocalStore.new("123456")
		local store2 = UserLocalStore.new("654321")
		store1:SetItem(testKey, "first")
		store2:SetItem(testKey, "second")
		expect(store1:GetItem(testKey)).toBe("first")

		AppStorageService:SetItem(testKey, initialValue)
	end)

	it("should default to current user", function()
		assert(game.Players.LocalPlayer)
		local currentUserId = tostring(game.Players.LocalPlayer.UserId)
		local store = UserLocalStore.new()
		expect(store.userId).toBe(currentUserId)
	end)

	it("supports multiple value types", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "")

		local store = UserLocalStore.new()

		store:SetItem(testKey, 5)
		expect(store:GetItem(testKey)).toBe(5)

		store:SetItem(testKey, true)
		expect(store:GetItem(testKey)).toBe(true)

		store:SetItem(testKey, {
			key = "value",
		})
		local value = store:GetItem(testKey)
		expect(value).toMatchObject({ key = "value" })

		AppStorageService:SetItem(testKey, initialValue)
	end)

	it("defaults to initial AppStorageService value", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "default value")

		local store = UserLocalStore.new()
		expect(store:GetItem(testKey)).toBe("default value")

		AppStorageService:SetItem(testKey, initialValue)
	end)
end
