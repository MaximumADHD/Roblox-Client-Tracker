local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Cryo = InGameMenuDependencies.Cryo

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local CloseReportDialog = require(InGameMenu.Actions.CloseReportDialog)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local TextEntryField = require(script.Parent.TextEntryField)
local DropDownSelection = require(InGameMenu.Components.DropDownSelection)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local SendReport = require(InGameMenu.Thunks.SendReport)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local ReportDialog = Roact.PureComponent:extend("ReportDialog")

local REPORT_MODAL_CLOSE_ACTION = "InGameMenuReportModalClose"

local ABUSE_TYPES_PLAYER = {
	"Swearing",
	"Inappropriate Username",
	"Bullying",
	"Scamming",
	"Dating",
	"Cheating/Exploiting",
	"Personal Question",
	"Offsite Links",
}

local ABUSE_TYPES_PLAYER_LOCALIZATION_KEYS = {
	"CoreScripts.InGameMenu.Report.AbuseSwearing",
	"CoreScripts.InGameMenu.Report.AbuseUsername",
	"CoreScripts.InGameMenu.Report.AbuseBullying",
	"CoreScripts.InGameMenu.Report.AbuseScamming",
	"CoreScripts.InGameMenu.Report.AbuseDating",
	"CoreScripts.InGameMenu.Report.AbuseExploiting",
	"CoreScripts.InGameMenu.Report.AbusePersonalQuestion",
	"CoreScripts.InGameMenu.Report.AbuseOffsiteLink",
}

local GAME_TYPE_OF_ABUSE = "Inappropriate Content"
local MIN_DESCRIPTION_LENGTH = 0 --TODO: Add minimum description length based on feedback from Trust and Saftey.
local MAX_DESCRIPTION_LENGTH = 160

ReportDialog.validateProps = t.strictInterface({
	isOpen = t.boolean,
	userId = t.optional(t.integer),
	userName = t.optional(t.string),
	placeName = t.string,
	dispatchCloseReportDialog = t.callback,
	dispatchSendReport = t.callback,
})

function ReportDialog:init()
	self.state = {
		abuseDescription = "",
		typeOfAbuseIndex = 0,
	}
end

function ReportDialog:renderReportTitle(style, reportChildren, text)
	reportChildren.Title = Roact.createElement(ThemedTextLabel, {
		fontKey = "Header1",
		themeKey = "TextEmphasis",

		LayoutOrder = 1,
		Size = UDim2.new(1, 0, 0, 48),
		Text = text,
	})

	reportChildren.Divider = Roact.createElement("Frame", {
		BackgroundColor3 = style.Theme.Divider.Color,
		BackgroundTransparency = style.Theme.Divider.Transparency,
		BorderSizePixel = 0,
		LayoutOrder = 2,
		Size = UDim2.new(0.8, 0, 0, 1),
	})
end

function ReportDialog:renderTextEntryField(localized, reportChildren, size)
	reportChildren.ReportDescription = Roact.createElement(TextEntryField, {
		enabled = self.props.isOpen,
		text = self.state.abuseDescription,
		textChanged = function(text)
			self:setState({
				abuseDescription = text,
			})
		end,
		maxTextLength = MAX_DESCRIPTION_LENGTH,
		autoFocusOnEnabled = true,

		PlaceholderText = localized.textboxPlaceHolder,
		LayoutOrder = 5,
		Size = size,
	})
end

function ReportDialog:renderButtons(style, localized, reportChildren)
	local textLength = utf8.len(utf8.nfcnormalize(self.state.abuseDescription))
	local textInBounds = textLength >= MIN_DESCRIPTION_LENGTH and textLength <= MAX_DESCRIPTION_LENGTH
	local abuseTypeSelected = self.state.typeOfAbuseIndex > 0 or self.props.userId == nil

	local onConfirmActivated = function()
		local typeOfAbuse = GAME_TYPE_OF_ABUSE
		if self.props.userId ~= nil then
			typeOfAbuse = ABUSE_TYPES_PLAYER[self.state.typeOfAbuseIndex]
		end
		self.props.dispatchSendReport(
			typeOfAbuse,
			self.state.abuseDescription,
			self.props.userId
		)
		self.props.dispatchCloseReportDialog()
	end

	reportChildren.ButtonContainer = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 6,
		Size = UDim2.new(1, 0, 0, 60),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			Padding = UDim.new(0, 12),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
		}),
		CancelButton = Roact.createElement(UIBlox.App.Button.SecondaryButton, {
			layoutOrder = 1,
			size = UDim2.fromOffset(144, 36),
			text = localized.cancel,
			onActivated = self.props.dispatchCloseReportDialog,
		}),
		ConfirmButton = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
			layoutOrder = 2,
			size = UDim2.fromOffset(144, 36),
			isDisabled = not (textInBounds and abuseTypeSelected),
			text = localized.report,
			onActivated = onConfirmActivated,
		}),
	})
end

function ReportDialog:renderReportPlayer(style, localized, reportChildren)
	self:renderReportTitle(style, reportChildren, localized.reportPlayerTitle)

	local iconPos = {
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0.5, -140, 0.5, 0),
		Size = UDim2.new(0, 44, 0, 44),
	}

	local userId = self.props.userId

	reportChildren.ReportPlayerTextContainer = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 3,
		Size = UDim2.new(1, 0, 0, 68),
	}, {
		--TODO: Replace this with real circular thumbnail when that is available.
		PlayerCutout = Roact.createElement(ImageSetLabel, Cryo.Dictionary.join(iconPos, {
			BackgroundTransparency = 1,
			Image = Assets.Images.CircleCutout,
			ImageColor3 = style.Theme.BackgroundUIDefault.Color,
			ZIndex = 2,
		})),
		PlayerIcon = Roact.createElement(ImageSetLabel, Cryo.Dictionary.join(iconPos, {
			BackgroundTransparency = 1,
			Image = userId > 0 and "rbxthumb://type=AvatarHeadShot&id=" ..userId.. "&w=48&h=48" or "",
		})),
		PlayerBackground = Roact.createElement("Frame", Cryo.Dictionary.join(iconPos, {
			BackgroundColor3 = style.Theme.UIDefault.Color,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			ZIndex = 0,
		})),

		PlayerName = Roact.createElement(ThemedTextLabel, {
			fontKey = "Body",
			themeKey = "TextEmphasis",

			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0.5, -76, 0.5, 0),
			Size = UDim2.new(0.5, 76, 0, 44),
			Text = self.props.userName,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})

	reportChildren.AbuseTypeDropDown = Roact.createElement("Frame",{
		BackgroundTransparency = 1,
		LayoutOrder = 4,
		Size = UDim2.new(1, 0, 0, 68),
	}, {
		DropDown = Roact.createElement(DropDownSelection, {
			Size = UDim2.new(1, 0, 0, 44),
			placeHolderText = localized.selectTypeOfAbuse,
			selections = ABUSE_TYPES_PLAYER_LOCALIZATION_KEYS,
			localize = true,
			selectedIndex = self.state.typeOfAbuseIndex,
			enabled = true,
			selectionChanged = function(index)
				self:setState({
					typeOfAbuseIndex = index
				})
			end,
		}),
	})

	self:renderTextEntryField(localized, reportChildren, UDim2.new(1, 0, 0, 180))
	self:renderButtons(style, localized, reportChildren)
end

function ReportDialog:renderReportGame(style, localized, reportChildren)
	self:renderReportTitle(style, reportChildren, "Report " ..self.props.placeName)

	local gameThumbnail = Assets.Images.PlaceholderGameIcon
	if game.GameId > 0 then
		gameThumbnail = "rbxthumb://type=GameIcon&id=" ..game.GameId.. "&w=150&h=150"
	end

	reportChildren.ReportGameTextContainer = Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 3,
		Size = UDim2.new(1, 0, 0, 126),
	}, {
		GameIcon = Roact.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 17, 0.5, 0),
			Size = UDim2.new(0, 64, 0, 64),
			BackgroundTransparency = 1,
			Image = gameThumbnail,
		}),

		GameName = Roact.createElement(ThemedTextLabel, {
			fontKey = "Body",
			themeKey = "TextEmphasis",

			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 104, 0.5, 0),
			Size = UDim2.new(1, -104, 0, 44),
			Text = localized.flagingGame,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
		}),
	})

	self:renderTextEntryField(localized, reportChildren, UDim2.new(1, 0, 0, 191))
	self:renderButtons(style, localized, reportChildren)
end

function ReportDialog:render()
	return withStyle(function(style)
		return withLocalization({
			flagingGame = { "CoreScripts.InGameMenu.Report.FlagingGame",
				RBX_NAME = self.props.placeName,
			},
			reportGameTitle = { "CoreScripts.InGameMenu.Report.ReportGameTitle",
				RBX_NAME = self.props.placeName,
			},
			reportPlayerTitle = "CoreScripts.InGameMenu.Report.ReportPlayerTitle",
			selectTypeOfAbuse = "CoreScripts.InGameMenu.Report.SelectAbuseType",
			cancel = "CoreScripts.InGameMenu.Cancel",
			report = "CoreScripts.InGameMenu.Report.SendReport",
			textboxPlaceHolder = "CoreScripts.InGameMenu.Report.AdditionalDetails"
		})(function(localized)
			local reportDialogChildren = {}

			reportDialogChildren.Padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 24),
				PaddingLeft = UDim.new(0, 24),
				PaddingRight = UDim.new(0, 24),
			})
			reportDialogChildren.Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			if self.props.userId == nil then
				self:renderReportGame(style, localized, reportDialogChildren)
			else
				self:renderReportPlayer(style, localized, reportDialogChildren)
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 8,
				Visible = self.props.isOpen,
			}, {
				Overlay = Roact.createElement("TextButton", {
					AutoButtonColor = false,
					BackgroundColor3 = style.Theme.Overlay.Color,
					BackgroundTransparency = style.Theme.Overlay.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					Text = "",
				}),
				DialogMainFrame = Roact.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = Assets.Images.RoundedRect.Image,
					ImageColor3 = style.Theme.BackgroundUIDefault.Color,
					ImageTransparency = style.Theme.BackgroundUIDefault.Transparency,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					ScaleType = Assets.Images.RoundedRect.ScaleType,
					Size = UDim2.new(0, 600, 0, 450),
					SliceCenter = Assets.Images.RoundedRect.SliceCenter,
				}, reportDialogChildren)
			})
		end)
	end)
end

function ReportDialog:bindActions()
	local function closeReportFunc(actionName, inputState, input)
		if inputState == Enum.UserInputState.Begin then
			self.props.dispatchCloseReportDialog()
		end
	end

	ContextActionService:BindCoreAction(
		REPORT_MODAL_CLOSE_ACTION, closeReportFunc, false, Enum.KeyCode.Escape)
end

function ReportDialog:unbindActions()
	ContextActionService:UnbindCoreAction(REPORT_MODAL_CLOSE_ACTION)
end

function ReportDialog:didMount()
	if self.props.isOpen then
		self:bindActions()
	end
end

function ReportDialog:didUpdate(prevProps)
	if prevProps.isOpen and not self.props.isOpen then
		self:setState({
			typeOfAbuseIndex = 0,
			abuseDescription = "",
		})
	end

	if self.props.isOpen then
		self:bindActions()
	else
		self:unbindActions()
	end
end

function ReportDialog:willUnmount()
	self:unbindActions()
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			isOpen = state.report.dialogOpen,
			userId = state.report.userId,
			userName = state.report.userName,
			placeName = state.localization.currentGameName,
		}
	end,
	function(dispatch)
		return {
			dispatchCloseReportDialog = function()
				dispatch(CloseReportDialog())
			end,
			dispatchSendReport = function(abuseReason, abuseDescription, userId)
				dispatch(SendReport(abuseReason, abuseDescription, userId))

				local stringTable = {}
				if GAME_TYPE_OF_ABUSE == abuseReason then
					table.insert(stringTable, "report_type=game")
					table.insert(stringTable, "reported_entity_id=" .. tostring(game.GameId))
				else
					table.insert(stringTable, "report_type=user")
					table.insert(stringTable, "reported_entity_id=" .. tostring(userId))
				end

				table.insert(stringTable, "report_source=ingame")
				local infoString = table.concat(stringTable,"&")

				SendAnalytics(Constants.AnalyticsReportSubmittedName, infoString, {})
			end
		}
	end
)(ReportDialog)