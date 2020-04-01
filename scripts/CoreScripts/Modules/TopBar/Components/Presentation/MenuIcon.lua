local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local InGameMenu
if isNewInGameMenuEnabled() then
	InGameMenu = require(RobloxGui.Modules.InGameMenu)
end

local MenuIcon = Roact.PureComponent:extend("MenuIcon")

--Positioning rules are different for the MenuIcon than other items in the top bar due to the dropshadow.
local MENU_ICON_SIZE = 48
local POSITION_OFFSET_X = -8
local POSITION_OFFSET_Y = -4

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
})

function MenuIcon:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, MENU_ICON_SIZE + POSITION_OFFSET_X, 1, 0),
		LayoutOrder = self.props.layoutOrder,
	}, {
		Icon = Roact.createElement(ImageSetButton, {
			Visible = not TenFootInterface:IsEnabled(),
			BackgroundTransparency = 1,
			Position = UDim2.new(0, POSITION_OFFSET_X, 0, POSITION_OFFSET_Y),
			Size = UDim2.new(0, MENU_ICON_SIZE, 0, MENU_ICON_SIZE),
			Image = Images["icons/controls/topmenu-shadow"],

			[Roact.Event.Activated] = function()
				if isNewInGameMenuEnabled() then
					InGameMenu.openInGameMenu()
				else
					local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
					SettingsHub:ToggleVisibility()
				end
			end,
		})
	})
end

return MenuIcon