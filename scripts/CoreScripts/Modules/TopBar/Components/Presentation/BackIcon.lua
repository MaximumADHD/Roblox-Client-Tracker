-- Create a new top bar icon: “BackIcon.lua” for Immersive Ads back button AB test
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VRService = game:GetService("VRService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local IconButton = require(script.Parent.IconButton)

local TopBar = script.Parent.Parent.Parent
local Constants = require(TopBar.Constants)
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local SetKeepOutArea = require(TopBar.Actions.SetKeepOutArea)
local RemoveKeepOutArea = require(TopBar.Actions.RemoveKeepOutArea)

local BackButtonController = require(RobloxGui.Modules.Settings.BackButtonController)

local GetFStringTeleportBackButtonTopBarIXPCustomFieldName =
	require(RobloxGui.Modules.Flags.GetFStringTeleportBackButtonTopBarIXPCustomFieldName)

local BackIcon = Roact.PureComponent:extend("BackIcon")

local BACK_ICON_AREA_WIDTH = 32

local ICON_SIZE = 20

BackIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,

	topBarEnabled = t.boolean,
	backEnabled = t.boolean,
	setKeepOutArea = t.callback,
	removeKeepOutArea = t.callback,
})

function BackIcon:init()
	self.rootRef = Roact.createRef()
	self.backIconActivated = function()
		BackButtonController.initiateBackButtonTeleport((Enum :: any).AdTeleportMethod.UIBackButton)
	end
	self:setState({
		tooltipActive = false,
		respondToHover = false,
		text = nil,
	})
end

function BackIcon:didMount()
	task.spawn(function()
		self:setState({
			text = BackButtonController.getTooltipTextTimeout(),
			tooltipActive = true,
		})
		task.delay(5, function()
			self:setState({
				tooltipActive = false,
				respondToHover = true,
			})
		end)
	end)
end

function BackIcon:render()
	local backEnabled = self.props.topBarEnabled
		and self.props.backEnabled
		and not TenFootInterface:IsEnabled()
		and not VRService.VREnabled
		and self.state.text ~= nil
	-- this tooltip displays the name of the place that the user will return to. It is activated for 5s on game load, and also on hover
	local tooltipProps = {
		bodyText = self.state.text,
	}
	local tooltipOptions = {
		preferredOrientation = TooltipOrientation.Bottom,
		guiTarget = CoreGui,
		triggerPointName = "TriggerPoint",
		active = self.state.tooltipActive and backEnabled,
		DisplayOrder = -1,
	}

	local onAreaChanged = function(rbx)
		if backEnabled and rbx then
			self.props.setKeepOutArea(Constants.BackIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
		else
			self.props.removeKeepOutArea(Constants.BackIconKeepOutAreaId)
		end
	end

	if FFlagEnableChromeBackwardsSignalAPI then
		if self.rootRef.current then
			onAreaChanged(self.rootRef.current)
		end
	end

	return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
		local onChange = function (rbx)
			onAreaChanged(rbx)
			triggerPointChanged(rbx)
		end

		return withStyle(function(style)
			return Roact.createElement("TextButton", {
				Text = "",
				Visible = backEnabled,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, BACK_ICON_AREA_WIDTH, 1, 0),
				LayoutOrder = self.props.layoutOrder,
				Selectable = false,
				[Roact.Change.AbsoluteSize] = if FFlagEnableChromeBackwardsSignalAPI then onChange else triggerPointChanged,
				[Roact.Change.AbsolutePosition] = if FFlagEnableChromeBackwardsSignalAPI then onChange else triggerPointChanged,
				[Roact.Ref] = self.rootRef,
			}, {
				Background = Roact.createElement(IconButton, {
					icon = Images["icons/actions/cycleLeft"],
					iconSize = ICON_SIZE,
					onHover = function()
						if self.state.respondToHover then
							self:setState({
								tooltipActive = true,
								text = BackButtonController.getTooltipText(),
							})
						end
					end,
					onHoverEnd = function()
						if self.state.respondToHover then
							self:setState({
								tooltipActive = false,
							})
						end
					end,
					onActivated = self.backIconActivated,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state)
	return {
		topBarEnabled = state.displayOptions.topbarEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setKeepOutArea = function(id, position, size)
			return dispatch(SetKeepOutArea(id, position, size))
		end,
		removeKeepOutArea = function(id)
			return dispatch(RemoveKeepOutArea(id))
		end,
	}
end

BackIcon = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BackIcon)
BackIcon = BackButtonController.connectExperimentUserLayer(
	BackIcon,
	"backEnabled",
	GetFStringTeleportBackButtonTopBarIXPCustomFieldName()
)

return BackIcon
