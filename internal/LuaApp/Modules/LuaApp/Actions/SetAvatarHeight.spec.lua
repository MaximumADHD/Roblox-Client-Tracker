return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAvatarHeight = require(Modules.LuaApp.Actions.SetAvatarHeight)

    describe("Action SetAvatarHeight", function()
        it("should return a correct action name", function()
            expect(SetAvatarHeight.name).to.equal("SetAvatarHeight")
        end)
        it("should return a correct action type name", function()
            local action = SetAvatarHeight(0.97)
            expect(action.type).to.equal(SetAvatarHeight.name)
        end)
        it("should return a SetAvatarHeight action with the correct status", function()
            local action = SetAvatarHeight(0.97)

            expect(action).to.be.a("table")
            expect(action.height).to.be.a("number")
            expect(action.height).to.equal(0.97)
        end)
    end)
end