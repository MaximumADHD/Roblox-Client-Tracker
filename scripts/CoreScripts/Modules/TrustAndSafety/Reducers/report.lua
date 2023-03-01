--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local TnsModule = script.Parent.Parent

local OpenReportMenu = require(TnsModule.Actions.OpenReportMenu)
local CloseReportMenu = require(TnsModule.Actions.CloseReportMenu)
local OpenReportDialog = require(TnsModule.Actions.OpenReportDialog)
local OpenCategoryMenu = require(TnsModule.Actions.OpenCategoryMenu)
local SelectReportCategory = require(TnsModule.Actions.SelectReportCategory)
local OpenReportSentDialog = require(TnsModule.Actions.OpenReportSentDialog)
local CloseReportSentDialog = require(TnsModule.Actions.CloseReportSentDialog)
local SelectReportListing = require(TnsModule.Actions.SelectReportListing)
local SetVoiceReportingFlow = require(TnsModule.Actions.SetVoiceReportingFlow)
local SetIdentifedAvatars = require(TnsModule.Actions.SetIdentifiedAvatars)
local SetSelectedAvatars = require(TnsModule.Actions.SetSelectedAvatars)
local BeginReportFlow = require(TnsModule.Actions.BeginReportFlow)
local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local ScreenshotAnnotated = require(TnsModule.Actions.ScreenshotAnnotated)
local NavigateBack = require(TnsModule.Actions.NavigateBack)
local Constants = require(TnsModule.Resources.Constants)
local GetFFlagReportAnythingScreenshot = require(TnsModule.Flags.GetFFlagReportAnythingScreenshot)

return Rodux.createReducer({
	currentPage = Constants.Page.None,
	history = {},
	voiceReportingFlowEnabled = true,
	reportType = Constants.ReportType.Any,
	beginningReportType = Constants.ReportType.Any,
	reportCategory = Constants.Category.None,
	targetPlayer = nil,
	beginningTimestamp = 0,
	sortedUserIds = {},
	screenshotAnnotationPoints = {},
	identifiedAvatars = {},
	selectedAvatars = {}
}, {
	[EndReportFlow.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			history = {},
			currentPage = Constants.Page.None,
			targetPlayer = Cryo.None,
			reportType = Constants.ReportType.Any,
			identifiedAvatars = {},
			selectedAvatars = {},
			screenshotAnnotationPoints = {}
		})
	end,
	[BeginReportFlow.name] = function(state, action)
		local beginningCommon = {
			reportCategory = Constants.Category.None,
			beginningTimestamp = workspace:GetServerTimeNow(),
			sortedUserIds = {},
			history = { Constants.Page.None },
		}
		if action.reportType == Constants.ReportType.Place then
			return Cryo.Dictionary.join(state, beginningCommon, {
				reportType = action.reportType,
				beginningReportType = action.reportType,
				currentPage = Constants.Page.ReportForm,
				targetPlayer = Cryo.None,
			})
		elseif action.reportType == Constants.ReportType.Player then
			return Cryo.Dictionary.join(state, beginningCommon, {
				reportType = action.reportType,
				beginningReportType = action.reportType,
				targetPlayer = action.targetPlayer,
				currentPage = if state.voiceReportingFlowEnabled then Constants.Page.Category
					else Constants.Page.ReportForm,
			})
		else
			return Cryo.Dictionary.join(state, beginningCommon, {
				reportType = Constants.ReportType.Any,
				beginningReportType = Constants.ReportType.Any,
				targetPlayer = Cryo.None,
				currentPage = if state.voiceReportingFlowEnabled then Constants.Page.Category
					else Constants.Page.Listing,
			})
		end
	end,
	[NavigateBack.name] = function(state, action)
		local prevPage = state.history[#state.history] or state.currentPage;
		local nextHistory = Cryo.List.removeIndex(state.history, #state.history)

		return Cryo.Dictionary.join(state, {
			history = nextHistory,
			currentPage = prevPage;
		})
	end,
	[SelectReportCategory.name] = function(state, action)
		local experienceCatSelected = action.reportCategory == Constants.Category.Experience;
		local isPreselectedPlayerFlow = state.beginningReportType == Constants.ReportType.Player;

		local nextPage = Constants.Page.Listing;
		local reportType = state.reportType;

		if GetFFlagReportAnythingScreenshot() then
			if experienceCatSelected then
				nextPage = Constants.Page.ScreenshotDialog
				reportType = Constants.ReportType.Place
			elseif isPreselectedPlayerFlow then 
				nextPage = Constants.Page.ReportForm
			end
		else 
			local skipListing = experienceCatSelected or isPreselectedPlayerFlow

			if skipListing then
				nextPage = Constants.Page.ReportForm;
				if experienceCatSelected then
					reportType = Constants.ReportType.Place;
				end
			end
		end

		local nextHistory = Cryo.List.join(state.history, {state.currentPage})

		return Cryo.Dictionary.join(state, {
			history = nextHistory,
			currentPage = nextPage,
			reportType = reportType,
			reportCategory = action.reportCategory,
		})
	end,
	[SelectReportListing.name] = function(state, action)
		local nextHistory = Cryo.List.join(state.history, {state.currentPage})

		return Cryo.Dictionary.join(state, {
			sortedUserIds =  Cryo.List.join(action.sortedUserIds or {}, {}),
			history = nextHistory,
			currentPage = Constants.Page.ReportForm,
			reportType = action.reportType,
			targetPlayer = action.targetPlayer or Cryo.None,
		})
	end,
	[ScreenshotAnnotated.name] = function(state, action)
		local nextHistory = Cryo.List.join(state.history, {state.currentPage})
		-- TODO(bcwong): This needs to be generalized beyond the "Experience" flow.
		local nextPage = Constants.Page.ReportForm

		return Cryo.Dictionary.join(state, {
			history = nextHistory,
			currentPage = nextPage,
			screenshotAnnotationPoints = action.annotationPoints,
		})
	end, 
	[OpenReportMenu.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportMenuOpen = true,
		})
	end,
	[CloseReportMenu.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isReportMenuOpen = false,
		})
	end,
	[OpenReportSentDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = Constants.Page.ReportSent,
			reportType = action.reportType,
			targetPlayer = action.targetPlayer or Cryo.None,
		})
	end,
	[SetVoiceReportingFlow.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			voiceReportingFlowEnabled = action.enable,
		})
	end,
	[SetIdentifedAvatars.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			identifiedAvatars = action.identifiedAvatars,
			screenshotAnnotationPoints = {}
		})
	end,
	[SetSelectedAvatars.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			selectedAvatars = action.selectedAvatars
		})
	end

})
