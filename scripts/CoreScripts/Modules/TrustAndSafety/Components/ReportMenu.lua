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
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)

local CloseReportMenu = require(TnsModule.Actions.CloseReportMenu)
local OpenReportDialog = require(TnsModule.Actions.OpenReportDialog)
local Assets = require(TnsModule.Resources.Assets)
local Constants = require(TnsModule.Resources.Constants)
local ModalDialog = require(TnsModule.Components.ModalDialog)
local GameCell = require(TnsModule.Components.GameCell)

local Colors = UIBlox.App.Style.Colors
local IconButton = UIBlox.App.Button.IconButton
local StyleProvider = UIBlox.Core.Style.Provider
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
	closeDialog = t.callback,
	openReportDialog = t.callback,
})

function ReportMenu:renderTitleBar()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		CloseButton = Roact.createElement(IconButton, {
			anchorPoint = Vector2.new(0, 0.5),
			icon = Assets.Images.CloseIcon.Image,
			iconSize = Assets.Images.CloseIcon.IconSize,
			position = UDim2.new(0, 24, 0.5, 0),
			onActivated = self.props.closeDialog,
		}),
	})
end

function ReportMenu:getSortedPlayerList()
	local list = {}
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= Players.LocalPlayer then
			table.insert(list, {
				UserId = player.UserId,
				Name = player.Name,
				DisplayName = player.DisplayName,
			})
		end
	end
	-- sort by display name in alphabetical order
	local sorted = Cryo.List.sort(list, function (p1, p2)
		return p1.DisplayName:lower() < p2.DisplayName:lower()
	end)
	return sorted
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
	table.insert(items, Roact.createElement(GameCell, {
		gameId = game.GameId,
		layoutOrder = #items + 1,
		onActivated = function()
			props.openReportDialog(Constants.ReportType.Game, nil)
		end,
	}))
	local canvasHeight = CELL_HEIGHT
	-- players
	local sortedPlayers = self:getSortedPlayerList()
	for _, player in pairs(sortedPlayers) do
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
				Size = UDim2.new(1, 0, 1, 0),
				CanvasSize = UDim2.new(1, 0, 0, canvasHeight),
			}, items)
		})
	end)
end

function ReportMenu:render()
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Report.MenuTitle",
	})(function(localized)
		return Roact.createFragment({
			ModalDialog = Roact.createElement(ModalDialog, {
				visible = self.props.isReportMenuOpen,
				titleText = localized.titleText,
				titleBar = self:renderTitleBar(),
				contents = self:renderContents(),
				onDismiss = self.props.closeDialog,
			}),
			--TODO: integrate FocusHandler
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isReportMenuOpen = state.report.isReportMenuOpen,
		--TODO: integrate inputType
	}
end, function(dispatch)
	return {
		closeDialog = function()
			dispatch(CloseReportMenu())
		end,
		openReportDialog = function(reportType, targetPlayer)
			--TODO: open report dialog
			print("openReportDialog: " .. reportType)
		end,
	}
end)(ReportMenu)
