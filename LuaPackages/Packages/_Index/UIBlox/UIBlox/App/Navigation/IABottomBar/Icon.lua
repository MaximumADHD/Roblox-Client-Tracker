local IABottomBarFolder = script.Parent
local Navigation = IABottomBarFolder.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local useStyle = require(UIBlox.Core.Style.useStyle)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local Badge = require(UIBlox.App.Indicator.Badge)
local BadgeStates = require(UIBlox.App.Indicator.Enum.BadgeStates)

local Placement = require(Navigation.Enum.Placement)
local Consts = require(Navigation.IABottomBar.Constants)

local function Icon(item, state, selected, showNumberedBadge, iconProps) -- general icon component. used by individual nav bar item and multiple nav bar item
	assert(
		(item.iconOn ~= nil and item.iconOff ~= nil) or item.iconComponent ~= nil,
		"items must define either iconOn and iconOff or iconComponent"
	)

	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	local pressed = state == ControlState.Pressed
	-- handle badging states
	local hasBadge = false

	if showNumberedBadge then
		-- if we want to show a numbered badge, we show 1 if badgeValue is not 0
		if t.number(item.badgeValue) and item.badgeValue > 0 then
			hasBadge = true
		elseif item.badgeValue == BadgeStates.isEmpty then
			hasBadge = true
			item.badgeValue = 1
		elseif t.string(item.badgeValue) then
			hasBadge = true
			item.badgeValue = 1
		else
			hasBadge = false
		end
	else
		-- if we don't show a numbered badge, we show the empty badge whenever badgeValue is not 0
		if t.number(item.badgeValue) and item.badgeValue > 0 then
			hasBadge = true
			item.badgeValue = BadgeStates.isEmpty
		elseif item.badgeValue == BadgeStates.isEmpty then
			hasBadge = true
		elseif t.string(item.badgeValue) then
			hasBadge = true
			item.badgeValue = BadgeStates.isEmpty
		else
			hasBadge = false
		end
	end

	local BadgeComponent = hasBadge
			and Roact.createElement(Badge, {
				position = item.badgeValue == BadgeStates.isEmpty
						and UDim2.fromOffset(Consts.EMPTY_BADGE_POSITION_X, Consts.EMPTY_BADGE_POSITION_Y)
					or UDim2.fromOffset(Consts.BADGE_POSITION_X, Consts.BADGE_POSITION_Y),
				value = item.badgeValue,
			})
		or nil

	if item.iconComponent then
		return Roact.createElement("Frame", iconProps, {
			Icon = Roact.createElement(item.iconComponent, {
				placement = Placement.Bottom,
				selected = selected,
				pressed = pressed,
				badgeValue = item.badgeValue,
				hovered = false,
			}),
			Badge = BadgeComponent,
		})
	end

	return Roact.createElement(
		ImageSetComponent.Label,
		Cryo.Dictionary.join(iconProps or {}, {
			BackgroundTransparency = 1,
			Image = selected and item.iconOn or item.iconOff,
			ImageColor3 = theme.IconDefault.Color,
			ImageTransparency = pressed and Consts.ICON_TRANSPARENCY_HOVERED or Consts.ICON_TRANSPARENCY,
		}),
		{
			Badge = BadgeComponent,
		}
	)
end

return Icon
