local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local EducationalModal = UIBlox.App.Dialog.Modal.EducationalModal
local withStyle = UIBlox.Core.Style.withStyle

local EducationalPopupDialog = Roact.PureComponent:extend("EducationalPopupDialog")

EducationalPopupDialog.validateProps = t.strictInterface({
	bodyContents = t.array(t.strictInterface({
		icon = t.union(t.string, t.table),
		text = t.string,
		layoutOrder = t.integer,
		isSystemMenuIcon = t.optional(t.boolean),
	})),
	cancelText = t.string,
	confirmText = t.string,
	titleText = t.string,
	titleBackgroundImageProps = t.strictInterface({
		image = t.string,
		imageHeight = t.number,
	}),
	screenSize = t.Vector2,

	onDismiss = t.callback,
	onCancel = t.callback,
	onConfirm = t.callback,

	blurBackground = t.boolean,
	visible  = t.boolean,
})

EducationalPopupDialog.defaultProps = {
	blurBackground = false,
}

function EducationalPopupDialog:render()
	return withStyle(function(style)
		return Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			InGameMenuEducationalPopupDialog = Roact.createElement("ScreenGui", {
				IgnoreGuiInset = true,
				OnTopOfCoreBlur = self.props.blurBackground,
				Enabled = self.props.visible,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			}, {
				Overlay = Roact.createElement("TextButton", {
					AutoButtonColor = false,
					BackgroundColor3 = style.Theme.Overlay.Color,
					BackgroundTransparency = style.Theme.Overlay.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					Text = "",
				}),
				Popup = Roact.createElement(EducationalModal, {
					bodyContents = self.props.bodyContents,
					cancelText = self.props.cancelText,
					confirmText = self.props.confirmText,
					titleText = self.props.titleText,
					titleBackgroundImageProps = self.props.titleBackgroundImageProps,
					screenSize = self.props.screenSize,
					onDismiss = self.props.onDismiss,
					onCancel = self.props.onCancel,
					onConfirm = self.props.onConfirm,
				})
			})
		})
	end)
end

function EducationalPopupDialog:updateBlur()
	local shouldBlur = self.props.blurBackground and self.props.visible
	RunService:SetRobloxGuiFocused(shouldBlur)
end

function EducationalPopupDialog:didMount()
	self:updateBlur()
end

function EducationalPopupDialog:didUpdate()
	self:updateBlur()
end

function EducationalPopupDialog:willUnmount()
	if self.props.blurBackground then
		RunService:SetRobloxGuiFocused(false)
	end
end

return EducationalPopupDialog
