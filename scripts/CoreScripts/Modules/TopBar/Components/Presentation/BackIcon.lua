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
})

function BackIcon:init()
	self.backIconActivated = function()
		if BackButtonController.EngineFeatureEnableBackButton then
			BackButtonController.initiateBackButtonTeleport((Enum :: any).AdTeleportMethod.UIBackButton)
		end
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
	return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
		return withStyle(function(style)
			return Roact.createElement("TextButton", {
				Text = "",
				Visible = backEnabled,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, BACK_ICON_AREA_WIDTH, 1, 0),
				LayoutOrder = self.props.layoutOrder,
				Selectable = false,
				[Roact.Change.AbsoluteSize] = triggerPointChanged,
				[Roact.Change.AbsolutePosition] = triggerPointChanged,
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

BackIcon = RoactRodux.connect(mapStateToProps, nil)(BackIcon)
BackIcon = BackButtonController.connectExperimentUserLayer(
	BackIcon,
	"backEnabled",
	GetFStringTeleportBackButtonTopBarIXPCustomFieldName()
)

return BackIcon
