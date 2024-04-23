--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Cryo = require(CorePackages.Cryo)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local BarOnTopScrollingFrame = require(Dependencies.BarOnTopScrollingFrame)
local Divider = require(Dependencies.Divider)
local PlayerCell = require(Dependencies.PlayerCell)
local PlayerSearchPredicate = require(Dependencies.PlayerSearchPredicate)
local SearchBar = require(Dependencies.SearchBar)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)

local NavigateBack = require(TnsModule.Actions.NavigateBack)
local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local SelectReportListing = require(TnsModule.Actions.SelectReportListing)
local Assets = require(TnsModule.Resources.Assets)
local Constants = require(TnsModule.Resources.Constants)
local ModalDialog = require(TnsModule.Components.ModalDialog)
local GameCell = require(TnsModule.Components.GameCell)
local SendAnalytics = require(TnsModule.Utility.SendAnalytics)
local SessionUtility = require(TnsModule.Utility.SessionUtility)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local React = require(CorePackages.Packages.React)

local Colors = UIBlox.App.Style.Colors

local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local StyleProvider = UIBlox.Core.Style.Provider
local UIBloxImages = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Core.Style.withStyle

local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)
local isPlayerVerified = VerifiedBadges.isPlayerVerified

local GetFFlagUIBloxUseNewHeaderBar =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxUseNewHeaderBar
local makeBackButton = require(CorePackages.Workspace.Packages.AppHeaderBar).makeBackButton

local CELL_THEME_OVERRIDES = {
	-- transparent background for cell
	BackgroundDefault = {
		Color = Colors.Flint,
		Transparency = 1,
	},
}
local CELL_HEIGHT = 72

local ReportMenu = Roact.PureComponent:extend("ReportMenu")


local VoiceIndicatorWrapper = function(props)
	local voiceServiceState = React.useContext(VoiceStateContext.Context)
	if not voiceServiceState.voiceEnabled then
		return nil
	end
	return React.createElement(VoiceIndicator, Cryo.Dictionary.join(props, {}))
end

ReportMenu.validateProps = t.strictInterface({
	isReportMenuOpen = t.boolean,
	screenSize = t.Vector2,
	closeDialog = t.callback,
	openReportDialog = t.callback,
	canNavigateBack = t.boolean,
	reportCategory = t.optional(t.string),
	navigateBack = t.optional(t.callback),
})

function ReportMenu:init()
	self.scrollingFrameRef = Roact.createRef()

	self.state = {
		isFilterMode = false,
		filterText = nil,
	}
	-- Press the "Search" button.
	self.onSearch = function()
		self:setState({
			isFilterMode = true,
			filterText = "",
		})
	end
	-- Change the filter text.
	self.onTextChanged = function(text)
		self:setState({
			filterText = text,
		})
	end
	-- Press the "Canel" button.
	self.onCancel = function()
		self:setState({
			isFilterMode = false,
			filterText = Roact.None,
		})
	end
	-- Press Header Title
	self.scrollToTop = function()
		local scrollingFrame = self.scrollingFrameRef:getValue()
		if scrollingFrame then
			scrollingFrame:scrollToTop()
		end
	end
	-- Press the Back button
	self.navigateBack = function()
		self.props.navigateBack(self.state.filterText ~= nil)
	end
	-- Close the dialog (press transparent background)
	self.closeDialog = function()
		self.props.closeDialog(self.state.filterText ~= nil)
	end

	self.layoutBindings = {}
	self.getLayoutBinding = function(id, layoutOrder)
		local layoutBinding = self.layoutBindings[id]
		if not layoutBinding then
			local valueBinding, setLayout = Roact.createBinding(layoutOrder)
			layoutBinding = {
				valueBinding = valueBinding,
				setValue = setLayout,
				value = layoutOrder,
			}
			self.layoutBindings[id] = layoutBinding
		end

		if layoutBinding.value ~= layoutOrder then
			layoutBinding.value = layoutOrder
			layoutBinding.setValue(layoutOrder)
		end

		return layoutBinding.valueBinding
	end

	self.playerIsVoiceActive = function(userId: number)
		return VoiceChatServiceManager.participants[tostring(userId)] ~= nil
	end

	self.sortedUserIds = {}
end

local function sortPlayers(p1, p2)
	return p1.DisplayName:lower() < p2.DisplayName:lower()
end

function ReportMenu:getPlayerList()
	local list = {}
	local players = Cryo.List.sort(Players:GetPlayers(), sortPlayers)

	for _, player in ipairs(players) do
		if player == Players.LocalPlayer then
			-- Don't show the user him/herself.
		elseif not self.state.isFilterMode then
			-- Normal mode: just show
			table.insert(list, player)
		elseif PlayerSearchPredicate(self.state.filterText, player.Name, player.DisplayName) then
			-- Filter mode: show if predicate returns true
			table.insert(list, player)
		end
	end
	-- sort by display name in alphabetical order
	local sorted = Cryo.List.sort(list, function (p1, p2)
		return p1.DisplayName:lower() < p2.DisplayName:lower()
	end)
	return sorted
end


local categoryTitles = {
	[Constants.Category.Voice] = "CoreScripts.InGameMenu.Report.Title.VoiceChat",
	[Constants.Category.Text] = "CoreScripts.InGameMenu.Report.Title.TextChat",
	[Constants.Category.Other] = "CoreScripts.InGameMenu.Report.Title.Other",
}

function ReportMenu:categoryTitle()
	return categoryTitles[self.props.reportCategory] or "CoreScripts.InGameMenu.Report.MenuTitle"
end

function ReportMenu:renderHeaderBar()

	local leftButton;
	if self.props.canNavigateBack then
		leftButton = if GetFFlagUIBloxUseNewHeaderBar()
			then makeBackButton(self.navigateBack)
			else HeaderBar.renderLeft.backButton(self.navigateBack)
	else
		leftButton = function()
			return Roact.createElement(IconButton, {
				iconSize = IconSize.Medium,
				icon = UIBloxImages["icons/navigation/close"],
				onActivated = self.closeDialog,
			})
		end
	end

	if not self.state.isFilterMode then
		return withLocalization({
			titleText = self:categoryTitle(),
		})(function(localized)
			return Roact.createElement(HeaderBar, {
				backgroundTransparency = 1,
				barHeight = 48,
				renderLeft = leftButton,
				renderRight = function()
					return Roact.createElement(IconButton, {
						iconSize = IconSize.Medium,
						icon = UIBloxImages["icons/common/search"],
						onActivated = self.onSearch,
					})
				end,
				onHeaderActivated = self.scrollToTop,
				title = localized.titleText,
			})
		end)
	else
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(24, 6),	-- centered
			Size = UDim2.new(1, -48, 1, -12),
		}, {
			Roact.createElement(SearchBar, {
				size = UDim2.fromScale(1, 1),
				text = self.state.filterText,
				autoCaptureFocus = true,
				onTextChanged = self.onTextChanged,
				onCancelled = self.onCancel,
			})
		})
	end
end

function ReportMenu:renderContents()
	local props = self.props
	local voiceReportFlow = self.props.reportCategory == Constants.Category.Voice;

	local itemsLen = 0
	local items = {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}
	-- game
	if not self.state.isFilterMode and self.props.reportCategory == Constants.Category.None then
		-- Don't show "Report Experience" in filter mode.
		items["GameCell"] =  Roact.createElement(GameCell, {
			gameId = game.GameId,
			layoutOrder = self.getLayoutBinding("GameCell", itemsLen),
			onActivated = function()
				props.openReportDialog(Constants.ReportType.Place, nil)
			end,
		})
	end
	itemsLen += 1;
	local canvasHeight = CELL_HEIGHT
	-- players
	local players = self:getPlayerList()
	local voiceActiveUsers = {}
	if voiceReportFlow then
		voiceActiveUsers = VoiceChatServiceManager:getRecentUsersInteractionData()
	end

	self.sortedUserIds = {}

	for idx, player in pairs(players) do
		local pid = tostring(player.UserId);

		if voiceReportFlow and not voiceActiveUsers[tostring(player.UserId)] then
			continue
		end
		table.insert(self.sortedUserIds, player.UserId)

		local memoKey = 0;
		if voiceReportFlow then memoKey += 1 end
		if self.props.isReportMenuOpen  then memoKey += 2 end
		items["Divider"..pid] = Roact.createElement(Divider, {
			LayoutOrder = self.getLayoutBinding("Divider"..pid, itemsLen),
			Size = UDim2.new(1, 0, 0, 1),
		})
		itemsLen += 1;

		items["PlayerCell"..pid] = Roact.createElement(PlayerCell, {
			userId = player.UserId,
			username = player.Name,
			displayName = player.DisplayName,
			hasVerifiedBadge = isPlayerVerified(player),
			isOnline = true,
			isSelected = false,
			LayoutOrder = self.getLayoutBinding("PlayerCell"..pid, itemsLen),
			onActivated = function()
				props.openReportDialog(Constants.ReportType.Player, player)
			end,
			memoKey = memoKey,
		}, {
			VoiceIndicator = voiceReportFlow and self.props.isReportMenuOpen and Roact.createElement(VoiceIndicatorWrapper, {
				userId = tostring(player.UserId),
				hideOnError = true,
				iconStyle = "SpeakerLight",
				size = UDim2.fromOffset(36, 36),
				onClicked = function()
					VoiceChatServiceManager:ToggleMutePlayer(player.UserId, VoiceConstants.VOICE_CONTEXT_TYPE.REPORT_MENU)
				end,
			}) or nil,
		})
		itemsLen += 1;

		canvasHeight += CELL_HEIGHT + 1
	end
	items["DividerEnd"] = Roact.createElement(Divider, {
		LayoutOrder = self.getLayoutBinding("DividerEnd", itemsLen),
		Size = UDim2.new(1, 0, 0, 1),
	})
	itemsLen += 1;

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
			}, items)
		})
	end)
end

function ReportMenu:render()
	local backButton = self.props.reportCategory ~= nil;

	return Roact.createFragment({
		ModalDialog = Roact.createElement(ModalDialog, {
			visible = self.props.isReportMenuOpen,
			screenSize = self.props.screenSize,
			headerBar = self:renderHeaderBar(),
			showCloseButton = not backButton,
			contents = self:renderContents(),
			onDismiss = self.closeDialog,
		}),
		--TODO: integrate FocusHandler
	})
end

function ReportMenu:didUpdate(prevProps)
	if prevProps.isReportMenuOpen and not self.props.isReportMenuOpen then
		-- clear the states
		self:setState({
			isFilterMode = false,
			filterText = Roact.None,
		})
		local scrollingFrame = self.scrollingFrameRef:getValue()
		if scrollingFrame and scrollingFrame.CanvasPosition.Y > 0 then
			scrollingFrame.CanvasPosition = Vector2.new(0, 0)
		end
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isReportMenuOpen = state.report.currentPage == Constants.Page.Listing,
		screenSize = state.displayOptions.screenSize,
		reportCategory = state.report.reportCategory,
		canNavigateBack = #state.report.history > 1,
		--TODO: integrate inputType
	}
end, function(dispatch)
	return {
		navigateBack = function(filterTextChanged)
			dispatch(NavigateBack())
			SendAnalytics(
				Constants.Page.Listing,
				Constants.Analytics.ReportFlowBack,
				{
					source = Constants.Page.Listing,
					filterTextChanged = filterTextChanged
				}
			)
		end,
		closeDialog = function(filterTextChanged)
			dispatch(EndReportFlow())
			SendAnalytics(
				Constants.Page.Listing,
				Constants.Analytics.ReportFlowAbandoned,
				{
					source = Constants.Page.Listing,
					filterTextChanged = filterTextChanged
				}
			)
			SessionUtility.endAbuseReportSession()
		end,
		openReportDialog = function(reportType, targetPlayer, sortedUserIds)
			dispatch(SelectReportListing(reportType, targetPlayer, sortedUserIds))
			SendAnalytics(
				Constants.Page.Listing,
				Constants.Analytics.ReportFlowAdvance,
				{
					source = Constants.Page.Listing,
					reportType = reportType
				}
			)
		end,
	}
end)(ReportMenu)
