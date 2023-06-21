--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)
local PlayerLabel = require(InGameMenu.Components.PlayerLabel)
local Divider = require(InGameMenu.Components.Divider)
local BarOnTopScrollingFrame = require(InGameMenu.Components.BarOnTopScrollingFrame)
local GameLabel = require(script.Parent.GameLabel)
local ReportButton = require(script.Parent.ReportButton)
local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)

local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local ReportList = Roact.PureComponent:extend("ReportList")
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

game:DefineFastFlag("IGMReportListMissingBottomEntry", false)

local DIVIDER_HEIGHT = 1
local DIVIDER_INDENT = 80

local GAME_LABEL_HEIGHT = 70

local PLAYER_LABEL_HEIGHT = 70

ReportList.validateProps = t.strictInterface({
	placeName = t.string,
	players = t.array(t.union(t.instanceIsA("Player"), t.strictInterface({
		UserId = t.integer,
		Name = t.string
	}))),
	canCaptureFocus = t.optional(t.boolean),
	currentPage = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.string) or nil,
	currentZone = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,
})

local function sortPlayers(p1, p2)
	return p1.Name:lower() < p2.Name:lower()
end

function ReportList:init()
	self.reportGameRef = Roact.createRef()
end

function ReportList:renderListEntries()
	local sortedPlayers = Cryo.List.sort(self.props.players, sortPlayers)

	local playersCount = #sortedPlayers
	local layoutOrder = 3

	local listComponents = {}

	listComponents.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	})

	if GetFFlagIGMGamepadSelectionHistory() then
		listComponents.FocusHandler = Roact.createElement(FocusHandler, {
			isFocused = self.props.canCaptureFocus,
			shouldForgetPreviousSelection = self.props.currentPage == Constants.MainPagePageKey or self.props.currentZone == 0,
			didFocus = function(previousSelection)
				GuiService.SelectedCoreObject = previousSelection or self.reportGameRef:getValue()
			end,
		})
	end

	listComponents.GameReport = Roact.createElement(GameLabel, {
		gameId = game.GameId,
		gameName = self.props.placeName,
		LayoutOrder = 1,
		[Roact.Ref] = self.reportGameRef,
		onActivated = function()
			TrustAndSafety.openReportDialogForPlace(Constants.AnalyticsInGameMenuName)
		end
	}, {
		ReportButton = Roact.createElement(ReportButton, {
			LayoutOrder = 1,
		})
	})

	if #sortedPlayers > 0 then
		listComponents["divider_" .. layoutOrder] = Roact.createElement(Divider, {
			LayoutOrder = 2,
			Size = UDim2.new(1, -DIVIDER_INDENT, 0, DIVIDER_HEIGHT)
		})
	end

	for index, player in pairs(sortedPlayers) do
		listComponents["player_"..index] = Roact.createElement(PlayerLabel, {
			username = player.Name,
			userId = player.UserId,
			isOnline = true,
			isSelected = false,
			LayoutOrder = layoutOrder,

			onActivated = function()
				TrustAndSafety.openReportDialogForPlayer(player, Constants.AnalyticsInGameMenuName)
			end,
		}, {
			ReportButton = Roact.createElement(ReportButton, {
				userId = player.UserId,
				userName = player.Name,
				LayoutOrder = 1,
			})
		})

		layoutOrder = layoutOrder + 1

		if index < playersCount then
			listComponents["divider_" .. layoutOrder] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, DIVIDER_HEIGHT)
			})

			layoutOrder = layoutOrder + 1
		end
	end

	return listComponents
end

function ReportList:didUpdate(prevProps, prevState)
	if not GetFFlagIGMGamepadSelectionHistory() then
		-- Only highlight buttons when Gamepad connected
		if self.props.canCaptureFocus and not prevProps.canCaptureFocus then
			GuiService.SelectedCoreObject = self.reportGameRef:getValue()
		end
	end
end

function ReportList:render()
	local canvasSize = nil

	if game:GetFastFlag("IGMReportListMissingBottomEntry") then
		canvasSize = GAME_LABEL_HEIGHT + #self.props.players * (PLAYER_LABEL_HEIGHT + DIVIDER_HEIGHT)
	else
		canvasSize = #self.props.players * (PLAYER_LABEL_HEIGHT + 1)
	end

	return Roact.createElement(BarOnTopScrollingFrame, {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(1, 0, 0, canvasSize),
	}, self:renderListEntries())
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local placeName = state.gameInfo.name

		local canCaptureFocus = state.menuPage == "Report"
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not (state.report.dialogOpen
				or state.report.reportSentOpen
				or state.respawn.dialogOpen)
			and state.currentZone == 1

		return {
			placeName = placeName,
			canCaptureFocus = canCaptureFocus,
			currentPage = (GetFFlagIGMGamepadSelectionHistory() or nil) and state.menuPage,
			currentZone = (GetFFlagIGMGamepadSelectionHistory() or nil) and state.currentZone,
		}
	end
)(ReportList)
