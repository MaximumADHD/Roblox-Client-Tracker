return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)

    describe("Action UnequipAsset", function()
        it("should return a correct action name", function()
            expect(UnequipAsset.name).to.equal("UnequipAsset")
        end)
        it("should return a correct action type name", function()
            local action = UnequipAsset("Hat", 1)
            expect(action.type).to.equal(UnequipAsset.name)
        end)
        it("should return a UnequipAsset action with the correct status", function()
            local action = UnequipAsset("Hat", 1)

            expect(action).to.be.a("table")
            expect(action.assetType).to.be.a("string")
            expect(action.assetType).to.equal("Hat")
            expect(action.assetId).to.be.a("number")
            expect(action.assetId).to.equal(1)
        end)
    end)
end