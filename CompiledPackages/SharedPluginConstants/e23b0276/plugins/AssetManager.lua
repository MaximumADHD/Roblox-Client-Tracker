export type ScopeType = "User" | "Group" | "Universe" | "ProjectPlaces" | "Header" | "Folder" | "RecentUploads"
local ScopeType = {
	User = "User" :: "User",
	Group = "Group" :: "Group",
	Universe = "Universe" :: "Universe",
	ProjectPlaces = "ProjectPlaces" :: "ProjectPlaces",
	Folder = "Folder" :: "Folder",
	Header = "Header" :: "Header",
	RecentUploads = "RecentUploads" :: "RecentUploads",
}

export type CreatorInventoryItemType =
	"Animation"
	| "AnimatedImage"
	| "Audio"
	| "Decal"
	| "FontFamily"
	| "Image"
	| "Mesh"
	| "MeshPart"
	| "Model"
	| "Place"
	| "Plugin"
	| "TextDocument"
	| "Video"
	| "Folder"
local CreatorInventoryItemType = {
	Animation = "Animation" :: "Animation",
	AnimatedImage = "AnimatedImage" :: "AnimatedImage",
	Audio = "Audio" :: "Audio",
	Decal = "Decal" :: "Decal",
	FontFamily = "FontFamily" :: "FontFamily",
	Image = "Image" :: "Image",
	Mesh = "Mesh" :: "Mesh",
	MeshPart = "MeshPart" :: "MeshPart",
	Model = "Model" :: "Model",
	Place = "Place" :: "Place",
	Plugin = "Plugin" :: "Plugin",
	TextDocument = "TextDocument" :: "TextDocument",
	Video = "Video" :: "Video",
	Folder = "Folder" :: "Folder",
}

export type ViewType = "List" | "Grid"
local ViewType = {
	List = "List" :: "List",
	Grid = "Grid" :: "Grid",
}

export type OpenFromExternalTriggerConfig = {
	-- Who sent the request, reported in analytics
	Source: string,
	-- Filters to these asset types. Types Asset Manager doesn't support are ignored.
	ItemTypes: { CreatorInventoryItemType }?,
	-- Filters to packages, like Asset Manager's Package filter. Packages aren't an asset type in Asset Manager.
	IsPackage: boolean?,
	-- The inventory to open. Falls back to the user's inventory if it can't be resolved.
	-- ScopeId may be omitted for User, Universe, and RecentUploads to mean the current user, experience, or uploads.
	ScopeType: ScopeType?,
	ScopeId: number?,
	-- How to lay out the opened inventory. Keeps Asset Manager's current layout if omitted.
	ViewType: ViewType?,
}

local ASSET_MANAGER = {
	CPC_ID = "CPC::AssetManager",
	CPC_EVENTS = {
		IMPORT_ASSET_VERSION = "ImportAssetVersion",
	},
	MEMSTORAGE_EVENTS = {
		OPEN_FROM_EXTERNAL_TRIGGER = "OpenAssetManagerFromExternalTrigger",
	},
	ENUMS = {
		CREATOR_INVENTORY_ITEM_TYPE = CreatorInventoryItemType,
		SCOPE_TYPE = ScopeType,
		VIEW_TYPE = ViewType,
	},
}
return ASSET_MANAGER
