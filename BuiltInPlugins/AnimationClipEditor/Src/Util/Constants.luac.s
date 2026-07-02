MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 256 0
        3 LOADK                            R1 K0 ["AnimationClipEditor"]
        4 SETTABLEKS                       R1 R0 K1 ["PLUGIN_NAME"]
        6 LOADK                            R1 K2 [""]
        7 SETTABLEKS                       R1 R0 K3 ["PLUGIN_ICON"]
        9 LOADK                            R1 K4 ["rbxasset://textures/ui/LuaChat/icons/ic-check@2x.png"]
       10 SETTABLEKS                       R1 R0 K5 ["CHECK_IMAGE"]
       12 DUPTABLE                         R1 K16 [{["EulerAnglesOrder"] = "ACE_EulerAnglesOrder", ["RotationType"] = "ACE_RotationType", ["ShowAsSeconds"] = "ACE_ShowAsSeconds", ["SnapMode"] = "ACE_SnapMode", ["TimelineUnit"] = "ACE_TimelineUnit"}]
       13 SETTABLEKS                       R1 R0 K17 ["SETTINGS"]
       15 DUPTABLE                         R1 K24 [{["AnimSaves"] = "RBX_ANIMSAVES", ["Microbones"] = "RBX_MICROBONE_NODES", ["IkData"] = "IkData", ["IkTargets"] = "IkTargets"}]
       16 SETTABLEKS                       R1 R0 K25 ["FOLDERS"]
       18 LOADK                            R1 K26 ["animationUploadSuccess"]
       19 SETTABLEKS                       R1 R0 K27 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       21 LOADK                            R1 K28 [0.04]
       22 SETTABLEKS                       R1 R0 K29 ["ZOOM_INCREMENT"]
       24 LOADN                            R1 30
       25 SETTABLEKS                       R1 R0 K30 ["DEFAULT_FRAMERATE"]
       27 LOADN                            R1 1
       28 SETTABLEKS                       R1 R0 K31 ["MIN_FRAMERATE"]
       30 LOADN                            R1 120
       31 SETTABLEKS                       R1 R0 K32 ["MAX_FRAMERATE"]
       33 LOADK                            R1 K33 [0.01]
       34 SETTABLEKS                       R1 R0 K34 ["MIN_PLAYBACK_SPEED"]
       36 LOADN                            R1 10
       37 SETTABLEKS                       R1 R0 K35 ["MAX_PLAYBACK_SPEED"]
       39 LOADN                            R1 1800
       40 SETTABLEKS                       R1 R0 K36 ["MAX_TIME"]
       42 LOADN                            R1 2400
       43 SETTABLEKS                       R1 R0 K37 ["TICK_FREQUENCY"]
       45 LOADN                            R1 2400
       46 SETTABLEKS                       R1 R0 K38 ["DEFAULT_TICK_FREQUENCY"]
       48 LOADN                            R1 30
       49 SETTABLEKS                       R1 R0 K39 ["MAX_DISPLAYED_TIME"]
       51 LOADN                            R1 30
       52 SETTABLEKS                       R1 R0 K40 ["MIN_TIMELINE_RANGE"]
       54 GETIMPORT                        R1 K43 [Vector2.new]
       56 LOADN                            R2 640
       57 LOADN                            R3 200
       58 CALL                             R1 2 1
       59 SETTABLEKS                       R1 R0 K44 ["MAIN_FLOATING_SIZE"]
       61 GETIMPORT                        R1 K43 [Vector2.new]
       63 LOADN                            R2 1024
       64 LOADN                            R3 200
       65 CALL                             R1 2 1
       66 SETTABLEKS                       R1 R0 K45 ["MAIN_TEST_SIZE"]
       68 LOADN                            R1 20
       69 SETTABLEKS                       R1 R0 K46 ["MAX_WAYPOINT_SIZE"]
       71 LOADN                            R1 8
       72 SETTABLEKS                       R1 R0 K47 ["MIN_SPACE_BETWEEN_KEYS"]
       74 LOADN                            R1 72
       75 SETTABLEKS                       R1 R0 K48 ["TRACK_PADDING_SMALL"]
       77 LOADN                            R1 84
       78 SETTABLEKS                       R1 R0 K49 ["TRACK_PADDING_MEDIUM"]
       80 LOADN                            R1 96
       81 SETTABLEKS                       R1 R0 K50 ["TRACK_PADDING_LARGE"]
       83 LOADN                            R1 22
       84 SETTABLEKS                       R1 R0 K51 ["SUMMARY_TRACK_HEIGHT"]
       86 LOADN                            R1 22
       87 SETTABLEKS                       R1 R0 K52 ["TRACK_HEIGHT"]
       89 GETIMPORT                        R1 K54 [UDim2.new]
       91 LOADN                            R2 0
       92 LOADN                            R3 6
       93 LOADN                            R4 0
       94 LOADN                            R5 20
       95 CALL                             R1 4 1
       96 SETTABLEKS                       R1 R0 K55 ["EVENT_MARKER_SIZE"]
       98 GETIMPORT                        R1 K54 [UDim2.new]
      100 LOADN                            R2 0
      101 LOADN                            R3 8
      102 LOADN                            R4 0
      103 LOADN                            R5 22
      104 CALL                             R1 4 1
      105 SETTABLEKS                       R1 R0 K56 ["EVENT_MARKER_BORDER_SIZE"]
      107 LOADN                            R1 24
      108 SETTABLEKS                       R1 R0 K57 ["TIMELINE_HEIGHT"]
      110 LOADN                            R1 200
      111 SETTABLEKS                       R1 R0 K58 ["CONTROLS_WIDTH"]
      113 LOADN                            R1 100
      114 SETTABLEKS                       R1 R0 K59 ["TIME_DISPLAY_WIDTH"]
      116 LOADN                            R1 17
      117 SETTABLEKS                       R1 R0 K60 ["SCROLL_BAR_SIZE"]
      119 LOADN                            R1 2
      120 SETTABLEKS                       R1 R0 K61 ["SCROLL_BAR_PADDING"]
      122 LOADN                            R1 445
      123 SETTABLEKS                       R1 R0 K62 ["TRACK_LIST_START_WIDTH"]
      125 LOADN                            R1 440
      126 SETTABLEKS                       R1 R0 K63 ["TRACK_LIST_MIN_WIDTH"]
      128 LOADN                            R1 190
      129 SETTABLEKS                       R1 R0 K64 ["TIMELINE_MIN_WIDTH"]
      131 LOADN                            R1 8
      132 SETTABLEKS                       R1 R0 K65 ["INDENT_PADDING"]
      134 LOADN                            R1 10
      135 SETTABLEKS                       R1 R0 K66 ["ARROW_SIZE"]
      137 LOADN                            R1 16
      138 SETTABLEKS                       R1 R0 K67 ["TRACKLIST_BUTTON_SIZE"]
      140 LOADN                            R1 8
      141 SETTABLEKS                       R1 R0 K68 ["TRACKLIST_RIGHT_PADDING"]
      143 LOADN                            R1 80
      144 SETTABLEKS                       R1 R0 K69 ["NUMBERBOX_WIDTH"]
      146 LOADN                            R1 4
      147 SETTABLEKS                       R1 R0 K70 ["NUMBERBOX_PADDING"]
      149 LOADK                            R1 K71 [0.05]
      150 SETTABLEKS                       R1 R0 K72 ["NUMBERBOX_DRAG_MULTIPLIER"]
      152 LOADK                            R1 K33 [0.01]
      153 SETTABLEKS                       R1 R0 K73 ["NUMBERBOX_FACS_DRAG_MULTIPLIER"]
      155 LOADN                            R1 5
      156 SETTABLEKS                       R1 R0 K74 ["NUMBERTRACK_PADDING"]
      158 LOADN                            R1 6
      159 SETTABLEKS                       R1 R0 K75 ["KEYFRAME_WIDTH"]
      161 LOADN                            R1 1
      162 SETTABLEKS                       R1 R0 K76 ["KEYFRAME_BORDER_SIZE"]
      164 LOADN                            R1 2
      165 SETTABLEKS                       R1 R0 K77 ["KEYFRAME_BORDER_SIZE_SELECTED"]
      167 LOADN                            R1 8
      168 SETTABLEKS                       R1 R0 K78 ["SUMMARY_KEYFRAME_WIDTH"]
      170 LOADN                            R1 1000
      171 SETTABLEKS                       R1 R0 K79 ["MAX_VISIBLE_KEYFRAMES"]
      173 LOADN                            R1 1
      174 SETTABLEKS                       R1 R0 K80 ["LENGTH_PADDING"]
      176 LOADN                            R1 5
      177 SETTABLEKS                       R1 R0 K81 ["NUM_TICKS"]
      179 LOADN                            R1 125
      180 SETTABLEKS                       R1 R0 K82 ["TICK_SPACING"]
      182 LOADN                            R1 5
      183 SETTABLEKS                       R1 R0 K83 ["SCALE_NUM_TICKS"]
      185 LOADN                            R1 300
      186 SETTABLEKS                       R1 R0 K84 ["SCALE_TICK_SPACING"]
      188 GETIMPORT                        R1 K54 [UDim2.new]
      190 LOADN                            R2 0
      191 LOADN                            R3 320
      192 LOADN                            R4 0
      193 LOADN                            R5 130
      194 CALL                             R1 4 1
      195 SETTABLEKS                       R1 R0 K85 ["PROMPT_SIZE"]
      197 GETIMPORT                        R1 K43 [Vector2.new]
      199 LOADN                            R2 100
      200 LOADN                            R3 25
      201 CALL                             R1 2 1
      202 SETTABLEKS                       R1 R0 K86 ["PROMPT_BUTTON_SIZE"]
      204 LOADN                            R1 10
      205 SETTABLEKS                       R1 R0 K87 ["PROMPT_BUTTON_PADDING"]
      207 LOADN                            R1 15
      208 SETTABLEKS                       R1 R0 K88 ["PROMPT_VERTICAL_PADDING"]
      210 LOADN                            R1 20
      211 SETTABLEKS                       R1 R0 K89 ["PROMPT_HORIZONTAL_PADDING"]
      213 LOADK                            R1 K90 [0.7]
      214 SETTABLEKS                       R1 R0 K91 ["TRANSLATION_STIFFNESS"]
      216 LOADK                            R1 K90 [0.7]
      217 SETTABLEKS                       R1 R0 K92 ["ROTATION_STIFFNESS"]
      219 LOADK                            R1 K33 [0.01]
      220 SETTABLEKS                       R1 R0 K93 ["MIN_TRANSLATION_STIFFNESS"]
      222 LOADK                            R1 K33 [0.01]
      223 SETTABLEKS                       R1 R0 K94 ["MIN_ROTATION_STIFFNESS"]
      225 LOADN                            R1 10
      226 SETTABLEKS                       R1 R0 K95 ["MIN_EFFECTOR_DISTANCE"]
      228 DUPTABLE                         R1 K99 [{["AnimationConstraint"] = "AnimationConstraint", ["Bone"] = "Bone", ["Motor6D"] = "Motor6D"}]
      229 SETTABLEKS                       R1 R0 K100 ["JOINT_TYPES"]
      231 GETIMPORT                        R1 K103 [Color3.fromRGB]
      233 LOADN                            R2 232
      234 LOADN                            R3 112
      235 LOADN                            R4 240
      236 CALL                             R1 3 1
      237 SETTABLEKS                       R1 R0 K104 ["BONE_NODE_COLOR"]
      239 GETIMPORT                        R1 K103 [Color3.fromRGB]
      241 LOADN                            R2 107
      242 LOADN                            R3 50
      243 LOADN                            R4 124
      244 CALL                             R1 3 1
      245 SETTABLEKS                       R1 R0 K105 ["BONE_LINK_COLOR"]
      247 GETIMPORT                        R1 K103 [Color3.fromRGB]
      249 LOADN                            R2 207
      250 LOADN                            R3 88
      251 LOADN                            R4 224
      252 CALL                             R1 3 1
      253 SETTABLEKS                       R1 R0 K106 ["BONE_CONE_COLOR"]
      255 LOADK                            R1 K107 [0.15]
      256 SETTABLEKS                       R1 R0 K108 ["BONE_NODE_TRANSPARENCY"]
      258 LOADK                            R1 K109 [0.45]
      259 SETTABLEKS                       R1 R0 K110 ["BONE_LINK_TRANSPARENCY"]
      261 LOADK                            R1 K111 [0.3]
      262 SETTABLEKS                       R1 R0 K112 ["BONE_TRANSPARENCY_DEFAULT"]
      264 LOADN                            R1 0
      265 SETTABLEKS                       R1 R0 K113 ["BONE_TRANSPARENCY_HOVER"]
      267 GETIMPORT                        R1 K103 [Color3.fromRGB]
      269 LOADN                            R2 207
      270 LOADN                            R3 88
      271 LOADN                            R4 224
      272 CALL                             R1 3 1
      273 SETTABLEKS                       R1 R0 K114 ["BONE_COLOR_DEFAULT"]
      275 GETIMPORT                        R1 K103 [Color3.fromRGB]
      277 LOADN                            R2 300
      278 LOADN                            R3 88
      279 LOADN                            R4 224
      280 CALL                             R1 3 1
      281 SETTABLEKS                       R1 R0 K115 ["BONE_COLOR_HOVER"]
      283 GETIMPORT                        R1 K103 [Color3.fromRGB]
      285 LOADN                            R2 13
      286 LOADN                            R3 105
      287 LOADN                            R4 172
      288 CALL                             R1 3 1
      289 SETTABLEKS                       R1 R0 K116 ["BONE_COLOR_SELECTED"]
      291 LOADN                            R1 15
      292 SETTABLEKS                       R1 R0 K117 ["LENGTH_TO_RADIUS_RATIO"]
      294 LOADN                            R1 30
      295 SETTABLEKS                       R1 R0 K118 ["SNAP_TO_KEYFRAME_THRESHOLD"]
      297 DUPTABLE                         R1 K122 [{["Keyframes"] = "Keyframes", ["Frames"] = "Frames", ["None"] = "None"}]
      298 SETTABLEKS                       R1 R0 K123 ["SNAP_MODES"]
      300 LOADK                            R1 K124 ["ROBLOX_R15_IK_CONSTRAINTS"]
      301 SETTABLEKS                       R1 R0 K125 ["TEMPORARY_CONSTRAINTS"]
      303 LOADK                            R1 K126 ["RBX_TMP_CONTROL_RIG"]
      304 SETTABLEKS                       R1 R0 K127 ["TEMPORARY_CONTROL_RIG_ANIMATION"]
      306 LOADK                            R1 K128 ["Imported Animation Clip"]
      307 SETTABLEKS                       R1 R0 K129 ["DEFAULT_IMPORTED_NAME"]
      309 LOADK                            R1 K130 ["Automatic Save"]
      310 SETTABLEKS                       R1 R0 K131 ["DEFAULT_AUTOSAVE_NAME"]
      312 LOADK                            R1 K132 ["Keyframe"]
      313 SETTABLEKS                       R1 R0 K133 ["DEFAULT_KEYFRAME_NAME"]
      315 LOADK                            R1 K134 ["FaceControls"]
      316 SETTABLEKS                       R1 R0 K135 ["FACE_CONTROLS_FOLDER"]
      318 DUPTABLE                         R1 K146 [{["CFrame"] = "CFrame", ["Facs"] = "Facs", ["Other"] = "Other", ["Position"] = "Position", ["Number"] = "Number", ["Angle"] = "Angle", ["Quaternion"] = "Quaternion", ["EulerAngles"] = "EulerAngles", ["IkData"] = "IkData", ["IkTarget"] = "IkTarget", ["Folder"] = "Folder"}]
      319 SETTABLEKS                       R1 R0 K147 ["TRACK_TYPES"]
      321 DUPTABLE                         R1 K156 [{["Position"] = "Position", ["Rotation"] = "Rotation", ["X"] = "X", ["Y"] = "Y", ["Z"] = "Z", ["IkData"] = "IkData", ["OffsetPos"] = "OffsetPos", ["OffsetRot"] = "OffsetRot", ["Weight"] = "Weight", ["SurfacePoint"] = "SurfacePoint"}]
      322 SETTABLEKS                       R1 R0 K157 ["PROPERTY_KEYS"]
      324 DUPTABLE                         R1 K160 [{["Edit"] = "Edit", ["Delete"] = "Delete"}]
      325 SETTABLEKS                       R1 R0 K161 ["ACTION_KEYS"]
      327 DUPTABLE                         R1 K165 [{["AddIkTarget"] = "AddIkTarget", ["SetTargetInstance"] = "SetTargetInstance", ["DeleteIkTarget"] = "DeleteIkTarget"}]
      328 SETTABLEKS                       R1 R0 K166 ["TRACK_ACTIONS"]
      330 DUPTABLE                         R1 K171 [{["Clip"] = "Clip", ["NewClip"] = "New Clip", ["Separator"] = "Separator"}]
      331 SETTABLEKS                       R1 R0 K172 ["CLIP_DROPDOWN_TYPES"]
      333 DUPTABLE                         R1 K194 [{["AnimConstraintMissingPart0"] = "AnimConstraintMissingPart0", ["AnimConstraintMissingPart1"] = "AnimConstraintMissingPart1", ["BoneNameCollision"] = "BoneNameCollision", ["CircularRig"] = "CircularRig", ["DoubleJoints"] = "DoubleJoints", ["FaceControlsParent"] = "FaceControlsParent", ["MissingPart0"] = "MissingPart0_Migrated", ["MissingPart1"] = "MissingPart1_Migrated", ["MultipleFaceControls"] = "MultipleFaceControls", ["MultipleMotorsOrAnimConstraints"] = "MultipleMotorsOrAnimConstraints", ["MultipleParents"] = "MultipleParents_Migrated", ["NameCollision"] = "NameCollision", ["NoAnimationController"] = "NoAnimationController", ["NoJoints"] = "NoJoints", ["NoMotors"] = "NoMotors", ["NoRoot"] = "NoRoot", ["PartBoneNameCollision"] = "PartBoneNameCollision", ["PartsAnchored"] = "PartsAnchored"}]
      334 SETTABLEKS                       R1 R0 K195 ["RIG_ERRORS"]
      336 DUPTABLE                         R1 K197 [{["PartsAnchored"] = "PartsAnchoredWarning"}]
      337 SETTABLEKS                       R1 R0 K198 ["RIG_WARNINGS"]
      339 DUPTABLE                         R1 K200 [{["OpenedWhileRunning"] = "OpenedWhileRunning"}]
      340 SETTABLEKS                       R1 R0 K201 ["EDITOR_ERRORS"]
      342 LOADK                            R1 K202 ["EditorErrors"]
      343 SETTABLEKS                       R1 R0 K203 ["EDITOR_ERRORS_KEY"]
      345 LOADK                            R1 K204 ["ErrorsHeader"]
      346 SETTABLEKS                       R1 R0 K205 ["RIG_ERRORS_HEADER_KEY"]
      348 LOADK                            R1 K206 ["RigErrors"]
      349 SETTABLEKS                       R1 R0 K207 ["RIG_ERRORS_KEY"]
      351 LOADK                            R1 K208 ["Dialog"]
      352 SETTABLEKS                       R1 R0 K209 ["DIALOG_KEY"]
      354 DUPTABLE                         R1 K212 [{["SecondsDecimal"] = "SecondsDecimal", ["Seconds"] = "Seconds", ["Frames"] = "Frames"}]
      355 SETTABLEKS                       R1 R0 K213 ["TIMELINE_UNITS"]
      357 NEWTABLE                         R1 0 3
      359 LOADK                            R2 K210 ["SecondsDecimal"]
      360 LOADK                            R3 K211 ["Seconds"]
      361 LOADK                            R4 K120 ["Frames"]
      362 SETLIST                          R1 R2 3 [1]
      364 SETTABLEKS                       R1 R0 K214 ["TIMELINE_UNITS_ORDER"]
      366 DUPTABLE                         R1 K225 [{["FPS_24"] = 24, ["FPS_30"] = 30, ["FPS_60"] = 60, ["FPS_120"] = 120, ["CUSTOM"] = -1}]
      367 SETTABLEKS                       R1 R0 K226 ["FRAMERATES"]
      369 DUPTABLE                         R1 K233 [{["Static"] = 0, ["Default"] = 16, ["FromRig"] = "FromRig", ["Custom"] = "Custom"}]
      370 SETTABLEKS                       R1 R0 K234 ["GRIDSPEEDS"]
      372 DUPTABLE                         R1 K245 [{["PBS_025"] = 0.25, ["PBS_05"] = 0.5, ["PBS_1"] = 1, ["PBS_2"] = 2, ["PBS_4"] = 4, ["CUSTOM"] = -1}]
      373 SETTABLEKS                       R1 R0 K246 ["PLAYBACK_SPEEDS"]
      375 DUPTABLE                         R1 K249 [{["Events"] = "Events", ["Keyframes"] = "Keyframes", ["Channels"] = "Channels"}]
      376 SETTABLEKS                       R1 R0 K250 ["CLIPBOARD_TYPE"]
      378 DUPTABLE                         R1 K253 [{["ShowSeparator"] = True}]
      379 SETTABLEKS                       R1 R0 K254 ["MENU_SEPARATOR"]
      381 NEWTABLE                         R1 8 0
      383 LOADK                            R2 K255 ["Primary"]
      384 SETTABLEKS                       R2 R1 K255 ["Primary"]
      386 LOADK                            R2 K256 ["Error"]
      387 SETTABLEKS                       R2 R1 K256 ["Error"]
      389 LOADK                            R2 K257 ["PrimaryError"]
      390 SETTABLEKS                       R2 R1 K257 ["PrimaryError"]
      392 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Bounce]
      394 LOADK                            R3 K260 ["Bounce"]
      395 SETTABLE                         R3 R1 R2
      396 GETIMPORT                        R2 K263 [Enum.PoseEasingStyle.Constant]
      398 LOADK                            R3 K262 ["Constant"]
      399 SETTABLE                         R3 R1 R2
      400 GETIMPORT                        R2 K265 [Enum.PoseEasingStyle.Cubic]
      402 LOADK                            R3 K264 ["Cubic"]
      403 SETTABLE                         R3 R1 R2
      404 GETIMPORT                        R2 K267 [Enum.PoseEasingStyle.Elastic]
      406 LOADK                            R3 K266 ["Elastic"]
      407 SETTABLE                         R3 R1 R2
      408 GETIMPORT                        R2 K269 [Enum.PoseEasingStyle.CubicV2]
      410 LOADK                            R3 K264 ["Cubic"]
      411 SETTABLE                         R3 R1 R2
      412 SETTABLEKS                       R1 R0 K270 ["KEYFRAME_STYLE"]
      414 NEWTABLE                         R1 8 0
      416 GETIMPORT                        R2 K272 [Enum.PoseEasingStyle.Linear]
      418 LOADK                            R3 K273 ["rbxasset://textures/AnimationEditor/image_keyframe_linear_unselected.png"]
      419 SETTABLE                         R3 R1 R2
      420 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Bounce]
      422 LOADK                            R3 K274 ["rbxasset://textures/AnimationEditor/image_keyframe_bounce_unselected.png"]
      423 SETTABLE                         R3 R1 R2
      424 GETIMPORT                        R2 K263 [Enum.PoseEasingStyle.Constant]
      426 LOADK                            R3 K275 ["rbxasset://textures/AnimationEditor/image_keyframe_constant_unselected.png"]
      427 SETTABLE                         R3 R1 R2
      428 GETIMPORT                        R2 K265 [Enum.PoseEasingStyle.Cubic]
      430 LOADK                            R3 K276 ["rbxasset://textures/AnimationEditor/image_keyframe_cubic_unselected.png"]
      431 SETTABLE                         R3 R1 R2
      432 GETIMPORT                        R2 K267 [Enum.PoseEasingStyle.Elastic]
      434 LOADK                            R3 K277 ["rbxasset://textures/AnimationEditor/image_keyframe_elastic_unselected.png"]
      435 SETTABLE                         R3 R1 R2
      436 GETIMPORT                        R2 K269 [Enum.PoseEasingStyle.CubicV2]
      438 LOADK                            R3 K276 ["rbxasset://textures/AnimationEditor/image_keyframe_cubic_unselected.png"]
      439 SETTABLE                         R3 R1 R2
      440 SETTABLEKS                       R1 R0 K278 ["MENU_ICONS"]
      442 DUPTABLE                         R1 K281 [{["BodyPart"] = "BodyPart", ["FullBody"] = "FullBody"}]
      443 SETTABLEKS                       R1 R0 K282 ["IK_MODE"]
      445 DUPTABLE                         R1 K285 [{["SelectionChanged"] = "SelectionChanged", ["ScrubberChanged"] = "ScrubberChanged"}]
      446 SETTABLEKS                       R1 R0 K286 ["SIGNAL_KEYS"]
      448 DUPTABLE                         R1 K303 [{["UpperTorso"] = "UpperTorso", ["LowerTorso"] = "LowerTorso", ["LeftFoot"] = "LeftFoot", ["RightFoot"] = "RightFoot", ["HumanoidRootPart"] = "HumanoidRootPart", ["Head"] = "Head", ["RightUpperLeg"] = "RightUpperLeg", ["RightLowerLeg"] = "RightLowerLeg", ["RightHand"] = "RightHand", ["LeftUpperLeg"] = "LeftUpperLeg", ["LeftLowerLeg"] = "LeftLowerLeg", ["LeftHand"] = "LeftHand", ["RightUpperArm"] = "RightUpperArm", ["RightLowerArm"] = "RightLowerArm", ["LeftUpperArm"] = "LeftUpperArm", ["LeftLowerArm"] = "LeftLowerArm"}]
      449 SETTABLEKS                       R1 R0 K304 ["R15_PARTS"]
      451 DUPTABLE                         R1 K313 [{"Ankle", "Knee", "Hip", "Waist", "Shoulder", "Elbow", "Wrist", "Neck"}]
      452 DUPTABLE                         R2 K325 [{["Type"] = "BallSocketConstraint", ["LimitsEnabled"] = False, ["Restitution"] = 0, ["TwistLimitsEnabled"] = False, ["UpperAngle"] = 20, ["TwistLowerAngle"] = -20, ["TwistUpperAngle"] = 20}]
      453 SETTABLEKS                       R2 R1 K305 ["Ankle"]
      455 DUPTABLE                         R2 K330 [{["Type"] = "HingeConstraint", ["LimitsEnabled"] = True, ["LowerAngle"] = -135, ["Restitution"] = 0, ["UpperAngle"] = -10}]
      456 SETTABLEKS                       R2 R1 K306 ["Knee"]
      458 DUPTABLE                         R2 K338 [{["Type"] = "BallSocketConstraint", ["LimitsEnabled"] = True, ["Restitution"] = 0, ["TwistLimitsEnabled"] = True, ["UpperAngle"] = 80, ["TwistLowerAngle"] = -3, ["TwistUpperAngle"] = 3, ["Axis"] = {0, -1, 0}, ["SecondaryAxis"] = {0, 0, 1}}]
      459 SETTABLEKS                       R2 R1 K307 ["Hip"]
      461 DUPTABLE                         R2 K341 [{["Type"] = "HingeConstraint", ["LimitsEnabled"] = True, ["LowerAngle"] = -90, ["Restitution"] = 0, ["UpperAngle"] = 90}]
      462 SETTABLEKS                       R2 R1 K308 ["Waist"]
      464 DUPTABLE                         R2 K344 [{["Type"] = "BallSocketConstraint", ["LimitsEnabled"] = True, ["Restitution"] = 0, ["TwistLimitsEnabled"] = False, ["UpperAngle"] = 170, ["TwistLowerAngle"] = -90, ["TwistUpperAngle"] = 135}]
      465 SETTABLEKS                       R2 R1 K309 ["Shoulder"]
      467 DUPTABLE                         R2 K345 [{["Type"] = "HingeConstraint", ["LimitsEnabled"] = True, ["LowerAngle"] = 0, ["Restitution"] = 0, ["UpperAngle"] = 135}]
      468 SETTABLEKS                       R2 R1 K310 ["Elbow"]
      470 DUPTABLE                         R2 K346 [{["Type"] = "BallSocketConstraint", ["LimitsEnabled"] = True, ["Restitution"] = 0, ["TwistLimitsEnabled"] = True, ["UpperAngle"] = 20, ["TwistLowerAngle"] = 0, ["TwistUpperAngle"] = 0}]
      471 SETTABLEKS                       R2 R1 K311 ["Wrist"]
      473 DUPTABLE                         R2 K349 [{["Type"] = "BallSocketConstraint", ["LimitsEnabled"] = True, ["Restitution"] = 0, ["TwistLimitsEnabled"] = False, ["UpperAngle"] = 30, ["TwistLowerAngle"] = -70, ["TwistUpperAngle"] = 70}]
      474 SETTABLEKS                       R2 R1 K312 ["Neck"]
      476 SETTABLEKS                       R1 R0 K350 ["CONSTRAINTS_CONFIG"]
      478 DUPTABLE                         R1 K356 [{["Mouth"] = "Mouth", ["Jaw"] = "Jaw", ["Brows"] = "Brows", ["Eyes"] = "Eyes", ["Tongue"] = "Tongue", ["Other"] = "Other"}]
      479 SETTABLEKS                       R1 R0 K357 ["FACS_REGIONS"]
      481 NEWTABLE                         R1 8 0
      483 GETIMPORT                        R2 K263 [Enum.PoseEasingStyle.Constant]
      485 GETIMPORT                        R3 K359 [Enum.KeyInterpolationMode.Constant]
      487 SETTABLE                         R3 R1 R2
      488 GETIMPORT                        R2 K272 [Enum.PoseEasingStyle.Linear]
      490 GETIMPORT                        R3 K360 [Enum.KeyInterpolationMode.Linear]
      492 SETTABLE                         R3 R1 R2
      493 GETIMPORT                        R2 K265 [Enum.PoseEasingStyle.Cubic]
      495 GETIMPORT                        R3 K361 [Enum.KeyInterpolationMode.Cubic]
      497 SETTABLE                         R3 R1 R2
      498 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Bounce]
      500 GETIMPORT                        R3 K361 [Enum.KeyInterpolationMode.Cubic]
      502 SETTABLE                         R3 R1 R2
      503 GETIMPORT                        R2 K267 [Enum.PoseEasingStyle.Elastic]
      505 GETIMPORT                        R3 K361 [Enum.KeyInterpolationMode.Cubic]
      507 SETTABLE                         R3 R1 R2
      508 GETIMPORT                        R2 K269 [Enum.PoseEasingStyle.CubicV2]
      510 GETIMPORT                        R3 K361 [Enum.KeyInterpolationMode.Cubic]
      512 SETTABLE                         R3 R1 R2
      513 SETTABLEKS                       R1 R0 K362 ["POSE_EASING_STYLE_TO_KEY_INTERPOLATION"]
      515 NEWTABLE                         R1 0 3
      517 GETIMPORT                        R2 K360 [Enum.KeyInterpolationMode.Linear]
      519 GETIMPORT                        R3 K359 [Enum.KeyInterpolationMode.Constant]
      521 GETIMPORT                        R4 K361 [Enum.KeyInterpolationMode.Cubic]
      523 SETLIST                          R1 R2 3 [1]
      525 SETTABLEKS                       R1 R0 K363 ["KEY_INTERPOLATION_MODE_ORDER"]
      527 NEWTABLE                         R1 0 6
      529 GETIMPORT                        R2 K272 [Enum.PoseEasingStyle.Linear]
      531 GETIMPORT                        R3 K263 [Enum.PoseEasingStyle.Constant]
      533 GETIMPORT                        R4 K269 [Enum.PoseEasingStyle.CubicV2]
      535 GETIMPORT                        R5 K267 [Enum.PoseEasingStyle.Elastic]
      537 GETIMPORT                        R6 K261 [Enum.PoseEasingStyle.Bounce]
      539 GETIMPORT                        R7 K265 [Enum.PoseEasingStyle.Cubic]
      541 SETLIST                          R1 R2 6 [1]
      543 SETTABLEKS                       R1 R0 K364 ["EASING_STYLE_ORDER"]
      545 NEWTABLE                         R1 8 0
      547 GETIMPORT                        R2 K272 [Enum.PoseEasingStyle.Linear]
      549 LOADK                            R3 K271 ["Linear"]
      550 SETTABLE                         R3 R1 R2
      551 GETIMPORT                        R2 K263 [Enum.PoseEasingStyle.Constant]
      553 LOADK                            R3 K262 ["Constant"]
      554 SETTABLE                         R3 R1 R2
      555 GETIMPORT                        R2 K265 [Enum.PoseEasingStyle.Cubic]
      557 LOADK                            R3 K365 ["Cubic (deprecated)"]
      558 SETTABLE                         R3 R1 R2
      559 GETIMPORT                        R2 K269 [Enum.PoseEasingStyle.CubicV2]
      561 LOADK                            R3 K268 ["CubicV2"]
      562 SETTABLE                         R3 R1 R2
      563 GETIMPORT                        R2 K267 [Enum.PoseEasingStyle.Elastic]
      565 LOADK                            R3 K266 ["Elastic"]
      566 SETTABLE                         R3 R1 R2
      567 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Bounce]
      569 LOADK                            R3 K260 ["Bounce"]
      570 SETTABLE                         R3 R1 R2
      571 SETTABLEKS                       R1 R0 K366 ["EASING_STYLE_DISPLAY_TEXT"]
      573 NEWTABLE                         R1 0 3
      575 GETIMPORT                        R2 K369 [Enum.PoseEasingDirection.In]
      577 GETIMPORT                        R3 K371 [Enum.PoseEasingDirection.Out]
      579 GETIMPORT                        R4 K373 [Enum.PoseEasingDirection.InOut]
      581 SETLIST                          R1 R2 3 [1]
      583 SETTABLEKS                       R1 R0 K374 ["EASING_DIRECTION_ORDER"]
      585 NEWTABLE                         R1 0 6
      587 GETIMPORT                        R2 K377 [Enum.RotationOrder.XYZ]
      589 GETIMPORT                        R3 K379 [Enum.RotationOrder.XZY]
      591 GETIMPORT                        R4 K381 [Enum.RotationOrder.YXZ]
      593 GETIMPORT                        R5 K383 [Enum.RotationOrder.YZX]
      595 GETIMPORT                        R6 K385 [Enum.RotationOrder.ZXY]
      597 GETIMPORT                        R7 K387 [Enum.RotationOrder.ZYX]
      599 SETLIST                          R1 R2 6 [1]
      601 SETTABLEKS                       R1 R0 K388 ["EULER_ANGLES_ORDER"]
      603 DUPTABLE                         R1 K391 [{["Right"] = "Right", ["Left"] = "Left"}]
      604 SETTABLEKS                       R1 R0 K392 ["SLOPES"]
      606 DUPTABLE                         R1 K394 [{["Keyframe"] = "Keyframe", ["Tangent"] = "Tangent"}]
      607 SETTABLEKS                       R1 R0 K395 ["DRAG_MODE"]
      609 DUPTABLE                         R1 K400 [{["Reverse"] = "Reverse", ["Pause"] = "Pause", ["Play"] = "Play", ["Record"] = "Record"}]
      610 SETTABLEKS                       R1 R0 K401 ["PLAY_STATE"]
      612 DUPTABLE                         R1 K404 [{["DopeSheet"] = "DopeSheet", ["CurveCanvas"] = "CurveCanvas"}]
      613 SETTABLEKS                       R1 R0 K405 ["EDITOR_MODE"]
      615 LOADN                            R1 1
      616 SETTABLEKS                       R1 R0 K406 ["CURVE_WIDTH"]
      618 LOADN                            R1 2
      619 SETTABLEKS                       R1 R0 K407 ["CURVE_WIDTH_SELECTED"]
      621 LOADN                            R1 25
      622 SETTABLEKS                       R1 R0 K408 ["CURVE_RESOLUTION"]
      624 LOADN                            R1 5
      625 SETTABLEKS                       R1 R0 K409 ["CURVE_REFINEMENT"]
      627 LOADN                            R1 5
      628 SETTABLEKS                       R1 R0 K410 ["CURVE_INTERVAL"]
      630 LOADK                            R1 K411 [0.1]
      631 SETTABLEKS                       R1 R0 K412 ["CURVE_CANVAS_PADDING"]
      633 LOADK                            R1 K413 [0.2]
      634 SETTABLEKS                       R1 R0 K414 ["CURVE_CANVAS_MIN_RANGE"]
      636 LOADK                            R1 K415 [0.09]
      637 SETTABLEKS                       R1 R0 K416 ["TANGENT_CONTROL_LENGTH"]
      639 LOADN                            R1 1
      640 SETTABLEKS                       R1 R0 K417 ["TANGENT_CONTROL_WIDTH"]
      642 LOADN                            R1 3
      643 SETTABLEKS                       R1 R0 K418 ["SCRUBBER_MARKER_WIDTH"]
      645 LOADN                            R1 1000
      646 SETTABLEKS                       R1 R0 K419 ["NUMBER_PRECISION"]
      648 LOADN                            R1 100
      649 SETTABLEKS                       R1 R0 K420 ["NUMBER_FACS_PRECISION"]
      651 DUPTABLE                         R1 K421 [{["Number"] = "Position", ["Angle"] = "Angle"}]
      652 SETTABLEKS                       R1 R0 K422 ["SCALE_TYPE"]
      654 GETIMPORT                        R1 K54 [UDim2.new]
      656 LOADN                            R2 0
      657 LOADN                            R3 25
      658 LOADN                            R4 0
      659 LOADN                            R5 15
      660 CALL                             R1 4 1
      661 SETTABLEKS                       R1 R0 K423 ["TICK_LABEL_SIZE"]
      663 LOADN                            R1 17
      664 SETTABLEKS                       R1 R0 K424 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
      666 LOADN                            R1 16
      667 SETTABLEKS                       R1 R0 K425 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
      669 LOADK                            R1 K236 [0.25]
      670 SETTABLEKS                       R1 R0 K426 ["CLAMPED_AUTO_TANGENT_THRESHOLD"]
      672 DUPTABLE                         R1 K451 [{["Initializing"] = 0, ["Pending"] = 1, ["Processing"] = 2, ["RequiresModeration"] = 3, ["Error"] = 4, ["ModerationRejected"] = 5, ["Success"] = 6, ["InputTooLong"] = 7, ["InputHasNoPerson"] = 8, ["InputUnstable"] = 9, ["TimedOut"] = 10, ["Cancelled"] = 11, ["MultiplePeopleInFrame"] = 12, ["UploadingData"] = 1001, ["ErrorUploadingData"] = 2001}]
      673 SETTABLEKS                       R1 R0 K452 ["ANIMATION_FROM_VIDEO_STATUS"]
      675 DUPTABLE                         R1 K455 [{["KeyframeSequence"] = "KeyframeSequence", ["CurveAnimation"] = "CurveAnimation"}]
      676 SETTABLEKS                       R1 R0 K456 ["ANIMATION_TYPE"]
      678 LOADK                            R1 K411 [0.1]
      679 SETTABLEKS                       R1 R0 K457 ["CANVAS_ZOOM_INCREMENT"]
      681 DUPTABLE                         R1 K463 [{["Hidden"] = "Hidden", ["FromImportFBX"] = "FromImportFBX", ["FromImportLiveAnimationCreator"] = "FromImportLiveAnimationCreator", ["FromImportFaceRecorder"] = "FromImportFaceRecorder", ["FromMenu"] = "FromMenu"}]
      682 SETTABLEKS                       R1 R0 K464 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
      684 LOADK                            R1 K465 ["NamedKeyframeEvent"]
      685 SETTABLEKS                       R1 R0 K466 ["NAMED_KEYFRAMES_CHANNEL"]
      687 LOADK                            R1 K467 [0.75]
      688 SETTABLEKS                       R1 R0 K468 ["LEAF_BONE_LENGTH_RATIO"]
      690 DUPTABLE                         R1 K470 [{["Warning"] = 1, ["Error"] = 2}]
      691 SETTABLEKS                       R1 R0 K471 ["SEVERITY"]
      693 GETIMPORT                        R1 K43 [Vector2.new]
      695 GETTABLEKS                       R4 R0 K63 ["TRACK_LIST_MIN_WIDTH"]
      697 GETTABLEKS                       R5 R0 K64 ["TIMELINE_MIN_WIDTH"]
      699 ADD                              R3 R4 R5
      700 LOADN                            R4 10
      701 ADD                              R2 R3 R4
      702 LOADN                            R3 200
      703 CALL                             R1 2 1
      704 SETTABLEKS                       R1 R0 K472 ["MAIN_MINIMUM_SIZE"]
      706 GETTABLEKS                       R2 R0 K36 ["MAX_TIME"]
      708 GETTABLEKS                       R3 R0 K37 ["TICK_FREQUENCY"]
      710 MUL                              R1 R2 R3
      711 SETTABLEKS                       R1 R0 K473 ["MAX_ANIMATION_LENGTH"]
      713 DUPTABLE                         R1 K476 [{["Face"] = "Face", ["Body"] = "Body"}]
      714 SETTABLEKS                       R1 R0 K477 ["TRACKS_SUBSETS_TYPE"]
      716 NEWTABLE                         R1 16 0
      718 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      720 GETTABLEKS                       R2 R2 K287 ["UpperTorso"]
      722 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      724 GETTABLEKS                       R3 R3 K308 ["Waist"]
      726 SETTABLE                         R3 R1 R2
      727 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      729 GETTABLEKS                       R2 R2 K293 ["RightUpperLeg"]
      731 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      733 GETTABLEKS                       R3 R3 K307 ["Hip"]
      735 SETTABLE                         R3 R1 R2
      736 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      738 GETTABLEKS                       R2 R2 K296 ["LeftUpperLeg"]
      740 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      742 GETTABLEKS                       R3 R3 K307 ["Hip"]
      744 SETTABLE                         R3 R1 R2
      745 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      747 GETTABLEKS                       R2 R2 K299 ["RightUpperArm"]
      749 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      751 GETTABLEKS                       R3 R3 K309 ["Shoulder"]
      753 SETTABLE                         R3 R1 R2
      754 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      756 GETTABLEKS                       R2 R2 K301 ["LeftUpperArm"]
      758 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      760 GETTABLEKS                       R3 R3 K309 ["Shoulder"]
      762 SETTABLE                         R3 R1 R2
      763 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      765 GETTABLEKS                       R2 R2 K292 ["Head"]
      767 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      769 GETTABLEKS                       R3 R3 K312 ["Neck"]
      771 SETTABLE                         R3 R1 R2
      772 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      774 GETTABLEKS                       R2 R2 K302 ["LeftLowerArm"]
      776 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      778 GETTABLEKS                       R3 R3 K310 ["Elbow"]
      780 SETTABLE                         R3 R1 R2
      781 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      783 GETTABLEKS                       R2 R2 K298 ["LeftHand"]
      785 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      787 GETTABLEKS                       R3 R3 K311 ["Wrist"]
      789 SETTABLE                         R3 R1 R2
      790 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      792 GETTABLEKS                       R2 R2 K300 ["RightLowerArm"]
      794 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      796 GETTABLEKS                       R3 R3 K310 ["Elbow"]
      798 SETTABLE                         R3 R1 R2
      799 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      801 GETTABLEKS                       R2 R2 K295 ["RightHand"]
      803 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      805 GETTABLEKS                       R3 R3 K311 ["Wrist"]
      807 SETTABLE                         R3 R1 R2
      808 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      810 GETTABLEKS                       R2 R2 K297 ["LeftLowerLeg"]
      812 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      814 GETTABLEKS                       R3 R3 K306 ["Knee"]
      816 SETTABLE                         R3 R1 R2
      817 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      819 GETTABLEKS                       R2 R2 K289 ["LeftFoot"]
      821 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      823 GETTABLEKS                       R3 R3 K305 ["Ankle"]
      825 SETTABLE                         R3 R1 R2
      826 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      828 GETTABLEKS                       R2 R2 K294 ["RightLowerLeg"]
      830 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      832 GETTABLEKS                       R3 R3 K306 ["Knee"]
      834 SETTABLE                         R3 R1 R2
      835 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      837 GETTABLEKS                       R2 R2 K290 ["RightFoot"]
      839 GETTABLEKS                       R3 R0 K350 ["CONSTRAINTS_CONFIG"]
      841 GETTABLEKS                       R3 R3 K305 ["Ankle"]
      843 SETTABLE                         R3 R1 R2
      844 SETTABLEKS                       R1 R0 K478 ["PartToConstraintConfigMap"]
      846 NEWTABLE                         R1 16 0
      848 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      850 GETTABLEKS                       R2 R2 K288 ["LowerTorso"]
      852 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      854 GETTABLEKS                       R3 R3 K291 ["HumanoidRootPart"]
      856 SETTABLE                         R3 R1 R2
      857 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      859 GETTABLEKS                       R2 R2 K287 ["UpperTorso"]
      861 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      863 GETTABLEKS                       R3 R3 K288 ["LowerTorso"]
      865 SETTABLE                         R3 R1 R2
      866 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      868 GETTABLEKS                       R2 R2 K293 ["RightUpperLeg"]
      870 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      872 GETTABLEKS                       R3 R3 K288 ["LowerTorso"]
      874 SETTABLE                         R3 R1 R2
      875 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      877 GETTABLEKS                       R2 R2 K296 ["LeftUpperLeg"]
      879 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      881 GETTABLEKS                       R3 R3 K288 ["LowerTorso"]
      883 SETTABLE                         R3 R1 R2
      884 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      886 GETTABLEKS                       R2 R2 K299 ["RightUpperArm"]
      888 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      890 GETTABLEKS                       R3 R3 K287 ["UpperTorso"]
      892 SETTABLE                         R3 R1 R2
      893 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      895 GETTABLEKS                       R2 R2 K301 ["LeftUpperArm"]
      897 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      899 GETTABLEKS                       R3 R3 K287 ["UpperTorso"]
      901 SETTABLE                         R3 R1 R2
      902 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      904 GETTABLEKS                       R2 R2 K292 ["Head"]
      906 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      908 GETTABLEKS                       R3 R3 K287 ["UpperTorso"]
      910 SETTABLE                         R3 R1 R2
      911 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      913 GETTABLEKS                       R2 R2 K302 ["LeftLowerArm"]
      915 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      917 GETTABLEKS                       R3 R3 K301 ["LeftUpperArm"]
      919 SETTABLE                         R3 R1 R2
      920 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      922 GETTABLEKS                       R2 R2 K298 ["LeftHand"]
      924 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      926 GETTABLEKS                       R3 R3 K302 ["LeftLowerArm"]
      928 SETTABLE                         R3 R1 R2
      929 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      931 GETTABLEKS                       R2 R2 K300 ["RightLowerArm"]
      933 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      935 GETTABLEKS                       R3 R3 K299 ["RightUpperArm"]
      937 SETTABLE                         R3 R1 R2
      938 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      940 GETTABLEKS                       R2 R2 K295 ["RightHand"]
      942 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      944 GETTABLEKS                       R3 R3 K300 ["RightLowerArm"]
      946 SETTABLE                         R3 R1 R2
      947 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      949 GETTABLEKS                       R2 R2 K297 ["LeftLowerLeg"]
      951 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      953 GETTABLEKS                       R3 R3 K296 ["LeftUpperLeg"]
      955 SETTABLE                         R3 R1 R2
      956 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      958 GETTABLEKS                       R2 R2 K289 ["LeftFoot"]
      960 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      962 GETTABLEKS                       R3 R3 K297 ["LeftLowerLeg"]
      964 SETTABLE                         R3 R1 R2
      965 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      967 GETTABLEKS                       R2 R2 K294 ["RightLowerLeg"]
      969 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      971 GETTABLEKS                       R3 R3 K293 ["RightUpperLeg"]
      973 SETTABLE                         R3 R1 R2
      974 GETTABLEKS                       R2 R0 K304 ["R15_PARTS"]
      976 GETTABLEKS                       R2 R2 K290 ["RightFoot"]
      978 GETTABLEKS                       R3 R0 K304 ["R15_PARTS"]
      980 GETTABLEKS                       R3 R3 K294 ["RightLowerLeg"]
      982 SETTABLE                         R3 R1 R2
      983 SETTABLEKS                       R1 R0 K479 ["R15links"]
      985 NEWTABLE                         R1 64 0
      987 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
      989 GETTABLEKS                       R2 R2 K351 ["Mouth"]
      991 SETTABLEKS                       R2 R1 K480 ["ChinRaiserUpperLip"]
      993 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
      995 GETTABLEKS                       R2 R2 K351 ["Mouth"]
      997 SETTABLEKS                       R2 R1 K481 ["ChinRaiser"]
      999 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1001 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1003 SETTABLEKS                       R2 R1 K482 ["FlatPucker"]
     1005 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1007 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1009 SETTABLEKS                       R2 R1 K483 ["Funneler"]
     1011 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1013 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1015 SETTABLEKS                       R2 R1 K484 ["LowerLipSuck"]
     1017 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1019 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1021 SETTABLEKS                       R2 R1 K485 ["LipPresser"]
     1023 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1025 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1027 SETTABLEKS                       R2 R1 K486 ["LipsTogether"]
     1029 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1031 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1033 SETTABLEKS                       R2 R1 K487 ["MouthLeft"]
     1035 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1037 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1039 SETTABLEKS                       R2 R1 K488 ["MouthRight"]
     1041 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1043 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1045 SETTABLEKS                       R2 R1 K489 ["Pucker"]
     1047 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1049 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1051 SETTABLEKS                       R2 R1 K490 ["UpperLipSuck"]
     1053 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1055 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1057 SETTABLEKS                       R2 R1 K491 ["LeftCheekPuff"]
     1059 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1061 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1063 SETTABLEKS                       R2 R1 K492 ["LeftDimpler"]
     1065 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1067 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1069 SETTABLEKS                       R2 R1 K493 ["LeftLipCornerDown"]
     1071 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1073 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1075 SETTABLEKS                       R2 R1 K494 ["LeftLowerLipDepressor"]
     1077 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1079 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1081 SETTABLEKS                       R2 R1 K495 ["LeftLipCornerPuller"]
     1083 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1085 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1087 SETTABLEKS                       R2 R1 K496 ["LeftLipStretcher"]
     1089 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1091 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1093 SETTABLEKS                       R2 R1 K497 ["LeftUpperLipRaiser"]
     1095 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1097 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1099 SETTABLEKS                       R2 R1 K498 ["RightCheekPuff"]
     1101 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1103 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1105 SETTABLEKS                       R2 R1 K499 ["RightDimpler"]
     1107 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1109 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1111 SETTABLEKS                       R2 R1 K500 ["RightLipCornerDown"]
     1113 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1115 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1117 SETTABLEKS                       R2 R1 K501 ["RightLowerLipDepressor"]
     1119 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1121 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1123 SETTABLEKS                       R2 R1 K502 ["RightLipCornerPuller"]
     1125 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1127 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1129 SETTABLEKS                       R2 R1 K503 ["RightLipStretcher"]
     1131 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1133 GETTABLEKS                       R2 R2 K351 ["Mouth"]
     1135 SETTABLEKS                       R2 R1 K504 ["RightUpperLipRaiser"]
     1137 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1139 GETTABLEKS                       R2 R2 K352 ["Jaw"]
     1141 SETTABLEKS                       R2 R1 K505 ["JawDrop"]
     1143 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1145 GETTABLEKS                       R2 R2 K352 ["Jaw"]
     1147 SETTABLEKS                       R2 R1 K506 ["JawLeft"]
     1149 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1151 GETTABLEKS                       R2 R2 K352 ["Jaw"]
     1153 SETTABLEKS                       R2 R1 K507 ["JawRight"]
     1155 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1157 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1159 SETTABLEKS                       R2 R1 K508 ["Corrugator"]
     1161 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1163 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1165 SETTABLEKS                       R2 R1 K509 ["LeftBrowLowerer"]
     1167 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1169 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1171 SETTABLEKS                       R2 R1 K510 ["LeftOuterBrowRaiser"]
     1173 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1175 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1177 SETTABLEKS                       R2 R1 K511 ["LeftNoseWrinkler"]
     1179 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1181 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1183 SETTABLEKS                       R2 R1 K512 ["LeftInnerBrowRaiser"]
     1185 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1187 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1189 SETTABLEKS                       R2 R1 K513 ["RightBrowLowerer"]
     1191 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1193 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1195 SETTABLEKS                       R2 R1 K514 ["RightOuterBrowRaiser"]
     1197 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1199 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1201 SETTABLEKS                       R2 R1 K515 ["RightInnerBrowRaiser"]
     1203 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1205 GETTABLEKS                       R2 R2 K353 ["Brows"]
     1207 SETTABLEKS                       R2 R1 K516 ["RightNoseWrinkler"]
     1209 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1211 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1213 SETTABLEKS                       R2 R1 K517 ["EyesLookDown"]
     1215 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1217 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1219 SETTABLEKS                       R2 R1 K518 ["EyesLookLeft"]
     1221 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1223 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1225 SETTABLEKS                       R2 R1 K519 ["EyesLookUp"]
     1227 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1229 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1231 SETTABLEKS                       R2 R1 K520 ["EyesLookRight"]
     1233 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1235 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1237 SETTABLEKS                       R2 R1 K521 ["LeftCheekRaiser"]
     1239 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1241 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1243 SETTABLEKS                       R2 R1 K522 ["LeftEyeUpperLidRaiser"]
     1245 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1247 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1249 SETTABLEKS                       R2 R1 K523 ["LeftEyeClosed"]
     1251 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1253 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1255 SETTABLEKS                       R2 R1 K524 ["RightCheekRaiser"]
     1257 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1259 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1261 SETTABLEKS                       R2 R1 K525 ["RightEyeUpperLidRaiser"]
     1263 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1265 GETTABLEKS                       R2 R2 K354 ["Eyes"]
     1267 SETTABLEKS                       R2 R1 K526 ["RightEyeClosed"]
     1269 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1271 GETTABLEKS                       R2 R2 K355 ["Tongue"]
     1273 SETTABLEKS                       R2 R1 K527 ["TongueDown"]
     1275 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1277 GETTABLEKS                       R2 R2 K355 ["Tongue"]
     1279 SETTABLEKS                       R2 R1 K528 ["TongueOut"]
     1281 GETTABLEKS                       R2 R0 K357 ["FACS_REGIONS"]
     1283 GETTABLEKS                       R2 R2 K355 ["Tongue"]
     1285 SETTABLEKS                       R2 R1 K529 ["TongueUp"]
     1287 SETTABLEKS                       R1 R0 K530 ["FacsControlToRegionMap"]
     1289 DUPTABLE                         R1 K544 [{["LowerTorso"] = "Root", ["UpperTorso"] = "Waist", ["LeftFoot"] = "LeftAnkle", ["RightFoot"] = "RightAnkle", ["LeftHand"] = "LeftWrist", ["RightHand"] = "RightWrist", ["LeftLowerArm"] = "LeftElbow", ["RightLowerArm"] = "RightElbow", ["LeftLowerLeg"] = "LeftKnee", ["RightLowerLeg"] = "RightKnee", ["LeftUpperArm"] = "LeftShoulder", ["RightUpperArm"] = "RightShoulder", ["LeftUpperLeg"] = "LeftHip", ["RightUpperLeg"] = "RightHip", ["Head"] = "Neck"}]
     1290 SETTABLEKS                       R1 R0 K545 ["PART1_TO_JOINT"]
     1292 NEWTABLE                         R1 64 0
     1294 LOADK                            R2 K480 ["ChinRaiserUpperLip"]
     1295 SETTABLEKS                       R2 R1 K480 ["ChinRaiserUpperLip"]
     1297 LOADK                            R2 K481 ["ChinRaiser"]
     1298 SETTABLEKS                       R2 R1 K481 ["ChinRaiser"]
     1300 LOADK                            R2 K482 ["FlatPucker"]
     1301 SETTABLEKS                       R2 R1 K482 ["FlatPucker"]
     1303 LOADK                            R2 K483 ["Funneler"]
     1304 SETTABLEKS                       R2 R1 K483 ["Funneler"]
     1306 LOADK                            R2 K484 ["LowerLipSuck"]
     1307 SETTABLEKS                       R2 R1 K484 ["LowerLipSuck"]
     1309 LOADK                            R2 K485 ["LipPresser"]
     1310 SETTABLEKS                       R2 R1 K485 ["LipPresser"]
     1312 LOADK                            R2 K486 ["LipsTogether"]
     1313 SETTABLEKS                       R2 R1 K486 ["LipsTogether"]
     1315 LOADK                            R2 K487 ["MouthLeft"]
     1316 SETTABLEKS                       R2 R1 K487 ["MouthLeft"]
     1318 LOADK                            R2 K488 ["MouthRight"]
     1319 SETTABLEKS                       R2 R1 K488 ["MouthRight"]
     1321 LOADK                            R2 K489 ["Pucker"]
     1322 SETTABLEKS                       R2 R1 K489 ["Pucker"]
     1324 LOADK                            R2 K490 ["UpperLipSuck"]
     1325 SETTABLEKS                       R2 R1 K490 ["UpperLipSuck"]
     1327 LOADK                            R2 K491 ["LeftCheekPuff"]
     1328 SETTABLEKS                       R2 R1 K491 ["LeftCheekPuff"]
     1330 LOADK                            R2 K492 ["LeftDimpler"]
     1331 SETTABLEKS                       R2 R1 K492 ["LeftDimpler"]
     1333 LOADK                            R2 K493 ["LeftLipCornerDown"]
     1334 SETTABLEKS                       R2 R1 K493 ["LeftLipCornerDown"]
     1336 LOADK                            R2 K494 ["LeftLowerLipDepressor"]
     1337 SETTABLEKS                       R2 R1 K494 ["LeftLowerLipDepressor"]
     1339 LOADK                            R2 K495 ["LeftLipCornerPuller"]
     1340 SETTABLEKS                       R2 R1 K495 ["LeftLipCornerPuller"]
     1342 LOADK                            R2 K496 ["LeftLipStretcher"]
     1343 SETTABLEKS                       R2 R1 K496 ["LeftLipStretcher"]
     1345 LOADK                            R2 K497 ["LeftUpperLipRaiser"]
     1346 SETTABLEKS                       R2 R1 K497 ["LeftUpperLipRaiser"]
     1348 LOADK                            R2 K498 ["RightCheekPuff"]
     1349 SETTABLEKS                       R2 R1 K498 ["RightCheekPuff"]
     1351 LOADK                            R2 K499 ["RightDimpler"]
     1352 SETTABLEKS                       R2 R1 K499 ["RightDimpler"]
     1354 LOADK                            R2 K500 ["RightLipCornerDown"]
     1355 SETTABLEKS                       R2 R1 K500 ["RightLipCornerDown"]
     1357 LOADK                            R2 K501 ["RightLowerLipDepressor"]
     1358 SETTABLEKS                       R2 R1 K501 ["RightLowerLipDepressor"]
     1360 LOADK                            R2 K502 ["RightLipCornerPuller"]
     1361 SETTABLEKS                       R2 R1 K502 ["RightLipCornerPuller"]
     1363 LOADK                            R2 K503 ["RightLipStretcher"]
     1364 SETTABLEKS                       R2 R1 K503 ["RightLipStretcher"]
     1366 LOADK                            R2 K504 ["RightUpperLipRaiser"]
     1367 SETTABLEKS                       R2 R1 K504 ["RightUpperLipRaiser"]
     1369 LOADK                            R2 K505 ["JawDrop"]
     1370 SETTABLEKS                       R2 R1 K505 ["JawDrop"]
     1372 LOADK                            R2 K506 ["JawLeft"]
     1373 SETTABLEKS                       R2 R1 K506 ["JawLeft"]
     1375 LOADK                            R2 K507 ["JawRight"]
     1376 SETTABLEKS                       R2 R1 K507 ["JawRight"]
     1378 LOADK                            R2 K508 ["Corrugator"]
     1379 SETTABLEKS                       R2 R1 K508 ["Corrugator"]
     1381 LOADK                            R2 K509 ["LeftBrowLowerer"]
     1382 SETTABLEKS                       R2 R1 K509 ["LeftBrowLowerer"]
     1384 LOADK                            R2 K510 ["LeftOuterBrowRaiser"]
     1385 SETTABLEKS                       R2 R1 K510 ["LeftOuterBrowRaiser"]
     1387 LOADK                            R2 K511 ["LeftNoseWrinkler"]
     1388 SETTABLEKS                       R2 R1 K511 ["LeftNoseWrinkler"]
     1390 LOADK                            R2 K512 ["LeftInnerBrowRaiser"]
     1391 SETTABLEKS                       R2 R1 K512 ["LeftInnerBrowRaiser"]
     1393 LOADK                            R2 K513 ["RightBrowLowerer"]
     1394 SETTABLEKS                       R2 R1 K513 ["RightBrowLowerer"]
     1396 LOADK                            R2 K514 ["RightOuterBrowRaiser"]
     1397 SETTABLEKS                       R2 R1 K514 ["RightOuterBrowRaiser"]
     1399 LOADK                            R2 K515 ["RightInnerBrowRaiser"]
     1400 SETTABLEKS                       R2 R1 K515 ["RightInnerBrowRaiser"]
     1402 LOADK                            R2 K516 ["RightNoseWrinkler"]
     1403 SETTABLEKS                       R2 R1 K516 ["RightNoseWrinkler"]
     1405 LOADK                            R2 K517 ["EyesLookDown"]
     1406 SETTABLEKS                       R2 R1 K517 ["EyesLookDown"]
     1408 LOADK                            R2 K518 ["EyesLookLeft"]
     1409 SETTABLEKS                       R2 R1 K518 ["EyesLookLeft"]
     1411 LOADK                            R2 K519 ["EyesLookUp"]
     1412 SETTABLEKS                       R2 R1 K519 ["EyesLookUp"]
     1414 LOADK                            R2 K520 ["EyesLookRight"]
     1415 SETTABLEKS                       R2 R1 K520 ["EyesLookRight"]
     1417 LOADK                            R2 K521 ["LeftCheekRaiser"]
     1418 SETTABLEKS                       R2 R1 K521 ["LeftCheekRaiser"]
     1420 LOADK                            R2 K522 ["LeftEyeUpperLidRaiser"]
     1421 SETTABLEKS                       R2 R1 K522 ["LeftEyeUpperLidRaiser"]
     1423 LOADK                            R2 K523 ["LeftEyeClosed"]
     1424 SETTABLEKS                       R2 R1 K523 ["LeftEyeClosed"]
     1426 LOADK                            R2 K524 ["RightCheekRaiser"]
     1427 SETTABLEKS                       R2 R1 K524 ["RightCheekRaiser"]
     1429 LOADK                            R2 K525 ["RightEyeUpperLidRaiser"]
     1430 SETTABLEKS                       R2 R1 K525 ["RightEyeUpperLidRaiser"]
     1432 LOADK                            R2 K526 ["RightEyeClosed"]
     1433 SETTABLEKS                       R2 R1 K526 ["RightEyeClosed"]
     1435 LOADK                            R2 K527 ["TongueDown"]
     1436 SETTABLEKS                       R2 R1 K527 ["TongueDown"]
     1438 LOADK                            R2 K528 ["TongueOut"]
     1439 SETTABLEKS                       R2 R1 K528 ["TongueOut"]
     1441 LOADK                            R2 K529 ["TongueUp"]
     1442 SETTABLEKS                       R2 R1 K529 ["TongueUp"]
     1444 SETTABLEKS                       R1 R0 K546 ["FacsNames"]
     1446 NEWTABLE                         R1 64 0
     1448 NEWTABLE                         R2 0 0
     1450 SETTABLEKS                       R2 R1 K480 ["ChinRaiserUpperLip"]
     1452 NEWTABLE                         R2 0 0
     1454 SETTABLEKS                       R2 R1 K481 ["ChinRaiser"]
     1456 NEWTABLE                         R2 0 0
     1458 SETTABLEKS                       R2 R1 K482 ["FlatPucker"]
     1460 NEWTABLE                         R2 0 0
     1462 SETTABLEKS                       R2 R1 K483 ["Funneler"]
     1464 NEWTABLE                         R2 0 0
     1466 SETTABLEKS                       R2 R1 K484 ["LowerLipSuck"]
     1468 NEWTABLE                         R2 0 0
     1470 SETTABLEKS                       R2 R1 K485 ["LipPresser"]
     1472 NEWTABLE                         R2 0 0
     1474 SETTABLEKS                       R2 R1 K486 ["LipsTogether"]
     1476 DUPTABLE                         R2 K549 [{["sliderGroup"], ["indexInGroup"] = 2}]
     1477 NEWTABLE                         R3 0 2
     1479 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1481 GETTABLEKS                       R4 R4 K488 ["MouthRight"]
     1483 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1485 GETTABLEKS                       R5 R5 K487 ["MouthLeft"]
     1487 SETLIST                          R3 R4 2 [1]
     1489 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1491 SETTABLEKS                       R2 R1 K487 ["MouthLeft"]
     1493 DUPTABLE                         R2 K550 [{["sliderGroup"], ["indexInGroup"] = 1}]
     1494 NEWTABLE                         R3 0 2
     1496 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1498 GETTABLEKS                       R4 R4 K488 ["MouthRight"]
     1500 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1502 GETTABLEKS                       R5 R5 K487 ["MouthLeft"]
     1504 SETLIST                          R3 R4 2 [1]
     1506 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1508 SETTABLEKS                       R2 R1 K488 ["MouthRight"]
     1510 NEWTABLE                         R2 0 0
     1512 SETTABLEKS                       R2 R1 K489 ["Pucker"]
     1514 NEWTABLE                         R2 0 0
     1516 SETTABLEKS                       R2 R1 K490 ["UpperLipSuck"]
     1518 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1519 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1521 GETTABLEKS                       R3 R3 K498 ["RightCheekPuff"]
     1523 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1525 SETTABLEKS                       R2 R1 K491 ["LeftCheekPuff"]
     1527 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1528 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1530 GETTABLEKS                       R3 R3 K499 ["RightDimpler"]
     1532 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1534 SETTABLEKS                       R2 R1 K492 ["LeftDimpler"]
     1536 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1537 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1539 GETTABLEKS                       R3 R3 K500 ["RightLipCornerDown"]
     1541 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1543 SETTABLEKS                       R2 R1 K493 ["LeftLipCornerDown"]
     1545 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1546 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1548 GETTABLEKS                       R3 R3 K501 ["RightLowerLipDepressor"]
     1550 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1552 SETTABLEKS                       R2 R1 K494 ["LeftLowerLipDepressor"]
     1554 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1555 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1557 GETTABLEKS                       R3 R3 K502 ["RightLipCornerPuller"]
     1559 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1561 SETTABLEKS                       R2 R1 K495 ["LeftLipCornerPuller"]
     1563 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1564 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1566 GETTABLEKS                       R3 R3 K503 ["RightLipStretcher"]
     1568 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1570 SETTABLEKS                       R2 R1 K496 ["LeftLipStretcher"]
     1572 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1573 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1575 GETTABLEKS                       R3 R3 K504 ["RightUpperLipRaiser"]
     1577 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1579 SETTABLEKS                       R2 R1 K497 ["LeftUpperLipRaiser"]
     1581 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1582 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1584 GETTABLEKS                       R3 R3 K491 ["LeftCheekPuff"]
     1586 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1588 SETTABLEKS                       R2 R1 K498 ["RightCheekPuff"]
     1590 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1591 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1593 GETTABLEKS                       R3 R3 K492 ["LeftDimpler"]
     1595 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1597 SETTABLEKS                       R2 R1 K499 ["RightDimpler"]
     1599 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1600 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1602 GETTABLEKS                       R3 R3 K493 ["LeftLipCornerDown"]
     1604 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1606 SETTABLEKS                       R2 R1 K500 ["RightLipCornerDown"]
     1608 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1609 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1611 GETTABLEKS                       R3 R3 K494 ["LeftLowerLipDepressor"]
     1613 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1615 SETTABLEKS                       R2 R1 K501 ["RightLowerLipDepressor"]
     1617 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1618 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1620 GETTABLEKS                       R3 R3 K495 ["LeftLipCornerPuller"]
     1622 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1624 SETTABLEKS                       R2 R1 K502 ["RightLipCornerPuller"]
     1626 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1627 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1629 GETTABLEKS                       R3 R3 K496 ["LeftLipStretcher"]
     1631 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1633 SETTABLEKS                       R2 R1 K503 ["RightLipStretcher"]
     1635 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1636 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1638 GETTABLEKS                       R3 R3 K497 ["LeftUpperLipRaiser"]
     1640 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1642 SETTABLEKS                       R2 R1 K504 ["RightUpperLipRaiser"]
     1644 NEWTABLE                         R2 0 0
     1646 SETTABLEKS                       R2 R1 K505 ["JawDrop"]
     1648 DUPTABLE                         R2 K549 [{["sliderGroup"], ["indexInGroup"] = 2}]
     1649 NEWTABLE                         R3 0 2
     1651 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1653 GETTABLEKS                       R4 R4 K507 ["JawRight"]
     1655 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1657 GETTABLEKS                       R5 R5 K506 ["JawLeft"]
     1659 SETLIST                          R3 R4 2 [1]
     1661 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1663 SETTABLEKS                       R2 R1 K506 ["JawLeft"]
     1665 DUPTABLE                         R2 K550 [{["sliderGroup"], ["indexInGroup"] = 1}]
     1666 NEWTABLE                         R3 0 2
     1668 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1670 GETTABLEKS                       R4 R4 K507 ["JawRight"]
     1672 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1674 GETTABLEKS                       R5 R5 K506 ["JawLeft"]
     1676 SETLIST                          R3 R4 2 [1]
     1678 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1680 SETTABLEKS                       R2 R1 K507 ["JawRight"]
     1682 NEWTABLE                         R2 0 0
     1684 SETTABLEKS                       R2 R1 K508 ["Corrugator"]
     1686 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1687 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1689 GETTABLEKS                       R3 R3 K513 ["RightBrowLowerer"]
     1691 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1693 SETTABLEKS                       R2 R1 K509 ["LeftBrowLowerer"]
     1695 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1696 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1698 GETTABLEKS                       R3 R3 K514 ["RightOuterBrowRaiser"]
     1700 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1702 SETTABLEKS                       R2 R1 K510 ["LeftOuterBrowRaiser"]
     1704 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1705 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1707 GETTABLEKS                       R3 R3 K516 ["RightNoseWrinkler"]
     1709 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1711 SETTABLEKS                       R2 R1 K511 ["LeftNoseWrinkler"]
     1713 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1714 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1716 GETTABLEKS                       R3 R3 K515 ["RightInnerBrowRaiser"]
     1718 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1720 SETTABLEKS                       R2 R1 K512 ["LeftInnerBrowRaiser"]
     1722 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1723 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1725 GETTABLEKS                       R3 R3 K509 ["LeftBrowLowerer"]
     1727 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1729 SETTABLEKS                       R2 R1 K513 ["RightBrowLowerer"]
     1731 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1732 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1734 GETTABLEKS                       R3 R3 K510 ["LeftOuterBrowRaiser"]
     1736 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1738 SETTABLEKS                       R2 R1 K514 ["RightOuterBrowRaiser"]
     1740 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1741 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1743 GETTABLEKS                       R3 R3 K512 ["LeftInnerBrowRaiser"]
     1745 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1747 SETTABLEKS                       R2 R1 K515 ["RightInnerBrowRaiser"]
     1749 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1750 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1752 GETTABLEKS                       R3 R3 K511 ["LeftNoseWrinkler"]
     1754 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1756 SETTABLEKS                       R2 R1 K516 ["RightNoseWrinkler"]
     1758 NEWTABLE                         R2 0 0
     1760 SETTABLEKS                       R2 R1 K517 ["EyesLookDown"]
     1762 NEWTABLE                         R2 0 0
     1764 SETTABLEKS                       R2 R1 K518 ["EyesLookLeft"]
     1766 NEWTABLE                         R2 0 0
     1768 SETTABLEKS                       R2 R1 K519 ["EyesLookUp"]
     1770 NEWTABLE                         R2 0 0
     1772 SETTABLEKS                       R2 R1 K520 ["EyesLookRight"]
     1774 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1775 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1777 GETTABLEKS                       R3 R3 K524 ["RightCheekRaiser"]
     1779 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1781 SETTABLEKS                       R2 R1 K521 ["LeftCheekRaiser"]
     1783 DUPTABLE                         R2 K553 [{["sliderGroup"], ["indexInGroup"] = 2, ["symmetryPartner"]}]
     1784 NEWTABLE                         R3 0 2
     1786 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1788 GETTABLEKS                       R4 R4 K523 ["LeftEyeClosed"]
     1790 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1792 GETTABLEKS                       R5 R5 K522 ["LeftEyeUpperLidRaiser"]
     1794 SETLIST                          R3 R4 2 [1]
     1796 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1798 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1800 GETTABLEKS                       R3 R3 K525 ["RightEyeUpperLidRaiser"]
     1802 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1804 SETTABLEKS                       R2 R1 K522 ["LeftEyeUpperLidRaiser"]
     1806 DUPTABLE                         R2 K554 [{["sliderGroup"], ["indexInGroup"] = 1, ["symmetryPartner"]}]
     1807 NEWTABLE                         R3 0 2
     1809 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1811 GETTABLEKS                       R4 R4 K523 ["LeftEyeClosed"]
     1813 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1815 GETTABLEKS                       R5 R5 K522 ["LeftEyeUpperLidRaiser"]
     1817 SETLIST                          R3 R4 2 [1]
     1819 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1821 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1823 GETTABLEKS                       R3 R3 K526 ["RightEyeClosed"]
     1825 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1827 SETTABLEKS                       R2 R1 K523 ["LeftEyeClosed"]
     1829 DUPTABLE                         R2 K552 [{"symmetryPartner"}]
     1830 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1832 GETTABLEKS                       R3 R3 K521 ["LeftCheekRaiser"]
     1834 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1836 SETTABLEKS                       R2 R1 K524 ["RightCheekRaiser"]
     1838 DUPTABLE                         R2 K553 [{["sliderGroup"], ["indexInGroup"] = 2, ["symmetryPartner"]}]
     1839 NEWTABLE                         R3 0 2
     1841 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1843 GETTABLEKS                       R4 R4 K526 ["RightEyeClosed"]
     1845 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1847 GETTABLEKS                       R5 R5 K525 ["RightEyeUpperLidRaiser"]
     1849 SETLIST                          R3 R4 2 [1]
     1851 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1853 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1855 GETTABLEKS                       R3 R3 K522 ["LeftEyeUpperLidRaiser"]
     1857 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1859 SETTABLEKS                       R2 R1 K525 ["RightEyeUpperLidRaiser"]
     1861 DUPTABLE                         R2 K554 [{["sliderGroup"], ["indexInGroup"] = 1, ["symmetryPartner"]}]
     1862 NEWTABLE                         R3 0 2
     1864 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1866 GETTABLEKS                       R4 R4 K526 ["RightEyeClosed"]
     1868 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1870 GETTABLEKS                       R5 R5 K525 ["RightEyeUpperLidRaiser"]
     1872 SETLIST                          R3 R4 2 [1]
     1874 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1876 GETTABLEKS                       R3 R0 K546 ["FacsNames"]
     1878 GETTABLEKS                       R3 R3 K523 ["LeftEyeClosed"]
     1880 SETTABLEKS                       R3 R2 K551 ["symmetryPartner"]
     1882 SETTABLEKS                       R2 R1 K526 ["RightEyeClosed"]
     1884 DUPTABLE                         R2 K549 [{["sliderGroup"], ["indexInGroup"] = 2}]
     1885 NEWTABLE                         R3 0 2
     1887 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1889 GETTABLEKS                       R4 R4 K529 ["TongueUp"]
     1891 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1893 GETTABLEKS                       R5 R5 K527 ["TongueDown"]
     1895 SETLIST                          R3 R4 2 [1]
     1897 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1899 SETTABLEKS                       R2 R1 K527 ["TongueDown"]
     1901 DUPTABLE                         R2 K550 [{["sliderGroup"], ["indexInGroup"] = 1}]
     1902 NEWTABLE                         R3 0 2
     1904 GETTABLEKS                       R4 R0 K546 ["FacsNames"]
     1906 GETTABLEKS                       R4 R4 K529 ["TongueUp"]
     1908 GETTABLEKS                       R5 R0 K546 ["FacsNames"]
     1910 GETTABLEKS                       R5 R5 K527 ["TongueDown"]
     1912 SETLIST                          R3 R4 2 [1]
     1914 SETTABLEKS                       R3 R2 K547 ["sliderGroup"]
     1916 SETTABLEKS                       R2 R1 K529 ["TongueUp"]
     1918 NEWTABLE                         R2 0 0
     1920 SETTABLEKS                       R2 R1 K528 ["TongueOut"]
     1922 SETTABLEKS                       R1 R0 K555 ["FacsCrossMappings"]
     1924 LOADN                            R1 240
     1925 SETTABLEKS                       R1 R0 K556 ["faceControlsEditorOriginalWidth"]
     1927 LOADN                            R1 220
     1928 SETTABLEKS                       R1 R0 K557 ["faceControlsEditorFaceFrontDiagramWidth"]
     1930 LOADN                            R1 310
     1931 SETTABLEKS                       R1 R0 K558 ["faceControlsEditorFaceFrontDiagramHeight"]
     1933 LOADN                            R1 220
     1934 SETTABLEKS                       R1 R0 K559 ["faceControlsEditorFaceSideDiagramWidth"]
     1936 LOADN                            R1 190
     1937 SETTABLEKS                       R1 R0 K560 ["faceControlsEditorFaceSideDiagramHeight"]
     1939 LOADN                            R1 10
     1940 SETTABLEKS                       R1 R0 K561 ["faceControlsEditorDiagramPadding"]
     1942 LOADN                            R1 40
     1943 SETTABLEKS                       R1 R0 K562 ["faceControlsEditoSpacingBetweenDiagrams"]
     1945 LOADN                            R1 95
     1946 SETTABLEKS                       R1 R0 K563 ["faceControlsEditorTogglesContainerHeight"]
     1948 NEWTABLE                         R1 4 0
     1950 GETTABLEKS                       R2 R0 K147 ["TRACK_TYPES"]
     1952 GETTABLEKS                       R2 R2 K136 ["CFrame"]
     1954 NEWTABLE                         R3 8 0
     1956 NEWTABLE                         R4 0 2
     1958 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     1960 GETTABLEKS                       R5 R5 K139 ["Position"]
     1962 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     1964 GETTABLEKS                       R6 R6 K148 ["Rotation"]
     1966 SETLIST                          R4 R5 2 [1]
     1968 SETTABLEKS                       R4 R3 K564 ["_Order"]
     1970 NEWTABLE                         R4 0 1
     1972 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     1974 GETTABLEKS                       R5 R5 K22 ["IkData"]
     1976 SETLIST                          R4 R5 1 [1]
     1978 SETTABLEKS                       R4 R3 K565 ["_OptionalOrder"]
     1980 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     1982 GETTABLEKS                       R4 R4 K139 ["Position"]
     1984 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     1986 GETTABLEKS                       R5 R5 K139 ["Position"]
     1988 SETTABLE                         R5 R3 R4
     1989 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     1991 GETTABLEKS                       R4 R4 K148 ["Rotation"]
     1993 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     1995 GETTABLEKS                       R5 R5 K143 ["EulerAngles"]
     1997 SETTABLE                         R5 R3 R4
     1998 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2000 GETTABLEKS                       R4 R4 K22 ["IkData"]
     2002 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2004 GETTABLEKS                       R5 R5 K22 ["IkData"]
     2006 SETTABLE                         R5 R3 R4
     2007 SETTABLE                         R3 R1 R2
     2008 GETTABLEKS                       R2 R0 K147 ["TRACK_TYPES"]
     2010 GETTABLEKS                       R2 R2 K139 ["Position"]
     2012 NEWTABLE                         R3 4 0
     2014 NEWTABLE                         R4 0 3
     2016 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2018 GETTABLEKS                       R5 R5 K149 ["X"]
     2020 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2022 GETTABLEKS                       R6 R6 K150 ["Y"]
     2024 GETTABLEKS                       R7 R0 K157 ["PROPERTY_KEYS"]
     2026 GETTABLEKS                       R7 R7 K151 ["Z"]
     2028 SETLIST                          R4 R5 3 [1]
     2030 SETTABLEKS                       R4 R3 K564 ["_Order"]
     2032 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2034 GETTABLEKS                       R4 R4 K149 ["X"]
     2036 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2038 GETTABLEKS                       R5 R5 K140 ["Number"]
     2040 SETTABLE                         R5 R3 R4
     2041 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2043 GETTABLEKS                       R4 R4 K150 ["Y"]
     2045 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2047 GETTABLEKS                       R5 R5 K140 ["Number"]
     2049 SETTABLE                         R5 R3 R4
     2050 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2052 GETTABLEKS                       R4 R4 K151 ["Z"]
     2054 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2056 GETTABLEKS                       R5 R5 K140 ["Number"]
     2058 SETTABLE                         R5 R3 R4
     2059 SETTABLE                         R3 R1 R2
     2060 GETTABLEKS                       R2 R0 K147 ["TRACK_TYPES"]
     2062 GETTABLEKS                       R2 R2 K143 ["EulerAngles"]
     2064 NEWTABLE                         R3 4 0
     2066 NEWTABLE                         R4 0 3
     2068 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2070 GETTABLEKS                       R5 R5 K149 ["X"]
     2072 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2074 GETTABLEKS                       R6 R6 K150 ["Y"]
     2076 GETTABLEKS                       R7 R0 K157 ["PROPERTY_KEYS"]
     2078 GETTABLEKS                       R7 R7 K151 ["Z"]
     2080 SETLIST                          R4 R5 3 [1]
     2082 SETTABLEKS                       R4 R3 K564 ["_Order"]
     2084 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2086 GETTABLEKS                       R4 R4 K149 ["X"]
     2088 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2090 GETTABLEKS                       R5 R5 K141 ["Angle"]
     2092 SETTABLE                         R5 R3 R4
     2093 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2095 GETTABLEKS                       R4 R4 K150 ["Y"]
     2097 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2099 GETTABLEKS                       R5 R5 K141 ["Angle"]
     2101 SETTABLE                         R5 R3 R4
     2102 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2104 GETTABLEKS                       R4 R4 K151 ["Z"]
     2106 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2108 GETTABLEKS                       R5 R5 K141 ["Angle"]
     2110 SETTABLE                         R5 R3 R4
     2111 SETTABLE                         R3 R1 R2
     2112 GETTABLEKS                       R2 R0 K147 ["TRACK_TYPES"]
     2114 GETTABLEKS                       R2 R2 K144 ["IkTarget"]
     2116 NEWTABLE                         R3 8 0
     2118 NEWTABLE                         R4 0 4
     2120 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2122 GETTABLEKS                       R5 R5 K152 ["OffsetPos"]
     2124 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2126 GETTABLEKS                       R6 R6 K153 ["OffsetRot"]
     2128 GETTABLEKS                       R7 R0 K157 ["PROPERTY_KEYS"]
     2130 GETTABLEKS                       R7 R7 K154 ["Weight"]
     2132 GETTABLEKS                       R8 R0 K157 ["PROPERTY_KEYS"]
     2134 GETTABLEKS                       R8 R8 K155 ["SurfacePoint"]
     2136 SETLIST                          R4 R5 4 [1]
     2138 SETTABLEKS                       R4 R3 K564 ["_Order"]
     2140 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2142 GETTABLEKS                       R4 R4 K152 ["OffsetPos"]
     2144 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2146 GETTABLEKS                       R5 R5 K139 ["Position"]
     2148 SETTABLE                         R5 R3 R4
     2149 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2151 GETTABLEKS                       R4 R4 K153 ["OffsetRot"]
     2153 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2155 GETTABLEKS                       R5 R5 K142 ["Quaternion"]
     2157 SETTABLE                         R5 R3 R4
     2158 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2160 GETTABLEKS                       R4 R4 K154 ["Weight"]
     2162 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2164 GETTABLEKS                       R5 R5 K140 ["Number"]
     2166 SETTABLE                         R5 R3 R4
     2167 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2169 GETTABLEKS                       R4 R4 K155 ["SurfacePoint"]
     2171 GETTABLEKS                       R5 R0 K147 ["TRACK_TYPES"]
     2173 GETTABLEKS                       R5 R5 K139 ["Position"]
     2175 SETTABLE                         R5 R3 R4
     2176 SETTABLE                         R3 R1 R2
     2177 SETTABLEKS                       R1 R0 K566 ["COMPONENT_TRACK_TYPES"]
     2179 NEWTABLE                         R1 16 0
     2181 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2183 GETTABLEKS                       R2 R2 K139 ["Position"]
     2185 LOADN                            R3 1
     2186 SETTABLE                         R3 R1 R2
     2187 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2189 GETTABLEKS                       R2 R2 K148 ["Rotation"]
     2191 LOADN                            R3 2
     2192 SETTABLE                         R3 R1 R2
     2193 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2195 GETTABLEKS                       R2 R2 K22 ["IkData"]
     2197 LOADN                            R3 3
     2198 SETTABLE                         R3 R1 R2
     2199 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2201 GETTABLEKS                       R2 R2 K149 ["X"]
     2203 LOADN                            R3 1
     2204 SETTABLE                         R3 R1 R2
     2205 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2207 GETTABLEKS                       R2 R2 K150 ["Y"]
     2209 LOADN                            R3 2
     2210 SETTABLE                         R3 R1 R2
     2211 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2213 GETTABLEKS                       R2 R2 K151 ["Z"]
     2215 LOADN                            R3 3
     2216 SETTABLE                         R3 R1 R2
     2217 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2219 GETTABLEKS                       R2 R2 K152 ["OffsetPos"]
     2221 LOADN                            R3 1
     2222 SETTABLE                         R3 R1 R2
     2223 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2225 GETTABLEKS                       R2 R2 K153 ["OffsetRot"]
     2227 LOADN                            R3 2
     2228 SETTABLE                         R3 R1 R2
     2229 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2231 GETTABLEKS                       R2 R2 K154 ["Weight"]
     2233 LOADN                            R3 3
     2234 SETTABLE                         R3 R1 R2
     2235 GETTABLEKS                       R2 R0 K157 ["PROPERTY_KEYS"]
     2237 GETTABLEKS                       R2 R2 K155 ["SurfacePoint"]
     2239 LOADN                            R3 4
     2240 SETTABLE                         R3 R1 R2
     2241 SETTABLEKS                       R1 R0 K567 ["COMPONENT_PATH_VALUE"]
     2243 LOADK                            R1 K411 [0.1]
     2244 SETTABLEKS                       R1 R0 K568 ["COMPONENT_PATH_BASE_SCALE"]
     2246 GETTABLEKS                       R1 R0 K270 ["KEYFRAME_STYLE"]
     2248 GETIMPORT                        R2 K359 [Enum.KeyInterpolationMode.Constant]
     2250 LOADK                            R3 K262 ["Constant"]
     2251 SETTABLE                         R3 R1 R2
     2252 GETTABLEKS                       R1 R0 K270 ["KEYFRAME_STYLE"]
     2254 GETIMPORT                        R2 K361 [Enum.KeyInterpolationMode.Cubic]
     2256 LOADK                            R3 K264 ["Cubic"]
     2257 SETTABLE                         R3 R1 R2
     2258 NEWTABLE                         R1 2 0
     2260 GETTABLEKS                       R2 R0 K147 ["TRACK_TYPES"]
     2262 GETTABLEKS                       R2 R2 K140 ["Number"]
     2264 NEWTABLE                         R3 4 0
     2266 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2268 GETTABLEKS                       R4 R4 K149 ["X"]
     2270 LOADK                            R5 K569 ["positionX"]
     2271 SETTABLE                         R5 R3 R4
     2272 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2274 GETTABLEKS                       R4 R4 K150 ["Y"]
     2276 LOADK                            R5 K570 ["positionY"]
     2277 SETTABLE                         R5 R3 R4
     2278 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2280 GETTABLEKS                       R4 R4 K151 ["Z"]
     2282 LOADK                            R5 K571 ["positionZ"]
     2283 SETTABLE                         R5 R3 R4
     2284 SETTABLE                         R3 R1 R2
     2285 GETTABLEKS                       R2 R0 K147 ["TRACK_TYPES"]
     2287 GETTABLEKS                       R2 R2 K141 ["Angle"]
     2289 NEWTABLE                         R3 4 0
     2291 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2293 GETTABLEKS                       R4 R4 K149 ["X"]
     2295 LOADK                            R5 K572 ["rotationX"]
     2296 SETTABLE                         R5 R3 R4
     2297 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2299 GETTABLEKS                       R4 R4 K150 ["Y"]
     2301 LOADK                            R5 K573 ["rotationY"]
     2302 SETTABLE                         R5 R3 R4
     2303 GETTABLEKS                       R4 R0 K157 ["PROPERTY_KEYS"]
     2305 GETTABLEKS                       R4 R4 K151 ["Z"]
     2307 LOADK                            R5 K574 ["rotationZ"]
     2308 SETTABLE                         R5 R3 R4
     2309 SETTABLE                         R3 R1 R2
     2310 SETTABLEKS                       R1 R0 K575 ["TRACK_THEME_MAPPING"]
     2312 NEWTABLE                         R1 2 0
     2314 GETTABLEKS                       R2 R0 K422 ["SCALE_TYPE"]
     2316 GETTABLEKS                       R2 R2 K140 ["Number"]
     2318 GETIMPORT                        R3 K54 [UDim2.new]
     2320 LOADK                            R4 K111 [0.3]
     2321 LOADN                            R5 0
     2322 LOADK                            R6 K238 [0.5]
     2323 LOADN                            R7 0
     2324 CALL                             R3 4 1
     2325 SETTABLE                         R3 R1 R2
     2326 GETTABLEKS                       R2 R0 K422 ["SCALE_TYPE"]
     2328 GETTABLEKS                       R2 R2 K141 ["Angle"]
     2330 GETIMPORT                        R3 K54 [UDim2.new]
     2332 LOADK                            R4 K90 [0.7]
     2333 LOADN                            R5 0
     2334 LOADK                            R6 K238 [0.5]
     2335 LOADN                            R7 0
     2336 CALL                             R3 4 1
     2337 SETTABLE                         R3 R1 R2
     2338 SETTABLEKS                       R1 R0 K576 ["TICK_LABEL_POSITION"]
     2340 GETTABLEKS                       R1 R0 K147 ["TRACK_TYPES"]
     2342 GETTABLEKS                       R1 R1 K143 ["EulerAngles"]
     2344 SETTABLEKS                       R1 R0 K577 ["DEFAULT_ROTATION_TYPE"]
     2346 RETURN                           R0 1
