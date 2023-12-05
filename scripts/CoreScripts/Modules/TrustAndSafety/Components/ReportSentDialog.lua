--!nonstrict
local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local withStyle = UIBlox.Core.Style.withStyle

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local FocusHandler = require(Dependencies.FocusHandler)
local playerInterface = require(Dependencies.playerInterface)
local Divider = require(Dependencies.Divider)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)

local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local BlockPlayer = require(TnsModule.Thunks.BlockPlayer)
local BlockPlayerItem = require(TnsModule.Components.BlockPlayerItem)
local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local OpenBlockPlayerDialog = require(TnsModule.Actions.OpenBlockPlayerDialog)
local ShowToast = require(TnsModule.Actions.ShowToast)
local Constants = require(TnsModule.Resources.Constants)
local Assets = require(TnsModule.Resources.Assets)
local ModalDialog = require(TnsModule.Components.ModalDialog)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)

local SELECTION_GROUP_NAME = "ReportSentDialogGroup"
local SINK_ACTION = "ReporSentDialogSinkAction"

local ReportSentDialog = Roact.PureComponent:extend("ReportSentDialog")

ReportSentDialog.validateProps = t.strictInterface({
	isReportSentOpen = t.boolean,
	screenSize = t.Vector2,
	inputType = t.optional(t.string),
	reportType = t.optional(t.valueOf(Constants.ReportType)),
	targetPlayer = t.optional(playerInterface),
	blockPlayer = t.callback,
	showToast = t.callback,
	closeDialog = t.callback,
	reportCategory = t.optional(t.string),
})

function isPlayerUserIdMuted(userId)
	local isMuted = false
	if VoiceChatServiceManager.participants then
		local voiceParticipant = VoiceChatServiceManager.participants[tostring(userId)]
		if voiceParticipant then
			isMuted = voiceParticipant.isMutedLocally
		end
	end
	return isMuted
end

function ReportSentDialog:init()
	self:clearState()
	self.buttonRef = Roact.createRef()
	-- Toggle the checkbox.
	self.onBlockCheckBoxActivated = function(selected)
		self:setState({
			isBlockCheckBoxSelected = selected,
			isMuteCheckBoxSelected = if selected and self:isVoiceReport() then true else self.state.isMuteCheckBoxSelected,
		})
	end

	self.onMuteCheckBoxActivated = function(selected)
		self:setState({
			isMuteCheckBoxSelected = selected,
		})
	end

	self.hasMuteChanged = function()
		return self.state.isMuteCheckBoxSelected ~= self.state.wasPlayerMutedWhenDialogOpened
	end

	self.getToastMessage = function(localized)
		local toastMessage = {
			title = localized.toastDefaultTitle,
			description = localized.toastDefaultDescription,
		}

		if self.state.isMuteCheckBoxSelected and self.state.isBlockCheckBoxSelected then
			toastMessage.title = localized.toastMutedAndBlockedTitle
			toastMessage.description = localized.toastMutedAndBlockedDescription
		elseif self.state.isMuteCheckBoxSelected then
			toastMessage.title = localized.toastMutedTitle
			toastMessage.description = localized.toastMutedDescription
		elseif self.state.isBlockCheckBoxSelected then
			toastMessage.title = localized.toastBlockedTitle
			toastMessage.description = localized.toastBlockedDescription
		end

		return toastMessage
	end

	-- Press the "Done" button.
	self.onConfirm = function(localized)
		if self:isReportingPlayer() then
			local toastMessage = self.getToastMessage(localized)
			if self:hasMuteChanged() then
				VoiceChatServiceManager:ToggleMutePlayer(self.props.targetPlayer.UserId, VoiceConstants.VOICE_CONTEXT_TYPE.REPORT_MENU)
			end

			local isBlockingPlayer = self.state.isBlockCheckBoxSelected
			if isBlockingPlayer then
				self.props.blockPlayer(self.props.targetPlayer, toastMessage.title, toastMessage.description)
			else
				self.props.showToast(toastMessage.title, toastMessage.description)
			end
		end
		self.props.closeDialog()
		self:clearState()
	end
	-- Press the transparent background.
	self.onCancel = function()
		self.props.closeDialog()
		self:clearState()
	end
end

function ReportSentDialog:clearState()
	self:setState({
		wasPlayerMutedWhenDialogOpened = false,
		isMuteCheckBoxSelected = false,
		isBlockCheckBoxSelected = false,
	})
end

function ReportSentDialog:isVoiceReport()
	return self:isReportingPlayer() and self.props.reportCategory == Constants.Category.Voice
end

function ReportSentDialog:doesRequireConfirmation()
	-- Indicates whether the user has made any change in the checkboxes
	return self.state.isBlockCheckBoxSelected or self:hasMuteChanged()
end

function ReportSentDialog:isReportingPlayer()
	return self.props.reportType == Constants.ReportType.Player and self.props.targetPlayer ~= nil
end

function ReportSentDialog:renderFocusHandler()
	return Roact.createElement(FocusHandler, {
		isFocused = ((self.props.inputType == Constants.InputType.Gamepad) and self.props.isReportSentOpen),
		didFocus = function()
			GuiService:RemoveSelectionGroup(SELECTION_GROUP_NAME)
			GuiService:AddSelectionParent(SELECTION_GROUP_NAME, self.buttonRef:getValue())
			GuiService.SelectedCoreObject = self.buttonRef:getValue()

			ContextActionService:BindCoreAction(SINK_ACTION, function(actionName, inputState)
				return Enum.ContextActionResult.Sink
			end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonY, Enum.KeyCode.ButtonX)
		end,
		didBlur = function()
			ContextActionService:UnbindCoreAction(SINK_ACTION)
			GuiService:RemoveSelectionGroup(SELECTION_GROUP_NAME)
		end
	})
end

function ReportSentDialog:renderBlockFrame()
	if not self:isReportingPlayer() then
		return nil
	end
	return withLocalization({
		mutePlayerText = "CoreScripts.InGameMenu.Report.Mute",
		mutePlayerDescription = "CoreScripts.InGameMenu.Report.MuteDescription",
		blockPlayerText = "CoreScripts.InGameMenu.Report.Block",
		blockPlayerDescription = "CoreScripts.InGameMenu.Report.BlockDescription",
	})(function(localized)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Divider = Roact.createElement(Divider, {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, 1),
			}),
			MutePlayerItem = if self:isVoiceReport() then Roact.createElement(BlockPlayerItem, {
				layoutOrder = 2,
				size = UDim2.new(1, 0, 0, 72),
				text = localized.mutePlayerText,
				description = localized.mutePlayerDescription,
				icon = Assets.Images.MuteIcon.Image,
				iconSize = Assets.Images.MuteIcon.Size,
				isDisabled = self.state.isBlockCheckBoxSelected,
				isCheckBoxSelected = self.state.isMuteCheckBoxSelected,
				onCheckBoxActivated = self.onMuteCheckBoxActivated,
			}) else nil,
			BlockPlayerItem = Roact.createElement(BlockPlayerItem, {
				layoutOrder = 3,
				size = UDim2.new(1, 0, 0, 72),
				text = localized.blockPlayerText,
				description = localized.blockPlayerDescription,
				icon = Assets.Images.BlockIcon.Image,
				iconSize = Assets.Images.BlockIcon.Size,
				isCheckBoxSelected = self.state.isBlockCheckBoxSelected,
				onCheckBoxActivated = self.onBlockCheckBoxActivated,
			}),
		})
	end)
end

function ReportSentDialog:renderContents()
	return withStyle(function (stylePalette)
		return withLocalization({
			bodyText = "CoreScripts.InGameMenu.Report.ThanksForReportDescription",
			otherStepsText = {
				"CoreScripts.InGameMenu.Report.OtherStepsTitle",
				RBX_NAME = self.props.targetPlayer.Name,
			},
		})(function(localized)
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				BodyFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.XY,
					Size = UDim2.new(1, 0, 0, 0),
					LayoutOrder = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 12),
					}),
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 12),
						PaddingBottom = UDim.new(0, 12),
						PaddingLeft = UDim.new(0, 24),
						PaddingRight = UDim.new(0, 24),
					}),
					BodyText = Roact.createElement(ThemedTextLabel, {
						LayoutOrder = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						Size = UDim2.new(1, 0, 0, 0),
						themeKey = "TextEmphasis",
						Text = localized.bodyText,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
					OtherStepsText = Roact.createElement(ThemedTextLabel, {
						LayoutOrder = 2,
						AutomaticSize = Enum.AutomaticSize.Y,
						Position = UDim2.new(0, 0, 0, 12),
						Size = UDim2.new(1, 0, 0, 0),
						fontKey = "Footer",
						themeKey = "TextDefault",
						Text = localized.otherStepsText,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),
				BlockFrame = self:renderBlockFrame(),
			})
		end)
	end)
end

function ReportSentDialog:render()
	if not self:isReportingPlayer() then
		return nil
	end
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Report.ThanksForReport",
		dismissText = if self:doesRequireConfirmation() then "CoreScripts.InGameMenu.Report.Confirm" else "CoreScripts.InGameMenu.Report.Done",
		toastDefaultTitle = "CoreScripts.InGameMenu.Report.Confirmation.ThanksForReport",
		toastDefaultDescription = "CoreScripts.InGameMenu.Report.Confirmation.ThanksForReportDescription",
		toastMutedTitle = "CoreScripts.InGameMenu.Report.Confirmation.Muted",
		toastMutedDescription = {
			"CoreScripts.InGameMenu.Report.Confirmation.MutedDescriptionWithUser",
			RBX_NAME = self.props.targetPlayer.Name,
		},
		toastMutedAndBlockedTitle = "CoreScripts.InGameMenu.Report.Confirmation.MutedAndBlocked",
		toastMutedAndBlockedDescription = {
			"CoreScripts.InGameMenu.Report.Confirmation.MutedAndBlockedDescriptionWithUser",
			RBX_NAME = self.props.targetPlayer.Name,
		},
		toastBlockedTitle = "CoreScripts.InGameMenu.Report.Confirmation.Blocked",
		toastBlockedDescription = {
			"CoreScripts.InGameMenu.Report.Confirmation.MutedAndBlockedDescriptionWithUser",
			RBX_NAME = self.props.targetPlayer.Name,
		},
	})(function(localized)
		return Roact.createFragment({
			ModalDialog = Roact.createElement(ModalDialog, {
				visible = self.props.isReportSentOpen,
				screenSize = self.props.screenSize,
				titleText = localized.titleText,
				contents = self:renderContents(),
				actionButtons = Roact.createElement(Button, {
					buttonType = ButtonType.PrimarySystem,
					size = UDim2.new(1, 0, 1, 0),
					onActivated = function ()
						return self.onConfirm(localized)
					end,
					text = localized.dismissText,
					[Roact.Ref] = self.buttonRef,
				}),
				onDismiss = self.onCancel,
			}),
			FocusHandler = self:renderFocusHandler()
		})
	end)
end

function ReportSentDialog:didUpdate(prevProps, prevState)
	if not prevProps.isReportSentOpen and self.props.isReportSentOpen and self:isVoiceReport() then
		local isMuted = isPlayerUserIdMuted(self.props.targetPlayer.UserId)
		self:setState({
			wasPlayerMutedWhenDialogOpened = isMuted,
			isMuteCheckBoxSelected = isMuted,
		})
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isReportSentOpen = state.report.currentPage == Constants.Page.ReportSent,
		reportType = state.report.reportType,
		targetPlayer = state.report.targetPlayer,
		screenSize = state.displayOptions.screenSize,
		reportCategory = state.report.reportCategory,
		-- TODO: integrate inputType
	}
end, function(dispatch)
	return {
		closeDialog = function()
			dispatch(EndReportFlow())
		end,
		blockPlayer = function(player, successToastTitle, successToastDescription)
			dispatch(BlockPlayer(player, successToastTitle, successToastDescription))
		end,
		showToast = function(toastTitle, toastDescription)
			dispatch(ShowToast(toastTitle, toastDescription))
		end,
	}
end)(ReportSentDialog)
