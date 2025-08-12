local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local VRService = game:GetService("VRService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)

local Components = script.Parent.Parent
local TopBar = Components.Parent
local EventConnection = require(TopBar.Parent.Common.EventConnection)

local isSubjectToDesktopPolicies = require(CorePackages.Workspace.Packages.SharedFlags).isSubjectToDesktopPolicies
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize

local DisconnectedDialog = require(script.DisconnectedDialog)

local HeadsetMenu = Roact.PureComponent:extend("HeadsetMenu")

HeadsetMenu.validateProps = t.strictInterface({
	screenSize = if FFlagTopBarSignalizeScreenSize then nil else t.Vector2,

	vrService = t.optional(t.union(t.instanceOf("VRService"), t.table)),
	guiService = t.optional(t.union(t.instanceOf("GuiService"), t.table)),
})

HeadsetMenu.defaultProps = {
	vrService = VRService,
	guiService = GuiService,
}

function HeadsetMenu:init()
	self.state = {
		vrDeviceAvailable = false,
		shouldShowDisconnectDialog = false,
	}

	self.restartApp = function()
		local notificationTypes = self.props.guiService:GetNotificationTypeList()

		if isSubjectToDesktopPolicies() then
			if game:GetEngineFeature("EnableLuaControlsRestartApp") then
				self.props.guiService:BroadcastNotification("", notificationTypes.RESTART_APP)
			else
				self.props.guiService:BroadcastNotification("", notificationTypes.NATIVE_EXIT)
			end
		else
			RunService.Heartbeat:Wait()
			game:Shutdown()
		end

		self:setState({
			shouldShowDisconnectDialog = false,
		})
	end

	if FFlagTopBarSignalizeScreenSize then 
		local getViewportSize = Display.GetDisplayStore(false).getViewportSize

		self.disposeScreenSize = Signals.createEffect(function(scope) 
			self:setState({
				screenSize = getViewportSize(scope)
			})
		end)
	end
end

function HeadsetMenu:render()
	return Roact.createFragment({
		HeadsetConnection = Roact.createElement(EventConnection, {
			event = self.props.vrService:GetPropertyChangedSignal("VRDeviceAvailable"),
			callback = function()
				self:setState({
					vrDeviceAvailable = self.props.vrService.VRDeviceAvailable,
				})
			end,
		}, {
			HeadsetDisconnectedDialog = Roact.createElement(DisconnectedDialog, {
				visible = self.state.shouldShowDisconnectDialog,
				screenSize = if FFlagTopBarSignalizeScreenSize then self.state.screenSize else self.props.screenSize,
				onConfirm = self.restartApp,
				guiService = self.props.guiService,
			}),
		}),
	})
end

function HeadsetMenu:didMount()
	self:setState({
		vrDeviceAvailable = self.props.vrService.VRDeviceAvailable,
	})
end

function HeadsetMenu:willUnmount()
	if FFlagTopBarSignalizeScreenSize then 
		self.disposeScreenSize()
	end
end

function HeadsetMenu:didUpdate(prevProps, prevState)
	if self.state.vrDeviceAvailable ~= prevState.vrDeviceAvailable then
		if not self.state.vrDeviceAvailable then
			self:setState({
				shouldShowDisconnectDialog = true,
			})
		end
	end
end

if not FFlagTopBarSignalizeScreenSize then 
	HeadsetMenu = RoactRodux.connect(function(state)
		return {
			screenSize = state.displayOptions.screenSize,
		}
	end)(HeadsetMenu)
end

return HeadsetMenu
