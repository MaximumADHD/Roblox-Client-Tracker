return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetBodyColors = require(Modules.LuaApp.Actions.SetBodyColors)

    describe("Action SetBodyColors", function()
        it("should return a correct action name", function()
            expect(SetBodyColors.name).to.equal("SetBodyColors")
        end)
        it("should return a correct action type name", function()
            local action = SetBodyColors({})
            expect(action.type).to.equal(SetBodyColors.name)
        end)
        it("should return a SetBodyColors action with the correct status", function()
            local bodyColors = {
                ["HeadColor"] = 194,
                ["LeftArmColor"] = 0,
                ["LeftLegColor"] = 100,
                ["RightArmColor"] = 50,
                ["RightLegColor"] = 150,
                ["TorsoColor"] = 255,
            }
            local action = SetBodyColors(bodyColors)

            expect(action).to.be.a("table")
            expect(action.bodyColors).to.be.a("table")

            expect(action.bodyColors["HeadColor"]).to.be.a("number")
            expect(action.bodyColors["HeadColor"]).to.equal(194)

            expect(action.bodyColors["LeftArmColor"]).to.be.a("number")
            expect(action.bodyColors["LeftArmColor"]).to.equal(0)

            expect(action.bodyColors["LeftLegColor"]).to.be.a("number")
            expect(action.bodyColors["LeftLegColor"]).to.equal(100)

            expect(action.bodyColors["RightArmColor"]).to.be.a("number")
            expect(action.bodyColors["RightArmColor"]).to.equal(50)

            expect(action.bodyColors["RightLegColor"]).to.be.a("number")
            expect(action.bodyColors["RightLegColor"]).to.equal(150)

            expect(action.bodyColors["TorsoColor"]).to.be.a("number")
            expect(action.bodyColors["TorsoColor"]).to.equal(255)
        end)
    end)
end