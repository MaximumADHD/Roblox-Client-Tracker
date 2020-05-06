local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local InGameMenu
if isNewInGameMenuEnabled() then
	InGameMenu = require(RobloxGui.Modules.InGameMenu)
end

local IconButton = require(script.Parent.IconButton)

local FFlagTopBarUseNewIcons = require(RobloxGui.Modules.Flags.FFlagTopBarUseNewIcons)
local FFlagTopBarHightightIconsOnHover = require(RobloxGui.Modules.Flags.FFlagTopBarHightightIconsOnHover)

local MenuIcon = Roact.PureComponent:extend("MenuIcon")

--Positioning rules are different for the MenuIcon than other items in the top bar due to the dropshadow.
local MENU_ICON_SIZE = 48
local POSITION_OFFSET_X = -8
local POSITION_OFFSET_Y = -4

local BACKGROUND_SIZE = 32
local ICON_SIZE = 24

MenuIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,
})

if FFlagTopBarHightightIconsOnHover then
	function MenuIcon:init()
		if FFlagTopBarHightightIconsOnHover then
			self.menuIconActivated = function()
				if isNewInGameMenuEnabled() then
					InGameMenu.openInGameMenu()
				else
					local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
					SettingsHub:ToggleVisibility()
				end
			end
		end
	end
end

function MenuIcon:render()
	if FFlagTopBarUseNewIcons then
		return Roact.createElement("Frame", {
			Visible = not TenFootInterface:IsEnabled(),
			BackgroundTransparency = 1,
			Size = UDim2.new(0, BACKGROUND_SIZE, 1, 0),
		}, {
			Background = FFlagTopBarHightightIconsOnHover and Roact.createElement(IconButton, {
				icon = "rbxasset://textures/ui/TopBar/coloredlogo.png",
				iconSize = ICON_SIZE,

				onActivated = self.menuIconActivated,
			}) or Roact.createElement(ImageSetButton, {
				Visible = not TenFootInterface:IsEnabled(),
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(BACKGROUND_SIZE, BACKGROUND_SIZE),
				Position = UDim2.fromScale(0, 1),
				AnchorPoint = Vector2.new(0, 1),
				LayoutOrder = self.props.layoutOrder,
				Image = "rbxasset://textures/ui/TopBar/iconBase.png",

				[Roact.Event.Activated] = function()
					if isNewInGameMenuEnabled() then
						InGameMenu.openInGameMenu()
					else
						local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
						SettingsHub:ToggleVisibility()
					end
				end,
			}, {
				Icon = Roact.createElement(ImageSetLabel, {
					ZIndex = 1,
					BackgroundTransparency = 1,
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
					Image = "rbxasset://textures/ui/TopBar/coloredlogo.png",
				}),
			})
		})
	else
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
end

return MenuIcon
