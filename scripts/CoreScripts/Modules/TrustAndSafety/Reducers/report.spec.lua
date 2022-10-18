return function()
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

	describe("Initial state", function()
		it("should be closed by default", function()
			local defaultState = report(nil, {})
			expect(defaultState.currentPage).to.equal(Constants.Page.None)
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

			expect(oldState).to.never.equal(newState)
			expect(newState.voiceReportingFlowEnabled).to.equal(true)
			expect(newState.currentPage).to.equal(Constants.Page.Category)
			expect(newState.reportType).to.equal(Constants.ReportType.Player)
			expect(newState.beginningReportType).to.equal(Constants.ReportType.Player)

			expect(newState.targetPlayer).to.equal(targetPlayer)

			local newState = report(newState, SelectReportCategory(Constants.Category.Voice))
			expect(newState.currentPage).to.equal(Constants.Page.ReportForm)
			expect(newState.reportCategory).to.equal(Constants.Category.Voice)
			expect(newState.history[2]).to.equal(Constants.Page.Category)

			expect(newState.beginningReportType).to.equal(Constants.ReportType.Player)

			local newState = report(newState, NavigateBack())
			expect(newState.currentPage).to.equal(Constants.Page.Category)
			expect(newState.targetPlayer).to.equal(targetPlayer)
			expect(#newState.history).to.equal(1)

			expect(newState.beginningTimestamp).to.never.equal(0)

		end)

		it("should open for a experiance", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(true));
			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			expect(oldState).to.never.equal(newState)
			expect(newState.voiceReportingFlowEnabled).to.equal(true)
			expect(newState.currentPage).to.equal(Constants.Page.ReportForm)
			expect(newState.reportType).to.equal(Constants.ReportType.Place)
			expect(newState.beginningReportType).to.equal(Constants.ReportType.Place)
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

			expect(oldState).to.never.equal(newState)
			expect(newState.voiceReportingFlowEnabled).to.equal(true)
			expect(newState.currentPage).to.equal(Constants.Page.Category)
			expect(newState.reportType).to.equal(Constants.ReportType.Any)
			expect(newState.beginningReportType).to.equal(Constants.ReportType.Any)

			newState = report(newState, SelectReportCategory(Constants.Category.Voice))
			expect(newState.currentPage).to.equal(Constants.Page.Listing)
			expect(newState.reportCategory).to.equal(Constants.Category.Voice)
			expect(newState.history[2]).to.equal(Constants.Page.Category)

			newState = report(newState, SelectReportListing(Constants.ReportType.Player, targetPlayer, {123, 321}))
			expect(newState.currentPage).to.equal(Constants.Page.ReportForm)
			expect(newState.reportType).to.equal(Constants.ReportType.Player)
			expect(newState.targetPlayer).to.equal(targetPlayer)
			expect(newState.history[3]).to.equal(Constants.Page.Listing)
			expect(newState.beginningReportType).to.equal(Constants.ReportType.Any)
			expect(#newState.sortedUserIds).to.equal(2)

			newState = report(newState, NavigateBack())
			newState = report(newState, SelectReportListing(Constants.ReportType.Place))
			expect(newState.currentPage).to.equal(Constants.Page.ReportForm)
			expect(newState.reportType).to.equal(Constants.ReportType.Place)

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

			expect(oldState).to.never.equal(newState)
			expect(newState.voiceReportingFlowEnabled).to.equal(false)
			expect(newState.currentPage).to.equal(Constants.Page.ReportForm)
			expect(newState.reportType).to.equal(Constants.ReportType.Player)
			expect(newState.targetPlayer).to.equal(targetPlayer)
		end)

		it("should open for a place", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));

			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			expect(oldState).to.never.equal(newState)
			expect(newState.voiceReportingFlowEnabled).to.equal(false)
			expect(newState.currentPage).to.equal(Constants.Page.ReportForm)
			expect(newState.reportType).to.equal(Constants.ReportType.Place)
		end)

		it("should clear targetPlayer for a place", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, BeginReportFlow(Constants.ReportType.Player, targetPlayer))
			oldState = report(oldState, EndReportFlow())
			local newState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.ReportForm)
			expect(newState.reportType).to.equal(Constants.ReportType.Place)
			expect(newState.targetPlayer).to.equal(nil)
		end)

		it("should close", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, BeginReportFlow(Constants.ReportType.Place))
			local newState = report(oldState, EndReportFlow())
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.None)
		end)
	end)

	describe("ReportSentDialog", function()
		it("should open", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			local newState = report(oldState, OpenReportSentDialog(nil, nil))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.ReportSent)
		end)

		it("should close", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, OpenReportSentDialog(nil, nil))
			local newState = report(oldState, EndReportFlow())
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.None)
		end)
	end)

	describe("ReportMenu", function()
		it("should open", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			local newState = report(oldState, BeginReportFlow())
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.Listing)
		end)

		it("should close", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));
			oldState = report(oldState, BeginReportFlow())

			local newState = report(oldState, EndReportFlow())
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.None)
		end)
	end)

	describe("BlockPlayerDialog", function()
		it("should open", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));

			local newState = report(oldState, OpenBlockPlayerDialog())
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.PlayerBlocking)
		end)

		it("should close", function()
			local oldState = report(nil, {})
			oldState = report(oldState, SetVoiceReportingFlow(false));

			oldState = report(oldState, BeginReportFlow())

			local newState = report(oldState, EndReportFlow())
			expect(oldState).to.never.equal(newState)
			expect(newState.currentPage).to.equal(Constants.Page.None)
		end)
	end)
end
