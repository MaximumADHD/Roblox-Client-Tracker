local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert

local GetFFlagWrapBlockModalScreenInProvider = require(RobloxGui.Modules.Flags.GetFFlagWrapBlockModalScreenInProvider)

local ActionModal = Roact.PureComponent:extend("ActionModal")

ActionModal.defaultProps = {
	screenSize = Vector2.new(1000, 1000),
}

ActionModal.validateProps = t.interface({
	action = t.callback,
	actionText = t.string,
	body = t.string,
	cancel = t.callback,
	cancelText = t.string,
	screenSize = t.optional(t.Vector2),
	title = t.string,
})

function ActionModal:render()
	return withStyle(function(style)
			return Roact.createElement("ImageButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = style.Theme.Overlay.Transparency,
				BackgroundColor3 = style.Theme.Overlay.Color,
				Active = true,
				AutoButtonColor = false,
				Selectable = if GetFFlagWrapBlockModalScreenInProvider() then false else nil,
				Visible = self.props.Visible,
				[Roact.Event.Activated] = self.props.cancel,
			},  {
				AlertModal = Roact.createElement(InteractiveAlert, {
					title = self.props.title,
					bodyText = self.props.body,
					buttonStackInfo = { buttons = {
						{
							buttonType = ButtonType.Secondary,
							props = {
								text = self.props.cancelText,
								onActivated = self.props.cancel,
							},
						},
						{
							buttonType = ButtonType.Alert,
							props = {
								text = self.props.actionText,
								onActivated = self.props.action,
							},
						},
					}},
					screenSize = self.props.screenSize,
				})
			})
		end)
end

return ActionModal
