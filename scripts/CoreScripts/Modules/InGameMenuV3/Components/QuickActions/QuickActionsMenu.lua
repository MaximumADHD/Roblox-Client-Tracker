local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local withStyle = UIBlox.Core.Style.withStyle

local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local InGameMenu = script.Parent.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local MuteAllButton = require(InGameMenu.Components.QuickActions.MuteAllButton)
local MuteSelfButton = require(InGameMenu.Components.QuickActions.MuteSelfButton)

local QuickActionsMenu = Roact.PureComponent:extend("QuickActionsMenu")

local QUICK_ACTIONS_BUTTON_PADDING = 12
local QUICK_ACTIONS_CORNER_RADIUS = 8
local QUICK_ACTIONS_PADDING = 8
local QUICK_ACTIONS_WIDTH = 60

QuickActionsMenu.validateProps = t.strictInterface({
	closeMenu = t.callback,
	dispatchOpenReportDialog = t.callback,
	layoutOrder = t.number,
	startRespawning = t.callback,
	voiceEnabled = t.boolean,
})


function QuickActionsMenu:init()
	self.openReportDialog = function()
		-- TODO new report dialog
		self.props.dispatchOpenReportDialog()
	end

	self.screenshot = function()
		self.props.closeMenu()
		for _ = 1, 2 do -- wait for top-bar to update
			RunService.RenderStepped:Wait()
		end
		CoreGui:TakeScreenshot()
	end
end

function QuickActionsMenu:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = UDim2.new(0, QUICK_ACTIONS_WIDTH, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
			BackgroundTransparency = style.Theme.BackgroundOnHover.Transparency,
		}, {
			padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, QUICK_ACTIONS_PADDING),
				PaddingBottom = UDim.new(0, QUICK_ACTIONS_PADDING),
				PaddingLeft = UDim.new(0, QUICK_ACTIONS_PADDING),
				PaddingRight = UDim.new(0, QUICK_ACTIONS_PADDING),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, QUICK_ACTIONS_CORNER_RADIUS),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, QUICK_ACTIONS_BUTTON_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			MuteSelfButton = self.props.voiceEnabled and Roact.createElement(MuteSelfButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 1,
			}) or nil,
			MuteAllButton = self.props.voiceEnabled and Roact.createElement(MuteAllButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 2,
			}) or nil,
			ReportButton = Roact.createElement(IconButton, {
				showBackground = true,
				layoutOrder = 3,
				icon = Assets.Images.ReportIcon,
				iconSize = IconSize.Medium,
				onActivated = self.openReportDialog,
			}),
			ScreenshotButton = Roact.createElement(IconButton, {
				showBackground = true,
				layoutOrder = 4,
				iconSize = IconSize.Medium,
				onActivated = self.screenshot,
				icon = Assets.Images.ScreenshotIcon,
			}),
			RespawnButton = Roact.createElement(IconButton, {
				showBackground = true,
				layoutOrder = 5,
				onActivated = self.props.startRespawning,
				iconSize = IconSize.Medium,
				icon = Assets.Images.RespawnIcon,
			}),
		})
	end)
end

local function mapStateToProps(state, _)
	local voiceEnabled = false
	if state.voiceState then
		voiceEnabled = state.voiceState.voiceEnabled or false
	end
	return {
		voiceEnabled = voiceEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		dispatchOpenReportDialog = function(userId, userName)
			dispatch(OpenReportDialog(userId, userName))
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(QuickActionsMenu)
