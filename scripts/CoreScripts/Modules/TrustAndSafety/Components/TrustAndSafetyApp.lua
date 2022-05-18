local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)
local ReportMenu = require(script.Parent.ReportMenu)
local ReportSentDialog = require(script.Parent.ReportSentDialog)
-- local ReportDialog = require(script.Parent.ReportPage.ReportDialog)

local TrustAndSafetyApp = Roact.PureComponent:extend("TrustAndSafetyApp")

local DISPLAY_ORDER = 2 -- Displays above the InGameMenu

function TrustAndSafetyApp:init()
	self.appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}
end

function TrustAndSafetyApp:render()
	return Roact.createElement(UIBlox.Core.Style.Provider, {
		style = self.appStyle,
	}, {
		Gui = Roact.createElement("ScreenGui", {
			AutoLocalize = false,
			DisplayOrder = DISPLAY_ORDER,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			Content = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				ReportMenu = Roact.createElement(ReportMenu),
				ReportSentDialog = Roact.createElement(ReportSentDialog),
				-- TODO UI pages
				-- ReportDialog = Roact.createElement(ReportDialog),
			})
		})
	})
end

return TrustAndSafetyApp
