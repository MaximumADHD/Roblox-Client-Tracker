local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local shouldSaveScreenshotToAlbum = require(RobloxGui.Modules.shouldSaveScreenshotToAlbum)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local AppDarkTheme = nil
local AppFont = nil
local renderWithCoreScriptsStyleProvider = nil
if not GetFFlagEnableStyleProviderCleanUp() then
	AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
else
	renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
end

local TOAST_DURATION = 3
local CAPTURE_NOTIFICATION_DISPLAY_ORDER = 9

local NotificationType = {
	None = "None",
	Success = "Success",
	Fail = "Fail",
	Permission = "Permission",
}

local CaptureNotification = Roact.PureComponent:extend("CaptureNotification")

CaptureNotification.validateProps = t.strictInterface({
	forceDismissToast = t.optional(t.table),
	permissionEvent = t.optional(t.instance),
})

function CaptureNotification:init()
	self.appStyle = nil
	if not GetFFlagEnableStyleProviderCleanUp() then
		self.appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
	end

	self.state = {
		screenSize = Vector2.new(0, 0),
		dismissedPermission = false,
		notificationType = NotificationType.None,
		toastContent = nil,
	}

	self.onScreenSizeChanged = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end

	self.getToastContent = function(notificationType)
		if notificationType == NotificationType.Success or
			notificationType == NotificationType.Fail then
			local isSuccessToast = (notificationType == NotificationType.Success)
			return {
				iconImage = isSuccessToast and Images["icons/status/success"] or Images["icons/status/alert"],
				iconColorStyle = not isSuccessToast and {
					Color = Color3.fromRGB(247, 75, 82),
					Transparency = 0,
				} or nil,
				toastTitle = isSuccessToast and RobloxTranslator:FormatByKey(
					"NotificationScript2.Capture.Success.ToastText"
				) or RobloxTranslator:FormatByKey("NotificationScript2.Capture.Fail.ToastText"),
				onDismissed = function()
					self:setState({
						notificationType = NotificationType.None,
						toastContent = Roact.None,
					})
					if self.props.forceDismissToast and self.props.forceDismissToast.onDismissed then
						self.props.forceDismissToast.onDismissed()
					end
				end,
			}
		end

		return Roact.None
	end

	self.dismissPermissionAlert = function()
		self:setState({
			dismissedPermission = true,
			notificationType = NotificationType.Fail,
			toastContent = self.getToastContent(NotificationType.Fail),
		})
	end

	self.screenshotSavedToAlbumCallback = function(filename, saveSuccess, message)
		local notificationType
		if saveSuccess then
			-- Pop up Capture Saved toast
			notificationType = NotificationType.Success
		else
			if not self.state.dismissedPermission and
				message:find("Domain=ALAssetsLibraryErrorDomain") and message:find("Data unavailable") then
				-- Pop up permission alert (only show up when user hasn't dismissed it before during each game session)
				notificationType = NotificationType.Permission
			else
				-- Pop up Capture Failed toast
				notificationType = NotificationType.Fail
			end
		end

		self:setState({
			notificationType = notificationType,
			toastContent = self.getToastContent(notificationType),
		})
	end
	
	self.permissionEventCallback = function()
		self:setState({
			notificationType = NotificationType.Permission,
			toastContent = self.getToastContent(NotificationType.Permission),
		})
	end

	self.getPermissionAlertBodyText = function()
		if UserInputService:GetPlatform() == Enum.Platform.IOS then
			return RobloxTranslator:FormatByKey("NotificationScript2.Capture.Permission.AlertTextIOS")
		elseif UserInputService:GetPlatform() == Enum.Platform.Android then
			return RobloxTranslator:FormatByKey("NotificationScript2.Capture.Permission.AlertTextAndroid")
		else
			return RobloxTranslator:FormatByKey("NotificationScript2.Capture.Permission.AlertText")
		end
	end
end

function CaptureNotification:renderWithStyle(children)
	if not GetFFlagEnableStyleProviderCleanUp() then
		return Roact.createElement(UIBlox.Core.Style.Provider, {
			style = self.appStyle,
		}, children)
	else
		return renderWithCoreScriptsStyleProvider(children)
	end
end

function CaptureNotification:render()
	local notificationType = self.state.notificationType
	local showSuccessToast = notificationType == NotificationType.Success and self.state.toastContent
	local showFailToast = notificationType == NotificationType.Fail and self.state.toastContent
	local showPermissionAlert = notificationType == NotificationType.Permission

	return self:renderWithStyle({
		RobloxCaptureNotificationGui = Roact.createElement("ScreenGui", {
			AutoLocalize = false,
			DisplayOrder = CAPTURE_NOTIFICATION_DISPLAY_ORDER,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			Content = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				[Roact.Change.AbsoluteSize] = self.onScreenSizeChanged,
			}, {
				SuccessToast = showSuccessToast and Roact.createElement(SlideFromTopToast, {
					duration = TOAST_DURATION,
					show = not self.props.forceDismissToast,
					toastContent = self.state.toastContent,
				}),
				FailToast = showFailToast and Roact.createElement(SlideFromTopToast, {
					duration = TOAST_DURATION,
					show = not self.props.forceDismissToast,
					toastContent = self.state.toastContent,
				}),
				PermissionAlertOverlay = showPermissionAlert and Roact.createElement("Frame", {
					Active = true,
					BackgroundColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 0.5,
					Size = UDim2.new(1, 0, 1, 0),
				}, {
					PermissionAlert = Roact.createElement(InteractiveAlert, {
						title = RobloxTranslator:FormatByKey("NotificationScript2.Capture.Permission.AlertTitle"),
						bodyText = self.getPermissionAlertBodyText(),
						buttonStackInfo = {
							buttons = {
								{
									buttonType = ButtonType.PrimarySystem,
									props = {
										onActivated = self.dismissPermissionAlert,
										text = RobloxTranslator:FormatByKey("NotificationScript2.Capture.Permission.AlertButtonText"),
									},
								},
							},
						},
						position = UDim2.fromScale(0.5, 0.5),
						screenSize = self.state.screenSize,
					}),
				}),
				ScreenshotSavedToAlbumConnection = shouldSaveScreenshotToAlbum() and Roact.createElement(ExternalEventConnection, {
					event = game.ScreenshotSavedToAlbum,
					callback = self.screenshotSavedToAlbumCallback,
				}),
				PermissionEventConnection = self.props.permissionEvent and Roact.createElement(ExternalEventConnection, {
					event = self.props.permissionEvent.Event,
					callback = self.permissionEventCallback,
				}),
			})
		})
	})
end

function CaptureNotification:didUpdate(prevProps)
	local forceDismissToast = self.props.forceDismissToast
	if prevProps.forceDismissToast ~= forceDismissToast then
		local showToast = (self.state.notificationType == NotificationType.Success or
			self.state.notificationType == NotificationType.Fail) and self.state.toastContent

		-- No toast to show right now, call onDismissed() directly, otherwise call it when toast gets dismissed
		if not showToast and forceDismissToast and forceDismissToast.onDismissed then
			forceDismissToast.onDismissed()
		end
	end
end

return CaptureNotification
