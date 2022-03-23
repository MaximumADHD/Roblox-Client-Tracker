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
local GetFFlagEnableVoiceChatNewMuteAll = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatNewMuteAll)
local GetFFlagEnableVoiceChatNewPlayersList = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatNewPlayersList)

local InGameMenu = script.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local MuteAllButton = require(InGameMenu.Components.QuickActions.MuteAllButton)
local MuteSelfButton = require(InGameMenu.Components.QuickActions.MuteSelfButton)

local QuickActions = Roact.PureComponent:extend("QuickActions")

local QUICK_ACTION_BUTTON_PADDING = 12
local QUICK_ACTION_CORNER_RADIUS = 8
local QUICK_ACTION_PADDING = 8
local QUICK_ACTION_WIDTH = 60
local QUICK_ACTION_X_OFFSET = -104

QuickActions.validateProps = t.strictInterface({
	closeMenu = t.callback,
	dispatchOpenReportDialog = t.callback,
	startRespawning = t.callback,
	visible = t.boolean,
})

function QuickActions:init()
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

function QuickActions:render()
	local shouldShowVoiceChatButtons = GetFFlagEnableVoiceChatNewMuteAll() and self.props.voiceChatEnabled
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, QUICK_ACTION_WIDTH, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.new(1, QUICK_ACTION_X_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
			BackgroundTransparency = style.Theme.BackgroundOnHover.Transparency,
			Visible = self.props.visible,
		}, {
			padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, QUICK_ACTION_PADDING),
				PaddingBottom = UDim.new(0, QUICK_ACTION_PADDING),
				PaddingLeft = UDim.new(0, QUICK_ACTION_PADDING),
				PaddingRight = UDim.new(0, QUICK_ACTION_PADDING),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, QUICK_ACTION_CORNER_RADIUS),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, QUICK_ACTION_BUTTON_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			MuteSelfButton = shouldShowVoiceChatButtons and Roact.createElement(MuteSelfButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 1,
			}) or nil,
			MuteAllButton = shouldShowVoiceChatButtons and Roact.createElement(MuteAllButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 2,
			}) or nil,
			ReportButton = Roact.createElement(IconButton, {
				layoutOrder = 3,
				icon = Assets.Images.ReportIcon,
				iconSize = IconSize.Medium,
				onActivated = self.openReportDialog,
			}),
			ScreenshotButton = Roact.createElement(IconButton, {
				layoutOrder = 4,
				iconSize = IconSize.Medium,
				onActivated = self.screenshot,
				icon = Assets.Images.ScreenshotIcon,
			}),
			RespawnButton = Roact.createElement(IconButton, {
				layoutOrder = 5,
				onActivated = self.props.startRespawning,
				iconSize = IconSize.Medium,
				icon = Assets.Images.RespawnIcon,
			}),
		})
	end)
end

local function mapStateToProps(state, _)
	local voiceChatEnabled = nil
	if GetFFlagEnableVoiceChatNewPlayersList() then
		voiceChatEnabled = state.voiceState.voiceEnabled
	end
	return {
		visible = state.isMenuOpen,
		voiceChatEnabled = voiceChatEnabled,
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

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(QuickActions)
