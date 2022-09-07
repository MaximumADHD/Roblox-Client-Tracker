--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local FitFrame = require(CorePackages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical
local FitTextLabel = FitFrame.FitTextLabel

local UIBlox = require(CorePackages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local Modules = CoreGui.RobloxGui.Modules
local RobloxTranslator = require(Modules.RobloxTranslator)
local InGameMenuConstants = require(Modules.InGameMenuConstants)

local TITLE_TEXT_KEY = "InGame.ConnectionError.Heading.VRDisconnected"
local BODY_TEXT_KEY = "InGame.ConnectionError.Message.RestartApp"
local BUTTON_TEXT_KEY = "InGame.ConnectionError.Action.Restart"

local ICON_IMAGE = Images["icons/status/alert"]

local CONFIRM_ACTION_NAME = "TopBarDialogConfirm"
local DISABLE_MENU_SHORTCUT_ACTION_NAME = "TopBarGamepadDisableMenuShortcut"

local HEADSET_DISCONNECTED_KEY = "HeadsetDisconnectedDialog"

local DisconnectedDialog = Roact.PureComponent:extend("DisconnectedDialog")

DisconnectedDialog.validateProps = t.strictInterface({
	visible = t.boolean,
	onConfirm = t.callback,
	screenSize = t.Vector2,
	guiService = t.optional(t.union(t.instanceOf("GuiService"), t.table)),
})

DisconnectedDialog.defaultProps = {
	guiService = GuiService,
}

function DisconnectedDialog:init()
	self.guiService = self.props.guiService

	self.onConfirmBindingAction = function(actionName, userInputState, input)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		self.props.onConfirm()

		return Enum.ContextActionResult.Sink
	end
end

function DisconnectedDialog:render()
	return withStyle(function(style)
		local theme = style.Theme
		local fonts = style.Font

		local titleText = RobloxTranslator:FormatByKey(TITLE_TEXT_KEY)
		local bodyText = RobloxTranslator:FormatByKey(BODY_TEXT_KEY)
		local buttonText = RobloxTranslator:FormatByKey(BUTTON_TEXT_KEY)

		local alert = Roact.createElement(InteractiveAlert, {
			title = titleText,
			middleContent = function()
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, 24),
				}, {
					Icon = Roact.createElement(ImageSetLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,

						Position = UDim2.new(0, 5, 0, 5),
						Size = UDim2.fromOffset(40, 40),
						Image = ICON_IMAGE,
						ImageTransparency = 0,
					}),
					BodyText = Roact.createElement(FitTextLabel, {
						LayoutOrder = 2,
						BackgroundTransparency = 1,

						width = FitTextLabel.Width.FitToText,

						Font = fonts.Body.Font,
						Text = bodyText,
						TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
					})
				})
			end,
			buttonStackInfo = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = self.props.onConfirm,
							text = buttonText,
						},
					},
				},
			},
			screenSize = self.props.screenSize,
		})

		return Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			HeadsetDisconnectedDialog = Roact.createElement("ScreenGui", {
				DisplayOrder = InGameMenuConstants.DisplayOrder.HeadsetDisconnectedDialog,
				IgnoreGuiInset = true,
				OnTopOfCoreBlur = true,
				Enabled = self.props.visible,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			}, {
				Overlay = Roact.createElement("Frame", {
					Active = true,
					BackgroundColor3 = theme.Overlay.Color,
					BackgroundTransparency = theme.Overlay.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
				}, {
					Alert = alert,
				}),
			})
		})
	end)
end

function DisconnectedDialog:bindActions()
	-- Disable Gamepad Quick Menu and System Menu when headset disconnected
	ContextActionService:BindCoreAction(
		DISABLE_MENU_SHORTCUT_ACTION_NAME,
		function() end,
		false,
		Enum.KeyCode.ButtonStart, Enum.KeyCode.Escape)
	-- Bind Enter / Gamepad ButtonA to confirm restart
	ContextActionService:BindCoreAction(
		CONFIRM_ACTION_NAME,
		self.onConfirmBindingAction,
		false,
		Enum.KeyCode.Return, Enum.KeyCode.ButtonA)
end

function DisconnectedDialog:unbindActions()
	ContextActionService:UnbindCoreAction(DISABLE_MENU_SHORTCUT_ACTION_NAME)
	ContextActionService:UnbindCoreAction(CONFIRM_ACTION_NAME)
end

function DisconnectedDialog:didMount()
	if self.props.visible then
		self:bindActions()
		self.guiService:SetMenuIsOpen(true, HEADSET_DISCONNECTED_KEY)
	end
end

function DisconnectedDialog:didUpdate(prevProps, prevState)
	if self.props.visible ~= prevProps.visible then
		if self.props.visible then
			self:bindActions()
			self.guiService:SetMenuIsOpen(true, HEADSET_DISCONNECTED_KEY)
		else
			self:unbindActions()
			self.guiService:SetMenuIsOpen(false, HEADSET_DISCONNECTED_KEY)
		end
	end
end

function DisconnectedDialog:willUnmount()
	self:unbindActions()
	self.guiService:SetMenuIsOpen(false, HEADSET_DISCONNECTED_KEY)
end

return DisconnectedDialog
