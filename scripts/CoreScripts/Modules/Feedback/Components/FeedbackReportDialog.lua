--[[
    Report dialog that opens when an item that feedback can be left on is clicked.
    Submitting feedback, clicking out, or cancelling is expected to close the dialog and allow the user to select more items.
    Built on top of ModalDialog
]]
--
local CorePackages = game:GetService("CorePackages")
local ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
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

-- Flags
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagEnableFeedbackReportDialogAdjustments =
	require(RobloxGui.Modules.Flags.GetFFlagEnableFeedbackReportDialogAdjustments)
local FFlagEnableFeedbackSelectionUpdate = game:DefineFastFlag("EnableFeedbackSelectionUpdate", false)
local EngineFeatureExperienceStateCaptureSelectionBugFix =
	game:GetEngineFeature("ExperienceStateCaptureSelectionBugFix")

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
	if FFlagEnableFeedbackSelectionUpdate then
		self.state = {
			feedbackText = "",
			feedbackOriginalText = "",
			feedbackIdentifier = "",
			correctTranslationText = "",
			additionalCommentsText = "",
			numFeedbackSubmissionAttempts = 0, -- This state value is exempt from resets, as it is tracked as a whole and not per feedback item submission
			isGenericSelection = false,
		}
		if EngineFeatureExperienceStateCaptureSelectionBugFix then
			self.state.shouldDisplayFeedbackImage = false
			self.state.feedbackImageUri = ""
		end
	else
		self.state = {
			feedbackText = "",
			feedbackOriginalText = "",
			feedbackIdentifier = "",
			correctTranslationText = "",
			additionalCommentsText = "",
			numFeedbackSubmissionAttempts = 0, -- This state value is exempt from resets, as it is tracked as a whole and not per feedback item submission
		}
		if EngineFeatureExperienceStateCaptureSelectionBugFix then
			self.state.shouldDisplayFeedbackImage = false
			self.state.feedbackImageUri = ""
		end
	end

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
		if FFlagEnableFeedbackSelectionUpdate then
			self:setState({
				isGenericSelection = false,
			})
		end

		if EngineFeatureExperienceStateCaptureSelectionBugFix then
			self:setState({
				shouldDisplayFeedbackImage = false,
				feedbackImageUri = "",
			})
		end

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
		if instance:IsA("TextBox") then
			self:setState({
				feedbackText = instance.PlaceholderText, -- Textbox text will always be input by the user, so we only care about placeholder text
				feedbackOriginalText = instance.LocalizationMatchedSourceText,
				feedbackIdentifier = instance.LocalizationMatchIdentifier,
			})

			if EngineFeatureExperienceStateCaptureSelectionBugFix then
				self:setState({
					feedbackText = if instance.PlaceholderText == "" then instance.Text else instance.PlaceholderText,
				})
			end

			if FFlagEnableFeedbackSelectionUpdate then
				self:setState({
					isGenericSelection = false,
				})
			end
		elseif instance:IsA("TextLabel") or instance:IsA("TextButton") then
			self:setState({
				feedbackText = instance.Text,
				feedbackOriginalText = instance.LocalizationMatchedSourceText,
				feedbackIdentifier = instance.LocalizationMatchIdentifier,
			})

			if FFlagEnableFeedbackSelectionUpdate then
				self:setState({
					isGenericSelection = false,
				})
			end
		elseif EngineFeatureExperienceStateCaptureSelectionBugFix then
			if instance:IsA("ImageLabel") or instance:IsA("ImageButton") then
				self:setState({
					shouldDisplayFeedbackImage = true,
					feedbackImageUri = instance.Image,
				})
			elseif instance:IsA("Decal") then
				self:setState({
					shouldDisplayFeedbackImage = true,
					feedbackImageUri = instance.Texture,
				})
			elseif instance:IsA("MeshPart") then
				if instance.TextureContent.SourceType == Enum.ContentSourceType.Uri then
					self:setState({
						shouldDisplayFeedbackImage = true,
						feedbackImageUri = instance.TextureID,
					})
				elseif instance.MeshContent.SourceType == Enum.ContentSourceType.Uri then
					self:setState({
						shouldDisplayFeedbackImage = true,
						feedbackImageUri = instance.MeshId,
					})
				else
					local surfaceAppearance = instance:FindFirstChildOfClass("SurfaceAppearance")
					if surfaceAppearance and surfaceAppearance.ColorMap then
						self:setState({
							shouldDisplayFeedbackImage = true,
							feedbackImageUri = surfaceAppearance.ColorMap,
						})
					end
				end
			end
		elseif FFlagEnableFeedbackSelectionUpdate then
			-- Handle all other instance types by setting the class name in feedback text
			-- Generic selection should be set to true here only
			self:setState({
				feedbackText = instance.ClassName,
				feedbackOriginalText = instance.ClassName,
				feedbackIdentifier = "",
				isGenericSelection = true,
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

		if EngineFeatureExperienceStateCaptureSelectionBugFix then
			self.props.setFeedbackFlowState(Constants.State.Default)
			self.resetLocalState()
		else
			self.resetLocalState()
			self.props.setFeedbackFlowState(Constants.State.Default)
		end
	end

	-- Press the "Cancel" button or transparent background.
	self.onCancel = function()
		if EngineFeatureExperienceStateCaptureSelectionBugFix then
			self.props.setFeedbackFlowState(Constants.State.Default)
			self.resetLocalState()
		else
			self.resetLocalState()
			self.props.setFeedbackFlowState(Constants.State.Default)
		end
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

		if GetFFlagEnableFeedbackReportDialogAdjustments() then
			return Roact.createFragment({
				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),
				SelectedTextHeader = Roact.createElement(StyledTextLabel, {
					text = if EngineFeatureExperienceStateCaptureSelectionBugFix
							and self.state.shouldDisplayFeedbackImage
						then localized.imageSelectionHeader
						else localized.textSelectionHeader,
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
				SelectedTextLabel = if EngineFeatureExperienceStateCaptureSelectionBugFix
						and self.state.shouldDisplayFeedbackImage
					then Roact.createElement("ImageLabel", {
						LayoutOrder = 2,
						Size = UDim2.new(1, 0, 0, 72),
						Image = self.state.feedbackImageUri,
						ScaleType = Enum.ScaleType.Fit,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					})
					else Roact.createElement(ThemedTextLabel, {
						LayoutOrder = 2,
						fontKey = "Body",
						themeKey = "TextDefault",
						Size = UDim2.new(
							1,
							0,
							0,
							self.calculateFieldHeight(string.len(self.state.feedbackText), 14, false)
						),
						Text = if FFlagEnableFeedbackSelectionUpdate
							then (if self.state.isGenericSelection
								then localized.genericSelectionWrapper
								else self.state.feedbackText) or ""
							else self.state.feedbackText or "",
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
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
					layoutOrder = 3,
					fluidSizing = true,
					automaticSize = Enum.AutomaticSize.X,
				}),
				TranslationProblemsListFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 160),
					BackgroundTransparency = 1,
					LayoutOrder = 4,
				}, {
					RadioButtonList = Roact.createElement(RadioButtonList, {
						radioButtons = feedbackReasonOptions,
						onActivated = function(value)
							self.props.setFeedbackReason(value)
						end,
						currentValue = self.props.feedbackReason,
						elementSize = UDim2.new(1, 0, 0, 40),
					}),
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
					layoutOrder = 5,
					fluidSizing = true,
					automaticSize = Enum.AutomaticSize.X,
				}),
				CorrectTranslationTextEntryField = Roact.createElement(TextEntryField, {
					LayoutOrder = 6,
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
						self.calculateFieldHeight(string.len(self.state.correctTranslationText), 14, true)
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
					layoutOrder = 7,
					fluidSizing = true,

					automaticSize = Enum.AutomaticSize.X,
				}),
				AdditionalCommentsTextEntryField = Roact.createElement(TextEntryField, {
					LayoutOrder = 8,
					enabled = true,
					text = self.state.additionalCommentsText,
					textChanged = self.onAdditionalCommentsTextChanged,
					maxTextLength = ADDITIONAL_COMMENTS_TEXT_ENTRY_MAX_TEXT_LENGTH,
					autoFocusOnEnabled = false,
					PlaceholderText = localized.additionalCommentsPlaceholder,
					Size = UDim2.new(1, 0, 0, ADDITIONAL_COMMENTS_TEXT_ENTRY_FIELD_HEIGHT),
				}),
			})
		else
			return Roact.createFragment({
				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),
				SelectedTextHeader = Roact.createElement(StyledTextLabel, {
					text = if EngineFeatureExperienceStateCaptureSelectionBugFix
							and self.state.shouldDisplayFeedbackImage
						then localized.imageSelectionHeader
						else localized.textSelectionHeader,
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
				SelectedTextLabel = if EngineFeatureExperienceStateCaptureSelectionBugFix
						and self.state.shouldDisplayFeedbackImage
					then Roact.createElement("ImageLabel", {
						LayoutOrder = 2,
						Size = UDim2.new(1, 0, 0, 72),
						Image = self.state.feedbackImageUri,
						ScaleType = Enum.ScaleType.Fit,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					})
					else Roact.createElement(ThemedTextLabel, {
						LayoutOrder = 2,
						fontKey = "Body",
						themeKey = "TextDefault",
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, 76, 0.5, 0),
						Size = UDim2.new(
							1,
							0,
							0,
							self.calculateFieldHeight(string.len(self.state.feedbackText), 18, false)
						),
						Text = if FFlagEnableFeedbackSelectionUpdate
							then (if self.state.isGenericSelection
								then localized.genericSelectionWrapper
								else self.state.feedbackText) or ""
							else self.state.feedbackText or "",
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
		end
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
		genericSelectionWrapper = {
			"CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationObjectPlaceholder",
			ObjectType = self.state.feedbackText,
		},
		imageSelectionHeader = "CoreScripts.Feedback.FeedbackReportDialog.ImageSelectionHeader",
	})(function(localized)
		return Roact.createElement(ModalDialog, {
			visible = self.props.feedbackFlowState == Constants.State.CurrentlyLeavingFeedback,
			screenSize = self.props.screenSize,
			titleText = localized.mainHeader,
			showCloseButton = if GetFFlagEnableFeedbackReportDialogAdjustments() then true else false,
			contents = Roact.createElement(
				VerticalScrollView,
				{
					useAutomaticCanvasSize = false,
					-- Do not use auto canvas size as it allows the scroll view to go way further down than the amount of content present. Instead, use a heuristic based on the contents of the scroll view for the report dialog such that overscrolling doesn't happen as much
					canvasSizeY = if GetFFlagEnableFeedbackReportDialogAdjustments()
						then UDim.new(
							0,
							600 + self.calculateFieldHeight(string.len(self.state.feedbackText), 14, false) * 2
						)
						else UDim.new(1, 550),
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
