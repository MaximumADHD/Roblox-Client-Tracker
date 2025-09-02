--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)

local GameIcon = require(Dependencies.GameIcon)
local PlayerCell = require(Dependencies.PlayerCell)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)
local playerInterface = require(Dependencies.playerInterface)

local NavigateBack = require(TnsModule.Actions.NavigateBack)
local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local Constants = require(TnsModule.Resources.Constants)
local SendReport = require(TnsModule.Thunks.SendReport)
local TextEntryField = require(TnsModule.Components.TextEntryField)
local ModalDialog = require(TnsModule.Components.ModalDialog)
local ScreenshotDialog = require(TnsModule.Components.ReportAnything.ScreenshotDialog)
local ScreenshotFlowStepHandler = require(TnsModule.Components.ReportAnything.ScreenshotFlowStepHandler)
local SendAnalytics = require(TnsModule.Utility.SendAnalytics)
local SessionUtility = require(TnsModule.Utility.SessionUtility)
local ScreenshotHelper = require(TnsModule.Utility.ScreenshotHelper)
local GetFFlagReportAnythingScreenshot = require(TnsModule.Flags.GetFFlagReportAnythingScreenshot)
local GetFFlagReportAnythingMultistepScreenshot = require(TnsModule.Flags.GetFFlagReportAnythingMultistepScreenshot)
local ScreenshotAnnotated = require(TnsModule.Actions.ScreenshotAnnotated)
local FilterIdentifiedAvatars = require(TnsModule.Thunks.FilterIdentifiedAvatars)

local StyleProvider = UIBlox.Core.Style.Provider
local withStyle = UIBlox.Core.Style.withStyle
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Colors = UIBlox.App.Style.Colors
local DropdownMenu = UIBlox.App.Menu.DropdownMenu

local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local isPlayerVerified = UserLib.Utils.isPlayerVerified

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local React = require(CorePackages.Packages.React)
local VoiceIndicatorWrapper = function(props)
	local voiceServiceState = React.useContext(VoiceStateContext.Context)
	if not voiceServiceState.voiceEnabled then
		return nil
	end
	return React.createElement(VoiceIndicator, Cryo.Dictionary.join(props, {}))
end

local DSAReportingPackage = require(CorePackages.Workspace.Packages.DsaIllegalContentReporting)
local isShowUKOSAIllegalContentReportingLink = DSAReportingPackage.isShowUKOSAIllegalContentReportingLink
local OSAReportLink = DSAReportingPackage.OSAReportLink

local FFlagUKOSALegacyReportMenu = game:DefineFastFlag("UKOSALegacyReportMenu", false)

local REPORT_REASONS = {
	"Swearing",
	"Inappropriate Username",
	"Bullying",
	"Scamming",
	"Dating",
	"Cheating/Exploiting",
	"Personal Question",
	"Offsite Links",
}
local REPORT_REASON_GAME = "Inappropriate Content"
local MIN_TEXT_LENGTH = 0
local MAX_TEXT_LENGTH = 160
local TEXTFIELD_HEIGHT = 111
local TEXTFIELD_BUTTON_MARGIN = 12
local BUTTON_HEIGHT = 48
local CELL_THEME_OVERRIDES = {
	-- transparent background for cell
	BackgroundDefault = {
		Color = Colors.Flint,
		Transparency = 1,
	},
	BackgroundOnHover = {
		Color = Colors.Flint,
		Transparency = 1,
	},
	BackgroundOnPress = {
		Color = Colors.Flint,
		Transparency = 1,
	},
}

local ReportDialog = Roact.PureComponent:extend("ReportDialog")

ReportDialog.validateProps = t.strictInterface({
	isReportDialogOpen = t.boolean,
	reportType = t.optional(t.valueOf(Constants.ReportType)),
	targetPlayer = t.optional(playerInterface),
	placeName = t.string,
	screenSize = t.Vector2,
	screenshotAnnotationPoints = t.array(t.Vector2),
	navigateBack = t.optional(t.callback),
	canNavigateBack = t.optional(t.boolean),
	sendReport = t.callback,
	closeDialog = t.optional(t.callback),
	screenshotAnnotated = t.optional(t.callback),
	reportCategory = t.optional(t.string),
	currentPage = t.string,
})

function ReportDialog:init()
	self.state = {
		reasonText = nil,
		descriptionText = "",
	}
	-- Change the drop-down list selection.
	self.onReasonChanged = function(reason)
		self:setState({
			reasonText = reason,
		})
	end
	-- Edit the text field.
	self.onTextChanged = function(text)
		self:setState({
			descriptionText = text,
		})
	end
	-- Press the "Report" button.
	self.onReport = function(toastTitle, toastDescription)
		local reason = self:getReason()
		-- print("Report button pressed. Annotation points:", self.props.screenshotAnnotationPoints)
		self.props.sendReport(
			self.props.reportType,
			self.props.targetPlayer,
			reason,
			self.state.descriptionText,
			self.props.reportCategory,
			toastTitle,
			toastDescription
		)
	end
	-- Press the Back button (when available)
	self.navigateBack = function()
		self.props.navigateBack(self.state.reasonText, self.state.descriptionText ~= "")
	end
	-- Press the "Cancel" button or transparent background.
	self.onCancel = function()
		self.props.closeDialog(self.state.reasonText, self.state.descriptionText ~= "")
	end
	-- Transition out of the screenshot annotation dialog.
	self.onScreenshotAnnotated = function(annotationPoints)
		self.props.screenshotAnnotated(self.props.reportCategory, self.props.reportType, annotationPoints)
	end
end

function ReportDialog:getReason()
	if self.props.reportType == Constants.ReportType.Player then
		return self.state.reasonText
	elseif self.props.reportType == Constants.ReportType.Place then
		return REPORT_REASON_GAME
	else
		return nil
	end
end

function ReportDialog:canReport()
	local reasonValid = (self:getReason() ~= nil)
	local textLength = utf8.len(utf8.nfcnormalize(self.state.descriptionText))
	local descriptionValid = (textLength >= MIN_TEXT_LENGTH and textLength <= MAX_TEXT_LENGTH)
	return (reasonValid and descriptionValid)
end

function ReportDialog:renderUKOSALink()
	if not FFlagUKOSALegacyReportMenu or not isShowUKOSAIllegalContentReportingLink() then
		return nil
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 40),
		Position = UDim2.new(0, 0, 1, -45),
		LayoutOrder = 99,
	}, {
		OSALink = Roact.createElement(OSAReportLink),
	})
end

function ReportDialog:renderPlayerInfo()
	local voiceReportFlow = self.props.reportCategory == Constants.Category.Voice

	return withStyle(function(style)
		-- override cell style
		local cellTheme = Cryo.Dictionary.join(style.Theme, CELL_THEME_OVERRIDES)
		local cellStyle = Cryo.Dictionary.join(style, {
			Theme = cellTheme,
		})
		local memoKey = 0
		if voiceReportFlow and self.props.isReportDialogOpen then
			memoKey += 1
		end
		return Roact.createElement(StyleProvider, {
			style = cellStyle,
		}, {
			Roact.createElement(PlayerCell, {
				userId = self.props.targetPlayer.UserId,
				username = self.props.targetPlayer.Name,
				displayName = self.props.targetPlayer.DisplayName,
				hasVerifiedBadge = isPlayerVerified(self.props.targetPlayer),
				isOnline = true,
				isSelected = false,
				LayoutOrder = 1,
				key = tostring(self.props.targetPlayer.UserId),
				memoKey = memoKey,
			}, {
				VoiceIndicator = voiceReportFlow and self.props.isReportDialogOpen and Roact.createElement(
					VoiceIndicatorWrapper,
					{
						userId = tostring(self.props.targetPlayer.UserId),
						hideOnError = true,
						iconStyle = "SpeakerLight",
						size = UDim2.fromOffset(36, 36),
						onClicked = function()
							VoiceChatServiceManager:ToggleMutePlayer(
								self.props.targetPlayer.UserId,
								VoiceConstants.VOICE_CONTEXT_TYPE.REPORT_MENU
							)
						end,
					}
				) or nil,
			}),
		})
	end)
end

function ReportDialog:renderDropDownMenu()
	local DROPDOWN_MENU_POSITION_Y = if isShowUKOSAIllegalContentReportingLink() and FFlagUKOSALegacyReportMenu then 64 else 72
	if not self.props.isReportDialogOpen then
		-- workaround to force the DropdownMenu to reset selectedValue
		return nil
	end
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(0, DROPDOWN_MENU_POSITION_Y),
		Size = UDim2.new(1, 0, 0, 48),
		ZIndex = 10,
	}, {
		DropDown = withLocalization({
			menu1 = "CoreScripts.InGameMenu.Report.AbuseSwearing",
			menu2 = "CoreScripts.InGameMenu.Report.AbuseUsername",
			menu3 = "CoreScripts.InGameMenu.Report.AbuseBullying",
			menu4 = "CoreScripts.InGameMenu.Report.AbuseScamming",
			menu5 = "CoreScripts.InGameMenu.Report.AbuseDating",
			menu6 = "CoreScripts.InGameMenu.Report.AbuseExploiting",
			menu7 = "CoreScripts.InGameMenu.Report.AbusePersonalQuestion",
			menu8 = "CoreScripts.InGameMenu.Report.AbuseOffsiteLink",
			placeHolderText = "CoreScripts.InGameMenu.Report.AbuseTypePlaceHolder",
		})(function(localized)
			-- build mapping for action
			local cellDatas = {}
			local reasonMap = {}
			for i, reason in ipairs(REPORT_REASONS) do
				local text = localized["menu" .. tostring(i)]
				table.insert(cellDatas, {
					text = text,
				})
				reasonMap[text] = reason
			end
			local function onDropDownChanged(text)
				local reason = reasonMap[text]
				self.onReasonChanged(reason)
			end
			-- dropdown menu' list cover textfield and button stacks
			local fixedListHeight = TEXTFIELD_HEIGHT + TEXTFIELD_BUTTON_MARGIN + BUTTON_HEIGHT
			return Roact.createElement(DropdownMenu, {
				placeholder = localized.placeHolderText,
				onChange = onDropDownChanged,
				height = UDim.new(0, 48),
				screenSize = self.props.screenSize,
				cellDatas = cellDatas,
				showDropShadow = true,
				fixedListHeight = fixedListHeight,
			})
		end),
	})
end

function ReportDialog:renderPlayerContents()
	return withLocalization({
		placeHolderText = "CoreScripts.InGameMenu.Report.AbuseDetailsPlaceHolder",
	})(function(localized)
		local TEXT_FIELD_POSITION_Y = if isShowUKOSAIllegalContentReportingLink() and FFlagUKOSALegacyReportMenu then 118 else 132
		local TEXT_FIELD_SIZE_Y = if isShowUKOSAIllegalContentReportingLink() and FFlagUKOSALegacyReportMenu then -150 else -132 
		return Roact.createFragment({
			PlayerInfo = self:renderPlayerInfo(),
			DropDownMenu = self:renderDropDownMenu(),
			TextField = Roact.createElement(TextEntryField, {
				enabled = self.props.isReportDialogOpen,
				text = self.state.descriptionText,
				textChanged = self.onTextChanged,
				maxTextLength = MAX_TEXT_LENGTH,
				autoFocusOnEnabled = false,
				PlaceholderText = localized.placeHolderText,
				Position = UDim2.fromOffset(0, TEXT_FIELD_POSITION_Y),
				Size = UDim2.new(1, 0, 1, TEXT_FIELD_SIZE_Y),
			}),
			OSALinkFrame = self:renderUKOSALink(),
		})
	end)
end

function ReportDialog:renderPlaceContents()
	return withLocalization({
		labelText = {
			"CoreScripts.InGameMenu.Report.ReportingGame",
			RBX_NAME = self.props.placeName,
		},
		placeHolderText = "CoreScripts.InGameMenu.Report.AbuseDetailsPlaceHolder",
	})(function(localized)
		local PLACE_INFO_POSITION_Y = if isShowUKOSAIllegalContentReportingLink() and FFlagUKOSALegacyReportMenu then 12 else 24
		local TEXT_FIELD_POSITION_Y = if isShowUKOSAIllegalContentReportingLink() and FFlagUKOSALegacyReportMenu then 90 else 112
		local TEXT_FIELD_SIZE_Y = if isShowUKOSAIllegalContentReportingLink() and FFlagUKOSALegacyReportMenu then -135 else -112
		return Roact.createFragment({
			PlaceInfo = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, PLACE_INFO_POSITION_Y),
				Size = UDim2.new(1, 0, 0, 64),
			}, {
				GameIcon = Roact.createElement(GameIcon, {
					gameId = game.GameId,
					iconSize = 64,
					cornerRadius = UDim.new(0, 8),
				}),
				Label = Roact.createElement(ThemedTextLabel, {
					fontKey = "Body",
					themeKey = "TextDefault",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 76, 0.5, 0),
					Size = UDim2.new(1, -76, 0, 40),
					Text = localized.labelText,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),
			TextField = Roact.createElement(TextEntryField, {
				enabled = self.props.isReportDialogOpen,
				text = self.state.descriptionText,
				textChanged = self.onTextChanged,
				maxTextLength = MAX_TEXT_LENGTH,
				autoFocusOnEnabled = false,
				PlaceholderText = localized.placeHolderText,
				Position = UDim2.fromOffset(0, TEXT_FIELD_POSITION_Y),
				Size = UDim2.new(1, 0, 1, TEXT_FIELD_SIZE_Y),
			}),
			OSALinkFrame = self:renderUKOSALink(),
		})
	end)
end

function ReportDialog:renderContents()
	if self.props.reportType == Constants.ReportType.Player then
		return self:renderPlayerContents()
	elseif self.props.reportType == Constants.ReportType.Place then
		return self:renderPlaceContents()
	else
		return nil
	end
end

local categoryTitles = {
	[Constants.Category.Voice] = "CoreScripts.InGameMenu.Report.Title.VoiceChat",
	[Constants.Category.Text] = "CoreScripts.InGameMenu.Report.Title.TextChat",
	[Constants.Category.Other] = "CoreScripts.InGameMenu.Report.Title.Other",
	[Constants.Category.Experience] = "CoreScripts.InGameMenu.Report.Title.Experience",
}

function ReportDialog:categoryTitle()
	if self.props.reportType == Constants.ReportType.Place then
		return categoryTitles[Constants.Category.Experience]
	end
	return categoryTitles[self.props.reportCategory] or "CoreScripts.InGameMenu.Report.ReportTitle"
end

function ReportDialog:render()
	return withLocalization({
		titleText = self:categoryTitle(),
		cancelText = "CoreScripts.InGameMenu.Cancel",
		reportText = "CoreScripts.InGameMenu.Report.SendReport",
		toastDefaultTitle = "CoreScripts.InGameMenu.Report.Confirmation.ThanksForReport",
		toastDefaultDescription = "CoreScripts.InGameMenu.Report.Confirmation.ThanksForReportDescription",
	})(function(localized)
		if GetFFlagReportAnythingScreenshot() and self.props.currentPage == Constants.Page.ScreenshotDialog then
			if GetFFlagReportAnythingMultistepScreenshot() then
				-- TODO(richardli): add additional props
				return React.createElement(ScreenshotFlowStepHandler, {
					dismissAction = self.onCancel,
					titleText = "Highlight What's Wrong",
					entryPoint = "experience",
					screenshot = ScreenshotHelper:GetScreenshotContentId(),
					skipAnnotationAction = function() end,
					restartAction = function() end,
					reportAction = function() end,
				})
			else
				return React.createElement(ScreenshotDialog, {
					-- TODO(bcwong): Localize
					screenshot = ScreenshotHelper:GetScreenshotContentId(),
					titleText = "Highlight What's Wrong",
					backAction = if self.props.canNavigateBack then self.navigateBack else nil,
					dismissAction = self.onCancel,
					reportAction = self.onScreenshotAnnotated,
					initialAnnotationPoints = self.props.screenshotAnnotationPoints,
				})
			end
		end
		return Roact.createElement(ModalDialog, {
			visible = self.props.isReportDialogOpen,
			screenSize = self.props.screenSize,
			titleText = localized.titleText,
			contents = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24),
					PaddingRight = UDim.new(0, 24),
				}),
				Contents = self:renderContents(),
			}),
			actionButtons = Roact.createElement(ButtonStack, {
				buttonHeight = BUTTON_HEIGHT,
				buttons = {
					{
						buttonType = ButtonType.Secondary,
						props = {
							onActivated = self.onCancel,
							text = localized.cancelText,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							isDisabled = not self:canReport(),
							onActivated = function()
								return self.onReport(localized.toastDefaultTitle, localized.toastDefaultDescription)
							end,
							text = localized.reportText,
						},
					},
				},
			}),
			onDismiss = self.onCancel,
			onBackButtonActivated = if self.props.canNavigateBack then self.navigateBack else nil,
		})
	end)
end

function ReportDialog:didUpdate(prevProps)
	if prevProps.isReportDialogOpen and not self.props.isReportDialogOpen then
		-- clear the states
		self:setState({
			reasonText = Roact.None,
			descriptionText = "",
		})
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		reportCategory = state.report.reportCategory,
		isReportDialogOpen = state.report.currentPage == Constants.Page.ReportForm,
		currentPage = state.report.currentPage,
		reportType = state.report.reportType,
		targetPlayer = state.report.targetPlayer,
		canNavigateBack = #state.report.history > 1,
		placeName = state.placeInfo.name,
		screenSize = state.displayOptions.screenSize,
		screenshotAnnotationPoints = state.report.screenshotAnnotationPoints,
	}
end, function(dispatch)
	return {
		navigateBack = function(reason, descriptionTextChanged)
			dispatch(NavigateBack())
			SendAnalytics(Constants.Page.ReportForm, Constants.Analytics.ReportFlowBack, {
				source = Constants.Page.ReportForm,
				reason = reason,
				descriptionTextChanged = descriptionTextChanged,
			})
		end,
		closeDialog = function(reason, descriptionTextChanged)
			dispatch(EndReportFlow())
			SendAnalytics(Constants.Page.ReportForm, Constants.Analytics.ReportFlowAbandoned, {
				source = Constants.Page.ReportForm,
				reason = reason,
				descriptionTextChanged = descriptionTextChanged,
			})
			SessionUtility.endAbuseReportSession()
		end,
		-- See Constants.lua for the diff between category & type.
		screenshotAnnotated = function(reportCategory, reportType, annotationPoints)
			dispatch(FilterIdentifiedAvatars(annotationPoints))
			dispatch(ScreenshotAnnotated(reportCategory, reportType, annotationPoints))
		end,
		sendReport = function(
			reportType,
			targetPlayer,
			reason,
			description,
			reportCategory,
			toastTitle,
			toastDescription
		)
			dispatch(
				SendReport(reportType, targetPlayer, reason, description, reportCategory, toastTitle, toastDescription)
			)
		end,
	}
end)(ReportDialog)
