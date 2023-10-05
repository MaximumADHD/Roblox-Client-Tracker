return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenu = script.Parent.Parent
	local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
	local CloseReportDialog = require(InGameMenu.Actions.CloseReportDialog)
	local OpenReportSentDialog = require(InGameMenu.Actions.OpenReportSentDialog)
	local CloseReportSentDialog = require(InGameMenu.Actions.CloseReportSentDialog)
	local report = require(script.Parent.report)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should be closed by default", function()
		local defaultState = report(nil, {})
		expect(defaultState).toMatchObject({
			dialogOpen = false,
			reportSentOpen = false,
		})
	end)

	describe("OpenReportDialog", function()
		it("should set the report dialog open for a user", function()
			local oldState = report(nil, {})
			local newState = report(oldState, OpenReportDialog(261, "Shedletsky"))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				dialogOpen = true,
				userId = 261,
				userName = "Shedletsky"
			})
		end)

		it("should set the report dialog open for a game", function()
			local oldState = report(nil, {})
			oldState = report(oldState, OpenReportDialog(261, "Shedletsky"))
			local newState = report(oldState, OpenReportDialog())
			expect(oldState).never.toBe(newState)
			expect(newState.dialogOpen).toBe(true)
			expect(newState.userId).toBeNil()
			expect(newState.userName).toBeNil()
		end)
	end)

	describe("CloseReportDialog", function()
		it("should set the report dialog closed", function()
			local oldState = report(nil, {})
			oldState = report(oldState, OpenReportDialog(261, "Shedletsky"))
			local newState = report(oldState, CloseReportDialog())
			expect(oldState).never.toBe(newState)
			expect(newState.dialogOpen).toBe(false)
		end)
	end)

	describe("OpenReportSentDialog", function()
		it("should set the report send dialog open", function()
			local oldState = report(nil, {})
			local newState = report(oldState, OpenReportSentDialog())
			expect(oldState).never.toBe(newState)
			expect(newState.reportSentOpen).toBe(true)
		end)
	end)

	describe("CloseReportSentDialog", function()
		it("should set the report send dialog open", function()
			local oldState = report(nil, {})
			local newState = report(oldState, CloseReportSentDialog())
			expect(oldState).never.toBe(newState)
			expect(newState.reportSentOpen).toBe(false)
		end)
	end)
end
