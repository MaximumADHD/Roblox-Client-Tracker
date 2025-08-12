--!nonstrict
local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Packages.Cryo)
local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)


local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local FocusHandler = require(Dependencies.FocusHandler)
local playerInterface = require(Dependencies.playerInterface)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local withVoiceState = require(RobloxGui.Modules.VoiceChat.VoiceStateContext).withVoiceState
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local GameIcon = require(Dependencies.GameIcon)
local BlockPlayerItem = require(TnsModule.Components.BlockPlayerItem)
local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local OpenBlockPlayerDialog = require(TnsModule.Actions.OpenBlockPlayerDialog)
local SelectReportCategory = require(TnsModule.Actions.SelectReportCategory)
local SendAnalytics = require(TnsModule.Utility.SendAnalytics)
local SessionUtility = require(TnsModule.Utility.SessionUtility)

local Constants = require(TnsModule.Resources.Constants)
local ModalDialog = require(TnsModule.Components.ModalDialog)
local Assets = require(TnsModule.Resources.Assets)
local GameCell = require(TnsModule.Components.GameCell)
local BarOnTopScrollingFrame = require(Dependencies.BarOnTopScrollingFrame)
local Cell = UIBlox.App.Table.Cell
local StyleProvider = UIBlox.Core.Style.Provider
local withStyle = UIBlox.Core.Style.withStyle
local Colors = UIBlox.App.Style.Colors

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize
local GetFFlagReportMenuCellToUseAutomaticSize =
	require(RobloxGui.Modules.Flags.GetFFlagReportMenuCellToUseAutomaticSize)

local CELL_THEME_OVERRIDES = {
	-- transparent background for cell
	BackgroundDefault = {
		Color = Colors.Flint,
		Transparency = 1,
	},
	BackgroundOnHover = {
		Color = Colors.Graphite,
		Transparency = 0.666,
	},
	BackgroundOnPress = {
		Color = Colors.Graphite,
		Transparency = 0,
	},
}

local SELECTION_GROUP_NAME = "ReportSentDialogGroup"
local SINK_ACTION = "ReporSentDialogSinkAction"
local CELL_HEIGHT = 72

local function Divider(props)
	return Roact.createElement(
		"Frame",
		Cryo.Dictionary.join(
			{
				Size = UDim2.new(1, 0, 0, 1),
			},
			props,
			{
				BorderSizePixel = 0,
				BackgroundColor3 = Colors.Graphite,
				BackgroundTransparency = 0.5,
				theme = Cryo.None,
			}
		)
	)
end

local function CategoryCellContent(props)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, CELL_HEIGHT),
		AutomaticSize = if GetFFlagReportMenuCellToUseAutomaticSize() then Enum.AutomaticSize.XY else nil,
	}, {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		IconFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 68, 1, 0),
			LayoutOrder = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			CustomIcon = props.iconComponent or nil,
			Icon = props.icon and Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = props.icon.Image,
				Size = props.icon.Size,
			}),
		}),
		TextFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -68, 1, 0),
			LayoutOrder = 2,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 2),
			}),
			Text = Roact.createElement(ThemedTextLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				themeKey = "TextEmphasis",
				fontKey = "Header2",
				Size = UDim2.new(1, 0, 0, 20),
				Text = props.text,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			SubText = Roact.createElement(ThemedTextLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				fontKey = "CaptionBody",
				themeKey = "TextMuted",
				Size = UDim2.new(1, 0, 0, 14),
				Text = props.subtext,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),
	})
end

local function CategoryCell(props)
	return Roact.createElement(Cell, {
		userInteractionEnabled = true,
		onActivated = props.onActivated,
		layoutOrder = props.layoutOrder,
		size = UDim2.new(1, 0, 0, CELL_HEIGHT),
		head = CategoryCellContent(props),
		tail = Roact.createElement("Frame"),
	})
end

local ReportCategoryDialog = Roact.PureComponent:extend("ReportCategoryDialog")

ReportCategoryDialog.validateProps = t.strictInterface({
	isReportCategoryMenuOpen = t.boolean,
	screenSize = if FFlagTopBarSignalizeScreenSize then nil else t.Vector2,
	inputType = t.optional(t.string),
	reportType = t.optional(t.valueOf(Constants.ReportType)),
	targetPlayer = t.optional(playerInterface),
	closeDialog = t.callback,
	selectReportCategory = t.optional(t.callback),
	playerFocusedFlow = t.boolean,
})

function ReportCategoryDialog:init()
	self.buttonRef = Roact.createRef()
	-- Press the "Cancel" button or transparent background.
	self.onCancel = function()
		self.props.closeDialog()
	end

	if FFlagTopBarSignalizeScreenSize then
		local getViewportSize = Display.GetDisplayStore(false).getViewportSize

		self.disposeScreenSize = Signals.createEffect(function(scope)
			self:setState({
				screenSize = getViewportSize(scope),
			})
		end)
	end
end

function ReportCategoryDialog:willUnmount()
	if FFlagTopBarSignalizeScreenSize then
		self.disposeScreenSize()
	end
end

function ReportCategoryDialog:renderContents(voiceEnabled, localized)
	local props = self.props
	local items = {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	local canvasHeight = CELL_HEIGHT

	local canShowVoiceCategory = voiceEnabled

	if voiceEnabled then
		local voiceActiveUsers = VoiceChatServiceManager:getRecentUsersInteractionData()
		if voiceActiveUsers and not Cryo.isEmpty(voiceActiveUsers) then
			if self.props.playerFocusedFlow then
				canShowVoiceCategory = self.props.targetPlayer
					and voiceActiveUsers[tostring(self.props.targetPlayer.UserId)] ~= nil
			end
		else
			canShowVoiceCategory = false
		end
	end

	if canShowVoiceCategory then
		table.insert(
			items,
			Roact.createElement(CategoryCell, {
				text = localized.voiceHeader,
				subtext = localized.voiceDescription,
				icon = Assets.Images.VoiceChatIcon,
				layoutOrder = #items + 1,

				onActivated = function()
					self.props.selectReportCategory(Constants.Category.Voice)
				end,
			})
		)
		table.insert(
			items,
			Roact.createElement(Divider, {
				LayoutOrder = #items + 1,
			})
		)
	end

	table.insert(
		items,
		Roact.createElement(CategoryCell, {
			text = localized.textHeader,
			subtext = localized.textDescription,
			icon = Assets.Images.TextChatIcon,
			layoutOrder = #items + 1,
			onActivated = function()
				self.props.selectReportCategory(Constants.Category.Text)
			end,
		})
	)
	table.insert(
		items,
		Roact.createElement(Divider, {
			LayoutOrder = #items + 1,
		})
	)

	if not self.props.playerFocusedFlow then
		table.insert(
			items,
			Roact.createElement(CategoryCell, {
				iconComponent = Roact.createElement(GameIcon, {
					gameId = game.GameId,
					iconSize = 33,
					cornerRadius = UDim.new(0, 8),
				}),
				text = localized.experienceHeader,
				subtext = localized.experienceDescription,
				layoutOrder = #items + 1,
				onActivated = function()
					self.props.selectReportCategory(Constants.Category.Experience)
				end,
			})
		)
		table.insert(
			items,
			Roact.createElement(Divider, {
				LayoutOrder = #items + 1,
			})
		)
	end

	table.insert(
		items,
		Roact.createElement(CategoryCell, {
			text = localized.otherHeader,
			subtext = localized.otherDescription,
			icon = Assets.Images.OtherIcon,
			layoutOrder = #items + 1,

			onActivated = function()
				self.props.selectReportCategory(Constants.Category.Other)
			end,
		})
	)
	table.insert(
		items,
		Roact.createElement(Divider, {
			LayoutOrder = #items + 1,
		})
	)

	-- override cell style
	return withStyle(function(style)
		local cellTheme = Cryo.Dictionary.join(style.Theme, CELL_THEME_OVERRIDES)
		local cellStyle = Cryo.Dictionary.join(style, {
			Theme = cellTheme,
		})
		return Roact.createElement(StyleProvider, {
			style = cellStyle,
		}, {
			Roact.createElement(BarOnTopScrollingFrame, {
				Size = UDim2.fromScale(1, 1),
				CanvasSize = UDim2.new(1, 0, 0, canvasHeight),
				scrollingFrameRef = self.scrollingFrameRef,
			}, items),
		})
	end)
end

function ReportCategoryDialog:render()
	return withVoiceState(function(voiceState)
		return withLocalization({
			titleText = "CoreScripts.InGameMenu.Report.MenuTitle",
			dismissText = "CoreScripts.InGameMenu.Report.Done",
			voiceHeader = "CoreScripts.InGameMenu.Report.Category.Header.Voice",
			voiceDescription = "CoreScripts.InGameMenu.Report.Category.Description.Voice",
			textHeader = "CoreScripts.InGameMenu.Report.Category.Header.Text",
			textDescription = "CoreScripts.InGameMenu.Report.Category.Description.Text",
			experienceHeader = "CoreScripts.InGameMenu.Report.Category.Header.Experience",
			experienceDescription = "CoreScripts.InGameMenu.Report.Category.Description.Experience",
			otherHeader = "CoreScripts.InGameMenu.Report.Category.Header.Other",
			otherDescription = "CoreScripts.InGameMenu.Report.Category.Description.Other",
		})(function(localized)
			return Roact.createFragment({
				ModalDialog = Roact.createElement(ModalDialog, {
					visible = self.props.isReportCategoryMenuOpen,
					screenSize = if FFlagTopBarSignalizeScreenSize then self.state.screenSize else self.props.screenSize,
					titleText = localized.titleText,
					contents = self:renderContents(voiceState.voiceEnabled, localized),
					showCloseButton = true,
					onDismiss = self.onCancel,
				}),
			})
		end)
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isReportCategoryMenuOpen = state.report.currentPage == Constants.Page.Category,
		reportType = state.report.reportType,
		targetPlayer = state.report.targetPlayer,
		screenSize = if FFlagTopBarSignalizeScreenSize then nil else state.displayOptions.screenSize,
		playerFocusedFlow = state.report.beginningReportType == Constants.ReportType.Player,
		--TODO: integrate inputType
	}
end, function(dispatch)
	return {
		selectReportCategory = function(category)
			dispatch(SelectReportCategory(category))
		end,
		closeDialog = function()
			dispatch(EndReportFlow())
			SendAnalytics(
				Constants.Analytics.ReportType,
				Constants.Analytics.ReportFlowAbandoned,
				{ source = Constants.Analytics.ReportType }
			)
			SessionUtility.endAbuseReportSession()
		end,
	}
end)(ReportCategoryDialog)
