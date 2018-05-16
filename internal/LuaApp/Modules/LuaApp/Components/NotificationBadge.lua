local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)

local BADGE = "rbxasset://textures/ui/LuaApp/graphic/gr-notification badge.png"

local BADGE_HEIGHT = 18
local BADGE_WIDTH = 18
local BADGE_WIDTH_3_DIGIT = 24
local BADGE_SLICE_CENTER = Rect.new(9, 9, 9, 9)
local BADGE_SLICE_CENTER_3_DIGIT = Rect.new(9, 9, 9, 16)

local BADGE_OFFSET = 6
local BADGE_TEXT_SIZE_OFFSET = 3

local FONT = Enum.Font.SourceSans

local function NotificationBadge(props)
	local layoutOrder = props.layoutOrder
	local notificationCount = props.notificationCount

	if not notificationCount or tonumber(notificationCount) == 0 then
		return nil
	end

	local badgeWidth = BADGE_WIDTH
	local badgeHeight = BADGE_HEIGHT
	local sliceCenter = BADGE_SLICE_CENTER

	if string.len(notificationCount) > 2 then
		badgeWidth = BADGE_WIDTH_3_DIGIT
		sliceCenter = BADGE_SLICE_CENTER_3_DIGIT
	end

	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, badgeWidth, 0, badgeHeight),
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, BADGE_OFFSET, 0, -BADGE_OFFSET),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Image = BADGE,
		LayoutOrder = layoutOrder,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = sliceCenter,
	}, {
		Count = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, badgeWidth - BADGE_TEXT_SIZE_OFFSET, 0, badgeHeight - BADGE_TEXT_SIZE_OFFSET),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, -1, 0.5, -3),	-- Values are specific to iOS, found with trial and error to match spec.
			BackgroundTransparency = 1,
			Text = notificationCount,
			TextColor3 = Constants.Color.WHITE,
			TextScaled = true,
			Font = FONT,
		}),
	})
end

return NotificationBadge