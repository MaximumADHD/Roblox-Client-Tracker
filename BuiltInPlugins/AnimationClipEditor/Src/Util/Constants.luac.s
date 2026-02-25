MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 256 0
        3 LOADK                            R1 K0 ["AnimationClipEditor"]
        4 SETTABLEKS                       R1 R0 K1 ["PLUGIN_NAME"]
        6 LOADK                            R1 K2 [""]
        7 SETTABLEKS                       R1 R0 K3 ["PLUGIN_ICON"]
        9 LOADK                            R1 K4 ["rbxasset://textures/ui/LuaChat/icons/ic-check@2x.png"]
       10 SETTABLEKS                       R1 R0 K5 ["CHECK_IMAGE"]
       12 DUPTABLE                         R1 K11 [{"EulerAnglesOrder", "RotationType", "ShowAsSeconds", "SnapMode", "TimelineUnit"}]
       13 LOADK                            R2 K12 ["ACE_EulerAnglesOrder"]
       14 SETTABLEKS                       R2 R1 K6 ["EulerAnglesOrder"]
       16 LOADK                            R2 K13 ["ACE_RotationType"]
       17 SETTABLEKS                       R2 R1 K7 ["RotationType"]
       19 LOADK                            R2 K14 ["ACE_ShowAsSeconds"]
       20 SETTABLEKS                       R2 R1 K8 ["ShowAsSeconds"]
       22 LOADK                            R2 K15 ["ACE_SnapMode"]
       23 SETTABLEKS                       R2 R1 K9 ["SnapMode"]
       25 LOADK                            R2 K16 ["ACE_TimelineUnit"]
       26 SETTABLEKS                       R2 R1 K10 ["TimelineUnit"]
       28 SETTABLEKS                       R1 R0 K17 ["SETTINGS"]
       30 DUPTABLE                         R1 K22 [{"AnimSaves", "Microbones", "IkData", "IkTargets"}]
       31 LOADK                            R2 K23 ["RBX_ANIMSAVES"]
       32 SETTABLEKS                       R2 R1 K18 ["AnimSaves"]
       34 LOADK                            R2 K24 ["RBX_MICROBONE_NODES"]
       35 SETTABLEKS                       R2 R1 K19 ["Microbones"]
       37 LOADK                            R2 K20 ["IkData"]
       38 SETTABLEKS                       R2 R1 K20 ["IkData"]
       40 LOADK                            R2 K21 ["IkTargets"]
       41 SETTABLEKS                       R2 R1 K21 ["IkTargets"]
       43 SETTABLEKS                       R1 R0 K25 ["FOLDERS"]
       45 LOADK                            R1 K26 ["animationUploadSuccess"]
       46 SETTABLEKS                       R1 R0 K27 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       48 LOADK                            R1 K28 [0.04]
       49 SETTABLEKS                       R1 R0 K29 ["ZOOM_INCREMENT"]
       51 LOADN                            R1 30
       52 SETTABLEKS                       R1 R0 K30 ["DEFAULT_FRAMERATE"]
       54 LOADN                            R1 1
       55 SETTABLEKS                       R1 R0 K31 ["MIN_FRAMERATE"]
       57 LOADN                            R1 120
       58 SETTABLEKS                       R1 R0 K32 ["MAX_FRAMERATE"]
       60 LOADK                            R1 K33 [0.01]
       61 SETTABLEKS                       R1 R0 K34 ["MIN_PLAYBACK_SPEED"]
       63 LOADN                            R1 10
       64 SETTABLEKS                       R1 R0 K35 ["MAX_PLAYBACK_SPEED"]
       66 LOADN                            R1 8
       67 SETTABLEKS                       R1 R0 K36 ["MAX_TIME"]
       69 LOADN                            R1 96
       70 SETTABLEKS                       R1 R0 K37 ["TICK_FREQUENCY"]
       72 LOADN                            R1 96
       73 SETTABLEKS                       R1 R0 K38 ["DEFAULT_TICK_FREQUENCY"]
       75 LOADN                            R1 30
       76 SETTABLEKS                       R1 R0 K39 ["MAX_DISPLAYED_TIME"]
       78 LOADN                            R1 30
       79 SETTABLEKS                       R1 R0 K40 ["MIN_TIMELINE_RANGE"]
       81 GETIMPORT                        R1 K43 [Vector2.new]
       83 LOADN                            R2 128
       84 LOADN                            R3 200
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K44 ["MAIN_FLOATING_SIZE"]
       88 GETIMPORT                        R1 K43 [Vector2.new]
       90 LOADN                            R2 0
       91 LOADN                            R3 200
       92 CALL                             R1 2 1
       93 SETTABLEKS                       R1 R0 K45 ["MAIN_TEST_SIZE"]
       95 LOADN                            R1 20
       96 SETTABLEKS                       R1 R0 K46 ["MAX_WAYPOINT_SIZE"]
       98 LOADN                            R1 8
       99 SETTABLEKS                       R1 R0 K47 ["MIN_SPACE_BETWEEN_KEYS"]
      101 LOADN                            R1 72
      102 SETTABLEKS                       R1 R0 K48 ["TRACK_PADDING_SMALL"]
      104 LOADN                            R1 84
      105 SETTABLEKS                       R1 R0 K49 ["TRACK_PADDING_MEDIUM"]
      107 LOADN                            R1 96
      108 SETTABLEKS                       R1 R0 K50 ["TRACK_PADDING_LARGE"]
      110 LOADN                            R1 22
      111 SETTABLEKS                       R1 R0 K51 ["SUMMARY_TRACK_HEIGHT"]
      113 LOADN                            R1 22
      114 SETTABLEKS                       R1 R0 K52 ["TRACK_HEIGHT"]
      116 GETIMPORT                        R1 K54 [UDim2.new]
      118 LOADN                            R2 0
      119 LOADN                            R3 6
      120 LOADN                            R4 0
      121 LOADN                            R5 20
      122 CALL                             R1 4 1
      123 SETTABLEKS                       R1 R0 K55 ["EVENT_MARKER_SIZE"]
      125 GETIMPORT                        R1 K54 [UDim2.new]
      127 LOADN                            R2 0
      128 LOADN                            R3 8
      129 LOADN                            R4 0
      130 LOADN                            R5 22
      131 CALL                             R1 4 1
      132 SETTABLEKS                       R1 R0 K56 ["EVENT_MARKER_BORDER_SIZE"]
      134 LOADN                            R1 24
      135 SETTABLEKS                       R1 R0 K57 ["TIMELINE_HEIGHT"]
      137 LOADN                            R1 200
      138 SETTABLEKS                       R1 R0 K58 ["CONTROLS_WIDTH"]
      140 LOADN                            R1 100
      141 SETTABLEKS                       R1 R0 K59 ["TIME_DISPLAY_WIDTH"]
      143 LOADN                            R1 17
      144 SETTABLEKS                       R1 R0 K60 ["SCROLL_BAR_SIZE"]
      146 LOADN                            R1 2
      147 SETTABLEKS                       R1 R0 K61 ["SCROLL_BAR_PADDING"]
      149 LOADN                            R1 189
      150 SETTABLEKS                       R1 R0 K62 ["TRACK_LIST_START_WIDTH"]
      152 LOADN                            R1 184
      153 SETTABLEKS                       R1 R0 K63 ["TRACK_LIST_MIN_WIDTH"]
      155 LOADN                            R1 190
      156 SETTABLEKS                       R1 R0 K64 ["TIMELINE_MIN_WIDTH"]
      158 LOADN                            R1 8
      159 SETTABLEKS                       R1 R0 K65 ["INDENT_PADDING"]
      161 LOADN                            R1 10
      162 SETTABLEKS                       R1 R0 K66 ["ARROW_SIZE"]
      164 LOADN                            R1 16
      165 SETTABLEKS                       R1 R0 K67 ["TRACKLIST_BUTTON_SIZE"]
      167 LOADN                            R1 8
      168 SETTABLEKS                       R1 R0 K68 ["TRACKLIST_RIGHT_PADDING"]
      170 LOADN                            R1 80
      171 SETTABLEKS                       R1 R0 K69 ["NUMBERBOX_WIDTH"]
      173 LOADN                            R1 4
      174 SETTABLEKS                       R1 R0 K70 ["NUMBERBOX_PADDING"]
      176 LOADK                            R1 K71 [0.05]
      177 SETTABLEKS                       R1 R0 K72 ["NUMBERBOX_DRAG_MULTIPLIER"]
      179 LOADK                            R1 K33 [0.01]
      180 SETTABLEKS                       R1 R0 K73 ["NUMBERBOX_FACS_DRAG_MULTIPLIER"]
      182 LOADN                            R1 5
      183 SETTABLEKS                       R1 R0 K74 ["NUMBERTRACK_PADDING"]
      185 LOADN                            R1 6
      186 SETTABLEKS                       R1 R0 K75 ["KEYFRAME_WIDTH"]
      188 LOADN                            R1 1
      189 SETTABLEKS                       R1 R0 K76 ["KEYFRAME_BORDER_SIZE"]
      191 LOADN                            R1 2
      192 SETTABLEKS                       R1 R0 K77 ["KEYFRAME_BORDER_SIZE_SELECTED"]
      194 LOADN                            R1 8
      195 SETTABLEKS                       R1 R0 K78 ["SUMMARY_KEYFRAME_WIDTH"]
      197 LOADN                            R1 232
      198 SETTABLEKS                       R1 R0 K79 ["MAX_VISIBLE_KEYFRAMES"]
      200 LOADN                            R1 1
      201 SETTABLEKS                       R1 R0 K80 ["LENGTH_PADDING"]
      203 LOADN                            R1 5
      204 SETTABLEKS                       R1 R0 K81 ["NUM_TICKS"]
      206 LOADN                            R1 125
      207 SETTABLEKS                       R1 R0 K82 ["TICK_SPACING"]
      209 LOADN                            R1 5
      210 SETTABLEKS                       R1 R0 K83 ["SCALE_NUM_TICKS"]
      212 LOADN                            R1 44
      213 SETTABLEKS                       R1 R0 K84 ["SCALE_TICK_SPACING"]
      215 GETIMPORT                        R1 K54 [UDim2.new]
      217 LOADN                            R2 0
      218 LOADN                            R3 64
      219 LOADN                            R4 0
      220 LOADN                            R5 130
      221 CALL                             R1 4 1
      222 SETTABLEKS                       R1 R0 K85 ["PROMPT_SIZE"]
      224 GETIMPORT                        R1 K43 [Vector2.new]
      226 LOADN                            R2 100
      227 LOADN                            R3 25
      228 CALL                             R1 2 1
      229 SETTABLEKS                       R1 R0 K86 ["PROMPT_BUTTON_SIZE"]
      231 LOADN                            R1 10
      232 SETTABLEKS                       R1 R0 K87 ["PROMPT_BUTTON_PADDING"]
      234 LOADN                            R1 15
      235 SETTABLEKS                       R1 R0 K88 ["PROMPT_VERTICAL_PADDING"]
      237 LOADN                            R1 20
      238 SETTABLEKS                       R1 R0 K89 ["PROMPT_HORIZONTAL_PADDING"]
      240 LOADK                            R1 K90 [0.7]
      241 SETTABLEKS                       R1 R0 K91 ["TRANSLATION_STIFFNESS"]
      243 LOADK                            R1 K90 [0.7]
      244 SETTABLEKS                       R1 R0 K92 ["ROTATION_STIFFNESS"]
      246 LOADK                            R1 K33 [0.01]
      247 SETTABLEKS                       R1 R0 K93 ["MIN_TRANSLATION_STIFFNESS"]
      249 LOADK                            R1 K33 [0.01]
      250 SETTABLEKS                       R1 R0 K94 ["MIN_ROTATION_STIFFNESS"]
      252 LOADN                            R1 10
      253 SETTABLEKS                       R1 R0 K95 ["MIN_EFFECTOR_DISTANCE"]
      255 DUPTABLE                         R1 K99 [{"AnimationConstraint", "Bone", "Motor6D"}]
      256 LOADK                            R2 K96 ["AnimationConstraint"]
      257 SETTABLEKS                       R2 R1 K96 ["AnimationConstraint"]
      259 LOADK                            R2 K97 ["Bone"]
      260 SETTABLEKS                       R2 R1 K97 ["Bone"]
      262 LOADK                            R2 K98 ["Motor6D"]
      263 SETTABLEKS                       R2 R1 K98 ["Motor6D"]
      265 SETTABLEKS                       R1 R0 K100 ["JOINT_TYPES"]
      267 GETIMPORT                        R1 K103 [Color3.fromRGB]
      269 LOADN                            R2 232
      270 LOADN                            R3 112
      271 LOADN                            R4 240
      272 CALL                             R1 3 1
      273 SETTABLEKS                       R1 R0 K104 ["BONE_NODE_COLOR"]
      275 GETIMPORT                        R1 K103 [Color3.fromRGB]
      277 LOADN                            R2 107
      278 LOADN                            R3 50
      279 LOADN                            R4 124
      280 CALL                             R1 3 1
      281 SETTABLEKS                       R1 R0 K105 ["BONE_LINK_COLOR"]
      283 GETIMPORT                        R1 K103 [Color3.fromRGB]
      285 LOADN                            R2 207
      286 LOADN                            R3 88
      287 LOADN                            R4 224
      288 CALL                             R1 3 1
      289 SETTABLEKS                       R1 R0 K106 ["BONE_CONE_COLOR"]
      291 LOADK                            R1 K107 [0.15]
      292 SETTABLEKS                       R1 R0 K108 ["BONE_NODE_TRANSPARENCY"]
      294 LOADK                            R1 K109 [0.45]
      295 SETTABLEKS                       R1 R0 K110 ["BONE_LINK_TRANSPARENCY"]
      297 LOADK                            R1 K111 [0.3]
      298 SETTABLEKS                       R1 R0 K112 ["BONE_TRANSPARENCY_DEFAULT"]
      300 LOADN                            R1 0
      301 SETTABLEKS                       R1 R0 K113 ["BONE_TRANSPARENCY_HOVER"]
      303 GETIMPORT                        R1 K103 [Color3.fromRGB]
      305 LOADN                            R2 207
      306 LOADN                            R3 88
      307 LOADN                            R4 224
      308 CALL                             R1 3 1
      309 SETTABLEKS                       R1 R0 K114 ["BONE_COLOR_DEFAULT"]
      311 GETIMPORT                        R1 K103 [Color3.fromRGB]
      313 LOADN                            R2 44
      314 LOADN                            R3 88
      315 LOADN                            R4 224
      316 CALL                             R1 3 1
      317 SETTABLEKS                       R1 R0 K115 ["BONE_COLOR_HOVER"]
      319 GETIMPORT                        R1 K103 [Color3.fromRGB]
      321 LOADN                            R2 13
      322 LOADN                            R3 105
      323 LOADN                            R4 172
      324 CALL                             R1 3 1
      325 SETTABLEKS                       R1 R0 K116 ["BONE_COLOR_SELECTED"]
      327 LOADN                            R1 15
      328 SETTABLEKS                       R1 R0 K117 ["LENGTH_TO_RADIUS_RATIO"]
      330 LOADN                            R1 30
      331 SETTABLEKS                       R1 R0 K118 ["SNAP_TO_KEYFRAME_THRESHOLD"]
      333 DUPTABLE                         R1 K122 [{"Keyframes", "Frames", "None"}]
      334 LOADK                            R2 K119 ["Keyframes"]
      335 SETTABLEKS                       R2 R1 K119 ["Keyframes"]
      337 LOADK                            R2 K120 ["Frames"]
      338 SETTABLEKS                       R2 R1 K120 ["Frames"]
      340 LOADK                            R2 K121 ["None"]
      341 SETTABLEKS                       R2 R1 K121 ["None"]
      343 SETTABLEKS                       R1 R0 K123 ["SNAP_MODES"]
      345 LOADK                            R1 K124 ["ROBLOX_R15_IK_CONSTRAINTS"]
      346 SETTABLEKS                       R1 R0 K125 ["TEMPORARY_CONSTRAINTS"]
      348 LOADK                            R1 K126 ["RBX_TMP_CONTROL_RIG"]
      349 SETTABLEKS                       R1 R0 K127 ["TEMPORARY_CONTROL_RIG_ANIMATION"]
      351 LOADK                            R1 K128 ["Imported Animation Clip"]
      352 SETTABLEKS                       R1 R0 K129 ["DEFAULT_IMPORTED_NAME"]
      354 LOADK                            R1 K130 ["Automatic Save"]
      355 SETTABLEKS                       R1 R0 K131 ["DEFAULT_AUTOSAVE_NAME"]
      357 LOADK                            R1 K132 ["Keyframe"]
      358 SETTABLEKS                       R1 R0 K133 ["DEFAULT_KEYFRAME_NAME"]
      360 LOADK                            R1 K134 ["FaceControls"]
      361 SETTABLEKS                       R1 R0 K135 ["FACE_CONTROLS_FOLDER"]
      363 DUPTABLE                         R1 K146 [{"CFrame", "Facs", "Other", "Position", "Number", "Angle", "Quaternion", "EulerAngles", "IkData", "IkTarget", "Folder"}]
      364 LOADK                            R2 K136 ["CFrame"]
      365 SETTABLEKS                       R2 R1 K136 ["CFrame"]
      367 LOADK                            R2 K137 ["Facs"]
      368 SETTABLEKS                       R2 R1 K137 ["Facs"]
      370 LOADK                            R2 K138 ["Other"]
      371 SETTABLEKS                       R2 R1 K138 ["Other"]
      373 LOADK                            R2 K139 ["Position"]
      374 SETTABLEKS                       R2 R1 K139 ["Position"]
      376 LOADK                            R2 K140 ["Number"]
      377 SETTABLEKS                       R2 R1 K140 ["Number"]
      379 LOADK                            R2 K141 ["Angle"]
      380 SETTABLEKS                       R2 R1 K141 ["Angle"]
      382 LOADK                            R2 K142 ["Quaternion"]
      383 SETTABLEKS                       R2 R1 K142 ["Quaternion"]
      385 LOADK                            R2 K143 ["EulerAngles"]
      386 SETTABLEKS                       R2 R1 K143 ["EulerAngles"]
      388 LOADK                            R2 K20 ["IkData"]
      389 SETTABLEKS                       R2 R1 K20 ["IkData"]
      391 LOADK                            R2 K144 ["IkTarget"]
      392 SETTABLEKS                       R2 R1 K144 ["IkTarget"]
      394 LOADK                            R2 K145 ["Folder"]
      395 SETTABLEKS                       R2 R1 K145 ["Folder"]
      397 SETTABLEKS                       R1 R0 K147 ["TRACK_TYPES"]
      399 DUPTABLE                         R1 K156 [{"Position", "Rotation", "X", "Y", "Z", "IkData", "OffsetPos", "OffsetRot", "Weight", "SurfacePoint"}]
      400 LOADK                            R2 K139 ["Position"]
      401 SETTABLEKS                       R2 R1 K139 ["Position"]
      403 LOADK                            R2 K148 ["Rotation"]
      404 SETTABLEKS                       R2 R1 K148 ["Rotation"]
      406 LOADK                            R2 K149 ["X"]
      407 SETTABLEKS                       R2 R1 K149 ["X"]
      409 LOADK                            R2 K150 ["Y"]
      410 SETTABLEKS                       R2 R1 K150 ["Y"]
      412 LOADK                            R2 K151 ["Z"]
      413 SETTABLEKS                       R2 R1 K151 ["Z"]
      415 LOADK                            R2 K20 ["IkData"]
      416 SETTABLEKS                       R2 R1 K20 ["IkData"]
      418 LOADK                            R2 K152 ["OffsetPos"]
      419 SETTABLEKS                       R2 R1 K152 ["OffsetPos"]
      421 LOADK                            R2 K153 ["OffsetRot"]
      422 SETTABLEKS                       R2 R1 K153 ["OffsetRot"]
      424 LOADK                            R2 K154 ["Weight"]
      425 SETTABLEKS                       R2 R1 K154 ["Weight"]
      427 LOADK                            R2 K155 ["SurfacePoint"]
      428 SETTABLEKS                       R2 R1 K155 ["SurfacePoint"]
      430 SETTABLEKS                       R1 R0 K157 ["PROPERTY_KEYS"]
      432 DUPTABLE                         R1 K160 [{"Edit", "Delete"}]
      433 LOADK                            R2 K158 ["Edit"]
      434 SETTABLEKS                       R2 R1 K158 ["Edit"]
      436 LOADK                            R2 K159 ["Delete"]
      437 SETTABLEKS                       R2 R1 K159 ["Delete"]
      439 SETTABLEKS                       R1 R0 K161 ["ACTION_KEYS"]
      441 DUPTABLE                         R1 K165 [{"AddIkTarget", "SetTargetInstance", "DeleteIkTarget"}]
      442 LOADK                            R2 K162 ["AddIkTarget"]
      443 SETTABLEKS                       R2 R1 K162 ["AddIkTarget"]
      445 LOADK                            R2 K163 ["SetTargetInstance"]
      446 SETTABLEKS                       R2 R1 K163 ["SetTargetInstance"]
      448 LOADK                            R2 K164 ["DeleteIkTarget"]
      449 SETTABLEKS                       R2 R1 K164 ["DeleteIkTarget"]
      451 SETTABLEKS                       R1 R0 K166 ["TRACK_ACTIONS"]
      453 DUPTABLE                         R1 K170 [{"Clip", "NewClip", "Separator"}]
      454 LOADK                            R2 K167 ["Clip"]
      455 SETTABLEKS                       R2 R1 K167 ["Clip"]
      457 LOADK                            R2 K171 ["New Clip"]
      458 SETTABLEKS                       R2 R1 K168 ["NewClip"]
      460 LOADK                            R2 K169 ["Separator"]
      461 SETTABLEKS                       R2 R1 K169 ["Separator"]
      463 SETTABLEKS                       R1 R0 K172 ["CLIP_DROPDOWN_TYPES"]
      465 DUPTABLE                         R1 K191 [{"AnimConstraintMissingPart0", "AnimConstraintMissingPart1", "BoneNameCollision", "CircularRig", "DoubleJoints", "FaceControlsParent", "MissingPart0", "MissingPart1", "MultipleFaceControls", "MultipleMotorsOrAnimConstraints", "MultipleParents", "NameCollision", "NoAnimationController", "NoJoints", "NoMotors", "NoRoot", "PartBoneNameCollision", "PartsAnchored"}]
      466 LOADK                            R2 K173 ["AnimConstraintMissingPart0"]
      467 SETTABLEKS                       R2 R1 K173 ["AnimConstraintMissingPart0"]
      469 LOADK                            R2 K174 ["AnimConstraintMissingPart1"]
      470 SETTABLEKS                       R2 R1 K174 ["AnimConstraintMissingPart1"]
      472 LOADK                            R2 K175 ["BoneNameCollision"]
      473 SETTABLEKS                       R2 R1 K175 ["BoneNameCollision"]
      475 LOADK                            R2 K176 ["CircularRig"]
      476 SETTABLEKS                       R2 R1 K176 ["CircularRig"]
      478 LOADK                            R2 K177 ["DoubleJoints"]
      479 SETTABLEKS                       R2 R1 K177 ["DoubleJoints"]
      481 LOADK                            R2 K178 ["FaceControlsParent"]
      482 SETTABLEKS                       R2 R1 K178 ["FaceControlsParent"]
      484 LOADK                            R2 K192 ["MissingPart0_Migrated"]
      485 SETTABLEKS                       R2 R1 K179 ["MissingPart0"]
      487 LOADK                            R2 K193 ["MissingPart1_Migrated"]
      488 SETTABLEKS                       R2 R1 K180 ["MissingPart1"]
      490 LOADK                            R2 K181 ["MultipleFaceControls"]
      491 SETTABLEKS                       R2 R1 K181 ["MultipleFaceControls"]
      493 LOADK                            R2 K182 ["MultipleMotorsOrAnimConstraints"]
      494 SETTABLEKS                       R2 R1 K182 ["MultipleMotorsOrAnimConstraints"]
      496 LOADK                            R2 K194 ["MultipleParents_Migrated"]
      497 SETTABLEKS                       R2 R1 K183 ["MultipleParents"]
      499 LOADK                            R2 K184 ["NameCollision"]
      500 SETTABLEKS                       R2 R1 K184 ["NameCollision"]
      502 LOADK                            R2 K185 ["NoAnimationController"]
      503 SETTABLEKS                       R2 R1 K185 ["NoAnimationController"]
      505 LOADK                            R2 K186 ["NoJoints"]
      506 SETTABLEKS                       R2 R1 K186 ["NoJoints"]
      508 LOADK                            R2 K187 ["NoMotors"]
      509 SETTABLEKS                       R2 R1 K187 ["NoMotors"]
      511 LOADK                            R2 K188 ["NoRoot"]
      512 SETTABLEKS                       R2 R1 K188 ["NoRoot"]
      514 LOADK                            R2 K189 ["PartBoneNameCollision"]
      515 SETTABLEKS                       R2 R1 K189 ["PartBoneNameCollision"]
      517 LOADK                            R2 K190 ["PartsAnchored"]
      518 SETTABLEKS                       R2 R1 K190 ["PartsAnchored"]
      520 SETTABLEKS                       R1 R0 K195 ["RIG_ERRORS"]
      522 DUPTABLE                         R1 K196 [{"PartsAnchored"}]
      523 LOADK                            R2 K197 ["PartsAnchoredWarning"]
      524 SETTABLEKS                       R2 R1 K190 ["PartsAnchored"]
      526 SETTABLEKS                       R1 R0 K198 ["RIG_WARNINGS"]
      528 DUPTABLE                         R1 K200 [{"OpenedWhileRunning"}]
      529 LOADK                            R2 K199 ["OpenedWhileRunning"]
      530 SETTABLEKS                       R2 R1 K199 ["OpenedWhileRunning"]
      532 SETTABLEKS                       R1 R0 K201 ["EDITOR_ERRORS"]
      534 LOADK                            R1 K202 ["EditorErrors"]
      535 SETTABLEKS                       R1 R0 K203 ["EDITOR_ERRORS_KEY"]
      537 LOADK                            R1 K204 ["ErrorsHeader"]
      538 SETTABLEKS                       R1 R0 K205 ["RIG_ERRORS_HEADER_KEY"]
      540 LOADK                            R1 K206 ["RigErrors"]
      541 SETTABLEKS                       R1 R0 K207 ["RIG_ERRORS_KEY"]
      543 LOADK                            R1 K208 ["Dialog"]
      544 SETTABLEKS                       R1 R0 K209 ["DIALOG_KEY"]
      546 DUPTABLE                         R1 K212 [{"SecondsDecimal", "Seconds", "Frames"}]
      547 LOADK                            R2 K210 ["SecondsDecimal"]
      548 SETTABLEKS                       R2 R1 K210 ["SecondsDecimal"]
      550 LOADK                            R2 K211 ["Seconds"]
      551 SETTABLEKS                       R2 R1 K211 ["Seconds"]
      553 LOADK                            R2 K120 ["Frames"]
      554 SETTABLEKS                       R2 R1 K120 ["Frames"]
      556 SETTABLEKS                       R1 R0 K213 ["TIMELINE_UNITS"]
      558 NEWTABLE                         R1 0 3
      560 LOADK                            R2 K210 ["SecondsDecimal"]
      561 LOADK                            R3 K211 ["Seconds"]
      562 LOADK                            R4 K120 ["Frames"]
      563 SETLIST                          R1 R2 3 [1]
      565 SETTABLEKS                       R1 R0 K214 ["TIMELINE_UNITS_ORDER"]
      567 DUPTABLE                         R1 K220 [{"FPS_24", "FPS_30", "FPS_60", "FPS_120", "CUSTOM"}]
      568 LOADN                            R2 24
      569 SETTABLEKS                       R2 R1 K215 ["FPS_24"]
      571 LOADN                            R2 30
      572 SETTABLEKS                       R2 R1 K216 ["FPS_30"]
      574 LOADN                            R2 60
      575 SETTABLEKS                       R2 R1 K217 ["FPS_60"]
      577 LOADN                            R2 120
      578 SETTABLEKS                       R2 R1 K218 ["FPS_120"]
      580 LOADN                            R2 255
      581 SETTABLEKS                       R2 R1 K219 ["CUSTOM"]
      583 SETTABLEKS                       R1 R0 K221 ["FRAMERATES"]
      585 DUPTABLE                         R1 K226 [{"Static", "Default", "FromRig", "Custom"}]
      586 LOADN                            R2 0
      587 SETTABLEKS                       R2 R1 K222 ["Static"]
      589 LOADN                            R2 16
      590 SETTABLEKS                       R2 R1 K223 ["Default"]
      592 LOADK                            R2 K224 ["FromRig"]
      593 SETTABLEKS                       R2 R1 K224 ["FromRig"]
      595 LOADK                            R2 K225 ["Custom"]
      596 SETTABLEKS                       R2 R1 K225 ["Custom"]
      598 SETTABLEKS                       R1 R0 K227 ["GRIDSPEEDS"]
      600 DUPTABLE                         R1 K233 [{"PBS_025", "PBS_05", "PBS_1", "PBS_2", "PBS_4", "CUSTOM"}]
      601 LOADK                            R2 K234 [0.25]
      602 SETTABLEKS                       R2 R1 K228 ["PBS_025"]
      604 LOADK                            R2 K235 [0.5]
      605 SETTABLEKS                       R2 R1 K229 ["PBS_05"]
      607 LOADN                            R2 1
      608 SETTABLEKS                       R2 R1 K230 ["PBS_1"]
      610 LOADN                            R2 2
      611 SETTABLEKS                       R2 R1 K231 ["PBS_2"]
      613 LOADN                            R2 4
      614 SETTABLEKS                       R2 R1 K232 ["PBS_4"]
      616 LOADN                            R2 255
      617 SETTABLEKS                       R2 R1 K219 ["CUSTOM"]
      619 SETTABLEKS                       R1 R0 K236 ["PLAYBACK_SPEEDS"]
      621 DUPTABLE                         R1 K239 [{"Events", "Keyframes", "Channels"}]
      622 LOADK                            R2 K237 ["Events"]
      623 SETTABLEKS                       R2 R1 K237 ["Events"]
      625 LOADK                            R2 K119 ["Keyframes"]
      626 SETTABLEKS                       R2 R1 K119 ["Keyframes"]
      628 LOADK                            R2 K238 ["Channels"]
      629 SETTABLEKS                       R2 R1 K238 ["Channels"]
      631 SETTABLEKS                       R1 R0 K240 ["CLIPBOARD_TYPE"]
      633 DUPTABLE                         R1 K242 [{"ShowSeparator"}]
      634 LOADB                            R2 1
      635 SETTABLEKS                       R2 R1 K241 ["ShowSeparator"]
      637 SETTABLEKS                       R1 R0 K243 ["MENU_SEPARATOR"]
      639 NEWTABLE                         R1 8 0
      641 LOADK                            R2 K244 ["Primary"]
      642 SETTABLEKS                       R2 R1 K244 ["Primary"]
      644 LOADK                            R2 K245 ["Error"]
      645 SETTABLEKS                       R2 R1 K245 ["Error"]
      647 LOADK                            R2 K246 ["PrimaryError"]
      648 SETTABLEKS                       R2 R1 K246 ["PrimaryError"]
      650 GETIMPORT                        R2 K250 [Enum.PoseEasingStyle.Bounce]
      652 LOADK                            R3 K249 ["Bounce"]
      653 SETTABLE                         R3 R1 R2
      654 GETIMPORT                        R2 K252 [Enum.PoseEasingStyle.Constant]
      656 LOADK                            R3 K251 ["Constant"]
      657 SETTABLE                         R3 R1 R2
      658 GETIMPORT                        R2 K254 [Enum.PoseEasingStyle.Cubic]
      660 LOADK                            R3 K253 ["Cubic"]
      661 SETTABLE                         R3 R1 R2
      662 GETIMPORT                        R2 K256 [Enum.PoseEasingStyle.Elastic]
      664 LOADK                            R3 K255 ["Elastic"]
      665 SETTABLE                         R3 R1 R2
      666 GETIMPORT                        R2 K258 [Enum.PoseEasingStyle.CubicV2]
      668 LOADK                            R3 K253 ["Cubic"]
      669 SETTABLE                         R3 R1 R2
      670 SETTABLEKS                       R1 R0 K259 ["KEYFRAME_STYLE"]
      672 NEWTABLE                         R1 8 0
      674 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Linear]
      676 LOADK                            R3 K6 ["EulerAnglesOrder"]
      677 SETTABLE                         R3 R1 R2
      678 GETIMPORT                        R2 K250 [Enum.PoseEasingStyle.Bounce]
      680 LOADK                            R3 K7 ["RotationType"]
      681 SETTABLE                         R3 R1 R2
      682 GETIMPORT                        R2 K252 [Enum.PoseEasingStyle.Constant]
      684 LOADK                            R3 K8 ["ShowAsSeconds"]
      685 SETTABLE                         R3 R1 R2
      686 GETIMPORT                        R2 K254 [Enum.PoseEasingStyle.Cubic]
      688 LOADK                            R3 K9 ["SnapMode"]
      689 SETTABLE                         R3 R1 R2
      690 GETIMPORT                        R2 K256 [Enum.PoseEasingStyle.Elastic]
      692 LOADK                            R3 K10 ["TimelineUnit"]
      693 SETTABLE                         R3 R1 R2
      694 GETIMPORT                        R2 K258 [Enum.PoseEasingStyle.CubicV2]
      696 LOADK                            R3 K9 ["SnapMode"]
      697 SETTABLE                         R3 R1 R2
      698 SETTABLEKS                       R1 R0 K267 ["MENU_ICONS"]
      700 DUPTABLE                         R1 K270 [{"BodyPart", "FullBody"}]
      701 LOADK                            R2 K12 ["ACE_EulerAnglesOrder"]
      702 SETTABLEKS                       R2 R1 K268 ["BodyPart"]
      704 LOADK                            R2 K13 ["ACE_RotationType"]
      705 SETTABLEKS                       R2 R1 K269 ["FullBody"]
      707 SETTABLEKS                       R1 R0 K271 ["IK_MODE"]
      709 DUPTABLE                         R1 K274 [{"SelectionChanged", "ScrubberChanged"}]
      710 LOADK                            R2 K16 ["ACE_TimelineUnit"]
      711 SETTABLEKS                       R2 R1 K272 ["SelectionChanged"]
      713 LOADK                            R2 K17 ["SETTINGS"]
      714 SETTABLEKS                       R2 R1 K273 ["ScrubberChanged"]
      716 SETTABLEKS                       R1 R0 K275 ["SIGNAL_KEYS"]
      718 DUPTABLE                         R1 K292 [{"UpperTorso", "LowerTorso", "LeftFoot", "RightFoot", "HumanoidRootPart", "Head", "RightUpperLeg", "RightLowerLeg", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "LeftUpperArm", "LeftLowerArm"}]
      719 LOADK                            R2 K20 ["IkData"]
      720 SETTABLEKS                       R2 R1 K276 ["UpperTorso"]
      722 LOADK                            R2 K21 ["IkTargets"]
      723 SETTABLEKS                       R2 R1 K277 ["LowerTorso"]
      725 LOADK                            R2 K22 [{"AnimSaves", "Microbones", "IkData", "IkTargets"}]
      726 SETTABLEKS                       R2 R1 K278 ["LeftFoot"]
      728 LOADK                            R2 K23 ["RBX_ANIMSAVES"]
      729 SETTABLEKS                       R2 R1 K279 ["RightFoot"]
      731 LOADK                            R2 K24 ["RBX_MICROBONE_NODES"]
      732 SETTABLEKS                       R2 R1 K280 ["HumanoidRootPart"]
      734 LOADK                            R2 K25 ["FOLDERS"]
      735 SETTABLEKS                       R2 R1 K281 ["Head"]
      737 LOADK                            R2 K26 ["animationUploadSuccess"]
      738 SETTABLEKS                       R2 R1 K282 ["RightUpperLeg"]
      740 LOADK                            R2 K27 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
      741 SETTABLEKS                       R2 R1 K283 ["RightLowerLeg"]
      743 LOADK                            R2 K28 [0.04]
      744 SETTABLEKS                       R2 R1 K284 ["RightHand"]
      746 LOADK                            R2 K29 ["ZOOM_INCREMENT"]
      747 SETTABLEKS                       R2 R1 K285 ["LeftUpperLeg"]
      749 LOADK                            R2 K30 ["DEFAULT_FRAMERATE"]
      750 SETTABLEKS                       R2 R1 K286 ["LeftLowerLeg"]
      752 LOADK                            R2 K31 ["MIN_FRAMERATE"]
      753 SETTABLEKS                       R2 R1 K287 ["LeftHand"]
      755 LOADK                            R2 K32 ["MAX_FRAMERATE"]
      756 SETTABLEKS                       R2 R1 K288 ["RightUpperArm"]
      758 LOADK                            R2 K33 [0.01]
      759 SETTABLEKS                       R2 R1 K289 ["RightLowerArm"]
      761 LOADK                            R2 K34 ["MIN_PLAYBACK_SPEED"]
      762 SETTABLEKS                       R2 R1 K290 ["LeftUpperArm"]
      764 LOADK                            R2 K35 ["MAX_PLAYBACK_SPEED"]
      765 SETTABLEKS                       R2 R1 K291 ["LeftLowerArm"]
      767 SETTABLEKS                       R1 R0 K293 ["R15_PARTS"]
      769 DUPTABLE                         R1 K302 [{"Ankle", "Knee", "Hip", "Waist", "Shoulder", "Elbow", "Wrist", "Neck"}]
      770 DUPTABLE                         R2 K310 [{"Type", "LimitsEnabled", "Restitution", "TwistLimitsEnabled", "UpperAngle", "TwistLowerAngle", "TwistUpperAngle"}]
      771 LOADK                            R3 K55 ["EVENT_MARKER_SIZE"]
      772 SETTABLEKS                       R3 R2 K303 ["Type"]
      774 LOADB                            R3 0
      775 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      777 LOADN                            R3 0
      778 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      780 LOADB                            R3 0
      781 SETTABLEKS                       R3 R2 K306 ["TwistLimitsEnabled"]
      783 LOADN                            R3 20
      784 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      786 LOADN                            R3 236
      787 SETTABLEKS                       R3 R2 K308 ["TwistLowerAngle"]
      789 LOADN                            R3 20
      790 SETTABLEKS                       R3 R2 K309 ["TwistUpperAngle"]
      792 SETTABLEKS                       R2 R1 K294 ["Ankle"]
      794 DUPTABLE                         R2 K313 [{"Type", "LimitsEnabled", "LowerAngle", "Restitution", "UpperAngle"}]
      795 LOADK                            R3 K58 ["CONTROLS_WIDTH"]
      796 SETTABLEKS                       R3 R2 K303 ["Type"]
      798 LOADB                            R3 1
      799 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      801 LOADN                            R3 121
      802 SETTABLEKS                       R3 R2 K312 ["LowerAngle"]
      804 LOADN                            R3 0
      805 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      807 LOADN                            R3 246
      808 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      810 SETTABLEKS                       R2 R1 K295 ["Knee"]
      812 DUPTABLE                         R2 K317 [{"Type", "LimitsEnabled", "Restitution", "TwistLimitsEnabled", "UpperAngle", "TwistLowerAngle", "TwistUpperAngle", "Axis", "SecondaryAxis"}]
      813 LOADK                            R3 K55 ["EVENT_MARKER_SIZE"]
      814 SETTABLEKS                       R3 R2 K303 ["Type"]
      816 LOADB                            R3 1
      817 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      819 LOADN                            R3 0
      820 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      822 LOADB                            R3 1
      823 SETTABLEKS                       R3 R2 K306 ["TwistLimitsEnabled"]
      825 LOADN                            R3 80
      826 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      828 LOADN                            R3 253
      829 SETTABLEKS                       R3 R2 K308 ["TwistLowerAngle"]
      831 LOADN                            R3 3
      832 SETTABLEKS                       R3 R2 K309 ["TwistUpperAngle"]
      834 LOADK                            R3 K62 ["TRACK_LIST_START_WIDTH"]
      835 SETTABLEKS                       R3 R2 K315 ["Axis"]
      837 LOADK                            R3 K63 ["TRACK_LIST_MIN_WIDTH"]
      838 SETTABLEKS                       R3 R2 K316 ["SecondaryAxis"]
      840 SETTABLEKS                       R2 R1 K296 ["Hip"]
      842 DUPTABLE                         R2 K313 [{"Type", "LimitsEnabled", "LowerAngle", "Restitution", "UpperAngle"}]
      843 LOADK                            R3 K58 ["CONTROLS_WIDTH"]
      844 SETTABLEKS                       R3 R2 K303 ["Type"]
      846 LOADB                            R3 1
      847 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      849 LOADN                            R3 166
      850 SETTABLEKS                       R3 R2 K312 ["LowerAngle"]
      852 LOADN                            R3 0
      853 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      855 LOADN                            R3 90
      856 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      858 SETTABLEKS                       R2 R1 K297 ["Waist"]
      860 DUPTABLE                         R2 K310 [{"Type", "LimitsEnabled", "Restitution", "TwistLimitsEnabled", "UpperAngle", "TwistLowerAngle", "TwistUpperAngle"}]
      861 LOADK                            R3 K55 ["EVENT_MARKER_SIZE"]
      862 SETTABLEKS                       R3 R2 K303 ["Type"]
      864 LOADB                            R3 1
      865 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      867 LOADN                            R3 0
      868 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      870 LOADB                            R3 0
      871 SETTABLEKS                       R3 R2 K306 ["TwistLimitsEnabled"]
      873 LOADN                            R3 170
      874 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      876 LOADN                            R3 166
      877 SETTABLEKS                       R3 R2 K308 ["TwistLowerAngle"]
      879 LOADN                            R3 135
      880 SETTABLEKS                       R3 R2 K309 ["TwistUpperAngle"]
      882 SETTABLEKS                       R2 R1 K298 ["Shoulder"]
      884 DUPTABLE                         R2 K313 [{"Type", "LimitsEnabled", "LowerAngle", "Restitution", "UpperAngle"}]
      885 LOADK                            R3 K58 ["CONTROLS_WIDTH"]
      886 SETTABLEKS                       R3 R2 K303 ["Type"]
      888 LOADB                            R3 1
      889 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      891 LOADN                            R3 0
      892 SETTABLEKS                       R3 R2 K312 ["LowerAngle"]
      894 LOADN                            R3 0
      895 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      897 LOADN                            R3 135
      898 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      900 SETTABLEKS                       R2 R1 K299 ["Elbow"]
      902 DUPTABLE                         R2 K310 [{"Type", "LimitsEnabled", "Restitution", "TwistLimitsEnabled", "UpperAngle", "TwistLowerAngle", "TwistUpperAngle"}]
      903 LOADK                            R3 K55 ["EVENT_MARKER_SIZE"]
      904 SETTABLEKS                       R3 R2 K303 ["Type"]
      906 LOADB                            R3 1
      907 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      909 LOADN                            R3 0
      910 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      912 LOADB                            R3 1
      913 SETTABLEKS                       R3 R2 K306 ["TwistLimitsEnabled"]
      915 LOADN                            R3 20
      916 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      918 LOADN                            R3 0
      919 SETTABLEKS                       R3 R2 K308 ["TwistLowerAngle"]
      921 LOADN                            R3 0
      922 SETTABLEKS                       R3 R2 K309 ["TwistUpperAngle"]
      924 SETTABLEKS                       R2 R1 K300 ["Wrist"]
      926 DUPTABLE                         R2 K310 [{"Type", "LimitsEnabled", "Restitution", "TwistLimitsEnabled", "UpperAngle", "TwistLowerAngle", "TwistUpperAngle"}]
      927 LOADK                            R3 K55 ["EVENT_MARKER_SIZE"]
      928 SETTABLEKS                       R3 R2 K303 ["Type"]
      930 LOADB                            R3 1
      931 SETTABLEKS                       R3 R2 K304 ["LimitsEnabled"]
      933 LOADN                            R3 0
      934 SETTABLEKS                       R3 R2 K305 ["Restitution"]
      936 LOADB                            R3 0
      937 SETTABLEKS                       R3 R2 K306 ["TwistLimitsEnabled"]
      939 LOADN                            R3 30
      940 SETTABLEKS                       R3 R2 K307 ["UpperAngle"]
      942 LOADN                            R3 186
      943 SETTABLEKS                       R3 R2 K308 ["TwistLowerAngle"]
      945 LOADN                            R3 70
      946 SETTABLEKS                       R3 R2 K309 ["TwistUpperAngle"]
      948 SETTABLEKS                       R2 R1 K301 ["Neck"]
      950 SETTABLEKS                       R1 R0 K320 ["CONSTRAINTS_CONFIG"]
      952 DUPTABLE                         R1 K326 [{"Mouth", "Jaw", "Brows", "Eyes", "Tongue", "Other"}]
      953 LOADK                            R2 K65 ["INDENT_PADDING"]
      954 SETTABLEKS                       R2 R1 K321 ["Mouth"]
      956 LOADK                            R2 K66 ["ARROW_SIZE"]
      957 SETTABLEKS                       R2 R1 K322 ["Jaw"]
      959 LOADK                            R2 K67 ["TRACKLIST_BUTTON_SIZE"]
      960 SETTABLEKS                       R2 R1 K323 ["Brows"]
      962 LOADK                            R2 K68 ["TRACKLIST_RIGHT_PADDING"]
      963 SETTABLEKS                       R2 R1 K324 ["Eyes"]
      965 LOADK                            R2 K69 ["NUMBERBOX_WIDTH"]
      966 SETTABLEKS                       R2 R1 K325 ["Tongue"]
      968 LOADK                            R2 K138 ["Other"]
      969 SETTABLEKS                       R2 R1 K138 ["Other"]
      971 SETTABLEKS                       R1 R0 K327 ["FACS_REGIONS"]
      973 NEWTABLE                         R1 8 0
      975 GETIMPORT                        R2 K252 [Enum.PoseEasingStyle.Constant]
      977 GETIMPORT                        R3 K329 [Enum.KeyInterpolationMode.Constant]
      979 SETTABLE                         R3 R1 R2
      980 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Linear]
      982 GETIMPORT                        R3 K330 [Enum.KeyInterpolationMode.Linear]
      984 SETTABLE                         R3 R1 R2
      985 GETIMPORT                        R2 K254 [Enum.PoseEasingStyle.Cubic]
      987 GETIMPORT                        R3 K331 [Enum.KeyInterpolationMode.Cubic]
      989 SETTABLE                         R3 R1 R2
      990 GETIMPORT                        R2 K250 [Enum.PoseEasingStyle.Bounce]
      992 GETIMPORT                        R3 K331 [Enum.KeyInterpolationMode.Cubic]
      994 SETTABLE                         R3 R1 R2
      995 GETIMPORT                        R2 K256 [Enum.PoseEasingStyle.Elastic]
      997 GETIMPORT                        R3 K331 [Enum.KeyInterpolationMode.Cubic]
      999 SETTABLE                         R3 R1 R2
     1000 GETIMPORT                        R2 K258 [Enum.PoseEasingStyle.CubicV2]
     1002 GETIMPORT                        R3 K331 [Enum.KeyInterpolationMode.Cubic]
     1004 SETTABLE                         R3 R1 R2
     1005 SETTABLEKS                       R1 R0 K332 ["POSE_EASING_STYLE_TO_KEY_INTERPOLATION"]
     1007 NEWTABLE                         R1 0 3
     1009 GETIMPORT                        R2 K330 [Enum.KeyInterpolationMode.Linear]
     1011 GETIMPORT                        R3 K329 [Enum.KeyInterpolationMode.Constant]
     1013 GETIMPORT                        R4 K331 [Enum.KeyInterpolationMode.Cubic]
     1015 SETLIST                          R1 R2 3 [1]
     1017 SETTABLEKS                       R1 R0 K333 ["KEY_INTERPOLATION_MODE_ORDER"]
     1019 NEWTABLE                         R1 0 6
     1021 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Linear]
     1023 GETIMPORT                        R3 K252 [Enum.PoseEasingStyle.Constant]
     1025 GETIMPORT                        R4 K258 [Enum.PoseEasingStyle.CubicV2]
     1027 GETIMPORT                        R5 K256 [Enum.PoseEasingStyle.Elastic]
     1029 GETIMPORT                        R6 K250 [Enum.PoseEasingStyle.Bounce]
     1031 GETIMPORT                        R7 K254 [Enum.PoseEasingStyle.Cubic]
     1033 SETLIST                          R1 R2 6 [1]
     1035 SETTABLEKS                       R1 R0 K334 ["EASING_STYLE_ORDER"]
     1037 NEWTABLE                         R1 8 0
     1039 GETIMPORT                        R2 K261 [Enum.PoseEasingStyle.Linear]
     1041 LOADK                            R3 K4 ["rbxasset://textures/ui/LuaChat/icons/ic-check@2x.png"]
     1042 SETTABLE                         R3 R1 R2
     1043 GETIMPORT                        R2 K252 [Enum.PoseEasingStyle.Constant]
     1045 LOADK                            R3 K251 ["Constant"]
     1046 SETTABLE                         R3 R1 R2
     1047 GETIMPORT                        R2 K254 [Enum.PoseEasingStyle.Cubic]
     1049 LOADK                            R3 K79 ["MAX_VISIBLE_KEYFRAMES"]
     1050 SETTABLE                         R3 R1 R2
     1051 GETIMPORT                        R2 K258 [Enum.PoseEasingStyle.CubicV2]
     1053 LOADK                            R3 K1 ["PLUGIN_NAME"]
     1054 SETTABLE                         R3 R1 R2
     1055 GETIMPORT                        R2 K256 [Enum.PoseEasingStyle.Elastic]
     1057 LOADK                            R3 K255 ["Elastic"]
     1058 SETTABLE                         R3 R1 R2
     1059 GETIMPORT                        R2 K250 [Enum.PoseEasingStyle.Bounce]
     1061 LOADK                            R3 K249 ["Bounce"]
     1062 SETTABLE                         R3 R1 R2
     1063 SETTABLEKS                       R1 R0 K336 ["EASING_STYLE_DISPLAY_TEXT"]
     1065 NEWTABLE                         R1 0 3
     1067 GETIMPORT                        R2 K339 [Enum.PoseEasingDirection.In]
     1069 GETIMPORT                        R3 K341 [Enum.PoseEasingDirection.Out]
     1071 GETIMPORT                        R4 K343 [Enum.PoseEasingDirection.InOut]
     1073 SETLIST                          R1 R2 3 [1]
     1075 SETTABLEKS                       R1 R0 K344 ["EASING_DIRECTION_ORDER"]
     1077 NEWTABLE                         R1 0 6
     1079 GETIMPORT                        R2 K347 [Enum.RotationOrder.XYZ]
     1081 GETIMPORT                        R3 K349 [Enum.RotationOrder.XZY]
     1083 GETIMPORT                        R4 K351 [Enum.RotationOrder.YXZ]
     1085 GETIMPORT                        R5 K353 [Enum.RotationOrder.YZX]
     1087 GETIMPORT                        R6 K355 [Enum.RotationOrder.ZXY]
     1089 GETIMPORT                        R7 K357 [Enum.RotationOrder.ZYX]
     1091 SETLIST                          R1 R2 6 [1]
     1093 SETTABLEKS                       R1 R0 K358 ["EULER_ANGLES_ORDER"]
     1095 DUPTABLE                         R1 K361 [{"Right", "Left"}]
     1096 LOADK                            R2 K103 [Color3.fromRGB]
     1097 SETTABLEKS                       R2 R1 K359 ["Right"]
     1099 LOADK                            R2 K104 ["BONE_NODE_COLOR"]
     1100 SETTABLEKS                       R2 R1 K360 ["Left"]
     1102 SETTABLEKS                       R1 R0 K362 ["SLOPES"]
     1104 DUPTABLE                         R1 K364 [{"Keyframe", "Tangent"}]
     1105 LOADK                            R2 K132 ["Keyframe"]
     1106 SETTABLEKS                       R2 R1 K132 ["Keyframe"]
     1108 LOADK                            R2 K107 [0.15]
     1109 SETTABLEKS                       R2 R1 K363 ["Tangent"]
     1111 SETTABLEKS                       R1 R0 K365 ["DRAG_MODE"]
     1113 DUPTABLE                         R1 K370 [{"Reverse", "Pause", "Play", "Record"}]
     1114 LOADK                            R2 K110 ["BONE_LINK_TRANSPARENCY"]
     1115 SETTABLEKS                       R2 R1 K366 ["Reverse"]
     1117 LOADK                            R2 K111 [0.3]
     1118 SETTABLEKS                       R2 R1 K367 ["Pause"]
     1120 LOADK                            R2 K112 ["BONE_TRANSPARENCY_DEFAULT"]
     1121 SETTABLEKS                       R2 R1 K368 ["Play"]
     1123 LOADK                            R2 K113 ["BONE_TRANSPARENCY_HOVER"]
     1124 SETTABLEKS                       R2 R1 K369 ["Record"]
     1126 SETTABLEKS                       R1 R0 K371 ["PLAY_STATE"]
     1128 DUPTABLE                         R1 K374 [{"DopeSheet", "CurveCanvas"}]
     1129 LOADK                            R2 K116 ["BONE_COLOR_SELECTED"]
     1130 SETTABLEKS                       R2 R1 K372 ["DopeSheet"]
     1132 LOADK                            R2 K117 ["LENGTH_TO_RADIUS_RATIO"]
     1133 SETTABLEKS                       R2 R1 K373 ["CurveCanvas"]
     1135 SETTABLEKS                       R1 R0 K375 ["EDITOR_MODE"]
     1137 LOADN                            R1 1
     1138 SETTABLEKS                       R1 R0 K376 ["CURVE_WIDTH"]
     1140 LOADN                            R1 2
     1141 SETTABLEKS                       R1 R0 K377 ["CURVE_WIDTH_SELECTED"]
     1143 LOADN                            R1 25
     1144 SETTABLEKS                       R1 R0 K378 ["CURVE_RESOLUTION"]
     1146 LOADN                            R1 5
     1147 SETTABLEKS                       R1 R0 K379 ["CURVE_REFINEMENT"]
     1149 LOADN                            R1 5
     1150 SETTABLEKS                       R1 R0 K380 ["CURVE_INTERVAL"]
     1152 LOADK                            R1 K125 ["TEMPORARY_CONSTRAINTS"]
     1153 SETTABLEKS                       R1 R0 K382 ["CURVE_CANVAS_PADDING"]
     1155 LOADK                            R1 K127 ["TEMPORARY_CONTROL_RIG_ANIMATION"]
     1156 SETTABLEKS                       R1 R0 K384 ["CURVE_CANVAS_MIN_RANGE"]
     1158 LOADK                            R1 K129 ["DEFAULT_IMPORTED_NAME"]
     1159 SETTABLEKS                       R1 R0 K386 ["TANGENT_CONTROL_LENGTH"]
     1161 LOADN                            R1 1
     1162 SETTABLEKS                       R1 R0 K387 ["TANGENT_CONTROL_WIDTH"]
     1164 LOADN                            R1 3
     1165 SETTABLEKS                       R1 R0 K388 ["SCRUBBER_MARKER_WIDTH"]
     1167 LOADN                            R1 232
     1168 SETTABLEKS                       R1 R0 K389 ["NUMBER_PRECISION"]
     1170 LOADN                            R1 100
     1171 SETTABLEKS                       R1 R0 K390 ["NUMBER_FACS_PRECISION"]
     1173 DUPTABLE                         R1 K391 [{"Number", "Angle"}]
     1174 LOADK                            R2 K139 ["Position"]
     1175 SETTABLEKS                       R2 R1 K140 ["Number"]
     1177 LOADK                            R2 K141 ["Angle"]
     1178 SETTABLEKS                       R2 R1 K141 ["Angle"]
     1180 SETTABLEKS                       R1 R0 K392 ["SCALE_TYPE"]
     1182 GETIMPORT                        R1 K54 [UDim2.new]
     1184 LOADN                            R2 0
     1185 LOADN                            R3 25
     1186 LOADN                            R4 0
     1187 LOADN                            R5 15
     1188 CALL                             R1 4 1
     1189 SETTABLEKS                       R1 R0 K393 ["TICK_LABEL_SIZE"]
     1191 LOADN                            R1 17
     1192 SETTABLEKS                       R1 R0 K394 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
     1194 LOADN                            R1 16
     1195 SETTABLEKS                       R1 R0 K395 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
     1197 LOADK                            R1 K234 [0.25]
     1198 SETTABLEKS                       R1 R0 K396 ["CLAMPED_AUTO_TANGENT_THRESHOLD"]
     1200 DUPTABLE                         R1 K411 [{"Initializing", "Pending", "Processing", "RequiresModeration", "Error", "ModerationRejected", "Success", "InputTooLong", "InputHasNoPerson", "InputUnstable", "TimedOut", "Cancelled", "MultiplePeopleInFrame", "UploadingData", "ErrorUploadingData"}]
     1201 LOADN                            R2 0
     1202 SETTABLEKS                       R2 R1 K397 ["Initializing"]
     1204 LOADN                            R2 1
     1205 SETTABLEKS                       R2 R1 K398 ["Pending"]
     1207 LOADN                            R2 2
     1208 SETTABLEKS                       R2 R1 K399 ["Processing"]
     1210 LOADN                            R2 3
     1211 SETTABLEKS                       R2 R1 K400 ["RequiresModeration"]
     1213 LOADN                            R2 4
     1214 SETTABLEKS                       R2 R1 K245 ["Error"]
     1216 LOADN                            R2 5
     1217 SETTABLEKS                       R2 R1 K401 ["ModerationRejected"]
     1219 LOADN                            R2 6
     1220 SETTABLEKS                       R2 R1 K402 ["Success"]
     1222 LOADN                            R2 7
     1223 SETTABLEKS                       R2 R1 K403 ["InputTooLong"]
     1225 LOADN                            R2 8
     1226 SETTABLEKS                       R2 R1 K404 ["InputHasNoPerson"]
     1228 LOADN                            R2 9
     1229 SETTABLEKS                       R2 R1 K405 ["InputUnstable"]
     1231 LOADN                            R2 10
     1232 SETTABLEKS                       R2 R1 K406 ["TimedOut"]
     1234 LOADN                            R2 11
     1235 SETTABLEKS                       R2 R1 K407 ["Cancelled"]
     1237 LOADN                            R2 12
     1238 SETTABLEKS                       R2 R1 K408 ["MultiplePeopleInFrame"]
     1240 LOADN                            R2 233
     1241 SETTABLEKS                       R2 R1 K409 ["UploadingData"]
     1243 LOADN                            R2 209
     1244 SETTABLEKS                       R2 R1 K410 ["ErrorUploadingData"]
     1246 SETTABLEKS                       R1 R0 K412 ["ANIMATION_FROM_VIDEO_STATUS"]
     1248 DUPTABLE                         R1 K415 [{"KeyframeSequence", "CurveAnimation"}]
     1249 LOADK                            R2 K157 ["PROPERTY_KEYS"]
     1250 SETTABLEKS                       R2 R1 K413 ["KeyframeSequence"]
     1252 LOADK                            R2 K158 ["Edit"]
     1253 SETTABLEKS                       R2 R1 K414 ["CurveAnimation"]
     1255 SETTABLEKS                       R1 R0 K416 ["ANIMATION_TYPE"]
     1257 LOADK                            R1 K125 ["TEMPORARY_CONSTRAINTS"]
     1258 SETTABLEKS                       R1 R0 K417 ["CANVAS_ZOOM_INCREMENT"]
     1260 DUPTABLE                         R1 K423 [{"Hidden", "FromImportFBX", "FromImportLiveAnimationCreator", "FromImportFaceRecorder", "FromMenu"}]
     1261 LOADK                            R2 K162 ["AddIkTarget"]
     1262 SETTABLEKS                       R2 R1 K418 ["Hidden"]
     1264 LOADK                            R2 K163 ["SetTargetInstance"]
     1265 SETTABLEKS                       R2 R1 K419 ["FromImportFBX"]
     1267 LOADK                            R2 K164 ["DeleteIkTarget"]
     1268 SETTABLEKS                       R2 R1 K420 ["FromImportLiveAnimationCreator"]
     1270 LOADK                            R2 K165 [{"AddIkTarget", "SetTargetInstance", "DeleteIkTarget"}]
     1271 SETTABLEKS                       R2 R1 K421 ["FromImportFaceRecorder"]
     1273 LOADK                            R2 K166 ["TRACK_ACTIONS"]
     1274 SETTABLEKS                       R2 R1 K422 ["FromMenu"]
     1276 SETTABLEKS                       R1 R0 K424 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
     1278 LOADK                            R1 K169 ["Separator"]
     1279 SETTABLEKS                       R1 R0 K426 ["NAMED_KEYFRAMES_CHANNEL"]
     1281 LOADK                            R1 K171 ["New Clip"]
     1282 SETTABLEKS                       R1 R0 K428 ["LEAF_BONE_LENGTH_RATIO"]
     1284 DUPTABLE                         R1 K430 [{"Warning", "Error"}]
     1285 LOADN                            R2 1
     1286 SETTABLEKS                       R2 R1 K429 ["Warning"]
     1288 LOADN                            R2 2
     1289 SETTABLEKS                       R2 R1 K245 ["Error"]
     1291 SETTABLEKS                       R1 R0 K431 ["SEVERITY"]
     1293 GETIMPORT                        R1 K43 [Vector2.new]
     1295 GETTABLEKS                       R4 R0 K63 ["TRACK_LIST_MIN_WIDTH"]
     1297 GETTABLEKS                       R5 R0 K64 ["TIMELINE_MIN_WIDTH"]
     1299 ADD                              R3 R4 R5
     1300 LOADN                            R4 10
     1301 ADD                              R2 R3 R4
     1302 LOADN                            R3 200
     1303 CALL                             R1 2 1
     1304 SETTABLEKS                       R1 R0 K433 ["MAIN_MINIMUM_SIZE"]
     1306 GETTABLEKS                       R2 R0 K36 ["MAX_TIME"]
     1308 GETTABLEKS                       R3 R0 K37 ["TICK_FREQUENCY"]
     1310 MUL                              R1 R2 R3
     1311 SETTABLEKS                       R1 R0 K434 ["MAX_ANIMATION_LENGTH"]
     1313 DUPTABLE                         R1 K437 [{"Face", "Body"}]
     1314 LOADK                            R2 K179 ["MissingPart0"]
     1315 SETTABLEKS                       R2 R1 K435 ["Face"]
     1317 LOADK                            R2 K180 ["MissingPart1"]
     1318 SETTABLEKS                       R2 R1 K436 ["Body"]
     1320 SETTABLEKS                       R1 R0 K438 ["TRACKS_SUBSETS_TYPE"]
     1322 NEWTABLE                         R1 16 0
     1324 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1326 GETTABLEKS                       R2 R3 K276 ["UpperTorso"]
     1328 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1330 GETTABLEKS                       R3 R4 K297 ["Waist"]
     1332 SETTABLE                         R3 R1 R2
     1333 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1335 GETTABLEKS                       R2 R3 K282 ["RightUpperLeg"]
     1337 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1339 GETTABLEKS                       R3 R4 K296 ["Hip"]
     1341 SETTABLE                         R3 R1 R2
     1342 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1344 GETTABLEKS                       R2 R3 K285 ["LeftUpperLeg"]
     1346 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1348 GETTABLEKS                       R3 R4 K296 ["Hip"]
     1350 SETTABLE                         R3 R1 R2
     1351 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1353 GETTABLEKS                       R2 R3 K288 ["RightUpperArm"]
     1355 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1357 GETTABLEKS                       R3 R4 K298 ["Shoulder"]
     1359 SETTABLE                         R3 R1 R2
     1360 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1362 GETTABLEKS                       R2 R3 K290 ["LeftUpperArm"]
     1364 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1366 GETTABLEKS                       R3 R4 K298 ["Shoulder"]
     1368 SETTABLE                         R3 R1 R2
     1369 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1371 GETTABLEKS                       R2 R3 K281 ["Head"]
     1373 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1375 GETTABLEKS                       R3 R4 K301 ["Neck"]
     1377 SETTABLE                         R3 R1 R2
     1378 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1380 GETTABLEKS                       R2 R3 K291 ["LeftLowerArm"]
     1382 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1384 GETTABLEKS                       R3 R4 K299 ["Elbow"]
     1386 SETTABLE                         R3 R1 R2
     1387 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1389 GETTABLEKS                       R2 R3 K287 ["LeftHand"]
     1391 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1393 GETTABLEKS                       R3 R4 K300 ["Wrist"]
     1395 SETTABLE                         R3 R1 R2
     1396 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1398 GETTABLEKS                       R2 R3 K289 ["RightLowerArm"]
     1400 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1402 GETTABLEKS                       R3 R4 K299 ["Elbow"]
     1404 SETTABLE                         R3 R1 R2
     1405 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1407 GETTABLEKS                       R2 R3 K284 ["RightHand"]
     1409 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1411 GETTABLEKS                       R3 R4 K300 ["Wrist"]
     1413 SETTABLE                         R3 R1 R2
     1414 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1416 GETTABLEKS                       R2 R3 K286 ["LeftLowerLeg"]
     1418 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1420 GETTABLEKS                       R3 R4 K295 ["Knee"]
     1422 SETTABLE                         R3 R1 R2
     1423 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1425 GETTABLEKS                       R2 R3 K278 ["LeftFoot"]
     1427 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1429 GETTABLEKS                       R3 R4 K294 ["Ankle"]
     1431 SETTABLE                         R3 R1 R2
     1432 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1434 GETTABLEKS                       R2 R3 K283 ["RightLowerLeg"]
     1436 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1438 GETTABLEKS                       R3 R4 K295 ["Knee"]
     1440 SETTABLE                         R3 R1 R2
     1441 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1443 GETTABLEKS                       R2 R3 K279 ["RightFoot"]
     1445 GETTABLEKS                       R4 R0 K320 ["CONSTRAINTS_CONFIG"]
     1447 GETTABLEKS                       R3 R4 K294 ["Ankle"]
     1449 SETTABLE                         R3 R1 R2
     1450 SETTABLEKS                       R1 R0 K439 ["PartToConstraintConfigMap"]
     1452 NEWTABLE                         R1 16 0
     1454 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1456 GETTABLEKS                       R2 R3 K277 ["LowerTorso"]
     1458 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1460 GETTABLEKS                       R3 R4 K280 ["HumanoidRootPart"]
     1462 SETTABLE                         R3 R1 R2
     1463 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1465 GETTABLEKS                       R2 R3 K276 ["UpperTorso"]
     1467 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1469 GETTABLEKS                       R3 R4 K277 ["LowerTorso"]
     1471 SETTABLE                         R3 R1 R2
     1472 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1474 GETTABLEKS                       R2 R3 K282 ["RightUpperLeg"]
     1476 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1478 GETTABLEKS                       R3 R4 K277 ["LowerTorso"]
     1480 SETTABLE                         R3 R1 R2
     1481 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1483 GETTABLEKS                       R2 R3 K285 ["LeftUpperLeg"]
     1485 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1487 GETTABLEKS                       R3 R4 K277 ["LowerTorso"]
     1489 SETTABLE                         R3 R1 R2
     1490 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1492 GETTABLEKS                       R2 R3 K288 ["RightUpperArm"]
     1494 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1496 GETTABLEKS                       R3 R4 K276 ["UpperTorso"]
     1498 SETTABLE                         R3 R1 R2
     1499 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1501 GETTABLEKS                       R2 R3 K290 ["LeftUpperArm"]
     1503 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1505 GETTABLEKS                       R3 R4 K276 ["UpperTorso"]
     1507 SETTABLE                         R3 R1 R2
     1508 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1510 GETTABLEKS                       R2 R3 K281 ["Head"]
     1512 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1514 GETTABLEKS                       R3 R4 K276 ["UpperTorso"]
     1516 SETTABLE                         R3 R1 R2
     1517 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1519 GETTABLEKS                       R2 R3 K291 ["LeftLowerArm"]
     1521 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1523 GETTABLEKS                       R3 R4 K290 ["LeftUpperArm"]
     1525 SETTABLE                         R3 R1 R2
     1526 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1528 GETTABLEKS                       R2 R3 K287 ["LeftHand"]
     1530 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1532 GETTABLEKS                       R3 R4 K291 ["LeftLowerArm"]
     1534 SETTABLE                         R3 R1 R2
     1535 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1537 GETTABLEKS                       R2 R3 K289 ["RightLowerArm"]
     1539 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1541 GETTABLEKS                       R3 R4 K288 ["RightUpperArm"]
     1543 SETTABLE                         R3 R1 R2
     1544 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1546 GETTABLEKS                       R2 R3 K284 ["RightHand"]
     1548 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1550 GETTABLEKS                       R3 R4 K289 ["RightLowerArm"]
     1552 SETTABLE                         R3 R1 R2
     1553 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1555 GETTABLEKS                       R2 R3 K286 ["LeftLowerLeg"]
     1557 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1559 GETTABLEKS                       R3 R4 K285 ["LeftUpperLeg"]
     1561 SETTABLE                         R3 R1 R2
     1562 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1564 GETTABLEKS                       R2 R3 K278 ["LeftFoot"]
     1566 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1568 GETTABLEKS                       R3 R4 K286 ["LeftLowerLeg"]
     1570 SETTABLE                         R3 R1 R2
     1571 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1573 GETTABLEKS                       R2 R3 K283 ["RightLowerLeg"]
     1575 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1577 GETTABLEKS                       R3 R4 K282 ["RightUpperLeg"]
     1579 SETTABLE                         R3 R1 R2
     1580 GETTABLEKS                       R3 R0 K293 ["R15_PARTS"]
     1582 GETTABLEKS                       R2 R3 K279 ["RightFoot"]
     1584 GETTABLEKS                       R4 R0 K293 ["R15_PARTS"]
     1586 GETTABLEKS                       R3 R4 K283 ["RightLowerLeg"]
     1588 SETTABLE                         R3 R1 R2
     1589 SETTABLEKS                       R1 R0 K440 ["R15links"]
     1591 NEWTABLE                         R1 64 0
     1593 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1595 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1597 SETTABLEKS                       R2 R1 K441 ["ChinRaiserUpperLip"]
     1599 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1601 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1603 SETTABLEKS                       R2 R1 K442 ["ChinRaiser"]
     1605 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1607 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1609 SETTABLEKS                       R2 R1 K443 ["FlatPucker"]
     1611 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1613 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1615 SETTABLEKS                       R2 R1 K444 ["Funneler"]
     1617 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1619 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1621 SETTABLEKS                       R2 R1 K445 ["LowerLipSuck"]
     1623 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1625 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1627 SETTABLEKS                       R2 R1 K446 ["LipPresser"]
     1629 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1631 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1633 SETTABLEKS                       R2 R1 K447 ["LipsTogether"]
     1635 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1637 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1639 SETTABLEKS                       R2 R1 K448 ["MouthLeft"]
     1641 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1643 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1645 SETTABLEKS                       R2 R1 K449 ["MouthRight"]
     1647 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1649 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1651 SETTABLEKS                       R2 R1 K450 ["Pucker"]
     1653 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1655 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1657 SETTABLEKS                       R2 R1 K451 ["UpperLipSuck"]
     1659 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1661 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1663 SETTABLEKS                       R2 R1 K452 ["LeftCheekPuff"]
     1665 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1667 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1669 SETTABLEKS                       R2 R1 K453 ["LeftDimpler"]
     1671 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1673 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1675 SETTABLEKS                       R2 R1 K454 ["LeftLipCornerDown"]
     1677 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1679 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1681 SETTABLEKS                       R2 R1 K455 ["LeftLowerLipDepressor"]
     1683 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1685 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1687 SETTABLEKS                       R2 R1 K456 ["LeftLipCornerPuller"]
     1689 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1691 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1693 SETTABLEKS                       R2 R1 K457 ["LeftLipStretcher"]
     1695 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1697 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1699 SETTABLEKS                       R2 R1 K458 ["LeftUpperLipRaiser"]
     1701 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1703 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1705 SETTABLEKS                       R2 R1 K459 ["RightCheekPuff"]
     1707 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1709 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1711 SETTABLEKS                       R2 R1 K460 ["RightDimpler"]
     1713 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1715 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1717 SETTABLEKS                       R2 R1 K461 ["RightLipCornerDown"]
     1719 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1721 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1723 SETTABLEKS                       R2 R1 K462 ["RightLowerLipDepressor"]
     1725 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1727 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1729 SETTABLEKS                       R2 R1 K463 ["RightLipCornerPuller"]
     1731 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1733 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1735 SETTABLEKS                       R2 R1 K464 ["RightLipStretcher"]
     1737 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1739 GETTABLEKS                       R2 R3 K321 ["Mouth"]
     1741 SETTABLEKS                       R2 R1 K465 ["RightUpperLipRaiser"]
     1743 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1745 GETTABLEKS                       R2 R3 K322 ["Jaw"]
     1747 SETTABLEKS                       R2 R1 K466 ["JawDrop"]
     1749 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1751 GETTABLEKS                       R2 R3 K322 ["Jaw"]
     1753 SETTABLEKS                       R2 R1 K467 ["JawLeft"]
     1755 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1757 GETTABLEKS                       R2 R3 K322 ["Jaw"]
     1759 SETTABLEKS                       R2 R1 K468 ["JawRight"]
     1761 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1763 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1765 SETTABLEKS                       R2 R1 K469 ["Corrugator"]
     1767 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1769 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1771 SETTABLEKS                       R2 R1 K470 ["LeftBrowLowerer"]
     1773 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1775 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1777 SETTABLEKS                       R2 R1 K471 ["LeftOuterBrowRaiser"]
     1779 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1781 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1783 SETTABLEKS                       R2 R1 K472 ["LeftNoseWrinkler"]
     1785 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1787 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1789 SETTABLEKS                       R2 R1 K473 ["LeftInnerBrowRaiser"]
     1791 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1793 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1795 SETTABLEKS                       R2 R1 K474 ["RightBrowLowerer"]
     1797 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1799 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1801 SETTABLEKS                       R2 R1 K475 ["RightOuterBrowRaiser"]
     1803 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1805 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1807 SETTABLEKS                       R2 R1 K476 ["RightInnerBrowRaiser"]
     1809 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1811 GETTABLEKS                       R2 R3 K323 ["Brows"]
     1813 SETTABLEKS                       R2 R1 K477 ["RightNoseWrinkler"]
     1815 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1817 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1819 SETTABLEKS                       R2 R1 K478 ["EyesLookDown"]
     1821 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1823 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1825 SETTABLEKS                       R2 R1 K479 ["EyesLookLeft"]
     1827 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1829 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1831 SETTABLEKS                       R2 R1 K480 ["EyesLookUp"]
     1833 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1835 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1837 SETTABLEKS                       R2 R1 K481 ["EyesLookRight"]
     1839 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1841 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1843 SETTABLEKS                       R2 R1 K482 ["LeftCheekRaiser"]
     1845 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1847 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1849 SETTABLEKS                       R2 R1 K483 ["LeftEyeUpperLidRaiser"]
     1851 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1853 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1855 SETTABLEKS                       R2 R1 K484 ["LeftEyeClosed"]
     1857 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1859 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1861 SETTABLEKS                       R2 R1 K485 ["RightCheekRaiser"]
     1863 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1865 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1867 SETTABLEKS                       R2 R1 K486 ["RightEyeUpperLidRaiser"]
     1869 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1871 GETTABLEKS                       R2 R3 K324 ["Eyes"]
     1873 SETTABLEKS                       R2 R1 K487 ["RightEyeClosed"]
     1875 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1877 GETTABLEKS                       R2 R3 K325 ["Tongue"]
     1879 SETTABLEKS                       R2 R1 K488 ["TongueDown"]
     1881 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1883 GETTABLEKS                       R2 R3 K325 ["Tongue"]
     1885 SETTABLEKS                       R2 R1 K489 ["TongueOut"]
     1887 GETTABLEKS                       R3 R0 K327 ["FACS_REGIONS"]
     1889 GETTABLEKS                       R2 R3 K325 ["Tongue"]
     1891 SETTABLEKS                       R2 R1 K490 ["TongueUp"]
     1893 SETTABLEKS                       R1 R0 K491 ["FacsControlToRegionMap"]
     1895 DUPTABLE                         R1 K492 [{"LowerTorso", "UpperTorso", "LeftFoot", "RightFoot", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftLowerLeg", "RightLowerLeg", "LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg", "Head"}]
     1896 LOADK                            R2 K237 ["Events"]
     1897 SETTABLEKS                       R2 R1 K277 ["LowerTorso"]
     1899 LOADK                            R2 K41 ["Vector2"]
     1900 SETTABLEKS                       R2 R1 K276 ["UpperTorso"]
     1902 LOADK                            R2 K238 ["Channels"]
     1903 SETTABLEKS                       R2 R1 K278 ["LeftFoot"]
     1905 LOADK                            R2 K239 [{"Events", "Keyframes", "Channels"}]
     1906 SETTABLEKS                       R2 R1 K279 ["RightFoot"]
     1908 LOADK                            R2 K240 ["CLIPBOARD_TYPE"]
     1909 SETTABLEKS                       R2 R1 K287 ["LeftHand"]
     1911 LOADK                            R2 K241 ["ShowSeparator"]
     1912 SETTABLEKS                       R2 R1 K284 ["RightHand"]
     1914 LOADK                            R2 K242 [{"ShowSeparator"}]
     1915 SETTABLEKS                       R2 R1 K291 ["LeftLowerArm"]
     1917 LOADK                            R2 K243 ["MENU_SEPARATOR"]
     1918 SETTABLEKS                       R2 R1 K289 ["RightLowerArm"]
     1920 LOADK                            R2 K244 ["Primary"]
     1921 SETTABLEKS                       R2 R1 K286 ["LeftLowerLeg"]
     1923 LOADK                            R2 K245 ["Error"]
     1924 SETTABLEKS                       R2 R1 K283 ["RightLowerLeg"]
     1926 LOADK                            R2 K246 ["PrimaryError"]
     1927 SETTABLEKS                       R2 R1 K290 ["LeftUpperArm"]
     1929 LOADK                            R2 K247 ["Enum"]
     1930 SETTABLEKS                       R2 R1 K288 ["RightUpperArm"]
     1932 LOADK                            R2 K248 ["PoseEasingStyle"]
     1933 SETTABLEKS                       R2 R1 K285 ["LeftUpperLeg"]
     1935 LOADK                            R2 K249 ["Bounce"]
     1936 SETTABLEKS                       R2 R1 K282 ["RightUpperLeg"]
     1938 LOADK                            R2 K45 ["MAIN_TEST_SIZE"]
     1939 SETTABLEKS                       R2 R1 K281 ["Head"]
     1941 SETTABLEKS                       R1 R0 K506 ["PART1_TO_JOINT"]
     1943 NEWTABLE                         R1 64 0
     1945 LOADK                            R2 K185 ["NoAnimationController"]
     1946 SETTABLEKS                       R2 R1 K441 ["ChinRaiserUpperLip"]
     1948 LOADK                            R2 K186 ["NoJoints"]
     1949 SETTABLEKS                       R2 R1 K442 ["ChinRaiser"]
     1951 LOADK                            R2 K187 ["NoMotors"]
     1952 SETTABLEKS                       R2 R1 K443 ["FlatPucker"]
     1954 LOADK                            R2 K188 ["NoRoot"]
     1955 SETTABLEKS                       R2 R1 K444 ["Funneler"]
     1957 LOADK                            R2 K189 ["PartBoneNameCollision"]
     1958 SETTABLEKS                       R2 R1 K445 ["LowerLipSuck"]
     1960 LOADK                            R2 K190 ["PartsAnchored"]
     1961 SETTABLEKS                       R2 R1 K446 ["LipPresser"]
     1963 LOADK                            R2 K191 [{"AnimConstraintMissingPart0", "AnimConstraintMissingPart1", "BoneNameCollision", "CircularRig", "DoubleJoints", "FaceControlsParent", "MissingPart0", "MissingPart1", "MultipleFaceControls", "MultipleMotorsOrAnimConstraints", "MultipleParents", "NameCollision", "NoAnimationController", "NoJoints", "NoMotors", "NoRoot", "PartBoneNameCollision", "PartsAnchored"}]
     1964 SETTABLEKS                       R2 R1 K447 ["LipsTogether"]
     1966 LOADK                            R2 K192 ["MissingPart0_Migrated"]
     1967 SETTABLEKS                       R2 R1 K448 ["MouthLeft"]
     1969 LOADK                            R2 K193 ["MissingPart1_Migrated"]
     1970 SETTABLEKS                       R2 R1 K449 ["MouthRight"]
     1972 LOADK                            R2 K194 ["MultipleParents_Migrated"]
     1973 SETTABLEKS                       R2 R1 K450 ["Pucker"]
     1975 LOADK                            R2 K195 ["RIG_ERRORS"]
     1976 SETTABLEKS                       R2 R1 K451 ["UpperLipSuck"]
     1978 LOADK                            R2 K196 [{"PartsAnchored"}]
     1979 SETTABLEKS                       R2 R1 K452 ["LeftCheekPuff"]
     1981 LOADK                            R2 K197 ["PartsAnchoredWarning"]
     1982 SETTABLEKS                       R2 R1 K453 ["LeftDimpler"]
     1984 LOADK                            R2 K198 ["RIG_WARNINGS"]
     1985 SETTABLEKS                       R2 R1 K454 ["LeftLipCornerDown"]
     1987 LOADK                            R2 K199 ["OpenedWhileRunning"]
     1988 SETTABLEKS                       R2 R1 K455 ["LeftLowerLipDepressor"]
     1990 LOADK                            R2 K200 [{"OpenedWhileRunning"}]
     1991 SETTABLEKS                       R2 R1 K456 ["LeftLipCornerPuller"]
     1993 LOADK                            R2 K201 ["EDITOR_ERRORS"]
     1994 SETTABLEKS                       R2 R1 K457 ["LeftLipStretcher"]
     1996 LOADK                            R2 K202 ["EditorErrors"]
     1997 SETTABLEKS                       R2 R1 K458 ["LeftUpperLipRaiser"]
     1999 LOADK                            R2 K203 ["EDITOR_ERRORS_KEY"]
     2000 SETTABLEKS                       R2 R1 K459 ["RightCheekPuff"]
     2002 LOADK                            R2 K204 ["ErrorsHeader"]
     2003 SETTABLEKS                       R2 R1 K460 ["RightDimpler"]
     2005 LOADK                            R2 K205 ["RIG_ERRORS_HEADER_KEY"]
     2006 SETTABLEKS                       R2 R1 K461 ["RightLipCornerDown"]
     2008 LOADK                            R2 K206 ["RigErrors"]
     2009 SETTABLEKS                       R2 R1 K462 ["RightLowerLipDepressor"]
     2011 LOADK                            R2 K207 ["RIG_ERRORS_KEY"]
     2012 SETTABLEKS                       R2 R1 K463 ["RightLipCornerPuller"]
     2014 LOADK                            R2 K208 ["Dialog"]
     2015 SETTABLEKS                       R2 R1 K464 ["RightLipStretcher"]
     2017 LOADK                            R2 K209 ["DIALOG_KEY"]
     2018 SETTABLEKS                       R2 R1 K465 ["RightUpperLipRaiser"]
     2020 LOADK                            R2 K210 ["SecondsDecimal"]
     2021 SETTABLEKS                       R2 R1 K466 ["JawDrop"]
     2023 LOADK                            R2 K211 ["Seconds"]
     2024 SETTABLEKS                       R2 R1 K467 ["JawLeft"]
     2026 LOADK                            R2 K212 [{"SecondsDecimal", "Seconds", "Frames"}]
     2027 SETTABLEKS                       R2 R1 K468 ["JawRight"]
     2029 LOADK                            R2 K213 ["TIMELINE_UNITS"]
     2030 SETTABLEKS                       R2 R1 K469 ["Corrugator"]
     2032 LOADK                            R2 K214 ["TIMELINE_UNITS_ORDER"]
     2033 SETTABLEKS                       R2 R1 K470 ["LeftBrowLowerer"]
     2035 LOADK                            R2 K215 ["FPS_24"]
     2036 SETTABLEKS                       R2 R1 K471 ["LeftOuterBrowRaiser"]
     2038 LOADK                            R2 K216 ["FPS_30"]
     2039 SETTABLEKS                       R2 R1 K472 ["LeftNoseWrinkler"]
     2041 LOADK                            R2 K217 ["FPS_60"]
     2042 SETTABLEKS                       R2 R1 K473 ["LeftInnerBrowRaiser"]
     2044 LOADK                            R2 K218 ["FPS_120"]
     2045 SETTABLEKS                       R2 R1 K474 ["RightBrowLowerer"]
     2047 LOADK                            R2 K219 ["CUSTOM"]
     2048 SETTABLEKS                       R2 R1 K475 ["RightOuterBrowRaiser"]
     2050 LOADK                            R2 K220 [{"FPS_24", "FPS_30", "FPS_60", "FPS_120", "CUSTOM"}]
     2051 SETTABLEKS                       R2 R1 K476 ["RightInnerBrowRaiser"]
     2053 LOADK                            R2 K221 ["FRAMERATES"]
     2054 SETTABLEKS                       R2 R1 K477 ["RightNoseWrinkler"]
     2056 LOADK                            R2 K222 ["Static"]
     2057 SETTABLEKS                       R2 R1 K478 ["EyesLookDown"]
     2059 LOADK                            R2 K223 ["Default"]
     2060 SETTABLEKS                       R2 R1 K479 ["EyesLookLeft"]
     2062 LOADK                            R2 K224 ["FromRig"]
     2063 SETTABLEKS                       R2 R1 K480 ["EyesLookUp"]
     2065 LOADK                            R2 K225 ["Custom"]
     2066 SETTABLEKS                       R2 R1 K481 ["EyesLookRight"]
     2068 LOADK                            R2 K226 [{"Static", "Default", "FromRig", "Custom"}]
     2069 SETTABLEKS                       R2 R1 K482 ["LeftCheekRaiser"]
     2071 LOADK                            R2 K227 ["GRIDSPEEDS"]
     2072 SETTABLEKS                       R2 R1 K483 ["LeftEyeUpperLidRaiser"]
     2074 LOADK                            R2 K228 ["PBS_025"]
     2075 SETTABLEKS                       R2 R1 K484 ["LeftEyeClosed"]
     2077 LOADK                            R2 K229 ["PBS_05"]
     2078 SETTABLEKS                       R2 R1 K485 ["RightCheekRaiser"]
     2080 LOADK                            R2 K230 ["PBS_1"]
     2081 SETTABLEKS                       R2 R1 K486 ["RightEyeUpperLidRaiser"]
     2083 LOADK                            R2 K231 ["PBS_2"]
     2084 SETTABLEKS                       R2 R1 K487 ["RightEyeClosed"]
     2086 LOADK                            R2 K232 ["PBS_4"]
     2087 SETTABLEKS                       R2 R1 K488 ["TongueDown"]
     2089 LOADK                            R2 K233 [{"PBS_025", "PBS_05", "PBS_1", "PBS_2", "PBS_4", "CUSTOM"}]
     2090 SETTABLEKS                       R2 R1 K489 ["TongueOut"]
     2092 LOADK                            R2 K234 [0.25]
     2093 SETTABLEKS                       R2 R1 K490 ["TongueUp"]
     2095 SETTABLEKS                       R1 R0 K507 ["FacsNames"]
     2097 NEWTABLE                         R1 64 0
     2099 NEWTABLE                         R2 0 0
     2101 SETTABLEKS                       R2 R1 K441 ["ChinRaiserUpperLip"]
     2103 NEWTABLE                         R2 0 0
     2105 SETTABLEKS                       R2 R1 K442 ["ChinRaiser"]
     2107 NEWTABLE                         R2 0 0
     2109 SETTABLEKS                       R2 R1 K443 ["FlatPucker"]
     2111 NEWTABLE                         R2 0 0
     2113 SETTABLEKS                       R2 R1 K444 ["Funneler"]
     2115 NEWTABLE                         R2 0 0
     2117 SETTABLEKS                       R2 R1 K445 ["LowerLipSuck"]
     2119 NEWTABLE                         R2 0 0
     2121 SETTABLEKS                       R2 R1 K446 ["LipPresser"]
     2123 NEWTABLE                         R2 0 0
     2125 SETTABLEKS                       R2 R1 K447 ["LipsTogether"]
     2127 DUPTABLE                         R2 K510 [{"sliderGroup", "indexInGroup"}]
     2128 NEWTABLE                         R3 0 2
     2130 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2132 GETTABLEKS                       R4 R5 K449 ["MouthRight"]
     2134 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2136 GETTABLEKS                       R5 R6 K448 ["MouthLeft"]
     2138 SETLIST                          R3 R4 2 [1]
     2140 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2142 LOADN                            R3 2
     2143 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2145 SETTABLEKS                       R2 R1 K448 ["MouthLeft"]
     2147 DUPTABLE                         R2 K510 [{"sliderGroup", "indexInGroup"}]
     2148 NEWTABLE                         R3 0 2
     2150 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2152 GETTABLEKS                       R4 R5 K449 ["MouthRight"]
     2154 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2156 GETTABLEKS                       R5 R6 K448 ["MouthLeft"]
     2158 SETLIST                          R3 R4 2 [1]
     2160 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2162 LOADN                            R3 1
     2163 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2165 SETTABLEKS                       R2 R1 K449 ["MouthRight"]
     2167 NEWTABLE                         R2 0 0
     2169 SETTABLEKS                       R2 R1 K450 ["Pucker"]
     2171 NEWTABLE                         R2 0 0
     2173 SETTABLEKS                       R2 R1 K451 ["UpperLipSuck"]
     2175 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2176 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2178 GETTABLEKS                       R3 R4 K459 ["RightCheekPuff"]
     2180 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2182 SETTABLEKS                       R2 R1 K452 ["LeftCheekPuff"]
     2184 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2185 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2187 GETTABLEKS                       R3 R4 K460 ["RightDimpler"]
     2189 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2191 SETTABLEKS                       R2 R1 K453 ["LeftDimpler"]
     2193 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2194 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2196 GETTABLEKS                       R3 R4 K461 ["RightLipCornerDown"]
     2198 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2200 SETTABLEKS                       R2 R1 K454 ["LeftLipCornerDown"]
     2202 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2203 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2205 GETTABLEKS                       R3 R4 K462 ["RightLowerLipDepressor"]
     2207 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2209 SETTABLEKS                       R2 R1 K455 ["LeftLowerLipDepressor"]
     2211 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2212 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2214 GETTABLEKS                       R3 R4 K463 ["RightLipCornerPuller"]
     2216 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2218 SETTABLEKS                       R2 R1 K456 ["LeftLipCornerPuller"]
     2220 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2221 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2223 GETTABLEKS                       R3 R4 K464 ["RightLipStretcher"]
     2225 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2227 SETTABLEKS                       R2 R1 K457 ["LeftLipStretcher"]
     2229 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2230 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2232 GETTABLEKS                       R3 R4 K465 ["RightUpperLipRaiser"]
     2234 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2236 SETTABLEKS                       R2 R1 K458 ["LeftUpperLipRaiser"]
     2238 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2239 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2241 GETTABLEKS                       R3 R4 K452 ["LeftCheekPuff"]
     2243 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2245 SETTABLEKS                       R2 R1 K459 ["RightCheekPuff"]
     2247 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2248 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2250 GETTABLEKS                       R3 R4 K453 ["LeftDimpler"]
     2252 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2254 SETTABLEKS                       R2 R1 K460 ["RightDimpler"]
     2256 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2257 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2259 GETTABLEKS                       R3 R4 K454 ["LeftLipCornerDown"]
     2261 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2263 SETTABLEKS                       R2 R1 K461 ["RightLipCornerDown"]
     2265 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2266 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2268 GETTABLEKS                       R3 R4 K455 ["LeftLowerLipDepressor"]
     2270 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2272 SETTABLEKS                       R2 R1 K462 ["RightLowerLipDepressor"]
     2274 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2275 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2277 GETTABLEKS                       R3 R4 K456 ["LeftLipCornerPuller"]
     2279 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2281 SETTABLEKS                       R2 R1 K463 ["RightLipCornerPuller"]
     2283 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2284 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2286 GETTABLEKS                       R3 R4 K457 ["LeftLipStretcher"]
     2288 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2290 SETTABLEKS                       R2 R1 K464 ["RightLipStretcher"]
     2292 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2293 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2295 GETTABLEKS                       R3 R4 K458 ["LeftUpperLipRaiser"]
     2297 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2299 SETTABLEKS                       R2 R1 K465 ["RightUpperLipRaiser"]
     2301 NEWTABLE                         R2 0 0
     2303 SETTABLEKS                       R2 R1 K466 ["JawDrop"]
     2305 DUPTABLE                         R2 K510 [{"sliderGroup", "indexInGroup"}]
     2306 NEWTABLE                         R3 0 2
     2308 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2310 GETTABLEKS                       R4 R5 K468 ["JawRight"]
     2312 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2314 GETTABLEKS                       R5 R6 K467 ["JawLeft"]
     2316 SETLIST                          R3 R4 2 [1]
     2318 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2320 LOADN                            R3 2
     2321 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2323 SETTABLEKS                       R2 R1 K467 ["JawLeft"]
     2325 DUPTABLE                         R2 K510 [{"sliderGroup", "indexInGroup"}]
     2326 NEWTABLE                         R3 0 2
     2328 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2330 GETTABLEKS                       R4 R5 K468 ["JawRight"]
     2332 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2334 GETTABLEKS                       R5 R6 K467 ["JawLeft"]
     2336 SETLIST                          R3 R4 2 [1]
     2338 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2340 LOADN                            R3 1
     2341 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2343 SETTABLEKS                       R2 R1 K468 ["JawRight"]
     2345 NEWTABLE                         R2 0 0
     2347 SETTABLEKS                       R2 R1 K469 ["Corrugator"]
     2349 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2350 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2352 GETTABLEKS                       R3 R4 K474 ["RightBrowLowerer"]
     2354 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2356 SETTABLEKS                       R2 R1 K470 ["LeftBrowLowerer"]
     2358 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2359 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2361 GETTABLEKS                       R3 R4 K475 ["RightOuterBrowRaiser"]
     2363 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2365 SETTABLEKS                       R2 R1 K471 ["LeftOuterBrowRaiser"]
     2367 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2368 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2370 GETTABLEKS                       R3 R4 K477 ["RightNoseWrinkler"]
     2372 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2374 SETTABLEKS                       R2 R1 K472 ["LeftNoseWrinkler"]
     2376 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2377 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2379 GETTABLEKS                       R3 R4 K476 ["RightInnerBrowRaiser"]
     2381 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2383 SETTABLEKS                       R2 R1 K473 ["LeftInnerBrowRaiser"]
     2385 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2386 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2388 GETTABLEKS                       R3 R4 K470 ["LeftBrowLowerer"]
     2390 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2392 SETTABLEKS                       R2 R1 K474 ["RightBrowLowerer"]
     2394 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2395 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2397 GETTABLEKS                       R3 R4 K471 ["LeftOuterBrowRaiser"]
     2399 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2401 SETTABLEKS                       R2 R1 K475 ["RightOuterBrowRaiser"]
     2403 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2404 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2406 GETTABLEKS                       R3 R4 K473 ["LeftInnerBrowRaiser"]
     2408 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2410 SETTABLEKS                       R2 R1 K476 ["RightInnerBrowRaiser"]
     2412 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2413 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2415 GETTABLEKS                       R3 R4 K472 ["LeftNoseWrinkler"]
     2417 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2419 SETTABLEKS                       R2 R1 K477 ["RightNoseWrinkler"]
     2421 NEWTABLE                         R2 0 0
     2423 SETTABLEKS                       R2 R1 K478 ["EyesLookDown"]
     2425 NEWTABLE                         R2 0 0
     2427 SETTABLEKS                       R2 R1 K479 ["EyesLookLeft"]
     2429 NEWTABLE                         R2 0 0
     2431 SETTABLEKS                       R2 R1 K480 ["EyesLookUp"]
     2433 NEWTABLE                         R2 0 0
     2435 SETTABLEKS                       R2 R1 K481 ["EyesLookRight"]
     2437 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2438 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2440 GETTABLEKS                       R3 R4 K485 ["RightCheekRaiser"]
     2442 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2444 SETTABLEKS                       R2 R1 K482 ["LeftCheekRaiser"]
     2446 DUPTABLE                         R2 K513 [{"sliderGroup", "indexInGroup", "symmetryPartner"}]
     2447 NEWTABLE                         R3 0 2
     2449 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2451 GETTABLEKS                       R4 R5 K484 ["LeftEyeClosed"]
     2453 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2455 GETTABLEKS                       R5 R6 K483 ["LeftEyeUpperLidRaiser"]
     2457 SETLIST                          R3 R4 2 [1]
     2459 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2461 LOADN                            R3 2
     2462 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2464 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2466 GETTABLEKS                       R3 R4 K486 ["RightEyeUpperLidRaiser"]
     2468 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2470 SETTABLEKS                       R2 R1 K483 ["LeftEyeUpperLidRaiser"]
     2472 DUPTABLE                         R2 K513 [{"sliderGroup", "indexInGroup", "symmetryPartner"}]
     2473 NEWTABLE                         R3 0 2
     2475 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2477 GETTABLEKS                       R4 R5 K484 ["LeftEyeClosed"]
     2479 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2481 GETTABLEKS                       R5 R6 K483 ["LeftEyeUpperLidRaiser"]
     2483 SETLIST                          R3 R4 2 [1]
     2485 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2487 LOADN                            R3 1
     2488 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2490 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2492 GETTABLEKS                       R3 R4 K487 ["RightEyeClosed"]
     2494 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2496 SETTABLEKS                       R2 R1 K484 ["LeftEyeClosed"]
     2498 DUPTABLE                         R2 K512 [{"symmetryPartner"}]
     2499 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2501 GETTABLEKS                       R3 R4 K482 ["LeftCheekRaiser"]
     2503 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2505 SETTABLEKS                       R2 R1 K485 ["RightCheekRaiser"]
     2507 DUPTABLE                         R2 K513 [{"sliderGroup", "indexInGroup", "symmetryPartner"}]
     2508 NEWTABLE                         R3 0 2
     2510 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2512 GETTABLEKS                       R4 R5 K487 ["RightEyeClosed"]
     2514 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2516 GETTABLEKS                       R5 R6 K486 ["RightEyeUpperLidRaiser"]
     2518 SETLIST                          R3 R4 2 [1]
     2520 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2522 LOADN                            R3 2
     2523 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2525 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2527 GETTABLEKS                       R3 R4 K483 ["LeftEyeUpperLidRaiser"]
     2529 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2531 SETTABLEKS                       R2 R1 K486 ["RightEyeUpperLidRaiser"]
     2533 DUPTABLE                         R2 K513 [{"sliderGroup", "indexInGroup", "symmetryPartner"}]
     2534 NEWTABLE                         R3 0 2
     2536 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2538 GETTABLEKS                       R4 R5 K487 ["RightEyeClosed"]
     2540 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2542 GETTABLEKS                       R5 R6 K486 ["RightEyeUpperLidRaiser"]
     2544 SETLIST                          R3 R4 2 [1]
     2546 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2548 LOADN                            R3 1
     2549 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2551 GETTABLEKS                       R4 R0 K507 ["FacsNames"]
     2553 GETTABLEKS                       R3 R4 K484 ["LeftEyeClosed"]
     2555 SETTABLEKS                       R3 R2 K511 ["symmetryPartner"]
     2557 SETTABLEKS                       R2 R1 K487 ["RightEyeClosed"]
     2559 DUPTABLE                         R2 K510 [{"sliderGroup", "indexInGroup"}]
     2560 NEWTABLE                         R3 0 2
     2562 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2564 GETTABLEKS                       R4 R5 K490 ["TongueUp"]
     2566 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2568 GETTABLEKS                       R5 R6 K488 ["TongueDown"]
     2570 SETLIST                          R3 R4 2 [1]
     2572 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2574 LOADN                            R3 2
     2575 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2577 SETTABLEKS                       R2 R1 K488 ["TongueDown"]
     2579 DUPTABLE                         R2 K510 [{"sliderGroup", "indexInGroup"}]
     2580 NEWTABLE                         R3 0 2
     2582 GETTABLEKS                       R5 R0 K507 ["FacsNames"]
     2584 GETTABLEKS                       R4 R5 K490 ["TongueUp"]
     2586 GETTABLEKS                       R6 R0 K507 ["FacsNames"]
     2588 GETTABLEKS                       R5 R6 K488 ["TongueDown"]
     2590 SETLIST                          R3 R4 2 [1]
     2592 SETTABLEKS                       R3 R2 K508 ["sliderGroup"]
     2594 LOADN                            R3 1
     2595 SETTABLEKS                       R3 R2 K509 ["indexInGroup"]
     2597 SETTABLEKS                       R2 R1 K490 ["TongueUp"]
     2599 NEWTABLE                         R2 0 0
     2601 SETTABLEKS                       R2 R1 K489 ["TongueOut"]
     2603 SETTABLEKS                       R1 R0 K514 ["FacsCrossMappings"]
     2605 LOADN                            R1 240
     2606 SETTABLEKS                       R1 R0 K515 ["faceControlsEditorOriginalWidth"]
     2608 LOADN                            R1 220
     2609 SETTABLEKS                       R1 R0 K516 ["faceControlsEditorFaceFrontDiagramWidth"]
     2611 LOADN                            R1 54
     2612 SETTABLEKS                       R1 R0 K517 ["faceControlsEditorFaceFrontDiagramHeight"]
     2614 LOADN                            R1 220
     2615 SETTABLEKS                       R1 R0 K518 ["faceControlsEditorFaceSideDiagramWidth"]
     2617 LOADN                            R1 190
     2618 SETTABLEKS                       R1 R0 K519 ["faceControlsEditorFaceSideDiagramHeight"]
     2620 LOADN                            R1 10
     2621 SETTABLEKS                       R1 R0 K520 ["faceControlsEditorDiagramPadding"]
     2623 LOADN                            R1 40
     2624 SETTABLEKS                       R1 R0 K521 ["faceControlsEditoSpacingBetweenDiagrams"]
     2626 LOADN                            R1 95
     2627 SETTABLEKS                       R1 R0 K522 ["faceControlsEditorTogglesContainerHeight"]
     2629 NEWTABLE                         R1 4 0
     2631 GETTABLEKS                       R3 R0 K147 ["TRACK_TYPES"]
     2633 GETTABLEKS                       R2 R3 K136 ["CFrame"]
     2635 NEWTABLE                         R3 8 0
     2637 NEWTABLE                         R4 0 2
     2639 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2641 GETTABLEKS                       R5 R6 K139 ["Position"]
     2643 GETTABLEKS                       R7 R0 K157 ["PROPERTY_KEYS"]
     2645 GETTABLEKS                       R6 R7 K148 ["Rotation"]
     2647 SETLIST                          R4 R5 2 [1]
     2649 SETTABLEKS                       R4 R3 K523 ["_Order"]
     2651 NEWTABLE                         R4 0 1
     2653 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2655 GETTABLEKS                       R5 R6 K20 ["IkData"]
     2657 SETLIST                          R4 R5 1 [1]
     2659 SETTABLEKS                       R4 R3 K524 ["_OptionalOrder"]
     2661 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2663 GETTABLEKS                       R4 R5 K139 ["Position"]
     2665 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2667 GETTABLEKS                       R5 R6 K139 ["Position"]
     2669 SETTABLE                         R5 R3 R4
     2670 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2672 GETTABLEKS                       R4 R5 K148 ["Rotation"]
     2674 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2676 GETTABLEKS                       R5 R6 K143 ["EulerAngles"]
     2678 SETTABLE                         R5 R3 R4
     2679 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2681 GETTABLEKS                       R4 R5 K20 ["IkData"]
     2683 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2685 GETTABLEKS                       R5 R6 K20 ["IkData"]
     2687 SETTABLE                         R5 R3 R4
     2688 SETTABLE                         R3 R1 R2
     2689 GETTABLEKS                       R3 R0 K147 ["TRACK_TYPES"]
     2691 GETTABLEKS                       R2 R3 K139 ["Position"]
     2693 NEWTABLE                         R3 4 0
     2695 NEWTABLE                         R4 0 3
     2697 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2699 GETTABLEKS                       R5 R6 K149 ["X"]
     2701 GETTABLEKS                       R7 R0 K157 ["PROPERTY_KEYS"]
     2703 GETTABLEKS                       R6 R7 K150 ["Y"]
     2705 GETTABLEKS                       R8 R0 K157 ["PROPERTY_KEYS"]
     2707 GETTABLEKS                       R7 R8 K151 ["Z"]
     2709 SETLIST                          R4 R5 3 [1]
     2711 SETTABLEKS                       R4 R3 K523 ["_Order"]
     2713 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2715 GETTABLEKS                       R4 R5 K149 ["X"]
     2717 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2719 GETTABLEKS                       R5 R6 K140 ["Number"]
     2721 SETTABLE                         R5 R3 R4
     2722 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2724 GETTABLEKS                       R4 R5 K150 ["Y"]
     2726 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2728 GETTABLEKS                       R5 R6 K140 ["Number"]
     2730 SETTABLE                         R5 R3 R4
     2731 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2733 GETTABLEKS                       R4 R5 K151 ["Z"]
     2735 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2737 GETTABLEKS                       R5 R6 K140 ["Number"]
     2739 SETTABLE                         R5 R3 R4
     2740 SETTABLE                         R3 R1 R2
     2741 GETTABLEKS                       R3 R0 K147 ["TRACK_TYPES"]
     2743 GETTABLEKS                       R2 R3 K143 ["EulerAngles"]
     2745 NEWTABLE                         R3 4 0
     2747 NEWTABLE                         R4 0 3
     2749 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2751 GETTABLEKS                       R5 R6 K149 ["X"]
     2753 GETTABLEKS                       R7 R0 K157 ["PROPERTY_KEYS"]
     2755 GETTABLEKS                       R6 R7 K150 ["Y"]
     2757 GETTABLEKS                       R8 R0 K157 ["PROPERTY_KEYS"]
     2759 GETTABLEKS                       R7 R8 K151 ["Z"]
     2761 SETLIST                          R4 R5 3 [1]
     2763 SETTABLEKS                       R4 R3 K523 ["_Order"]
     2765 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2767 GETTABLEKS                       R4 R5 K149 ["X"]
     2769 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2771 GETTABLEKS                       R5 R6 K141 ["Angle"]
     2773 SETTABLE                         R5 R3 R4
     2774 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2776 GETTABLEKS                       R4 R5 K150 ["Y"]
     2778 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2780 GETTABLEKS                       R5 R6 K141 ["Angle"]
     2782 SETTABLE                         R5 R3 R4
     2783 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2785 GETTABLEKS                       R4 R5 K151 ["Z"]
     2787 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2789 GETTABLEKS                       R5 R6 K141 ["Angle"]
     2791 SETTABLE                         R5 R3 R4
     2792 SETTABLE                         R3 R1 R2
     2793 GETTABLEKS                       R3 R0 K147 ["TRACK_TYPES"]
     2795 GETTABLEKS                       R2 R3 K144 ["IkTarget"]
     2797 NEWTABLE                         R3 8 0
     2799 NEWTABLE                         R4 0 4
     2801 GETTABLEKS                       R6 R0 K157 ["PROPERTY_KEYS"]
     2803 GETTABLEKS                       R5 R6 K152 ["OffsetPos"]
     2805 GETTABLEKS                       R7 R0 K157 ["PROPERTY_KEYS"]
     2807 GETTABLEKS                       R6 R7 K153 ["OffsetRot"]
     2809 GETTABLEKS                       R8 R0 K157 ["PROPERTY_KEYS"]
     2811 GETTABLEKS                       R7 R8 K154 ["Weight"]
     2813 GETTABLEKS                       R9 R0 K157 ["PROPERTY_KEYS"]
     2815 GETTABLEKS                       R8 R9 K155 ["SurfacePoint"]
     2817 SETLIST                          R4 R5 4 [1]
     2819 SETTABLEKS                       R4 R3 K523 ["_Order"]
     2821 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2823 GETTABLEKS                       R4 R5 K152 ["OffsetPos"]
     2825 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2827 GETTABLEKS                       R5 R6 K139 ["Position"]
     2829 SETTABLE                         R5 R3 R4
     2830 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2832 GETTABLEKS                       R4 R5 K153 ["OffsetRot"]
     2834 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2836 GETTABLEKS                       R5 R6 K142 ["Quaternion"]
     2838 SETTABLE                         R5 R3 R4
     2839 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2841 GETTABLEKS                       R4 R5 K154 ["Weight"]
     2843 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2845 GETTABLEKS                       R5 R6 K140 ["Number"]
     2847 SETTABLE                         R5 R3 R4
     2848 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2850 GETTABLEKS                       R4 R5 K155 ["SurfacePoint"]
     2852 GETTABLEKS                       R6 R0 K147 ["TRACK_TYPES"]
     2854 GETTABLEKS                       R5 R6 K139 ["Position"]
     2856 SETTABLE                         R5 R3 R4
     2857 SETTABLE                         R3 R1 R2
     2858 SETTABLEKS                       R1 R0 K525 ["COMPONENT_TRACK_TYPES"]
     2860 NEWTABLE                         R1 16 0
     2862 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2864 GETTABLEKS                       R2 R3 K139 ["Position"]
     2866 LOADN                            R3 1
     2867 SETTABLE                         R3 R1 R2
     2868 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2870 GETTABLEKS                       R2 R3 K148 ["Rotation"]
     2872 LOADN                            R3 2
     2873 SETTABLE                         R3 R1 R2
     2874 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2876 GETTABLEKS                       R2 R3 K20 ["IkData"]
     2878 LOADN                            R3 3
     2879 SETTABLE                         R3 R1 R2
     2880 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2882 GETTABLEKS                       R2 R3 K149 ["X"]
     2884 LOADN                            R3 1
     2885 SETTABLE                         R3 R1 R2
     2886 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2888 GETTABLEKS                       R2 R3 K150 ["Y"]
     2890 LOADN                            R3 2
     2891 SETTABLE                         R3 R1 R2
     2892 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2894 GETTABLEKS                       R2 R3 K151 ["Z"]
     2896 LOADN                            R3 3
     2897 SETTABLE                         R3 R1 R2
     2898 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2900 GETTABLEKS                       R2 R3 K152 ["OffsetPos"]
     2902 LOADN                            R3 1
     2903 SETTABLE                         R3 R1 R2
     2904 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2906 GETTABLEKS                       R2 R3 K153 ["OffsetRot"]
     2908 LOADN                            R3 2
     2909 SETTABLE                         R3 R1 R2
     2910 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2912 GETTABLEKS                       R2 R3 K154 ["Weight"]
     2914 LOADN                            R3 3
     2915 SETTABLE                         R3 R1 R2
     2916 GETTABLEKS                       R3 R0 K157 ["PROPERTY_KEYS"]
     2918 GETTABLEKS                       R2 R3 K155 ["SurfacePoint"]
     2920 LOADN                            R3 4
     2921 SETTABLE                         R3 R1 R2
     2922 SETTABLEKS                       R1 R0 K526 ["COMPONENT_PATH_VALUE"]
     2924 LOADK                            R1 K125 ["TEMPORARY_CONSTRAINTS"]
     2925 SETTABLEKS                       R1 R0 K527 ["COMPONENT_PATH_BASE_SCALE"]
     2927 GETTABLEKS                       R1 R0 K259 ["KEYFRAME_STYLE"]
     2929 GETIMPORT                        R2 K329 [Enum.KeyInterpolationMode.Constant]
     2931 LOADK                            R3 K251 ["Constant"]
     2932 SETTABLE                         R3 R1 R2
     2933 GETTABLEKS                       R1 R0 K259 ["KEYFRAME_STYLE"]
     2935 GETIMPORT                        R2 K331 [Enum.KeyInterpolationMode.Cubic]
     2937 LOADK                            R3 K253 ["Cubic"]
     2938 SETTABLE                         R3 R1 R2
     2939 NEWTABLE                         R1 2 0
     2941 GETTABLEKS                       R3 R0 K147 ["TRACK_TYPES"]
     2943 GETTABLEKS                       R2 R3 K140 ["Number"]
     2945 NEWTABLE                         R3 4 0
     2947 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2949 GETTABLEKS                       R4 R5 K149 ["X"]
     2951 LOADK                            R5 K16 ["ACE_TimelineUnit"]
     2952 SETTABLE                         R5 R3 R4
     2953 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2955 GETTABLEKS                       R4 R5 K150 ["Y"]
     2957 LOADK                            R5 K17 ["SETTINGS"]
     2958 SETTABLE                         R5 R3 R4
     2959 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2961 GETTABLEKS                       R4 R5 K151 ["Z"]
     2963 LOADK                            R5 K18 ["AnimSaves"]
     2964 SETTABLE                         R5 R3 R4
     2965 SETTABLE                         R3 R1 R2
     2966 GETTABLEKS                       R3 R0 K147 ["TRACK_TYPES"]
     2968 GETTABLEKS                       R2 R3 K141 ["Angle"]
     2970 NEWTABLE                         R3 4 0
     2972 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2974 GETTABLEKS                       R4 R5 K149 ["X"]
     2976 LOADK                            R5 K19 ["Microbones"]
     2977 SETTABLE                         R5 R3 R4
     2978 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2980 GETTABLEKS                       R4 R5 K150 ["Y"]
     2982 LOADK                            R5 K20 ["IkData"]
     2983 SETTABLE                         R5 R3 R4
     2984 GETTABLEKS                       R5 R0 K157 ["PROPERTY_KEYS"]
     2986 GETTABLEKS                       R4 R5 K151 ["Z"]
     2988 LOADK                            R5 K21 ["IkTargets"]
     2989 SETTABLE                         R5 R3 R4
     2990 SETTABLE                         R3 R1 R2
     2991 SETTABLEKS                       R1 R0 K534 ["TRACK_THEME_MAPPING"]
     2993 NEWTABLE                         R1 2 0
     2995 GETTABLEKS                       R3 R0 K392 ["SCALE_TYPE"]
     2997 GETTABLEKS                       R2 R3 K140 ["Number"]
     2999 GETIMPORT                        R3 K54 [UDim2.new]
     3001 LOADK                            R4 K111 [0.3]
     3002 LOADN                            R5 0
     3003 LOADK                            R6 K235 [0.5]
     3004 LOADN                            R7 0
     3005 CALL                             R3 4 1
     3006 SETTABLE                         R3 R1 R2
     3007 GETTABLEKS                       R3 R0 K392 ["SCALE_TYPE"]
     3009 GETTABLEKS                       R2 R3 K141 ["Angle"]
     3011 GETIMPORT                        R3 K54 [UDim2.new]
     3013 LOADK                            R4 K90 [0.7]
     3014 LOADN                            R5 0
     3015 LOADK                            R6 K235 [0.5]
     3016 LOADN                            R7 0
     3017 CALL                             R3 4 1
     3018 SETTABLE                         R3 R1 R2
     3019 SETTABLEKS                       R1 R0 K535 ["TICK_LABEL_POSITION"]
     3021 GETTABLEKS                       R2 R0 K147 ["TRACK_TYPES"]
     3023 GETTABLEKS                       R1 R2 K143 ["EulerAngles"]
     3025 SETTABLEKS                       R1 R0 K536 ["DEFAULT_ROTATION_TYPE"]
     3027 RETURN                           R0 1
