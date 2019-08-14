return function()
    local MockDraftsService = require(script.Parent.MockDraftsService)

    describe("GetDrafts", function()
         -- Use HACK_NO_XPCALL() to avoid "attempt to yield across metamethod/C-call boundary"
         -- which happens if you have a yield function that calls wait. It must
         -- be inside the describe block.
        HACK_NO_XPCALL()

        it("should have ten scripts named Script1, ..., Script10 in DEFAULT test case", function()
            MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)
            local drafts = MockDraftsService:GetDrafts()
            expect(#drafts).to.equal(10)
            expect(drafts[1].Name).to.equal("Script1")
            expect(drafts[2].Name).to.equal("Script2")
            expect(drafts[10].Name).to.equal("Script10")
        end)

        it("should get empty drafts without errors", function()
            MockDraftsService:SetTestCase(MockDraftsService.TestCases.EMPTY_TEST)
            local drafts = MockDraftsService:GetDrafts()
            expect(#drafts).to.equal(0)
        end)
    end)

    describe("GetEditors", function()
        MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)

        it("should get empty editors for a Script without errors", function()
            local script = Instance.new("Script")
            local editors = MockDraftsService:GetEditors(script)
            expect(#editors).to.equal(0)
        end)

        it("should get empty editors for a LocalScript without errors", function()
            local script = Instance.new("LocalScript")
            local editors = MockDraftsService:GetEditors(script)
            expect(#editors).to.equal(0)
        end)

        it("should get empty editors for a ModuleScript without errors", function()
            local script = Instance.new("ModuleScript")
            local editors = MockDraftsService:GetEditors(script)
            expect(#editors).to.equal(0)
        end)

        it("should throw if not passed a script", function()
            local script = "A string and not a script"
            expect(function()
                MockDraftsService:GetEditors(script)
            end).to.throw()
        end)
    end)

    describe("OpenDrafts", function()
        MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)

        it("should not throw when opening drafts for no scripts", function()
            expect(function()
                local scripts = {}
                MockDraftsService:OpenDrafts(scripts)
            end).never.to.throw()
        end)

        it("should throw if not passed a script", function()
            local script = "A string and not a script"
            expect(function()
                MockDraftsService:OpenDrafts(script)
            end).to.throw()
        end)
    end)

    describe("ShowDiffsAgainstBase", function()
        MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)

        it("should not throw when diffing against base for no scripts", function()
            expect(function()
                local scripts = {}
                MockDraftsService:ShowDiffsAgainstBase(scripts)
            end).never.to.throw()
        end)

        it("should throw if not passed a script", function()
            local script = "A string and not a script"
            expect(function()
                MockDraftsService:ShowDiffsAgainstBase(script)
            end).to.throw()
        end)
    end)

    describe("ShowDiffsAgainstServer", function()
        MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)

        it("showing diffs against server for no scripts should not error", function()
            expect(function()
                local scripts = {}
                MockDraftsService:ShowDiffsAgainstServer(scripts)
            end).never.to.throw()
        end)

        it("should throw if not passed a script", function()
            local script = "A string and not a script"
            expect(function()
                MockDraftsService:ShowDiffsAgainstServer(script)
            end).to.throw()
        end)
    end)

    describe("DiscardEdits", function()
        MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)

        it("should not throw when discarding edits for no scripts", function()
            local scripts = {}
            expect(function()
                MockDraftsService:DiscardEdits(scripts)
            end).never.to.throw()
        end)

        it("should throw if not passed a table", function()
            local scripts = 42 -- A number and not a table
            expect(function()
                MockDraftsService:DiscardEdits(scripts)
            end).to.throw()
        end)

        it("should throw if there is a non-script in the passed in table", function()
            local scripts = {
                Instance.new("Script"),
                "A string and not a script"
            }
            expect(function()
                MockDraftsService:DiscardEdits(scripts)
            end).to.throw()
        end)
    end)

    describe("UpdateToLatestVersion", function()
        HACK_NO_XPCALL()
        MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)

        it("should not throw when updating to latest version for no scripts", function()
            local scripts = {}
            MockDraftsService:UpdateToLatestVersion(scripts)
        end)

        it("should throw if not passed a table", function()
            local scripts = 42 -- A number and not a table
            expect(function()
                MockDraftsService:UpdateToLatestVersion(scripts)
            end).to.throw()
        end)

        it("should throw if there is a non-script in the passed in table", function()
            local scripts = {
                Instance.new("Script"),
                "A string and not a script"
            }
            expect(function()
                MockDraftsService:UpdateToLatestVersion(scripts)
            end).to.throw()
        end)
    end)

    describe("CommitEdits", function()
        HACK_NO_XPCALL()
        MockDraftsService:SetTestCase(MockDraftsService.TestCases.DEFAULT)

        it("should not throw when committing edits for no scripts", function()
            local scripts = {}
            MockDraftsService:CommitEdits(scripts)
        end)

        it("should throw if not passed a table", function()
            local scripts = 42 -- A number and not a table
            expect(function()
                MockDraftsService:CommitEdits(scripts)
            end).to.throw()
        end)

        it("should throw if there is a non-script in the passed in table", function()
            local scripts = {
                Instance.new("Script"),
                "A string and not a script"
            }
            expect(function()
                MockDraftsService:CommitEdits(scripts)
            end).to.throw()
        end)
    end)

    describe("DraftAdded", function()
        it("has a DraftAdded signal", function(script)
            local connection = MockDraftsService.DraftAdded:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("DraftRemoved", function(script)
        it("has a DraftRemoved signal", function()
            local connection = MockDraftsService.DraftRemoved:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("ScriptRemoved", function()
        it("has a ScriptRemoved signal", function(script)
            local connection = MockDraftsService.ScriptRemoved:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("ScriptServerVersionChanged", function()
        it("has a ScriptServerVersionChanged signal", function(script)
            local connection = MockDraftsService.ScriptServerVersionChanged:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("EditorsListChanged", function()
        it("has an EditorsListChanged signal", function(script)
            local connection = MockDraftsService.EditorsListChanged:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("UpdateStatusChanged", function()
        it("has a UpdateStatusChanged signal", function(script, statusCode)
            local connection = MockDraftsService.UpdateStatusChanged:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("CommitStatusChanged", function()
        it("has a CommitStatusChanged signal", function(script, statusCode)
            local connection = MockDraftsService.CommitStatusChanged:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)
end