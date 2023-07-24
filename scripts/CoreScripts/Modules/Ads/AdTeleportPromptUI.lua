local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)

local UIBlox = require(CorePackages.UIBlox)

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ButtonType = UIBlox.App.Button.Enum.ButtonType
local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local withStyle = UIBlox.Core.Style.withStyle
local UserInputService = game:GetService("UserInputService")

local AdTeleportPrompt = Roact.Component:extend("InteractiveAlert")

type Props = {
	screenSize: Vector2,
	shouldRenderCancelButton: boolean,

	experienceName: string,
	handler: any,
}

function AdTeleportPrompt:init()
	self.state = {
		screenSize = (game.Workspace.CurrentCamera :: Camera).ViewportSize,
	}

	self.updateViewport = function()
		self:setState({ screenSize = (game.Workspace.CurrentCamera :: Camera).ViewportSize })
	end
end

function AdTeleportPrompt:renderWithStyle(styles)
	assert(game.Workspace.CurrentCamera ~= nil, "Appeasing the type checking")
	return Roact.createFragment({
		InteractiveAlert = Roact.createElement(InteractiveAlert, {
			screenSize = self.state.screenSize,
			title = self:generateTitle(),
			bodyText = self:shouldGenerateBody(),

			buttonStackInfo = {
				buttons = self:generateButtons(),
			},
			onAbsoluteSizeChanged = self.props.onAbsoluteSizeChanged,
		}),

		HeartbeatConnection = Roact.createElement(ExternalEventConnection, {
			event = RunService.Heartbeat,
			callback = function()
				self.props.handler:onHeartbeat()
			end,
		}),
		GamepadFocusConnection = Roact.createElement(ExternalEventConnection, {
			event = UserInputService.LastInputTypeChanged,
			callback = function()
				self.props.handler:focusIfGamepad()
			end,
		}),
		viewportSizeListener = Roact.createElement(ExternalEventConnection, {
			event = game.Workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"),
			callback = self.updateViewport,
		}),
	})
end

function AdTeleportPrompt:render()
	return withStyle(function(styles)
		return self:renderWithStyle(styles)
	end)
end

function AdTeleportPrompt:generateButtons()
	local acceptText = RobloxTranslator:FormatByKey("CoreScripts.Ads.Action.PortalPromptAccept")
	local cancelText = RobloxTranslator:FormatByKey("CoreScripts.Ads.Action.PortalPromptCancel")

	local acceptButtonConfig = {
		buttonType = ButtonType.PrimarySystem,
		props = {
			onActivated = function()
				self.props.handler:acceptPrompt()
			end,
			text = acceptText,
		},
		isDefaultChild = true,
	}

	local cancelButtonConfig = {
		props = {
			onActivated = function()
				self.props.handler:rejectButton()
			end,
			text = cancelText,
		},
	}

	if self.props.shouldRenderCancelButton then
		return { cancelButtonConfig, acceptButtonConfig }
	end
	return { acceptButtonConfig }
end

function AdTeleportPrompt:shouldGenerateBody()
	if self.props.shouldRenderCancelButton then
		return nil
	end
	return RobloxTranslator:FormatByKey("CoreScripts.Ads.Label.PortalPromptDismissWalkAway")
end

function AdTeleportPrompt:generateTitle()
	if self.props.experienceName then
		return RobloxTranslator:FormatByKey(
			"CoreScripts.Ads.Label.PortalPromptTeleportToWithName",
			{ RBX_NAME = self.props.experienceName }
		)
	end
	return RobloxTranslator:FormatByKey("CoreScripts.Ads.Label.PortalPromptTeleportToWithoutName")
end

return AdTeleportPrompt
