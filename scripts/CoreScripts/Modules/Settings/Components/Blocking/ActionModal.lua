local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)

local withStyle = UIBlox.Style.withStyle
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert

local FFlagEnableNewBlockingModal = require(RobloxGui.Modules.Common.Flags.FFlagEnableNewBlockingModal)
local FFlagFixPlayerListBlockingModalFocusNav = require(CorePackages.Workspace.Packages.PlayerList).Flags.FFlagFixPlayerListBlockingModalFocusNav

local ActionModal = Roact.PureComponent:extend("ActionModal")

ActionModal.defaultProps = {
	screenSize = Vector2.new(1000, 1000),
}

ActionModal.validateProps = t.interface({
	action = if FFlagEnableNewBlockingModal then nil else t.callback,
	actionText = if FFlagEnableNewBlockingModal then nil else t.string,

	block = if FFlagEnableNewBlockingModal then t.callback else nil,
	blockText = if FFlagEnableNewBlockingModal then t.string else nil,

	blockAndReport = if FFlagEnableNewBlockingModal then t.callback else nil,
	blockAndReportText = if FFlagEnableNewBlockingModal then t.string else nil,

	cancel = t.callback,
	cancelText = t.string,

	body = t.string,
	title = t.string,
	screenSize = t.optional(t.Vector2),
})

function ActionModal:render()
	return withStyle(function(style)
		return Roact.createElement("ImageButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = style.Theme.Overlay.Transparency,
			BackgroundColor3 = style.Theme.Overlay.Color,
			Active = true,
			AutoButtonColor = false,
			Selectable = false,
			Visible = self.props.Visible,
			[Roact.Event.Activated] = self.props.cancel,
		}, {
			AlertModal = Roact.createElement(InteractiveAlert, {
				screenSize = self.props.screenSize,
				title = self.props.title,
				bodyText = self.props.body,
				richText = if FFlagEnableNewBlockingModal then true else nil,
				isRoactGamepadEnabled = if FFlagFixPlayerListBlockingModalFocusNav then false else nil,
				buttonStackInfo = {
					buttons = if FFlagEnableNewBlockingModal then
						{
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
									text = self.props.blockAndReportText,
									onActivated = self.props.blockAndReport,
								},
							},
							{
								buttonType = ButtonType.Alert,
								props = {
									text = self.props.blockText,
									onActivated = self.props.block,
								},
							},
						}
					else {
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
					},
				},
			}),
		})
	end)
end

return ActionModal
