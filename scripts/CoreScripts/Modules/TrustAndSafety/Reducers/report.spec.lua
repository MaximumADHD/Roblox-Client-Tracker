return function()
	local CorePackages = game:GetService("CorePackages")

	local TrustAndSafety = script.Parent.Parent
	local OpenReportDialog = require(TrustAndSafety.Actions.OpenReportDialog)
	local CloseReportDialog = require(TrustAndSafety.Actions.CloseReportDialog)
	local OpenReportSentDialog = require(TrustAndSafety.Actions.OpenReportSentDialog)
	local CloseReportSentDialog = require(TrustAndSafety.Actions.CloseReportSentDialog)
	local OpenReportMenu = require(TrustAndSafety.Actions.OpenReportMenu)
	local CloseReportMenu = require(TrustAndSafety.Actions.CloseReportMenu)
	local OpenBlockPlayerDialog = require(TrustAndSafety.Actions.OpenBlockPlayerDialog)
	local CloseBlockPlayerDialog = require(TrustAndSafety.Actions.CloseBlockPlayerDialog)
	local BeginReportFlow = require(TrustAndSafety.Actions.BeginReportFlow)
	local EndReportFlow = require(TrustAndSafety.Actions.EndReportFlow)
	local NavigateBack = require(TrustAndSafety.Actions.NavigateBack)
	local SelectReportListing = require(TrustAndSafety.Actions.SelectReportListing)
	local SetVoiceReportingFlow = require(TrustAndSafety.Actions.SetVoiceReportingFlow)
	local SelectReportCategory = require(TrustAndSafety.Actions.SelectReportCategory)
	local Constants = require(TrustAndSafety.Resources.Constants)
	local report = require(script.Parent.report)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe("Initial state", function()
		it("should be closed by default", function()
			local defaultState = report(nil, {})
			expect(defaultState.currentPage).toBe(Constants.Page.None)
		end)
	end)

	describe("VoiceReportFlow", function()

		it("should open for a player", function()

			local targetPlayer = {
				UserId = 123,
				Name = "testName",
				DisplayName = "testDisplay",
			}

			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(true));
			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Player, targetPlayer))

			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				voiceReportingFlowEnabled = true,
				currentPage = Constants.Page.Category,
				reportType = Constants.ReportType.Player,
				beginningReportType = Constants.ReportType.Player,
				targetPlayer = targetPlayer,
			})

			newState = report(newState, SelectReportCategory(Constants.Category.Voice))
			expect(newState).toMatchObject({
				currentPage = Constants.Page.ReportForm,
				reportCategory = Constants.Category.Voice,
				history = { [2] = Constants.Page.Category },
				beginningReportType = Constants.ReportType.Player,
			})

			newState = report(newState, NavigateBack())
			expect(newState).toMatchObject({
				currentPage = Constants.Page.Category,
				targetPlayer = targetPlayer,
			})
			expect(#newState.history).toBe(1)

			expect(newState.beginningTimestamp).never.toBe(0)
		end)

		it("should open for a experiance", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(true));
			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				voiceReportingFlowEnabled = true,
				currentPage = Constants.Page.ReportForm,
				reportType = Constants.ReportType.Place,
				beginningReportType = Constants.ReportType.Place,
			})
		end)


		it("should open for any", function()
			local targetPlayer = {
				UserId = 123,
				Name = "testName",
				DisplayName = "testDisplay",
			}

			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(true));
			local newState = report(oldState, BeginReportFlow())

			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				voiceReportingFlowEnabled = true,
				currentPage = Constants.Page.Category,
				reportType = Constants.ReportType.Any,
				beginningReportType = Constants.ReportType.Any,
			})

			newState = report(newState, SelectReportCategory(Constants.Category.Voice))
			expect(newState).toMatchObject({
				currentPage = Constants.Page.Listing,
				reportCategory = Constants.Category.Voice,
				history = { [2] = Constants.Page.Category }
			})

			newState = report(newState, SelectReportListing(Constants.ReportType.Player, targetPlayer, {123, 321}))
			expect(newState).toMatchObject({
				currentPage = Constants.Page.ReportForm,
				reportType = Constants.ReportType.Player,
				targetPlayer = targetPlayer,
				history = { [3] = Constants.Page.Listing },
				beginningReportType = Constants.ReportType.Any,
			})
			expect(#newState.sortedUserIds).toBe(2)

			newState = report(newState, NavigateBack())
			newState = report(newState, SelectReportListing(Constants.ReportType.Place))
			expect(newState).toMatchObject({
				currentPage = Constants.Page.ReportForm,
				reportType = Constants.ReportType.Place,
			})
		end)
	end)

	describe("ReportDialog", function()
		local targetPlayer = {
			UserId = 123,
			Name = "testName",
			DisplayName = "testDisplay",
		}

		it("should open for a player", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Player, targetPlayer))

			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				voiceReportingFlowEnabled = false,
				currentPage = Constants.Page.ReportForm,
				reportType = Constants.ReportType.Player,
				targetPlayer = targetPlayer,
			})
		end)

		it("should open for a place", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));

			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				voiceReportingFlowEnabled = false,
				currentPage = Constants.Page.ReportForm,
				reportType = Constants.ReportType.Place,
			})
		end)

		it("should clear targetPlayer for a place", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, BeginReportFlow(Constants.ReportType.Player, targetPlayer))
			oldState = report(oldState, EndReportFlow())
			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			expect(oldState).never.toBe(newState)
			expect(newState).toMatchObject({
				currentPage = Constants.Page.ReportForm,
				reportType = Constants.ReportType.Place,
			})
			expect(newState.targetPlayer).toBeNil()
		end)

		it("should close", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			local newState = report(oldState, EndReportFlow())
			expect(oldState).never.toBe(newState)
			expect(newState.currentPage).toBe(Constants.Page.None)
		end)
	end)

	describe("ReportSentDialog", function()
		it("should open", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			local newState = report(oldState, OpenReportSentDialog(nil, nil))
			expect(oldState).never.toBe(newState)
			expect(newState.currentPage).toBe(Constants.Page.ReportSent)
		end)

		it("should close", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, OpenReportSentDialog(nil, nil))
			local newState = report(oldState, EndReportFlow())
			expect(oldState).never.toBe(newState)
			expect(newState.currentPage).toBe(Constants.Page.None)
		end)
	end)

	describe("ReportMenu", function()
		it("should open", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			local newState = report(oldState, BeginReportFlow())
			expect(oldState).never.toBe(newState)
			expect(newState.currentPage).toBe(Constants.Page.Listing)
		end)

		it("should close", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, BeginReportFlow())

			local newState = report(oldState, EndReportFlow())
			expect(oldState).never.toBe(newState)
			expect(newState.currentPage).toBe(Constants.Page.None)
		end)
	end)
end
