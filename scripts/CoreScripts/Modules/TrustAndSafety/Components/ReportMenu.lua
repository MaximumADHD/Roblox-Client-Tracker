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

local CloseReportMenu = require(TnsModule.Actions.CloseReportMenu)
local OpenReportDialog = require(TnsModule.Actions.OpenReportDialog)
local OpenReportMenu = require(TnsModule.Actions.OpenReportMenu)
local Assets = require(TnsModule.Resources.Assets)
local Constants = require(TnsModule.Resources.Constants)
local ModalDialog = require(TnsModule.Components.ModalDialog)
local GameCell = require(TnsModule.Components.GameCell)

local Colors = UIBlox.App.Style.Colors

local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local StyleProvider = UIBlox.Core.Style.Provider
local UIBloxImages = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Core.Style.withStyle

local CELL_THEME_OVERRIDES = {
	-- transparent background for cell
	BackgroundDefault = {
		Color = Colors.Flint,
		Transparency = 1,
	},
}
local CELL_HEIGHT = 72

local ReportMenu = Roact.PureComponent:extend("ReportMenu")

ReportMenu.validateProps = t.strictInterface({
	isReportMenuOpen = t.boolean,
	screenSize = t.Vector2,
	closeDialog = t.callback,
	openReportDialog = t.callback,
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
end

function ReportMenu:getPlayerList()
	local list = {}
	for _, player in ipairs(Players:GetPlayers()) do
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

function ReportMenu:renderHeaderBar()
	if not self.state.isFilterMode then
		return withLocalization({
			titleText = "CoreScripts.InGameMenu.Report.MenuTitle",
		})(function(localized)
			return Roact.createElement(HeaderBar, {
				backgroundTransparency = 1,
				barHeight = 48,
				renderLeft = function()
					return Roact.createElement(IconButton, {
						iconSize = IconSize.Medium,
						icon = UIBloxImages["icons/navigation/close"],
						onActivated = self.props.closeDialog,
					})
				end,
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
	local items = {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}
	-- game
	if not self.state.isFilterMode then
		-- Don't show "Report Experience" in filter mode.
		table.insert(items, Roact.createElement(GameCell, {
			gameId = game.GameId,
			layoutOrder = #items + 1,
			onActivated = function()
				props.openReportDialog(Constants.ReportType.Place, nil)
			end,
		}))
	end
	local canvasHeight = CELL_HEIGHT
	-- players
	local players = self:getPlayerList()
	for _, player in pairs(players) do
		table.insert(items, Roact.createElement(Divider, {
			LayoutOrder = #items + 1,
			Size = UDim2.new(1, 0, 0, 1),
		}))
		table.insert(items, Roact.createElement(PlayerCell, {
			userId = player.UserId,
			username = player.Name,
			displayName = player.DisplayName,
			isOnline = true,
			isSelected = false,
			LayoutOrder = #items + 1,
			onActivated = function()
				props.openReportDialog(Constants.ReportType.Player, player)
			end,
		}))
		canvasHeight += CELL_HEIGHT + 1
	end
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
	return Roact.createFragment({
		ModalDialog = Roact.createElement(ModalDialog, {
			visible = self.props.isReportMenuOpen,
			screenSize = self.props.screenSize,
			headerBar = self:renderHeaderBar(),
			showCloseButton = true,
			contents = self:renderContents(),
			onDismiss = self.props.closeDialog,
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
		isReportMenuOpen = state.report.isReportMenuOpen,
		screenSize = state.displayOptions.screenSize,
		--TODO: integrate inputType
	}
end, function(dispatch)
	return {
		closeDialog = function()
			dispatch(CloseReportMenu())
		end,
		openReportDialog = function(reportType, targetPlayer)
			dispatch(OpenReportDialog(reportType, targetPlayer, function()
				dispatch(OpenReportMenu())
			end))
		end,
	}
end)(ReportMenu)
