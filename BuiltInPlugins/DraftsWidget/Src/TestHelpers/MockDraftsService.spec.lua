local MockDraftsService = require(script.Parent.MockDraftsService)

local TEST_CASES = MockDraftsService.TestCases

return function()
    describe("GetDrafts", function()
         -- Use HACK_NO_XPCALL() to avoid "attempt to yield across metamethod/C-call boundary"
         -- which happens if you have a yield function that calls wait. It must
         -- be inside the describe block.
        HACK_NO_XPCALL()

        it("should have ten scripts named Script1, ..., Script10 in DEFAULT test case", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local drafts = mockService:GetDrafts()
            expect(#drafts).to.equal(10)
            expect(drafts[1].Name).to.equal("Script1")
            expect(drafts[2].Name).to.equal("Script2")
            expect(drafts[10].Name).to.equal("Script10")
        end)

        it("should get empty drafts without errors", function()
            local mockService = MockDraftsService.new(TEST_CASES.EMPTY_TEST)
            local drafts = mockService:GetDrafts()
            expect(#drafts).to.equal(0)
        end)

        itSKIP("should throw an error if DraftsService is disabled", function()
            -- The error thrown isn't properly caught because once you yield, pcall stops correctly
            -- catching errors. Disabled until we figure out how to work around this
            local mockService = MockDraftsService.new(TEST_CASES.SERVICE_DISABLED)
            expect(function()
                mockService:GetDrafts()
            end).to.throw()
        end)
    end)

    describe("GetDraftStatus", function()
        it("should get Enum.DraftStatusCode.OK status for a Script without errors", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = Instance.new("Script")
            local status = mockService:GetDraftStatus(script)
            expect(status).to.equal(Enum.DraftStatusCode.OK)
        end)

        it("should get Enum.DraftStatusCode.OK status for a LocalScript without errors", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = Instance.new("LocalScript")
            local status = mockService:GetDraftStatus(script)
            expect(status).to.equal(Enum.DraftStatusCode.OK)
        end)

        it("should get Enum.DraftStatusCode.OK status for a ModuleScript without errors", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = Instance.new("ModuleScript")
            local status = mockService:GetDraftStatus(script)
            expect(status).to.equal(Enum.DraftStatusCode.OK)
        end)
		
        it("should throw if not passed a script", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = "A string and not a script"
            expect(function()
                mockService:GetDraftStatus(script)
            end).to.throw()
        end)		
    end)
	
    describe("GetEditors", function()
        it("should get empty editors for a Script without errors", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = Instance.new("Script")
            local editors = mockService:GetEditors(script)
            expect(#editors).to.equal(0)
        end)

        it("should get empty editors for a LocalScript without errors", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = Instance.new("LocalScript")
            local editors = mockService:GetEditors(script)
            expect(#editors).to.equal(0)
        end)

        it("should get empty editors for a ModuleScript without errors", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = Instance.new("ModuleScript")
            local editors = mockService:GetEditors(script)
            expect(#editors).to.equal(0)
        end)

        it("should throw if not passed a script", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = "A string and not a script"
            expect(function()
                mockService:GetEditors(script)
            end).to.throw()
        end)
    end)

    describe("ShowDiffsAgainstBase", function()
        it("should not throw when diffing against base for no scripts", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            expect(function()
                local scripts = {}
                mockService:ShowDiffsAgainstBase(scripts)
            end).never.to.throw()
        end)

        it("should throw if not passed a script", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = "A string and not a script"
            expect(function()
                mockService:ShowDiffsAgainstBase(script)
            end).to.throw()
        end)
    end)

    describe("ShowDiffsAgainstServer", function()
        it("showing diffs against server for no scripts should not error", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            expect(function()
                local scripts = {}
                mockService:ShowDiffsAgainstServer(scripts)
            end).never.to.throw()
        end)

        it("should throw if not passed a script", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local script = "A string and not a script"
            expect(function()
                mockService:ShowDiffsAgainstServer(script)
            end).to.throw()
        end)
    end)

    describe("DiscardEdits", function()
        it("should not throw when discarding edits for no scripts", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = {}
            expect(function()
                mockService:DiscardEdits(scripts)
            end).never.to.throw()
        end)

        it("should throw if not passed a table", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = 42 -- A number and not a table
            expect(function()
                mockService:DiscardEdits(scripts)
            end).to.throw()
        end)

        it("should throw if there is a non-script in the passed in table", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = {
                Instance.new("Script"),
                "A string and not a script"
            }
            expect(function()
                mockService:DiscardEdits(scripts)
            end).to.throw()
        end)
    end)

    describe("UpdateToLatestVersion", function()
        HACK_NO_XPCALL()

        it("should not throw when updating to latest version for no scripts", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = {}
            mockService:UpdateToLatestVersion(scripts)
        end)

        it("should throw if not passed a table", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = 42 -- A number and not a table
            expect(function()
                mockService:UpdateToLatestVersion(scripts)
            end).to.throw()
        end)

        it("should throw if there is a non-script in the passed in table", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = {
                Instance.new("Script"),
                "A string and not a script"
            }
            expect(function()
                mockService:UpdateToLatestVersion(scripts)
            end).to.throw()
        end)
    end)

    describe("CommitEdits", function()
        HACK_NO_XPCALL()

        it("should not throw when committing edits for no scripts", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = {}
            mockService:CommitEdits(scripts)
        end)

        it("should throw if not passed a table", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = 42 -- A number and not a table
            expect(function()
                mockService:CommitEdits(scripts)
            end).to.throw()
        end)

        it("should throw if there is a non-script in the passed in table", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local scripts = {
                Instance.new("Script"),
                "A string and not a script"
            }
            expect(function()
                mockService:CommitEdits(scripts)
            end).to.throw()
        end)
    end)

    describe("DraftAdded", function()
        it("has a DraftAdded signal", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local connection = mockService.DraftAdded:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("DraftRemoved", function()
        it("has a DraftRemoved signal", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local connection = mockService.DraftRemoved:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("EditorsListChanged", function()
        it("has an EditorsListChanged signal", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local connection = mockService.EditorsListChanged:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("DraftStatusChanged", function()
        it("has a DraftStatusChanged signal", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local connection = mockService.DraftStatusChanged:connect(function(script)
            end)
            connection.disconnect()
        end)
    end)

    describe("UpdateStatusChanged", function()
        it("has a UpdateStatusChanged signal", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local connection = mockService.UpdateStatusChanged:connect(function(script, statusCode)
            end)
            connection.disconnect()
        end)
    end)

    describe("CommitStatusChanged", function()
        it("has a CommitStatusChanged signal", function()
            local mockService = MockDraftsService.new(TEST_CASES.DEFAULT)
            local connection = mockService.CommitStatusChanged:connect(function(script, statusCode)
            end)
            connection.disconnect()
        end)
    end)
end