return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetScales = require(Modules.LuaApp.Actions.SetScales)

    describe("Action SetScales", function()
        it("should return a correct action name", function()
            expect(SetScales.name).to.equal("SetScales")
        end)
        it("should return a correct action type name", function()
            local action = SetScales({})
            expect(action.type).to.equal(SetScales.name)
        end)
        it("should return a SetScales action with the correct status", function()
            local scales = {
                ["Height"] = 1.01,
                ["Width"] = 0.70,
                ["Depth"] = 0.85,
                ["Head"] = 0.95,
                ["BodyType"] = 0.30,
                ["Proportion"] = 0.50
            }
            local action = SetScales(scales)

            expect(action).to.be.a("table")
            expect(action.scales).to.be.a("table")

            expect(action.scales["Height"]).to.be.a("number")
            expect(action.scales["Height"]).to.equal(1.01)

            expect(action.scales["Width"]).to.be.a("number")
            expect(action.scales["Width"]).to.equal(0.70)

            expect(action.scales["Depth"]).to.be.a("number")
            expect(action.scales["Depth"]).to.equal(0.85)

            expect(action.scales["Head"]).to.be.a("number")
            expect(action.scales["Head"]).to.equal(0.95)

            expect(action.scales["BodyType"]).to.be.a("number")
            expect(action.scales["BodyType"]).to.equal(0.30)

            expect(action.scales["Proportion"]).to.be.a("number")
            expect(action.scales["Proportion"]).to.equal(0.50)
        end)
    end)
end