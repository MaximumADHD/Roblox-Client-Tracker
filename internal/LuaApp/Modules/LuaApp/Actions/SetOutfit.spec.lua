return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetOutfit = require(Modules.LuaApp.Actions.SetOutfit)

    describe("Action SetOutfit", function()
        it("should return a correct action name", function()
            expect(SetOutfit.name).to.equal("SetOutfit")
        end)
        it("should return a correct action type name", function()
            local action = SetOutfit({},{})
            expect(action.type).to.equal(SetOutfit.name)
        end)
        it("should return a SetOutfit action with the correct status", function()
            local action = SetOutfit({},{})

            expect(action).to.be.a("table")
            expect(action.assets).to.be.a("table")
            expect(next(action.assets)).never.to.be.ok()
            expect(action.bodyColors).to.be.a("table")
            expect(next(action.bodyColors)).never.to.be.ok()

            action = SetOutfit({
                ["Hat"] = {2, 3, 4},
                ["Shirt"] = {5},
                ["Pants"] = {6},
            }, {
                ["HeadColor"] = 194,
                ["LeftArmColor"] = 0,
                ["LeftLegColor"] = 100,
                ["RightArmColor"] = 50,
                ["RightLegColor"] = 150,
                ["TorsoColor"] = 255,
            })

            expect(action).to.be.a("table")
            expect(action.assets).to.be.a("table")

            expect(action.assets["Hat"]).to.be.a("table")
            expect(action.assets["Hat"][1]).to.equal(2)
            expect(action.assets["Hat"][2]).to.equal(3)
            expect(action.assets["Hat"][3]).to.equal(4)

            expect(action.assets["Shirt"]).to.be.a("table")
            expect(action.assets["Shirt"][1]).to.equal(5)

            expect(action.assets["Pants"]).to.be.a("table")
            expect(action.assets["Pants"][1]).to.equal(6)

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