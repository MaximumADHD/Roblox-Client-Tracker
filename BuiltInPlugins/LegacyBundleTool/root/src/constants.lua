local constants = {}

constants.SCREENS = {
	INPUT_BUNDLE_ID = "INPUT_BUNDLE_ID",
	SELECT_MESH_PART = "SELECT_MESH_PART",
}

constants.FIRST_SCREEN = constants.SCREENS.INPUT_BUNDLE_ID

constants.TITLE = "Legacy Bundle Tool"

constants.TAG = "LegacyBundleToolAsset"

constants.WINDOW_SIZE = Vector2.new(500, 300)

constants.FONT = Enum.Font.SourceSans
constants.FONT_SIZE = 24

constants.AVATAR_IMPORTER_RIG_NAMES = {
	ImportedRthroRig = true,
	ImportedRthroSlenderRig = true,
	ImportedR15Rig = true,
	FBXImportGeneric = true,
}

constants.FETCH_URL = "https://assetgame.roblox.com/asset/?id=%s"
constants.HEAD_ASSET_FORMAT = "avatar_meshpart_head"

return constants
