return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAvatarEditorFullView = require(Modules.LuaApp.Actions.SetAvatarEditorFullView)

    describe("Action SetAvatarEditorFullView", function()
        it("should return a correct action name", function()
            expect(SetAvatarEditorFullView.name).to.equal("SetAvatarEditorFullView")
        end)
        it("should return a correct action type name", function()
            local action = SetAvatarEditorFullView(true)
            expect(action.type).to.equal(SetAvatarEditorFullView.name)
        end)
        it("should return a SetAvatarEditorFullView action with the correct status", function()
            local action = SetAvatarEditorFullView(true)

            expect(action).to.be.a("table")
            expect(action.fullView).to.be.a("boolean")
            expect(action.fullView).to.equal(true)

            action = SetAvatarEditorFullView(false)

            expect(action).to.be.a("table")
            expect(action.fullView).to.be.a("boolean")
            expect(action.fullView).to.equal(false)
        end)
    end)
end