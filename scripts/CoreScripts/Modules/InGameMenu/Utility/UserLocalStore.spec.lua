return function()
	local AppStorageService = game:GetService("AppStorageService")
	local UserLocalStore = require(script.Parent.UserLocalStore)

	-- we need to use a registered key for testing
	local testKey = "NativeCloseLuaPromptDisplayCount"

	it("can set and get a value for the same user", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "")

		local store = UserLocalStore.new("123456")
		store:SetItem(testKey, "test")
		expect(store:GetItem(testKey)).to.equal("test")

		AppStorageService:SetItem(testKey, initialValue)
	end)

	it("does not impact other user values", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "")

		local store1 = UserLocalStore.new("123456")
		local store2 = UserLocalStore.new("654321")
		store1:SetItem(testKey, "first")
		store2:SetItem(testKey, "second")
		expect(store1:GetItem(testKey)).to.equal("first")

		AppStorageService:SetItem(testKey, initialValue)
	end)

	it("should default to current user", function()
		local currentUserId = tostring(game.Players.LocalPlayer.UserId)
		local store = UserLocalStore.new()
		expect(store.userId).to.equal(currentUserId)
	end)

	it("supports multiple value types", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "")

		local store = UserLocalStore.new()

		store:SetItem(testKey, 5)
		expect(store:GetItem(testKey)).to.equal(5)

		store:SetItem(testKey, true)
		expect(store:GetItem(testKey)).to.equal(true)

		store:SetItem(testKey, {
			key = "value",
		})
		local value = store:GetItem(testKey)
		expect(type(value)).to.equal("table")
		expect(value.key).to.equal("value")

		AppStorageService:SetItem(testKey, initialValue)
	end)

	it("defaults to initial AppStorageService value", function()
		local initialValue = AppStorageService:GetItem(testKey)
		AppStorageService:SetItem(testKey, "default value")

		local store = UserLocalStore.new()
		expect(store:GetItem(testKey)).to.equal("default value")

		AppStorageService:SetItem(testKey, initialValue)
	end)
end
