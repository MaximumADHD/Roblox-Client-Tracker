return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local ToggleAvatarEditorFullView = require(Modules.LuaApp.Actions.ToggleAvatarEditorFullView)

    describe("Action ToggleAvatarEditorFullView", function()
        it("should return a correct action name", function()
            expect(ToggleAvatarEditorFullView.name).to.equal("ToggleAvatarEditorFullView")
        end)
        it("should return a correct action type name", function()
            local action = ToggleAvatarEditorFullView()
            expect(action.type).to.equal(ToggleAvatarEditorFullView.name)
        end)
        it("should return a ToggleAvatarEditorFullView action with the correct status", function()
            local action = ToggleAvatarEditorFullView()
            expect(action).to.be.a("table")
        end)
    end)
end