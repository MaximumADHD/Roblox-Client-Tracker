local Plugin = script.Parent.Parent.Parent
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagFaceControlsEditorUIUpdate = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUIUpdate)
local GetFFlagFaceControlsEditorBugBash2Update = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorBugBash2Update)
local GetFFlagCreateAnimationFromVideoMultiplePeopleStatusCode = require(Plugin.LuaFlags.GetFFlagCreateAnimationFromVideoMultiplePeopleStatusCode)

local Constants = {
	PLUGIN_NAME = "AnimationClipEditor",

	PLUGIN_BUTTON_IMAGE = "rbxasset://textures/AnimationEditor/animation_editor_blue.png",
	CHECK_IMAGE = "rbxasset://textures/ui/LuaChat/icons/ic-check@2x.png",

	SETTINGS = {
		EulerAnglesOrder = "ACE_EulerAnglesOrder",
		RotationType = "ACE_RotationType",
		ShowAsSeconds = "ACE_ShowAsSeconds",
		SnapMode = "ACE_SnapMode",
	},

	ZOOM_INCREMENT = 0.04,

	DEFAULT_FRAMERATE = 30,
	MIN_FRAMERATE = 1,
	MAX_FRAMERATE = 120,
	MIN_PLAYBACK_SPEED = 0.01,
	MAX_PLAYBACK_SPEED = 10,

	MAX_TIME = 1800,
	TICK_FREQUENCY = 2400,
	DEFAULT_TICK_FREQUENCY = GetFFlagChannelAnimations() and 2400 or nil,

	MAX_DISPLAYED_TIME = 30,
	MIN_TIMELINE_RANGE = 30,

	MAIN_FLOATING_SIZE = Vector2.new(640, 200),

	MAX_WAYPOINT_SIZE = 20,
	MIN_SPACE_BETWEEN_KEYS = 8,

	TRACK_PADDING_SMALL = 72,
	TRACK_PADDING_MEDIUM = 84,
	TRACK_PADDING_LARGE = 96,
	SUMMARY_TRACK_HEIGHT = 22,
	TRACK_HEIGHT = 22,
	EVENT_MARKER_SIZE = UDim2.new(0, 6, 0, 20),
	EVENT_MARKER_BORDER_SIZE = UDim2.new(0, 8, 0, 22),

	TIMELINE_HEIGHT = 24,
	CONTROLS_WIDTH = 200,
	TIME_DISPLAY_WIDTH = 100,

	SCROLL_BAR_SIZE = 17,
	SCROLL_BAR_PADDING = 2,

	TRACK_LIST_START_WIDTH = (GetFFlagChannelAnimations() and 440 or 425),
	TRACK_LIST_MIN_WIDTH = (GetFFlagChannelAnimations() and 440 or 425),
	TIMELINE_MIN_WIDTH = 200,

	INDENT_PADDING = 8,
	ARROW_SIZE = 10,
	TRACKLIST_BUTTON_SIZE = 16,
	TRACKLIST_RIGHT_PADDING = 8,

	NUMBERBOX_WIDTH = if GetFFlagCurveEditor() then 80 else 70,
	NUMBERBOX_PADDING = 4,
	NUMBERBOX_DRAG_MULTIPLIER = 0.05,
	NUMBERBOX_FACS_DRAG_MULTIPLIER = 0.01,
	NUMBERTRACK_PADDING = 5,

	KEYFRAME_WIDTH = 6,
	KEYFRAME_BORDER_SIZE = 1,
	KEYFRAME_BORDER_SIZE_SELECTED = 2,
	SUMMARY_KEYFRAME_WIDTH = 8,

	MAX_VISIBLE_KEYFRAMES = 1000,
	LENGTH_PADDING = 1,
	NUM_TICKS = 5,
	TICK_SPACING = 125,
	SCALE_NUM_TICKS = 5,
	SCALE_TICK_SPACING = 300,

	PROMPT_SIZE = UDim2.new(0, 320, 0, 130),
	PROMPT_BUTTON_SIZE = Vector2.new(100, 25),
	PROMPT_BUTTON_PADDING = 10,
	PROMPT_VERTICAL_PADDING = 15,
	PROMPT_HORIZONTAL_PADDING = 20,

	TRANSLATION_STIFFNESS = 0.7,
	ROTATION_STIFFNESS = 0.7,
	MIN_TRANSLATION_STIFFNESS = 0.01,
	MIN_ROTATION_STIFFNESS = 0.01,
	MIN_EFFECTOR_DISTANCE = 10,

	BONE_CLASS_NAME = "Bone",
	MOTOR_CLASS_NAME = "Motor6D",

	-- Bone Vis Constants
	BONE_NODE_COLOR = Color3.fromRGB(232, 112, 240),
	BONE_LINK_COLOR = Color3.fromRGB(107, 50, 124),
	BONE_CONE_COLOR = Color3.fromRGB(207, 88, 224),
	BONE_NODE_TRANSPARENCY = 0.15,
	BONE_LINK_TRANSPARENCY = 0.45,
	BONE_TRANSPARENCY_DEFAULT = 0.3,
	BONE_TRANSPARENCY_HOVER = 0,
	BONE_COLOR_DEFAULT = Color3.fromRGB(207, 88, 224),
	BONE_COLOR_HOVER = Color3.fromRGB(300, 88, 224),
	BONE_COLOR_SELECTED = Color3.fromRGB(13, 105, 172),
	LENGTH_TO_RADIUS_RATIO = 15,

	SNAP_TO_KEYFRAME_THRESHOLD = 30, --in pixels

	SNAP_MODES = {
		Keyframes = "Keyframes",
		Frames = "Frames",
		None = "None",
	},

	TEMPORARY_CONSTRAINTS = "ROBLOX_R15_IK_CONSTRAINTS",

	DEFAULT_IMPORTED_NAME = "Imported Animation Clip",
	DEFAULT_AUTOSAVE_NAME = "Automatic Save",
	DEFAULT_KEYFRAME_NAME = "Keyframe",

	FACE_CONTROLS_FOLDER = "FaceControls",

	TRACK_TYPES = {
		CFrame = "CFrame",
		Facs = "Facs",
		Other = "Other",

		Position = GetFFlagChannelAnimations() and "Position" or nil,
		Number = GetFFlagChannelAnimations() and "Number" or nil,
		Angle = GetFFlagChannelAnimations() and "Angle" or nil,
		Quaternion = GetFFlagChannelAnimations() and "Quaternion" or nil,
		EulerAngles = GetFFlagChannelAnimations() and "EulerAngles" or nil,
	},

	INSTANCE_TYPES = {
		Skeleton = "Skeleton",
		Rig = "Rig",
	},

	-- User-facing text values that should not be localized,
	-- because they can be referenced from code.
	PROPERTY_KEYS = {
		Position = "Position",
		Rotation = "Rotation",
		Quaternion = if GetFFlagCurveEditor() then nil else (if GetFFlagChannelAnimations() then "Quaternion" else nil),  -- Unused
		X = "X",
		Y = "Y",
		Z = "Z",
	},

	-- Button or menu item keys that are referenced in code.
	-- Not used for display text.
	ACTION_KEYS = {
		Edit = "Edit",
		Delete = "Delete",
	},

	CLIP_DROPDOWN_TYPES = {
		Clip = "Clip",
		NewClip = "New Clip",
		Separator = "Separator",
	},

	RIG_ERRORS = {
		NameCollision = "NameCollision",
		NoMotors = "NoMotors",
		PartsAnchored = "PartsAnchored",
		MissingPart0 = "MissingPart0",
		MissingPart1 = "MissingPart1",
		MultipleParents = "MultipleParents",
		MissingPart0_Migrated = "MissingPart0_Migrated",
		MissingPart1_Migrated = "MissingPart1_Migrated",
		MultipleParents_Migrated = "MultipleParents_Migrated",
		CircularRig = "CircularRig",
		NoAnimationController = "NoAnimationController",
	},

	EDITOR_ERRORS = {
		OpenedWhileRunning = "OpenedWhileRunning",
	},

	EDITOR_ERRORS_HEADER_KEY = "EditorErrorsHeader",
	EDITOR_ERRORS_KEY = "EditorErrors",
	RIG_ERRORS_HEADER_KEY = "ErrorsHeader",
	RIG_ERRORS_KEY = "RigErrors",
	DIALOG_KEY = "Dialog",


	TIMELINE_UNITS = {
		Seconds = "Seconds",
		Frames = "Frames",
	},

	FRAMERATES = {
		FPS_24 = 24,
		FPS_30 = 30,
		FPS_60 = 60,
		FPS_120 = 120,
		CUSTOM = -1
	},

	PLAYBACK_SPEEDS = {
		PBS_025 = 0.25,
		PBS_05 = 0.5,
		PBS_1 = 1,
		PBS_2 = 2,
		PBS_4 = 4,
		CUSTOM = -1
	},

	CLIPBOARD_TYPE = {
		Events = "Events",
		Keyframes = "Keyframes",
		Channels = GetFFlagChannelAnimations() and "Channels" or nil,
	},

	MENU_SEPARATOR = "Separator",

	KEYFRAME_STYLE = {
		Primary = "Primary",
		Error = "Error",
		PrimaryError = "PrimaryError",
		[Enum.PoseEasingStyle.Bounce] = "Bounce",
		[Enum.PoseEasingStyle.Constant] = "Constant",
		[Enum.PoseEasingStyle.Cubic] = "Cubic",
		[Enum.PoseEasingStyle.Elastic] = "Elastic",
	},

	MENU_ICONS = {
		[Enum.PoseEasingStyle.Linear] = "rbxasset://textures/AnimationEditor/image_keyframe_linear_unselected.png",
		[Enum.PoseEasingStyle.Bounce] = "rbxasset://textures/AnimationEditor/image_keyframe_bounce_unselected.png",
		[Enum.PoseEasingStyle.Constant] = "rbxasset://textures/AnimationEditor/image_keyframe_constant_unselected.png",
		[Enum.PoseEasingStyle.Cubic] = "rbxasset://textures/AnimationEditor/image_keyframe_cubic_unselected.png",
		[Enum.PoseEasingStyle.Elastic] = "rbxasset://textures/AnimationEditor/image_keyframe_elastic_unselected.png",
	},

	IK_MODE = {
		BodyPart = "BodyPart",
		FullBody = "FullBody",
	},

	SIGNAL_KEYS = {
		SelectionChanged = "SelectionChanged",
		ScrubberChanged = "ScrubberChanged"
	},

	R15_PARTS = {
		UpperTorso = "UpperTorso",
		LowerTorso = "LowerTorso",
		LeftFoot = "LeftFoot",
		RightFoot = "RightFoot",
		HumanoidRootPart = "HumanoidRootPart",
		Head = "Head",
		RightUpperLeg = "RightUpperLeg",
		RightLowerLeg = "RightLowerLeg",
		RightHand = "RightHand",
		LeftUpperLeg = "LeftUpperLeg",
		LeftLowerLeg = "LeftLowerLeg",
		LeftHand = "LeftHand",
		RightUpperArm = "RightUpperArm",
		RightLowerArm = "RightLowerArm",
		LeftUpperArm = "LeftUpperArm",
		LeftLowerArm = "LeftLowerArm",
	},

	CONSTRAINTS_CONFIG = {
		Ankle = {
			Type = "BallSocketConstraint",
			LimitsEnabled = false,
			Restitution = 0,
			TwistLimitsEnabled = false,
			UpperAngle = 20,
			TwistLowerAngle = -20,
			TwistUpperAngle = 20,
		},

		Knee = {
			Type = "HingeConstraint",
			LimitsEnabled = true,
			LowerAngle = -135,
			Restitution = 0,
			UpperAngle = -10,
		},

		Hip = {
			Type = "BallSocketConstraint",
			LimitsEnabled = true,
			Restitution = 0,
			TwistLimitsEnabled = true,
			UpperAngle = 80,
			TwistLowerAngle = -3,
			TwistUpperAngle = 3,
			Axis = Vector3.new(0, -1, 0),
			SecondaryAxis = Vector3.new(0, 0, 1)
		},

		Waist = {
			Type = "HingeConstraint",
			LimitsEnabled = true,
			LowerAngle = -90,
			Restitution = 0,
			UpperAngle = 90,
		},

		Shoulder = {
			Type = "BallSocketConstraint",
			LimitsEnabled = true,
			Restitution = 0,
			TwistLimitsEnabled = false,
			UpperAngle = 170,
			TwistLowerAngle = -90,
			TwistUpperAngle = 135,
		},

		Elbow = {
			Type = "HingeConstraint",
			LimitsEnabled = true,
			LowerAngle = 0,
			Restitution = 0,
			UpperAngle = 135,
		},

		Wrist = {
			Type = "BallSocketConstraint",
			LimitsEnabled = true,
			Restitution = 0,
			TwistLimitsEnabled = true,
			UpperAngle = 20,
			TwistLowerAngle = 0,
			TwistUpperAngle = 0,
		},

		Neck = {
			Type = "BallSocketConstraint",
			LimitsEnabled = true,
			Restitution = 0,
			TwistLimitsEnabled = false,
			UpperAngle = 30,
			TwistLowerAngle = -70,
			TwistUpperAngle = 70,
		}
	},

	FACS_REGIONS = {
		Mouth = "Mouth",
		Jaw = "Jaw",
		Brows = "Brows",
		Eyes = "Eyes",
		Tongue = "Tongue",
		Other = "Other",
	},

	POSE_EASING_STYLE_TO_KEY_INTERPOLATION = GetFFlagChannelAnimations() and {
		[Enum.PoseEasingStyle.Constant] = Enum.KeyInterpolationMode.Constant,
		[Enum.PoseEasingStyle.Linear] = Enum.KeyInterpolationMode.Linear,
		[Enum.PoseEasingStyle.Cubic] = Enum.KeyInterpolationMode.Cubic,
		[Enum.PoseEasingStyle.Bounce] = Enum.KeyInterpolationMode.Cubic,
		[Enum.PoseEasingStyle.Elastic] = Enum.KeyInterpolationMode.Cubic,
	} or nil,

	KEY_INTERPOLATION_MODE_ORDER = GetFFlagChannelAnimations() and {
		Enum.KeyInterpolationMode.Linear,
		Enum.KeyInterpolationMode.Constant,
		Enum.KeyInterpolationMode.Cubic,
	} or nil,

	SLOPES = GetFFlagChannelAnimations() and {
		Right = "Right",
		Left = "Left",
	} or nil,

	DRAG_MODE = GetFFlagCurveEditor() and {
		Keyframe = "Keyframe",
		Tangent = "Tangent"
	} or nil,

	PLAY_STATE = {
		Reverse = "Reverse",
		Pause = "Pause",
		Play = "Play",
	},

	EDITOR_MODE = {
		DopeSheet = "DopeSheet",
		CurveCanvas = "CurveCanvas",
	},

	CURVE_WIDTH = 1,				-- Width (in pixels) of the curves in curve editor
	CURVE_WIDTH_SELECTED = 2,		-- Width (in pixels) of the curves when selected
	CURVE_RESOLUTION = 25,			-- When rendering a curve, this is the max number of pixels one segment can be before being split.
	CURVE_REFINEMENT = 5,			-- When a curve reaches the RESOLUTION size, it is subdivided in REFINEMENT segments.
	CURVE_INTERVAL = 5,				-- Horizontal size (in pixels) of each line segment when rendering a curve.
	CURVE_CANVAS_PADDING = 0.10,	-- Percentage kept blank above max/below min value in the curve canvas when completely zoomed out.
	CURVE_CANVAS_MIN_RANGE = 0.2,	-- Minimum range of values covered by the curve canvas when zoomed out.
	TANGENT_CONTROL_LENGTH = 0.09,	-- Length of a tangent control. This is a percentage of the height of the canvas, and should be less
									-- than CURVE_CANVAS_PADDING to ensure that the tangent is always entirely displayed
	TANGENT_CONTROL_WIDTH = 1,		-- Width (in pixels) of the tangent controls
	SCRUBBER_MARKER_WIDTH = 3,		-- Width (in pixels) of the scrubber markers following the curves (should be <= KEYFRAME_WIDTH)

	NUMBER_PRECISION = 1000,		-- Default precision of numbers in textboxes (position, rotation)
	NUMBER_FACS_PRECISION = 100,	-- Precision for FACS values

	SCALE_TYPE = {					-- Type of scale to display in the Curve Editor (Number will be on the left, Angle will be on the right)
		Number = "Position",
		Angle = "Angle",
	},

	TICK_LABEL_SIZE = UDim2.new(0, 25, 0, 15),
	TOGGLE_EDITOR_BUTTON_WIDTH = 17,
	TOGGLE_EDITOR_BUTTON_HEIGHT = 16,

	CLAMPED_AUTO_TANGENT_THRESHOLD = 0.25,

	ANIMATION_FROM_VIDEO_STATUS = {
		Initializing = 0,
		Pending = 1,
		Processing = 2,
		RequiresModeration = 3,
		Error = 4,
		ModerationRejected = 5,
		Success = 6,
		InputTooLong = 7,
		InputHasNoPerson = 8,
		InputUnstable = 9,
		TimedOut = 10,
		Cancelled = 11,
		MultiplePeopleInFrame = GetFFlagCreateAnimationFromVideoMultiplePeopleStatusCode() and 12 or nil
	},

	ANIMATION_TYPE = {
		KeyframeSequence = "KeyframeSequence",
		CurveAnimation = "CurveAnimation",
	},

	CANVAS_ZOOM_INCREMENT = 0.1
}

Constants.MAIN_MINIMUM_SIZE = Vector2.new(Constants.TRACK_LIST_MIN_WIDTH + Constants.TIMELINE_MIN_WIDTH, 200)

Constants.MAX_ANIMATION_LENGTH = Constants.MAX_TIME * Constants.TICK_FREQUENCY

Constants.PartToConstraintConfigMap = {
	[Constants.R15_PARTS.UpperTorso] = Constants.CONSTRAINTS_CONFIG.Waist,
	[Constants.R15_PARTS.RightUpperLeg] = Constants.CONSTRAINTS_CONFIG.Hip,
	[Constants.R15_PARTS.LeftUpperLeg] = Constants.CONSTRAINTS_CONFIG.Hip,
	[Constants.R15_PARTS.RightUpperArm] = Constants.CONSTRAINTS_CONFIG.Shoulder,
	[Constants.R15_PARTS.LeftUpperArm] = Constants.CONSTRAINTS_CONFIG.Shoulder,
	[Constants.R15_PARTS.Head] = Constants.CONSTRAINTS_CONFIG.Neck,
	[Constants.R15_PARTS.LeftLowerArm] = Constants.CONSTRAINTS_CONFIG.Elbow,
	[Constants.R15_PARTS.LeftHand] = Constants.CONSTRAINTS_CONFIG.Wrist,
	[Constants.R15_PARTS.RightLowerArm] = Constants.CONSTRAINTS_CONFIG.Elbow,
	[Constants.R15_PARTS.RightHand] = Constants.CONSTRAINTS_CONFIG.Wrist,
	[Constants.R15_PARTS.LeftLowerLeg] = Constants.CONSTRAINTS_CONFIG.Knee,
	[Constants.R15_PARTS.LeftFoot] = Constants.CONSTRAINTS_CONFIG.Ankle,
	[Constants.R15_PARTS.RightLowerLeg] = Constants.CONSTRAINTS_CONFIG.Knee,
	[Constants.R15_PARTS.RightFoot] = Constants.CONSTRAINTS_CONFIG.Ankle,
}

Constants.R15links = {
	[Constants.R15_PARTS.LowerTorso] = Constants.R15_PARTS.HumanoidRootPart,
	[Constants.R15_PARTS.UpperTorso] = Constants.R15_PARTS.LowerTorso,
	[Constants.R15_PARTS.RightUpperLeg] = Constants.R15_PARTS.LowerTorso,
	[Constants.R15_PARTS.LeftUpperLeg] = Constants.R15_PARTS.LowerTorso,
	[Constants.R15_PARTS.RightUpperArm] = Constants.R15_PARTS.UpperTorso,
	[Constants.R15_PARTS.LeftUpperArm] = Constants.R15_PARTS.UpperTorso,
	[Constants.R15_PARTS.Head] = Constants.R15_PARTS.UpperTorso,
	[Constants.R15_PARTS.LeftLowerArm] = Constants.R15_PARTS.LeftUpperArm,
	[Constants.R15_PARTS.LeftHand] = Constants.R15_PARTS.LeftLowerArm,
	[Constants.R15_PARTS.RightLowerArm] = Constants.R15_PARTS.RightUpperArm,
	[Constants.R15_PARTS.RightHand] = Constants.R15_PARTS.RightLowerArm,
	[Constants.R15_PARTS.LeftLowerLeg] = Constants.R15_PARTS.LeftUpperLeg,
	[Constants.R15_PARTS.LeftFoot] = Constants.R15_PARTS.LeftLowerLeg,
	[Constants.R15_PARTS.RightLowerLeg] = Constants.R15_PARTS.RightUpperLeg,
	[Constants.R15_PARTS.RightFoot] = Constants.R15_PARTS.RightLowerLeg,
}

Constants.FacsControlToRegionMap = {
	ChinRaiserUpperLip = Constants.FACS_REGIONS.Mouth,
	ChinRaiser = Constants.FACS_REGIONS.Mouth,
	FlatPucker = Constants.FACS_REGIONS.Mouth,
	Funneler = Constants.FACS_REGIONS.Mouth,
	LowerLipSuck = Constants.FACS_REGIONS.Mouth,
	LipPresser = Constants.FACS_REGIONS.Mouth,
	LipsTogether = Constants.FACS_REGIONS.Mouth,
	MouthLeft = Constants.FACS_REGIONS.Mouth,
	MouthRight = Constants.FACS_REGIONS.Mouth,
	Pucker = Constants.FACS_REGIONS.Mouth,
	UpperLipSuck = Constants.FACS_REGIONS.Mouth,
	LeftCheekPuff = Constants.FACS_REGIONS.Mouth,
	LeftDimpler = Constants.FACS_REGIONS.Mouth,
	LeftLipCornerDown = Constants.FACS_REGIONS.Mouth,
	LeftLowerLipDepressor = Constants.FACS_REGIONS.Mouth,
	LeftLipCornerPuller = Constants.FACS_REGIONS.Mouth,
	LeftLipStretcher = Constants.FACS_REGIONS.Mouth,
	LeftUpperLipRaiser = Constants.FACS_REGIONS.Mouth,
	RightCheekPuff = Constants.FACS_REGIONS.Mouth,
	RightDimpler = Constants.FACS_REGIONS.Mouth,
	RightLipCornerDown = Constants.FACS_REGIONS.Mouth,
	RightLowerLipDepressor = Constants.FACS_REGIONS.Mouth,
	RightLipCornerPuller = Constants.FACS_REGIONS.Mouth,
	RightLipStretcher = Constants.FACS_REGIONS.Mouth,
	RightUpperLipRaiser = Constants.FACS_REGIONS.Mouth,

	JawDrop = Constants.FACS_REGIONS.Jaw,
	JawLeft = Constants.FACS_REGIONS.Jaw,
	JawRight = Constants.FACS_REGIONS.Jaw,

	Corrugator = Constants.FACS_REGIONS.Brows,
	LeftBrowLowerer = Constants.FACS_REGIONS.Brows,
	LeftOuterBrowRaiser = Constants.FACS_REGIONS.Brows,
	LeftNoseWrinkler = Constants.FACS_REGIONS.Brows,
	LeftInnerBrowRaiser = Constants.FACS_REGIONS.Brows,
	RightBrowLowerer = Constants.FACS_REGIONS.Brows,
	RightOuterBrowRaiser = Constants.FACS_REGIONS.Brows,
	RightInnerBrowRaiser = Constants.FACS_REGIONS.Brows,
	RightNoseWrinkler = Constants.FACS_REGIONS.Brows,

	EyesLookDown = Constants.FACS_REGIONS.Eyes,
	EyesLookLeft = Constants.FACS_REGIONS.Eyes,
	EyesLookUp = Constants.FACS_REGIONS.Eyes,
	EyesLookRight = Constants.FACS_REGIONS.Eyes,
	LeftCheekRaiser = Constants.FACS_REGIONS.Eyes,
	LeftEyeUpperLidRaiser = Constants.FACS_REGIONS.Eyes,
	LeftEyeClosed = Constants.FACS_REGIONS.Eyes,
	RightCheekRaiser = Constants.FACS_REGIONS.Eyes,
	RightEyeUpperLidRaiser = Constants.FACS_REGIONS.Eyes,
	RightEyeClosed = Constants.FACS_REGIONS.Eyes,

	TongueDown = Constants.FACS_REGIONS.Tongue,
	TongueOut = Constants.FACS_REGIONS.Tongue,
	TongueUp = Constants.FACS_REGIONS.Tongue,
}

Constants.FacsNames = {
	ChinRaiserUpperLip = "ChinRaiserUpperLip",
	ChinRaiser = "ChinRaiser",
	FlatPucker = "FlatPucker",
	Funneler = "Funneler",
	LowerLipSuck = "LowerLipSuck",
	LipPresser = "LipPresser",
	LipsTogether = "LipsTogether",
	MouthLeft = "MouthLeft",
	MouthRight = "MouthRight",
	Pucker = "Pucker",
	UpperLipSuck = "UpperLipSuck",
	LeftCheekPuff = "LeftCheekPuff",
	LeftDimpler = "LeftDimpler",
	LeftLipCornerDown = "LeftLipCornerDown",
	LeftLowerLipDepressor = "LeftLowerLipDepressor",
	LeftLipCornerPuller = "LeftLipCornerPuller",
	LeftLipStretcher = "LeftLipStretcher",
	LeftUpperLipRaiser = "LeftUpperLipRaiser",
	RightCheekPuff = "RightCheekPuff",
	RightDimpler = "RightDimpler",
	RightLipCornerDown = "RightLipCornerDown",
	RightLowerLipDepressor = "RightLowerLipDepressor",
	RightLipCornerPuller = "RightLipCornerPuller",
	RightLipStretcher = "RightLipStretcher",
	RightUpperLipRaiser = "RightUpperLipRaiser",

	JawDrop = "JawDrop",
	JawLeft = "JawLeft",
	JawRight = "JawRight",

	Corrugator = "Corrugator",
	LeftBrowLowerer = "LeftBrowLowerer",
	LeftOuterBrowRaiser = "LeftOuterBrowRaiser",
	LeftNoseWrinkler = "LeftNoseWrinkler",
	LeftInnerBrowRaiser = "LeftInnerBrowRaiser",
	RightBrowLowerer = "RightBrowLowerer",
	RightOuterBrowRaiser = "RightOuterBrowRaiser",
	RightInnerBrowRaiser = "RightInnerBrowRaiser",
	RightNoseWrinkler = "RightNoseWrinkler",

	EyesLookDown = "EyesLookDown",
	EyesLookLeft = "EyesLookLeft",
	EyesLookUp = "EyesLookUp",
	EyesLookRight = "EyesLookRight",
	LeftCheekRaiser = "LeftCheekRaiser",
	LeftEyeUpperLidRaiser = "LeftEyeUpperLidRaiser",
	LeftEyeClosed = "LeftEyeClosed",
	RightCheekRaiser = "RightCheekRaiser",
	RightEyeUpperLidRaiser = "RightEyeUpperLidRaiser",
	RightEyeClosed = "RightEyeClosed",

	TongueDown = "TongueDown",
	TongueOut = "TongueOut",
	TongueUp = "TongueUp",
}

Constants.FacsCrossMappings = {
	ChinRaiserUpperLip = {},
	ChinRaiser = {},
	FlatPucker = {},  --sideView
	Funneler = {},  --sideView
	LowerLipSuck = {},  --sideView
	LipPresser = {},  --sideView
	LipsTogether = {},
	MouthLeft = {sliderGroup = {Constants.FacsNames.MouthRight, Constants.FacsNames.MouthLeft}, indexInGroup = 2},
	MouthRight = {sliderGroup = {Constants.FacsNames.MouthRight, Constants.FacsNames.MouthLeft}, indexInGroup = 1},
	Pucker = {},  --sideView
	UpperLipSuck = {},  --sideView
	LeftCheekPuff = {symmetryPartner = Constants.FacsNames.RightCheekPuff},
	LeftDimpler = {symmetryPartner = Constants.FacsNames.RightDimpler},
	LeftLipCornerDown = {symmetryPartner = Constants.FacsNames.RightLipCornerDown},
	LeftLowerLipDepressor = {symmetryPartner = Constants.FacsNames.RightLowerLipDepressor},
	LeftLipCornerPuller = {symmetryPartner = Constants.FacsNames.RightLipCornerPuller},
	LeftLipStretcher = {symmetryPartner = Constants.FacsNames.RightLipStretcher},
	LeftUpperLipRaiser = {symmetryPartner = Constants.FacsNames.RightUpperLipRaiser},
	RightCheekPuff = {symmetryPartner = Constants.FacsNames.LeftCheekPuff},
	RightDimpler = {symmetryPartner = Constants.FacsNames.LeftDimpler},
	RightLipCornerDown = {symmetryPartner = Constants.FacsNames.LeftLipCornerDown},
	RightLowerLipDepressor = {symmetryPartner = Constants.FacsNames.LeftLowerLipDepressor},
	RightLipCornerPuller = {symmetryPartner = Constants.FacsNames.LeftLipCornerPuller},
	RightLipStretcher = {symmetryPartner = Constants.FacsNames.LeftLipStretcher},
	RightUpperLipRaiser = {symmetryPartner = Constants.FacsNames.LeftUpperLipRaiser},

	JawDrop = {},  --sideView
	JawLeft = {sliderGroup = {Constants.FacsNames.JawRight, Constants.FacsNames.JawLeft}, indexInGroup = 2},  --sideView
	JawRight = {sliderGroup = {Constants.FacsNames.JawRight, Constants.FacsNames.JawLeft}, indexInGroup = 1},  --sideView

	Corrugator = {},
	LeftBrowLowerer = {symmetryPartner = Constants.FacsNames.RightBrowLowerer},
	LeftOuterBrowRaiser = {symmetryPartner = Constants.FacsNames.RightOuterBrowRaiser},
	LeftNoseWrinkler = {symmetryPartner = Constants.FacsNames.RightNoseWrinkler},
	LeftInnerBrowRaiser = {symmetryPartner = Constants.FacsNames.RightInnerBrowRaiser},
	RightBrowLowerer = {symmetryPartner = Constants.FacsNames.LeftBrowLowerer},
	RightOuterBrowRaiser = {symmetryPartner = Constants.FacsNames.LeftOuterBrowRaiser},
	RightInnerBrowRaiser = {symmetryPartner = Constants.FacsNames.LeftInnerBrowRaiser},
	RightNoseWrinkler = {symmetryPartner = Constants.FacsNames.LeftNoseWrinkler},

	EyesLookDown = {},
	EyesLookLeft = {},
	EyesLookUp = {},
	EyesLookRight = {},
	LeftCheekRaiser = {symmetryPartner = Constants.FacsNames.RightCheekRaiser},
	LeftEyeUpperLidRaiser = {sliderGroup = {Constants.FacsNames.LeftEyeClosed, Constants.FacsNames.LeftEyeUpperLidRaiser}, indexInGroup = 2, symmetryPartner = Constants.FacsNames.RightEyeUpperLidRaiser},
	LeftEyeClosed = {sliderGroup = {Constants.FacsNames.LeftEyeClosed, Constants.FacsNames.LeftEyeUpperLidRaiser}, indexInGroup = 1, symmetryPartner = Constants.FacsNames.RightEyeClosed},
	RightCheekRaiser = {symmetryPartner = Constants.FacsNames.LeftCheekRaiser},
	RightEyeUpperLidRaiser = {sliderGroup = {Constants.FacsNames.RightEyeClosed, Constants.FacsNames.RightEyeUpperLidRaiser}, indexInGroup = 2, symmetryPartner = Constants.FacsNames.LeftEyeUpperLidRaiser},
	RightEyeClosed = {sliderGroup = {Constants.FacsNames.RightEyeClosed, Constants.FacsNames.RightEyeUpperLidRaiser}, indexInGroup = 1, symmetryPartner = Constants.FacsNames.LeftEyeClosed},

	TongueDown = {sliderGroup = {Constants.FacsNames.TongueUp, Constants.FacsNames.TongueDown}, indexInGroup = 2},
	TongueUp = {sliderGroup = {Constants.FacsNames.TongueUp, Constants.FacsNames.TongueDown}, indexInGroup = 1},
	TongueOut = {},
}

Constants.faceControlsEditorOriginalWidth = 240
Constants.faceControlsEditorFaceFrontDiagramWidth = 220
Constants.faceControlsEditorFaceFrontDiagramHeight = 310
Constants.faceControlsEditorFaceSideDiagramWidth = 220
Constants.faceControlsEditorFaceSideDiagramHeight = 190
Constants.faceControlsEditorDiagramPadding = 10
if GetFFlagFaceControlsEditorBugBash2Update() then
	Constants.faceControlsEditoSpacingBetweenDiagrams = 40
else
	Constants.faceControlsEditoSpacingBetweenDiagrams = 80
end

if GetFFlagFaceControlsEditorUIUpdate() then
	Constants.faceControlsEditorTogglesContainerHeight = 95
else
	Constants.faceControlsEditorTogglesContainerHeight = 80
end

if GetFFlagChannelAnimations() then
	Constants.COMPONENT_TRACK_TYPES = {
		[Constants.TRACK_TYPES.CFrame] = {
			_Order = {Constants.PROPERTY_KEYS.Position, Constants.PROPERTY_KEYS.Rotation},
			[Constants.PROPERTY_KEYS.Position] = Constants.TRACK_TYPES.Position,
			[Constants.PROPERTY_KEYS.Rotation] = Constants.TRACK_TYPES.EulerAngles
		},
		[Constants.TRACK_TYPES.Position] = {
			_Order = {Constants.PROPERTY_KEYS.X, Constants.PROPERTY_KEYS.Y, Constants.PROPERTY_KEYS.Z},
			[Constants.PROPERTY_KEYS.X] = Constants.TRACK_TYPES.Number,
			[Constants.PROPERTY_KEYS.Y] = Constants.TRACK_TYPES.Number,
			[Constants.PROPERTY_KEYS.Z] = Constants.TRACK_TYPES.Number,
		},
	}
	Constants.COMPONENT_TRACK_TYPES[Constants.TRACK_TYPES.EulerAngles] = {
		_Order = {Constants.PROPERTY_KEYS.X, Constants.PROPERTY_KEYS.Y, Constants.PROPERTY_KEYS.Z},
		[Constants.PROPERTY_KEYS.X] = Constants.TRACK_TYPES.Angle,
		[Constants.PROPERTY_KEYS.Y] = Constants.TRACK_TYPES.Angle,
		[Constants.PROPERTY_KEYS.Z] = Constants.TRACK_TYPES.Angle,
	}

	-- These values are used to create a track "offset" when comparing two tracks.
	-- For instance, Rotation/Z should translate to 0.23 (because Rotation is 2 and Z is 3)
	-- The values can be reused when they don't clash (for instance, a track will never have
	-- both a Position component and an X component)
	-- Note that 0 should not be used, as it would represent the parent track.
	-- The values should never be larger than 9 (nor should it be needed, as this would mean
	-- that a track needs more than 9 coordinates). However, if a value larger than 9 is really
	-- needed, then COMPONENT_PATH_BASE_SCALE needs to be changed to 0.01
	Constants.COMPONENT_PATH_VALUE = {
		[Constants.PROPERTY_KEYS.Position] = 1,
		[Constants.PROPERTY_KEYS.Rotation] = 2,
		[Constants.PROPERTY_KEYS.X] = 1,
		[Constants.PROPERTY_KEYS.Y] = 2,
		[Constants.PROPERTY_KEYS.Z] = 3,
	}
	Constants.COMPONENT_PATH_BASE_SCALE = 0.1

	-- Add style mapping to new enum
	Constants.KEYFRAME_STYLE[Enum.KeyInterpolationMode.Constant] = "Constant"
	Constants.KEYFRAME_STYLE[Enum.KeyInterpolationMode.Cubic] = "Cubic"
end

if GetFFlagCurveEditor() then
	Constants.TRACK_THEME_MAPPING = {
		[Constants.TRACK_TYPES.Number] = {
			[Constants.PROPERTY_KEYS.X] = "positionX",
			[Constants.PROPERTY_KEYS.Y] = "positionY",
			[Constants.PROPERTY_KEYS.Z] = "positionZ",
		},
		[Constants.TRACK_TYPES.Angle] = {
			[Constants.PROPERTY_KEYS.X] = "rotationX",
			[Constants.PROPERTY_KEYS.Y] = "rotationY",
			[Constants.PROPERTY_KEYS.Z] = "rotationZ",
		}
	}
end

if GetFFlagCurveEditor() then
	Constants.TICK_LABEL_POSITION = {
		[Constants.SCALE_TYPE.Number] = UDim2.new(.3, 0, .5, 0),
		[Constants.SCALE_TYPE.Angle] = UDim2.new(.7, 0, .5, 0),
	}
end

if GetFFlagCurveEditor() then
	Constants.DEFAULT_ROTATION_TYPE = Constants.TRACK_TYPES.EulerAngles
elseif GetFFlagChannelAnimations() then
	Constants.DEFAULT_ROTATION_TYPE = Constants.TRACK_TYPES.Quaternion
else
	Constants.DEFAULT_ROTATION_TYPE = Constants.TRACK_TYPES.Rotation
end

return Constants
