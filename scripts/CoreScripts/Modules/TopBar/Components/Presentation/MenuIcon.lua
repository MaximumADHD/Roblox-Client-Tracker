local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenu.Resources.Constants)

local InGameMenu
if isNewInGameMenuEnabled() then
	InGameMenu = require(RobloxGui.Modules.InGameMenu)
end

local IconButton = require(script.Parent.IconButton)

local GetFFlagInGameMenuOpenOnHover = require(RobloxGui.Modules.Flags.GetFFlagInGameMenuOpenOnHover)
local GetFFlagInGameMenuIconTooltip = require(RobloxGui.Modules.Flags.GetFFlagInGameMenuIconTooltip)

local MenuIcon = Roact.PureComponent:extend("MenuIcon")

local BACKGROUND_SIZE = 32
local ICON_SIZE = 24

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
})

function MenuIcon:init()
	self.menuIconActivated = function()
		if isNewInGameMenuEnabled() then
			InGameMenu.openInGameMenu()
		else
			local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
			SettingsHub:ToggleVisibility(InGameMenuConstants.AnalyticsMenuOpenTypes.TopbarButton)
		end
	end
	self.menuIconOnHover = function()
		if isNewInGameMenuEnabled() then
			InGameMenu.openInGameMenu()
			if GetFFlagInGameMenuIconTooltip() then
				InGameMenu.setMenuIconTooltipOpen(false)
			end
		end
	end
end

function MenuIcon:render()
	return Roact.createElement("Frame", {
		Visible = not TenFootInterface:IsEnabled(),
		BackgroundTransparency = 1,
		Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
		LayoutOrder = self.props.layoutOrder
	}, {
		Background = Roact.createElement(IconButton, {
			icon = "rbxasset://textures/ui/TopBar/coloredlogo.png",
			iconSize = ICON_SIZE,

			onActivated = self.menuIconActivated,
			onHover = GetFFlagInGameMenuOpenOnHover() and self.menuIconOnHover or nil,
		})
	})
end

return MenuIcon
