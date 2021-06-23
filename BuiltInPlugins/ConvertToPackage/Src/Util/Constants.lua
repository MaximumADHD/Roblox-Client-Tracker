local Plugin = script.Parent.Parent.Parent
local wrapStrictTable = require(Plugin.Src.Util.wrapStrictTable)
local convertArrayToTable = require(Plugin.Src.Util.convertArrayToTable)
local getUserId = require(Plugin.Src.Util.getUserId)

local TextService = game:GetService("TextService")

local Constants = {}

Constants.FONT = Enum.Font.SourceSans
Constants.FONT_BOLD = Enum.Font.SourceSansBold
Constants.FONT_SIZE_SMALL = 14
Constants.FONT_SIZE_MEDIUM = 16
Constants.FONT_SIZE_LARGE = 18
Constants.FONT_SIZE_TITLE = 22


function Constants.getTextSize(text, fontSize, font, frameSize)
	fontSize = fontSize or Constants.FONT_SIZE_MEDIUM
	font = font or Constants.FONT
	frameSize = frameSize or Vector2.new(0, 0)

	return TextService:GetTextSize(text, fontSize, font, frameSize)
end

Constants.SCROLLBAR_THICKNESS = 8
Constants.SCROLLBAR_PADDING = 2
Constants.SCROLLBAR_BACKGROUND_THICKNESS = Constants.SCROLLBAR_THICKNESS + (2 * Constants.SCROLLBAR_PADDING)

Constants.DROPDOWN_WIDTH = 80
Constants.DROPDOWN_ITEM_WIDTH = 120
Constants.DROPDOWN_HEIGHT = 25

Constants.DROPDOWN_SELECTED_BAR = 5
Constants.DROPDOWN_TEXT_INSET = 3
Constants.DROPDOWN_ICON_SIZE = 12
Constants.DROPDOWN_ICON_FROM_RIGHT = 4

Constants.FOOTER_HEIGHT = 35

Constants.MESSAGE_BOX_BUTTON_WIDTH = 100

Constants.NAME_CHARACTER_LIMIT = 50
Constants.DESCRIPTION_CHARACTER_LIMIT = 1000

Constants.TITLE_GUTTER_WIDTH = 180

Constants.Images = {
	ARROW_DOWN_ICON = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
	IMAGE_PLACEHOLDER = "rbxasset://textures/StudioConvertToPackagePlugin/placeholder.png",
	TOGGLE_ON_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
	TOGGLE_ON_LIGHT = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
	TOGGLE_OFF_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
	TOGGLE_OFF_LIGHT = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
	TOGGLE_DISABLE_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png",
	TOGGLE_DISABLE_LIGHT	= "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
}

Constants.OWNER_TYPES = {
	User = 1,
	Group = 2
}

Constants.CREATOR_ENUM_TO_OWNER_TYPE = {
	[Enum.CreatorType.User] = Constants.OWNER_TYPES.User,
	[Enum.CreatorType.Group] = Constants.OWNER_TYPES.Group,
}

Constants.SCREENS = convertArrayToTable({
	"CONFIGURE_ASSET",
	"UPLOADING_ASSET",
	"UPLOAD_ASSET_RESULT",
})

function Constants.getOwnerDropDownContent(groupsArray, localization)
	local result = {
		{name = localization:getText("General", "Me"), Text = localization:getText("General", "Me"), creatorType = "User", creatorId = getUserId(), Key = 1}
	}
	local currentIndex = 2
	if game:GetFastFlag("FixPackageOwnerDefault") then
		if game.CreatorType == Enum.CreatorType.Group and next(groupsArray) == nil then
			-- we haven't fetched groups yet, but we need to have the group owning this place as an option
			local owningGroupItem = {
				-- this just exists so that the dropdown can select the owning group as the default when it first opens,
				-- so these blank strings won't be seen by the user unless the group data request takes a *long* time
				name = "",
				Text = "",
				creatorType = "Group",
				creatorId = game.CreatorId,
				Key = currentIndex
			}
			table.insert(result, owningGroupItem)
			return result
		end
	end
	for _, groupData in pairs(groupsArray) do
		local newDropDownitem = {
			name = groupData.name,
			Text = groupData.name,
			creatorType = "Group",
			creatorId = groupData.id,
			item = groupData,
			Key = currentIndex
		}

		table.insert(result, newDropDownitem)
		currentIndex = currentIndex + 1
	end
	return result
end

return wrapStrictTable(Constants, "Constants")
