--[[
    Report dialog that opens when an item that feedback can be left on is clicked.
    Submitting feedback, clicking out, or cancelling is expected to close the dialog and allow the user to select more items.
    Built on top of ModalDialog
]]
--
local CorePackages = game:GetService("CorePackages")
local ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView

local FeedbackModule = script.Parent.Parent

-- Constants
local Constants = require(FeedbackModule.Resources.Constants)

-- Thunks
local SendFeedbackThunk = require(FeedbackModule.Thunks.SendFeedbackThunk)

-- Actions
local SetFeedbackFlowState = require(FeedbackModule.Actions.SetFeedbackFlowState)
local SetFeedbackReason = require(FeedbackModule.Actions.SetFeedbackReason)

-- Components
local TextEntryField = require(FeedbackModule.Components.TextEntryField)
local ModalDialog = require(FeedbackModule.Components.ModalDialog)
local ThemedTextLabel = require(FeedbackModule.Components.PortedComponents.ThemedTextLabel)

-- Localizations
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization

local RadioButtonList = UIBlox.App.InputButton.RadioButtonList
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local withStyle = UIBlox.Core.Style.withStyle

local BUTTON_HEIGHT = 36
local ADDITIONAL_COMMENTS_TEXT_ENTRY_MAX_TEXT_LENGTH = 180
local ADDITIONAL_COMMENTS_TEXT_ENTRY_FIELD_HEIGHT = 90
local FeedbackReportDialog = Roact.PureComponent:extend("FeedbackReportDialog")

FeedbackReportDialog.validateProps = t.strictInterface({
	isReportDialogOpen = t.boolean,
	screenSize = t.Vector2,
	closeDialog = t.optional(t.callback),
	reportCategory = t.optional(t.string),
})

-- Lifecycle functions
function FeedbackReportDialog:init()
	self.state = {
		feedbackText = "",
		feedbackOriginalText = "",
		feedbackIdentifier = "",
		correctTranslationText = "",
		additionalCommentsText = "",
		numFeedbackSubmissionAttempts = 0, -- This state value is exempt from resets, as it is tracked as a whole and not per feedback item submission
	}

	-- Dynamically calculate height for entry fields like translation text box and selection field
	self.calculateFieldHeight = function(stringLength: number, heightPerLine: number, useLengthThreshold: number)
		local charactersPerLine = 45
		if stringLength < 180 and useLengthThreshold then
			return heightPerLine * (4 + 1) --we want four lines, with one extra is specifically allocated as a buffer
		else
			return heightPerLine * ((stringLength / charactersPerLine) + 2) --round up and one extra as buffer
		end
	end

	self.resetLocalState = function()
		self:setState({
			correctTranslationText = "",
			additionalCommentsText = "",
			feedbackText = "",
			feedbackOriginalText = "",
			feedbackIdentifier = "",
		})

		self.props.setFeedbackReason(0) -- Reset index to unselected
		ExperienceStateCaptureService:ResetHighlight()
	end

	self.setInstanceRelatedReportDialogState = function(instance)
		-- When updated engine selection is finished, this will extend to other types of instances.
		if instance:isA("TextBox") then
			self:setState({
				feedbackText = instance.PlaceholderText, -- Textbox text will always be input by the user, so we only care about placeholder text
				feedbackOriginalText = instance.LocalizationMatchedSourceText,
				feedbackIdentifier = instance.LocalizationMatchIdentifier,
			})
		elseif instance:isA("TextLabel") or instance:isA("TextButton") then
			self:setState({
				feedbackText = instance.Text,
				feedbackOriginalText = instance.LocalizationMatchedSourceText,
				feedbackIdentifier = instance.LocalizationMatchIdentifier,
			})
		end
	end

	ExperienceStateCaptureService.ItemSelectedInCaptureMode:Connect(function(instance)
		-- Refresh all feedback text from previous modals and begin a new session
		self.resetLocalState()
		self.setInstanceRelatedReportDialogState(instance)
		self.props.setFeedbackFlowState(Constants.State.CurrentlyLeavingFeedback)
	end)

	self.onCorrectTranslationTextChanged = function(text)
		self:setState({
			correctTranslationText = text,
		})
	end

	self.onAdditionalCommentsTextChanged = function(text)
		self:setState({
			additionalCommentsText = text,
		})
	end

	self.onSubmitFeedback = function()
		self:setState({
			numFeedbackSubmissionAttempts = self.state.numFeedbackSubmissionAttempts + 1,
		})

		self.props.sendFeedback(
			self.state.feedbackOriginalText,
			self.state.feedbackText,
			self.state.feedbackIdentifier,
			self.state.correctTranslationText,
			self.state.additionalCommentsText,
			self.props.feedbackReason,
			self.state.numFeedbackSubmissionAttempts
		)

		self.resetLocalState()
		self.props.setFeedbackFlowState(Constants.State.Default)
	end
	-- Press the "Cancel" button or transparent background.
	self.onCancel = function()
		self.resetLocalState()
		self.props.setFeedbackFlowState(Constants.State.Default)
	end
end

function FeedbackReportDialog:renderContents(localized)
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local feedbackReasonOptions = {
			localized.untranslated,
			localized.accuracyIssue,
			localized.spellingOrGrammarIssue,
			localized.inappropriateOrDerogatory,
		}

		return Roact.createFragment({
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),
			SelectedTextHeader = Roact.createElement(StyledTextLabel, {
				text = localized.textSelectionHeader,
				size = UDim2.new(1, 0, 0, 72),
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
				fontStyle = font.Header2,
				colorStyle = theme.TextEmphasis,
				richText = true,
				layoutOrder = 1,
				fluidSizing = true,
				automaticSize = Enum.AutomaticSize.X,
			}),
			SelectedTextLabel = Roact.createElement(ThemedTextLabel, {
				LayoutOrder = 2,
				fontKey = "Body",
				themeKey = "TextDefault",
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 76, 0.5, 0),
				Size = UDim2.new(1, 0, 0, self.calculateFieldHeight(string.len(self.state.feedbackText), 18, false)),
				Text = self.state.feedbackText or "",
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			CorrectTranslationHeader = Roact.createElement(StyledTextLabel, {
				text = localized.correctTranslationHeader,
				size = UDim2.new(1, 0, 0, 72),
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
				fontStyle = font.Header2,
				colorStyle = theme.TextEmphasis,
				richText = true,
				layoutOrder = 3,
				fluidSizing = true,
				automaticSize = Enum.AutomaticSize.X,
			}),
			CorrectTranslationTextEntryField = Roact.createElement(TextEntryField, {
				LayoutOrder = 4,
				enabled = true,
				text = self.state.correctTranslationText,
				textChanged = self.onCorrectTranslationTextChanged,
				maxTextLength = math.max(string.len(self.state.correctTranslationText), 180),
				autoFocusOnEnabled = false,
				PlaceholderText = localized.correctTranslationPlaceholder,
				Size = UDim2.new(
					1,
					0,
					0,
					self.calculateFieldHeight(string.len(self.state.correctTranslationText), 18, true)
				),
			}),
			AdditionalCommentsHeader = Roact.createElement(StyledTextLabel, {
				text = localized.additionalCommentsHeader,
				size = UDim2.new(1, 0, 0, 72),
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
				fontStyle = font.Header2,
				colorStyle = theme.TextEmphasis,
				richText = true,
				layoutOrder = 5,
				fluidSizing = true,

				automaticSize = Enum.AutomaticSize.X,
			}),
			AdditionalCommentsTextEntryField = Roact.createElement(TextEntryField, {
				LayoutOrder = 6,
				enabled = true,
				text = self.state.additionalCommentsText,
				textChanged = self.onAdditionalCommentsTextChanged,
				maxTextLength = ADDITIONAL_COMMENTS_TEXT_ENTRY_MAX_TEXT_LENGTH,
				autoFocusOnEnabled = false,
				PlaceholderText = localized.additionalCommentsPlaceholder,
				Size = UDim2.new(1, 0, 0, ADDITIONAL_COMMENTS_TEXT_ENTRY_FIELD_HEIGHT),
			}),
			TranslationProblemsHeader = Roact.createElement(StyledTextLabel, {
				text = localized.problemDropdownSelectionHeader,
				size = UDim2.new(1, 0, 0, 72),
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
				fontStyle = font.Header2,
				colorStyle = theme.TextEmphasis,

				richText = true,
				layoutOrder = 7,
				fluidSizing = true,

				automaticSize = Enum.AutomaticSize.X,
			}),
			RadioButtonList = Roact.createElement(RadioButtonList, {
				radioButtons = feedbackReasonOptions,
				onActivated = function(value)
					self.props.setFeedbackReason(value)
				end,
				currentValue = self.props.feedbackReason,
				elementSize = UDim2.new(1, 0, 0, 40),
				layoutOrder = 8,
			}),
		})
	end)
end

function FeedbackReportDialog:render()
	return withLocalization({
		mainHeader = "CoreScripts.Feedback.FeedbackReportDialog.MainHeader",
		cancel = "CoreScripts.Feedback.FeedbackReportDialog.Cancel",
		submitFeedback = "CoreScripts.Feedback.FeedbackReportDialog.SubmitFeedback",
		untranslated = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.Untranslated",
		accuracyIssue = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.AccuracyIssue",
		spellingOrGrammarIssue = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.SpellingOrGrammarIssue",
		inappropriateOrDerogatory = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.InappropriateOrDerogatory",
		textSelectionHeader = "CoreScripts.Feedback.FeedbackReportDialog.TextSelectionHeader",
		correctTranslationHeader = "CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationHeader",
		correctTranslationPlaceholder = "CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationPlaceholder",
		additionalCommentsHeader = "CoreScripts.Feedback.FeedbackReportDialog.AdditionalCommentsHeader",
		additionalCommentsPlaceholder = "CoreScripts.Feedback.FeedbackReportDialog.AdditionalCommentsPlaceholder",
		problemDropdownSelectionHeader = "CoreScripts.Feedback.FeedbackReportDialog.ProblemDropdownSelectionHeader",
	})(function(localized)
		return Roact.createElement(ModalDialog, {
			visible = self.props.feedbackFlowState == Constants.State.CurrentlyLeavingFeedback,
			screenSize = self.props.screenSize,
			titleText = localized.mainHeader,
			contents = Roact.createElement(
				VerticalScrollView,
				{
					useAutomaticCanvasSize = false,
					canvasSizeY = UDim.new(1, 650), -- Prior to mobile release, consider dynamic scaling ex: --canvasSizeY = UDim.new(1.3, 0)
				},
				Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 24),
						PaddingRight = UDim.new(0, 24),
					}),
					-- This is not strictly needed right now, but later on can be modularized to load different contents in the dialog depending on what is interacted with
					-- different component
					Contents = self:renderContents(localized),
				})
			),
			actionButtons = Roact.createElement(ButtonStack, {
				buttonHeight = BUTTON_HEIGHT,
				buttons = {
					{
						buttonType = ButtonType.Secondary,
						props = {
							onActivated = self.onCancel,
							text = localized.cancel,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							isDisabled = false,
							onActivated = self.onSubmitFeedback,
							text = localized.submitFeedback,
						},
					},
				},
			}),
			onDismiss = self.onCancel,
			onBackButtonActivated = if self.props.canNavigateBack then self.navigateBack else nil,
		})
	end)
end

-- Return value
return RoactRodux.connect(function(state)
	return {
		screenSize = state.displayOptions.screenSize,
		feedbackFlowState = state.feedbackFlowState.feedbackFlowState,
		feedbackReason = state.feedbackFlowState.feedbackReason,
	}
end, function(dispatch)
	return {
		sendFeedback = function(
			originalText,
			feedbackText,
			feedbackIdentifier,
			suggestedTranslationText,
			additionalCommentsText,
			feedbackReason,
			numFeedbackSubmissionAttempts
		)
			dispatch(
				SendFeedbackThunk(
					originalText,
					feedbackText,
					feedbackIdentifier,
					suggestedTranslationText,
					additionalCommentsText,
					feedbackReason,
					numFeedbackSubmissionAttempts
				)
			)
		end,
		setFeedbackFlowState = function(newFeedbackFlowState)
			dispatch(function(store)
				store:dispatch(SetFeedbackFlowState(newFeedbackFlowState))
			end)
		end,
		setFeedbackReason = function(newFeedbackReason)
			dispatch(function(store)
				store:dispatch(SetFeedbackReason(newFeedbackReason))
			end)
		end,
	}
end)(FeedbackReportDialog)
