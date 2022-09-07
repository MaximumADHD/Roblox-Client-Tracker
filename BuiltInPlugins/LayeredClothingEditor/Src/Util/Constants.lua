local Constants = {
	USE_MOCK_RBF_DATA = false,
	CLUSTER_THRESHOLD = 0.12,
	DEFAULT_FALLOFF = 0.5,
	MAX_FALLOFF = 20,
	MAX_TRANSPARENCY = 100,
	DEFAULT_LATTICE_SUBDIVISIONS = Vector3.new(1, 3, 1),
	DEFAULT_CAGE_TRANSPARENCY = 100,
	MANNEQUIN_PATH = "rbxasset://models/LayeredClothingEditor/mannequin.rbxm",
	HEAD_TEMPLATE_PATH = "rbxasset://models/LayeredClothingEditor/PartHeadTemplate.rbxm",
	PREVIEW_FOLDER_NAME = "LayeredClothingEditorPreview",
	PREVIEW_REMOTE_EVENT_NAME = "PreviewChanged",

	MOCK_HIP_OFFSET = Vector3.new(0, 4.1, 0),

	MAX_WAYPOINTS = 20,

	CAGE_SAVE_DATA_FOLDER = "CageSaveData",

	LCE_POINT_TAG = "LCE_Point_Tag",
	LCE_CONTROL_TAG = "LCE_Control_Tag",

	DRAGGER_STATES = {
		Ready = "Ready",
		DragSelecting = "DragSelecting",
	},

	TOOL_MODE = {
		None = "None",
		Point = "PointTool",
		Lattice = "LatticeTool",
		Reset = "Reset",
		Finish = "Finish",
	},

	EDIT_MODE = {
		Outer = Enum.CageType.Outer,
		Inner = Enum.CageType.Inner,
		Mesh = Enum.MeshType.FileMesh,
	},

	SELECTOR_MODE =  {
		None = "None",
		EditingItem = "EditingItem",
		Preview = "Preview",
	},

	KEY_SHORTCUTS = {
		LockControl = Enum.KeyCode.R,
	},

	SIGNAL_KEYS = {
		SelectionChanged = "SelectionChanged",
		ToolChanged = "ToolChanged",
		PluginWindowFocused = "PluginWindowFocused",
	},

	SCREENS = {
		Select = "Select",
		AssetType = "AssetType",
		Edit = "Edit",
		Generate = "Generate",
	}
}

Constants.EDIT_MODE_KEY_TO_STRING = {
	[Constants.EDIT_MODE.Inner] = "Inner",
	[Constants.EDIT_MODE.Outer] = "Outer",
	[Constants.EDIT_MODE.Mesh] = "Mesh",
}

return Constants