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
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local InGameMenu = script.Parent.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local MuteAllButton = require(InGameMenu.Components.QuickActions.MuteAllButton)
local MuteSelfButton = require(InGameMenu.Components.QuickActions.MuteSelfButton)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local QuickActionsMenu = Roact.PureComponent:extend("QuickActionsMenu")

local QUICK_ACTIONS_BUTTON_PADDING = 12
local QUICK_ACTIONS_CORNER_RADIUS = 8
local QUICK_ACTIONS_PADDING = 8
local QUICK_ACTIONS_WIDTH = 60

QuickActionsMenu.validateProps = t.strictInterface({
	layoutOrder = t.number,
	startRespawning = t.callback,
	transparencies = t.table,
	voiceEnabled = t.boolean,
	screenshotEnabled = t.boolean,
	closeMenu = t.callback,
})


function QuickActionsMenu:init()
	self.openReportMenu = function()
		TrustAndSafety.openReportMenu()
	end

	self.screenshot = function()
		self.props.closeMenu()
		for _ = 1, 16 do -- wait for menu animation to hide
			RunService.RenderStepped:Wait()
		end
		CoreGui:TakeScreenshot()
	end
end

function QuickActionsMenu:render()
	return withStyle(function(style)
		local reportButtonTransparency, muteAllButtonTransparency, muteSelfButtonTransparency
			if self.props.screenshotEnabled then
				reportButtonTransparency = self.props.transparencies.button3
				muteAllButtonTransparency = self.props.transparencies.button4
				muteSelfButtonTransparency = self.props.transparencies.button5
			else
				reportButtonTransparency = self.props.transparencies.button2
				muteAllButtonTransparency = self.props.transparencies.button3
				muteSelfButtonTransparency = self.props.transparencies.button4
			end
		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = UDim2.new(0, QUICK_ACTIONS_WIDTH, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = style.Theme.UIMuted.Color,
			BackgroundTransparency = self.props.transparencies.frame,
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
				iconTransparency = muteSelfButtonTransparency,
				backgroundTransparency = muteSelfButtonTransparency,
				backgroundColor = style.Theme.BackgroundUIDefault,
				iconSize = IconSize.Medium,
				layoutOrder = 1,
			}) or nil,
			MuteAllButton = self.props.voiceEnabled and Roact.createElement(MuteAllButton, {
				iconTransparency = muteAllButtonTransparency,
				backgroundTransparency = muteAllButtonTransparency,
				backgroundColor = style.Theme.BackgroundUIDefault,
				iconSize = IconSize.Medium,
				layoutOrder = 2,
			}) or nil,
			ReportButton = Roact.createElement(IconButton, {
				iconTransparency = reportButtonTransparency,
				backgroundTransparency = reportButtonTransparency,
				backgroundColor = style.Theme.BackgroundUIDefault,
				showBackground = true,
				layoutOrder = 3,
				icon = Assets.Images.ReportIcon,
				iconSize = IconSize.Medium,
				onActivated = self.openReportMenu,
			}),
			ScreenshotButton = self.props.screenshotEnabled and Roact.createElement(IconButton, {
				iconTransparency = self.props.transparencies.button2,
				backgroundTransparency = self.props.transparencies.button2,
				backgroundColor = style.Theme.BackgroundUIDefault,
				showBackground = true,
				layoutOrder = 4,
				iconSize = IconSize.Medium,
				onActivated = self.screenshot,
				icon = Assets.Images.ScreenshotIcon,
			}) or nil,
			RespawnButton = Roact.createElement(IconButton, {
				iconTransparency = self.props.transparencies.button1,
				backgroundTransparency = self.props.transparencies.button1,
				backgroundColor = style.Theme.BackgroundUIDefault,
				showBackground = true,
				layoutOrder = 5,
				onActivated = self.props.startRespawning,
				iconSize = IconSize.Medium,
				icon = Assets.Images.RespawnIcon,
			}),
		})
	end)
end

local function mapDispatchToProps(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(QuickActionsMenu)
