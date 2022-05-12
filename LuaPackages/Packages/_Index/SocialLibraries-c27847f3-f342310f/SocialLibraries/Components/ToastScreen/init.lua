local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t

local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.Constant.IconSize
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local validateColorInfo = UIBlox.Style.Validator.validateColorInfo

local ToastScreen = Roact.PureComponent:extend("ToastScreen")

ToastScreen.defaultProps = {
	navigation = nil,
}

local validateContentProps = t.strictInterface({
	toastTitle = t.optional(t.string),
	toastSubtitle = t.optional(t.string),
	iconColorStyle = t.optional(validateColorInfo),
	iconImage = t.optional(t.union(t.table, t.string)),
	iconSize = t.optional(t.Vector2),
	swipeUpDismiss = t.optional(t.boolean),
	onAppeared = t.optional(t.callback),
	onActivated = t.optional(t.callback),
	onDismissed = t.optional(t.callback),
	hideIcon = t.optional(t.boolean),
})

local validateProps = t.strictInterface({
	toastContent = t.optional(t.table),
	anchorPoint = t.optional(t.Vector2),
	duration = t.optional(t.integer),
	layoutOrder = t.optional(t.integer),
	position = t.optional(t.UDim2),
	size = t.optional(t.UDim2),
	show = t.optional(t.boolean),
})

function ToastScreen:init()
	self.hasToastChanged = false

	self.getToastProps = function(props)
		local toastContent = props.toastContent or {}

		assert(validateProps(props))
		assert(validateContentProps(toastContent))

		local toastProps = {
			toastContent = {
				toastTitle = toastContent.toastTitle or "",
				toastSubtitle = toastContent.toastSubtitle,
				iconColorStyle = toastContent.iconColorStyle,
				iconImage = if not toastContent.hideIcon
					then (toastContent.iconImage or Images["icons/status/alert"])
					else nil,
				iconSize = if not toastContent.hideIcon
					then (toastContent.iconSize or Vector2.new(IconSize.Regular, IconSize.Regular))
					else nil,
				swipeUpDismiss = toastContent.swipeUpDismiss,
				onAppeared = function()
					if toastContent.onAppeared then
						toastContent.onAppeared()
					end
					self.hasToastChanged = false
				end,
				onActivated = toastContent.onActivated,
				onDismissed = function()
					if toastContent.onDismissed then
						toastContent.onDismissed()
					end
					if not self.hasToastChanged then
						self.props.navigation.goBack()
					end
				end,
			},
			anchorPoint = props.anchorPoint,
			duration = props.duration or 2,
			layoutOrder = props.layoutOrder,
			position = props.position,
			size = props.size,
			show = props.show,
		}

		return toastProps
	end
end

function ToastScreen:render()
	local navigation = self.props.navigation
	assert(type(navigation) ~= "nil", "ToastScreen should be wrapped with Roact Navigation")

	local toastProps = self.getToastProps(self.props.navigation.getParam("toastProps", {}))
	return Roact.createElement(SlideFromTopToast, toastProps)
end

function ToastScreen:didUpdate(_, _)
	self.hasToastChanged = true
end

return ToastScreen
