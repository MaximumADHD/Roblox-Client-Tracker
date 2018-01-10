return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAssets = require(Modules.LuaApp.Actions.SetAssets)

    describe("Action SetAssets", function()
        it("should return a correct action name", function()
            expect(SetAssets.name).to.equal("SetAssets")
        end)
        it("should return a correct action type name", function()
            local action = SetAssets({})
            expect(action.type).to.equal(SetAssets.name)
        end)
        it("should return a SetAssets action with the correct status", function()
            local action = SetAssets({})

            expect(action).to.be.a("table")
            expect(action.assets).to.be.a("table")
            expect(next(action.assets)).never.to.be.ok()

            action = SetAssets({
                ["Head"] = {1}
            })

            expect(action).to.be.a("table")
            expect(action.assets).to.be.a("table")

            expect(action.assets["Head"]).to.be.a("table")
            expect(action.assets["Head"][1]).to.equal(1)

            action = SetAssets({
                ["Hat"] = {2, 3, 4},
                ["Shirt"] = {5},
                ["Pants"] = {6},
            })

            expect(action).to.be.a("table")
            expect(action.assets).to.be.a("table")

            expect(action.assets["Head"]).never.to.be.ok()

            expect(action.assets["Hat"]).to.be.a("table")
            expect(action.assets["Hat"][1]).to.equal(2)
            expect(action.assets["Hat"][2]).to.equal(3)
            expect(action.assets["Hat"][3]).to.equal(4)

            expect(action.assets["Shirt"]).to.be.a("table")
            expect(action.assets["Shirt"][1]).to.equal(5)

            expect(action.assets["Pants"]).to.be.a("table")
            expect(action.assets["Pants"][1]).to.equal(6)
        end)
    end)
end