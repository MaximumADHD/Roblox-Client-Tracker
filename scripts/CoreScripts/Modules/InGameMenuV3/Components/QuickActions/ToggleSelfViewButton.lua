--[[
	This Quick Action UI component will toggle on/off the CoreGui Self View UI.
]]
local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)

local IconButton = UIBlox.App.Button.IconButton
local withHoverTooltip = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection
local Images = UIBlox.App.ImageSet.Images

local Roact = InGameMenuDependencies.Roact

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Constants = require(InGameMenu.Resources.Constants)

local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local selfViewVisibilityUpdatedSignal = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)
local SelfViewAPI = require(RobloxGui.Modules.SelfView.publicApi)

local SELF_VIEW_IMAGE = Images["icons/controls/selfie"]
local SELF_VIEW_OFF_IMAGE = Images["icons/controls/selfieOff"]

local ToggleSelfViewButton = Roact.PureComponent:extend("ToggleSelfViewButton")

ToggleSelfViewButton.validateProps = t.interface({
	layoutOrder = t.integer,
	iconTransparency = t.optional(t.union(t.number, t.table)),
	backgroundTransparency = t.optional(t.union(t.number, t.table)),
	backgroundColor = t.optional(t.table),
})

function ToggleSelfViewButton:init()
	self:setState({
		selfViewEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView),
		selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible(),
	})

	self.onActivated = function()
		toggleSelfViewSignal:fire()
		self:setState({
			selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible(),
		})
	end

	self.selfViewVisibilityUpdatedSignal = selfViewVisibilityUpdatedSignal:connect(function()
		self:setState({
			selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
		})
	end)

	self.onCoreGuiChanged = function()
		local coreGuiState = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		if self.state.showSelfView ~= coreGuiState then
			self:setState({
				selfViewEnabled = coreGuiState
			})
		end
	end
end

function ToggleSelfViewButton:render()
	return withLocalization({
		selfView = "CoreScripts.InGameMenu.QuickActions.SelfView",
	})(function(localized)
		self.selfView = localized.selfView
		return withHoverTooltip({
			headerText = localized.selfView,
			textAlignment = Enum.TextXAlignment.Center,
		}, {
			guiTarget = CoreGui,
			DisplayOrder = Constants.DisplayOrder.Tooltips,
		}, function(triggerPointChanged, onStateChanged)
			return Roact.createElement(IconButton, {
				iconTransparency = self.props.iconTransparency,
				backgroundTransparency = self.props.backgroundTransparency,
				backgroundColor = self.props.backgroundColor,
				showBackground = true,
				layoutOrder = self.props.layoutOrder,
				icon = self.state.selfViewOpen and SELF_VIEW_IMAGE or SELF_VIEW_OFF_IMAGE,
				iconSize = self.props.iconSize,
				onActivated = self.onActivated,
				onStateChanged = onStateChanged,
				buttonRef = self.props.buttonRef,
				[Roact.Change.AbsoluteSize] = triggerPointChanged,
				onAbsolutePositionChanged = triggerPointChanged,
			}, {
				SelfViewChangedEvent = Roact.createElement(ExternalEventConnection, {
					event = StarterGui.CoreGuiChangedSignal,
					callback = self.onCoreGuiChanged,
				}),
			})
		end)
	end)
end

function ToggleSelfViewButton:willUnmount()
	if self.selfViewVisibilityUpdatedSignal then
		self.selfViewVisibilityUpdatedSignal:disconnect()
		self.selfViewVisibilityUpdatedSignal = nil
	end
end

return ToggleSelfViewButton