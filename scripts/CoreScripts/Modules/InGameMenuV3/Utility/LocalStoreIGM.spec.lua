local LocalStoreIGM = require(script.Parent.LocalStoreIGM)
local AppStorageService = game:GetService("AppStorageService")

local APP_STORAGE_KEY = "InGameMenuState"

return function()
	describe("IGM Storage", function()
		if LocalStoreIGM.isEnabled() then

			beforeEach(function()
				AppStorageService:SetItem(APP_STORAGE_KEY, "")
				AppStorageService:Flush()
				LocalStoreIGM.clearCache()
			end)

			afterEach(function()
				AppStorageService:SetItem(APP_STORAGE_KEY, "")
				AppStorageService:Flush()
				LocalStoreIGM.clearCache()
			end)

			it("should store/load without error", function()
				local testVal = 5555;

				LocalStoreIGM.storeForAnyPlayer("test", testVal);
				local a = LocalStoreIGM.loadForAnyPlayer("test");

				expect(a).to.equal(testVal)
			end)

			it("should load value with a clean cache", function()
				local testVal = 5555;

				LocalStoreIGM.storeForAnyPlayer("test", testVal);
				LocalStoreIGM.clearCache()
				local a = LocalStoreIGM.loadForAnyPlayer("test");

				expect(a).to.equal(testVal)
			end)

			it("should have no cross talk between local and any", function()
				local testVal = 5555;

				LocalStoreIGM.storeForLocalPlayer("test", testVal);
				local a = LocalStoreIGM.loadForAnyPlayer("test");
				local b = LocalStoreIGM.loadForLocalPlayer("test");

				expect(a).to.equal(nil)
				expect(b).to.equal(testVal)
			end)

			it("should store table types", function()
				local testVal1 = { abc = 5555 };
				local testVal2 = { abc = 6666 };

				LocalStoreIGM.storeForLocalPlayer("test", testVal1);
				LocalStoreIGM.storeForAnyPlayer("test", testVal2);

				local a = LocalStoreIGM.loadForLocalPlayer("test");
				local b = LocalStoreIGM.loadForAnyPlayer("test");

				expect(a.abc).to.ok()
				expect(b.abc).to.ok()

				expect(a.abc).to.equal(testVal1.abc)
				expect(b.abc).to.equal(testVal2.abc)


				LocalStoreIGM.clearCache()

				a = LocalStoreIGM.loadForLocalPlayer("test");
				b = LocalStoreIGM.loadForAnyPlayer("test");

				expect(a.abc).to.ok()
				expect(b.abc).to.ok()

				expect(a.abc).to.equal(testVal1.abc)
				expect(b.abc).to.equal(testVal2.abc)

			end)
		end
	end)
end
