local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local TnsModule = script.Parent.Parent
local SetScreenSize = require(TnsModule.Actions.SetScreenSize)
local ReportMenu = require(TnsModule.Components.ReportMenu)
local ReportDialog = require(TnsModule.Components.ReportDialog)
local ReportCategoryDialog = require(TnsModule.Components.ReportCategoryDialog)

local ReportSentDialog = require(TnsModule.Components.ReportSentDialog)
local Toast = require(TnsModule.Components.Toast)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)

local TrustAndSafetyApp = Roact.PureComponent:extend("TrustAndSafetyApp")

local DISPLAY_ORDER = 8 -- Displays above the InGameMenu

TrustAndSafetyApp.validateProps = t.strictInterface({
	setScreenSize = t.callback,
	visible = t.boolean,
})

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
		VoiceStateContextProvider = Roact.createElement(VoiceStateContext.Provider, {}, {
			Gui = Roact.createElement("ScreenGui", {
				AutoLocalize = false,
				DisplayOrder = DISPLAY_ORDER,
				IgnoreGuiInset = true,
				OnTopOfCoreBlur = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				[Roact.Change.AbsoluteSize] = self.props.setScreenSize
			}, {
				Content = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Visible = self.props.visible,
				}, {
					ReportCategoryDialog = Roact.createElement(ReportCategoryDialog),
					ReportMenu = Roact.createElement(ReportMenu),
					ReportDialog = Roact.createElement(ReportDialog),
					ReportSentDialog = Roact.createElement(ReportSentDialog),
					Toast = Roact.createElement(Toast),
				})
			})
		})
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		visible = state.displayOptions.visible
	}
end, function(dispatch)
	return {
		setScreenSize = function(rbx)
			dispatch(SetScreenSize(rbx.AbsoluteSize))
		end,
	}
end)(TrustAndSafetyApp)
