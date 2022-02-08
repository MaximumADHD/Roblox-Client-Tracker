local constants = {}

constants.SCREENS = {
	INPUT_BUNDLE_ID = "INPUT_BUNDLE_ID",
	SELECT_RIG = "SELECT_RIG",
	INPUT_HEAD_ID = "INPUT_HEAD_ID",
	INPUT_ACCESSORY_ID = "INPUT_ACCESSORY_ID",
}

constants.MODE = {
	BUNDLE = "BUNDLE",
	HEAD = "HEAD",
	ACCESSORY = "ACCESSORY",
}

constants.TITLE = "Cage Mesh Migration Tool"

constants.TAG = "CageMeshMigrationToolAsset"

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
constants.ACCESSORY_ASSET_FORMAT = "avatar_meshpart_accessory"

constants.ASSET_TYPE_ID_MAP = {
	Image = 1,
	TShirt = 2,
	Audio = 3,
	Mesh = 4,
	Lua = 5,
	Hat = 8,
	Place = 9,
	Model = 10,
	Shirt = 11,
	Pants = 12,
	Decal = 13,
	Head = 17,
	Face = 18,
	Gear = 19,
	Badge = 21,
	Animation = 24,
	Torso = 27,
	RightArm = 28,
	LeftArm = 29,
	LeftLeg = 30,
	RightLeg = 31,
	Package = 32,
	GamePass = 34,
	Plugin = 38,
	MeshPart = 40,
	HairAccessory = 41,
	FaceAccessory = 42,
	NeckAccessory = 43,
	ShoulderAccessory = 44,
	FrontAccessory = 45,
	BackAccessory = 46,
	WaistAccessory = 47,
	ClimbAnimation = 48,
	DeathAnimation = 49,
	FallAnimation = 50,
	IdleAnimation = 51,
	JumpAnimation = 52,
	RunAnimation = 53,
	SwimAnimation = 54,
	WalkAnimation = 55,
	PoseAnimation = 56,
	EarAccessory = 57,
	EyeAccessory = 58,
	EmoteAnimation = 61,
	Video = 62,
	TShirtAccessory = 64,
	ShirtAccessory = 65,
	PantsAccessory = 66,
	JacketAccessory = 67,
	SweaterAccessory = 68,
	ShortsAccessory = 69,
	LeftShoeAccessory = 70,
	RightShoeAccessory = 71,
	DressSkirtAccessory = 72,
}

constants.ACCESSORY_ASSET_TYPE_ID_SET = {
	[constants.ASSET_TYPE_ID_MAP.Hat] = true,
	[constants.ASSET_TYPE_ID_MAP.HairAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.FaceAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.NeckAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.ShoulderAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.FrontAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.BackAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.WaistAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.EarAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.EyeAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.TShirtAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.ShirtAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.PantsAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.JacketAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.SweaterAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.ShortsAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.LeftShoeAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.RightShoeAccessory] = true,
	[constants.ASSET_TYPE_ID_MAP.DressSkirtAccessory] = true,
}

-- reverse lookup
constants.ASSET_TYPE_ID_MAP_REVERSE = {}
for k, v in pairs(constants.ASSET_TYPE_ID_MAP) do
	constants.ASSET_TYPE_ID_MAP_REVERSE[v] = k
end

constants.WHITELISTED_ASSET_TYPE_IDS = {
	[constants.ASSET_TYPE_ID_MAP.Head] = true,
	[constants.ASSET_TYPE_ID_MAP.Torso] = true,
	[constants.ASSET_TYPE_ID_MAP.RightArm] = true,
	[constants.ASSET_TYPE_ID_MAP.LeftArm] = true,
	[constants.ASSET_TYPE_ID_MAP.LeftLeg] = true,
	[constants.ASSET_TYPE_ID_MAP.RightLeg] = true,
}

return constants
