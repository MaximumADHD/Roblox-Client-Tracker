local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local ContentProvider = game:GetService("ContentProvider")
local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local LuobuWarningToastComponent = Roact.PureComponent:extend("LuobuWarningToastComponent")
local WarningContent = RobloxTranslator:FormatByKey("InGame.CommonUI.Message.LuobuGameJoinWarning")
local TOAST_DURATION = 5
local LUOBU_WARNING_TOAST_DISPLAY_ORDER = 9

function LuobuWarningToastComponent:init()
	self.appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.state = {
		isLoaded = false,
	}

	task.spawn(function()
		local imageAsset = Images["icons/status/alert"].Image
		pcall(function()
			ContentProvider:PreloadAsync({imageAsset})
		end)
		self:setState({
			isLoaded = true,
		})
	end)

	self.getToastContent = function()
		return {
			iconImage = Images["icons/status/alert"],
			iconColorStyle = {
				Color = Color3.new(1, 1, 1),
				Transparency = 0,
			},
			toastTitle = WarningContent,
		}
	end
end

function LuobuWarningToastComponent:render()
	if not self.state.isLoaded then
		return nil
	end

	return Roact.createElement(UIBlox.Core.Style.Provider, {
		style = self.appStyle,
	}, {
		RobloxCaptureNotificationGui = Roact.createElement("ScreenGui", {
			AutoLocalize = false,
			DisplayOrder = LUOBU_WARNING_TOAST_DISPLAY_ORDER,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			Content = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				WarningToast = Roact.createElement(SlideFromTopToast, {
					duration = TOAST_DURATION,
					show = true,
					toastContent = self.getToastContent(),
				})
			})
		})
	})
end

return LuobuWarningToastComponent
