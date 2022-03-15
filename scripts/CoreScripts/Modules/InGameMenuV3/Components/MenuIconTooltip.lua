local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local SetMenuIconTooltipOpen = require(InGameMenu.Actions.SetMenuIconTooltipOpen)
local TobBarConstants = require(InGameMenu.Parent.TopBar.Constants)
local Tooltip = UIBlox.App.Dialog.Tooltip

local MENU_ICON_SIZE = 32
local MENU_ICON_POSITION = Vector2.new(TobBarConstants.ScreenSideOffset, TobBarConstants.TopBarHeight - MENU_ICON_SIZE)

local MenuIconTooltip = Roact.PureComponent:extend("MenuIconTooltip")

MenuIconTooltip.validateProps = t.strictInterface({
	isTooltipOpen  = t.boolean,
	onDismiss = t.callback,
})

function MenuIconTooltip:render()
	return withLocalization({
		bodyText = "CoreScripts.InGameMenu.EducationalPopup.MenuIconTooltip",
	})(function(localized)
		return self.props.isTooltipOpen and Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			TooltipScreenGui = Roact.createElement("ScreenGui", {
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					triggerPosition = MENU_ICON_POSITION,
					triggerSize = Vector2.new(MENU_ICON_SIZE, MENU_ICON_SIZE),
					bodyText = localized.bodyText,
					onDismiss = self.props.onDismiss,
					forceClickTriggerPoint = true,
				})
			})
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isTooltipOpen = state.nativeClosePrompt.menuIconTooltipOpen,
	}
end, function(dispatch)
	return {
		onDismiss = function()
			dispatch(SetMenuIconTooltipOpen(false))
		end,
	}
end)(MenuIconTooltip)
