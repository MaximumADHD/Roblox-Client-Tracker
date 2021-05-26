local root = script.Parent.Parent

-- imports
local convertArrayToTable = require(root.src.utils.convertArrayToTable)

-- constants
local Constants = {}

Constants.NAME = "AvatarImporter"
Constants.TITLE = "Avatar Importer"

Constants.TOOLBAR_NAME = "Avatar"
Constants.BUTTON_NAME = "Avatar Importer"
Constants.BUTTON_TOOLTIP = "Import an Avatar with a .fbx file"

Constants.AVATAR_IMPORTER_DEVHUB = "articles/using-avatar-importer"
Constants.AVATAR_IMPORTER_DEVHUB_URL = "https://developer.roblox.com/en-us/articles/using-avatar-importer"

Constants.AVATAR_TYPE = {
	RTHRO = "Rthro",
	RTHRO_SLENDER = "RthroSlender",
	R15 = "R15",
	CUSTOM = "Custom",
}

Constants.TYPE_TO_SCALE = {
	Rthro = "ProportionsNormal",
	RthroSlender = "ProportionsSlender",
	R15 = "Classic",
}

Constants.RTHRO_INFO = {
	title = "Rthro Type",
	height = 6.25,
	description = "shoulders wider than hips"
}

Constants.RTHRO_SLENDER_INFO = {
	title = "Rthro Slender Type",
	height = 5.625,
	description = "shoulders narrower than hips"
}

Constants.R15_INFO = {
	title = "R15 Type",
	height = 5,
}

Constants.CUSTOM_INFO = {
	title = "Custom Type",
}

Constants.BUTTON_AMT = 4
Constants.BUTTON_WIDTH = 146
Constants.BUTTON_HEIGHT = 219
Constants.BUTTON_SIDE_PADDING = 67
Constants.BUTTON_CENTER_PADDING = 37
Constants.BUTTON_TOP_PADDING = 63

Constants.BACKGROUND_WIDTH =
	Constants.BUTTON_SIDE_PADDING
	+ Constants.BUTTON_WIDTH*Constants.BUTTON_AMT
	+ Constants.BUTTON_CENTER_PADDING*(Constants.BUTTON_AMT - 1)
	+ Constants.BUTTON_SIDE_PADDING
Constants.BACKGROUND_HEIGHT = 413

Constants.SCREENS = convertArrayToTable({
	"AVATAR",
	"LOADING",
	"ERROR",
})

Constants.SCALE_VALUES_DEFAULTS = {
	R15 = {
		HeadScale = 1,
		BodyHeightScale = 1,
		BodyWidthScale = 1,
		BodyDepthScale = 1,
		BodyTypeScale = 0,
		BodyProportionScale = 0
	},
	Rthro = {
		HeadScale = 1,
		BodyHeightScale = 1,
		BodyWidthScale = 1,
		BodyDepthScale = 1,
		BodyTypeScale = 1,
		BodyProportionScale = 0
	},
	RthroNarrow = {
		HeadScale = 1,
		BodyHeightScale = 1,
		BodyWidthScale = 1,
		BodyDepthScale = 1,
		BodyTypeScale = 1,
		BodyProportionScale = 1
	}
}

Constants.ERROR_NO_FILE = "No FBX file selected"

Constants.FONT = Enum.Font.SourceSans
Constants.FONT_SEMIBOLD = Enum.Font.SourceSansSemibold
Constants.FONT_BOLD = Enum.Font.SourceSansBold

Constants.FONT_SIZE_SMALL = 14
Constants.FONT_SIZE_MEDIUM = 16
Constants.FONT_SIZE_LARGE = 18
Constants.FONT_SIZE_TITLE = 20

Constants.REQUIREMENTS_DESCRIPTION = "Avatar file needs to be FBX file following Avatar types and import requirements"
Constants.REQUIREMENTS_LINK_TEXT = "What are Avatar types and import requirements?"

return Constants