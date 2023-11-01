local LocalStore = require(script.Parent.LocalStore)
local AppStorageService = game:GetService("AppStorageService")
local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local APP_STORAGE_KEY = "InGameMenuState"

return function()
	describe("IGM Storage", function()
		if LocalStore.isEnabled() then
			beforeEach(function()
				AppStorageService:SetItem(APP_STORAGE_KEY, "")
				AppStorageService:Flush()
				LocalStore.clearCache()
			end)

			afterEach(function()
				AppStorageService:SetItem(APP_STORAGE_KEY, "")
				AppStorageService:Flush()
				LocalStore.clearCache()
			end)

			it("should store/load without error", function()
				local testVal = 5555

				LocalStore.storeForAnyPlayer("test", testVal)
				local a = LocalStore.loadForAnyPlayer("test")

				expect(a).toBe(testVal)
			end)

			it("should load value with a clean cache", function()
				local testVal = 5555

				LocalStore.storeForAnyPlayer("test", testVal)
				LocalStore.clearCache()
				local a = LocalStore.loadForAnyPlayer("test")

				expect(a).toBe(testVal)
			end)

			it("should have no cross talk between local and any", function()
				local testVal = 5555

				LocalStore.storeForLocalPlayer("test", testVal)
				local a = LocalStore.loadForAnyPlayer("test")
				local b = LocalStore.loadForLocalPlayer("test")

				expect(a).toBeNil()
				expect(b).toBe(testVal)
			end)

			it("should store table types", function()
				local testVal1 = { abc = 5555 }
				local testVal2 = { abc = 6666 }

				LocalStore.storeForLocalPlayer("test", testVal1)
				LocalStore.storeForAnyPlayer("test", testVal2)

				local a = LocalStore.loadForLocalPlayer("test")
				local b = LocalStore.loadForAnyPlayer("test")

				expect(a.abc).toBe(testVal1.abc)
				expect(b.abc).toBe(testVal2.abc)

				LocalStore.clearCache()

				a = LocalStore.loadForLocalPlayer("test")
				b = LocalStore.loadForAnyPlayer("test")

				expect(a.abc).toBe(testVal1.abc)
				expect(b.abc).toBe(testVal2.abc)
			end)
		end
	end)
end
