return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local EquipAsset = require(Modules.LuaApp.Actions.EquipAsset)

    describe("Action EquipAsset", function()
        it("should return a correct action name", function()
            expect(EquipAsset.name).to.equal("EquipAsset")
        end)
        it("should return a correct action type name", function()
            local action = EquipAsset("Hat", 1)
            expect(action.type).to.equal(EquipAsset.name)
        end)
        it("should return a EquipAsset action with the correct status", function()
            local action = EquipAsset("Hat", 1)

            expect(action).to.be.a("table")
            expect(action.assetType).to.be.a("string")
            expect(action.assetType).to.equal("Hat")
            expect(action.assetId).to.be.a("number")
            expect(action.assetId).to.equal(1)
        end)
    end)
end