local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local SetMenuIconTooltipOpen = require(InGameMenu.Actions.SetMenuIconTooltipOpen)
local TopBarConstants = require(InGameMenu.Parent.TopBar.Constants)
local Tooltip = UIBlox.App.Dialog.Tooltip

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTopBarStyleUseDisplayUIScale = SharedFlags.FFlagTopBarStyleUseDisplayUIScale

local MENU_ICON_SIZE = 32
local MENU_ICON_POSITION_STATIC = Vector2.new(TopBarConstants.ScreenSideOffset, TopBarConstants.TopBarHeight - MENU_ICON_SIZE)

local MenuIconTooltip = Roact.PureComponent:extend("MenuIconTooltip")

MenuIconTooltip.validateProps = t.strictInterface({
	isTooltipOpen = t.boolean,
	onDismiss = t.callback,
})

function MenuIconTooltip:init()
	if FFlagTopBarStyleUseDisplayUIScale then
		self.disposeUiScaleEffect = Signals.createEffect(function(scope)
			local DisplayStore = Display.GetDisplayStore(scope)
			self:setState({
				UiScale = DisplayStore.getUIScale(scope),
			})
		end)
	end
end

function MenuIconTooltip:render()
	return withLocalization({
		bodyText = "CoreScripts.InGameMenu.EducationalPopup.MenuIconTooltip",
	})(function(localized)
		local MENU_ICON_POSITION
		if FFlagTopBarStyleUseDisplayUIScale then
			local topBarHeight = TopBarConstants.TopBarHeight * self.state.UiScale
			local screenSideOffset = TopBarConstants.ScreenSideOffset * self.state.UiScale
			MENU_ICON_POSITION = Vector2.new(screenSideOffset, topBarHeight - MENU_ICON_SIZE)
		else
			MENU_ICON_POSITION = MENU_ICON_POSITION_STATIC
		end
		return self.props.isTooltipOpen
			and Roact.createElement(Roact.Portal, {
				-- LUAU FIXME: Need read-write syntax for props to obviate the need for this cast
				target = CoreGui :: Instance,
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
					}),
				}),
			})
	end)
end

function MenuIconTooltip:willUnmount()
	if FFlagTopBarStyleUseDisplayUIScale and self.disposeUiScaleEffect then
		self.disposeUiScaleEffect()
	end
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
