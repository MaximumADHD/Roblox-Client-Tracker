MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagAvatarPreviewerClassicClothingPalettes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarPreviewerLookApiOrderMeta"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 0 15
       34 LOADK                            R5 K12 ["Head"]
       35 LOADK                            R6 K13 ["UpperTorso"]
       36 LOADK                            R7 K14 ["LowerTorso"]
       37 LOADK                            R8 K15 ["LeftUpperLeg"]
       38 LOADK                            R9 K16 ["LeftLowerLeg"]
       39 LOADK                            R10 K17 ["LeftFoot"]
       40 LOADK                            R11 K18 ["RightUpperLeg"]
       41 LOADK                            R12 K19 ["RightLowerLeg"]
       42 LOADK                            R13 K20 ["RightFoot"]
       43 LOADK                            R14 K21 ["LeftUpperArm"]
       44 LOADK                            R15 K22 ["LeftLowerArm"]
       45 LOADK                            R16 K23 ["LeftHand"]
       46 LOADK                            R17 K24 ["RightUpperArm"]
       47 LOADK                            R18 K25 ["RightLowerArm"]
       48 LOADK                            R19 K26 ["RightHand"]
       49 SETLIST                          R4 R5 15 [1]
       51 NEWTABLE                         R5 0 7
       53 GETIMPORT                        R6 K30 [Enum.AssetType.ShirtAccessory]
       55 GETIMPORT                        R7 K32 [Enum.AssetType.TShirtAccessory]
       57 GETIMPORT                        R8 K34 [Enum.AssetType.JacketAccessory]
       59 GETIMPORT                        R9 K36 [Enum.AssetType.SweaterAccessory]
       61 GETIMPORT                        R10 K38 [Enum.AssetType.PantsAccessory]
       63 GETIMPORT                        R11 K40 [Enum.AssetType.ShortsAccessory]
       65 GETIMPORT                        R12 K42 [Enum.AssetType.DressSkirtAccessory]
       67 SETLIST                          R5 R6 7 [1]
       69 NEWTABLE                         R6 0 0
       71 MOVE                             R7 R3
       72 CALL                             R7 0 1
       73 JUMPIFNOT                        R7 ; [+28]
       74 GETTABLEKS                       R7 R1 K43 ["List"]
       76 GETTABLEKS                       R7 R7 K44 ["join"]
       78 NEWTABLE                         R8 0 5
       80 GETIMPORT                        R9 K46 [Enum.AssetType.FaceMakeup]
       82 GETIMPORT                        R10 K48 [Enum.AssetType.LipMakeup]
       84 GETIMPORT                        R11 K50 [Enum.AssetType.EyeMakeup]
       86 GETIMPORT                        R12 K52 [Enum.AssetType.LeftShoeAccessory]
       88 GETIMPORT                        R13 K54 [Enum.AssetType.RightShoeAccessory]
       90 SETLIST                          R8 R9 5 [1]
       92 MOVE                             R9 R5
       93 CALL                             R7 2 1
       94 MOVE                             R8 R7
       95 LOADNIL                          R9
       96 LOADNIL                          R10
       97 FORGPREP                         R8
       98 LOADB                            R13 1
       99 SETTABLE                         R13 R6 R12
      100 FORGLOOP                         R8 2 ; [-3]
      102 NEWTABLE                         R7 64 0
      104 LOADK                            R8 K55 ["NoValidScaleError"]
      105 SETTABLEKS                       R8 R7 K56 ["ERROR_NO_VALID_SCALE_ERROR"]
      107 LOADK                            R8 K57 ["builtin"]
      108 SETTABLEKS                       R8 R7 K58 ["SOURCE_BUILTIN"]
      110 LOADK                            R8 K59 ["instance"]
      111 SETTABLEKS                       R8 R7 K60 ["SOURCE_INSTANCE"]
      113 LOADK                            R8 K61 ["marketplace"]
      114 SETTABLEKS                       R8 R7 K62 ["SOURCE_MARKETPLACE"]
      116 LOADK                            R8 K63 ["Assertion for Luau typechecking"]
      117 SETTABLEKS                       R8 R7 K64 ["LUAU_ANALYZE_ERROR"]
      119 LOADK                            R8 K65 ["rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"]
      120 SETTABLEKS                       R8 R7 K66 ["BODY_PREVIEW_PATH"]
      122 LOADK                            R8 K67 ["rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"]
      123 SETTABLEKS                       R8 R7 K68 ["HEAD_PREVIEW_PATH"]
      125 LOADK                            R8 K69 ["rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"]
      126 SETTABLEKS                       R8 R7 K70 ["PEDESTAL_PATH"]
      128 LOADK                            R8 K71 ["rbxasset://models/Thumbnails/MakeupCameras.rbxm"]
      129 SETTABLEKS                       R8 R7 K72 ["MAKEUP_CAMERAS_ASSET_PATH"]
      131 LOADK                            R8 K73 ["RBX_AvatarPreviewer_"]
      132 SETTABLEKS                       R8 R7 K74 ["ATTRIBUTE_PREFIX"]
      134 LOADK                            R8 K75 ["RBX_AutoSetup_OriginalScale"]
      135 SETTABLEKS                       R8 R7 K76 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
      137 LOADK                            R8 K77 ["RBX_AutoSetup_ScaleErrorList"]
      138 SETTABLEKS                       R8 R7 K78 ["ATTRIBUTE_SCALE_ERROR_LIST"]
      140 LOADK                            R8 K79 ["RBX_AutoSetupped"]
      141 SETTABLEKS                       R8 R7 K80 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      143 LOADK                            R8 K81 ["RBX_AutoSetupOriginalModelHash"]
      144 SETTABLEKS                       R8 R7 K82 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
      146 LOADK                            R8 K83 ["RBX_ImportMethod"]
      147 SETTABLEKS                       R8 R7 K84 ["ATTRIBUTE_IMPORT_METHOD"]
      149 LOADK                            R8 K85 ["RBX_AutoSetupInputAsset"]
      150 SETTABLEKS                       R8 R7 K86 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      152 LOADK                            R8 K87 ["RBX_OriginalBuiltinAssetId"]
      153 SETTABLEKS                       R8 R7 K88 ["ATTRIBUTE_ORIGINAL_BUILTIN_ASSET_ID"]
      155 LOADK                            R8 K89 ["RBX_IsPreviewAccessory"]
      156 SETTABLEKS                       R8 R7 K90 ["ATTRIBUTE_IS_PREVIEW_ACCESSORY"]
      158 LOADK                            R8 K91 ["RBX_AutoSetup_AssetConfiguration"]
      159 SETTABLEKS                       R8 R7 K92 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
      161 LOADK                            R8 K93 ["RBX_AvatarPreviewer_shouldReimport"]
      162 SETTABLEKS                       R8 R7 K94 ["ATTRIBUTE_SHOULD_REIMPORT"]
      164 LOADK                            R8 K95 ["AutoSetup_OriginalObjectInstance"]
      165 SETTABLEKS                       R8 R7 K96 ["ORIGINAL_INSTANCE_VALUE_NAME"]
      167 LOADK                            R8 K97 ["AvatarPreviewer_OriginalObjectReference_"]
      168 SETTABLEKS                       R8 R7 K98 ["REFERENCE_VALUE_NAME"]
      170 LOADK                            R8 K99 ["AvatarPreviewer_DisplayName"]
      171 SETTABLEKS                       R8 R7 K100 ["DISPLAY_NAME"]
      173 LOADK                            R8 K101 ["AutoSetupJobInitialization"]
      174 SETTABLEKS                       R8 R7 K102 ["AUTO_SETUP_JOB_INITIALIZATION"]
      176 NEWTABLE                         R8 32 0
      178 GETIMPORT                        R9 K104 [Enum.AssetType.BackAccessory]
      180 GETIMPORT                        R10 K107 [Enum.AccessoryType.Back]
      182 SETTABLE                         R10 R8 R9
      183 GETIMPORT                        R9 K42 [Enum.AssetType.DressSkirtAccessory]
      185 GETIMPORT                        R10 K109 [Enum.AccessoryType.DressSkirt]
      187 SETTABLE                         R10 R8 R9
      188 GETIMPORT                        R9 K111 [Enum.AssetType.EyebrowAccessory]
      190 GETIMPORT                        R10 K113 [Enum.AccessoryType.Eyebrow]
      192 SETTABLE                         R10 R8 R9
      193 GETIMPORT                        R9 K115 [Enum.AssetType.EyelashAccessory]
      195 GETIMPORT                        R10 K117 [Enum.AccessoryType.Eyelash]
      197 SETTABLE                         R10 R8 R9
      198 GETIMPORT                        R9 K119 [Enum.AssetType.FaceAccessory]
      200 GETIMPORT                        R10 K121 [Enum.AccessoryType.Face]
      202 SETTABLE                         R10 R8 R9
      203 GETIMPORT                        R9 K123 [Enum.AssetType.FrontAccessory]
      205 GETIMPORT                        R10 K125 [Enum.AccessoryType.Front]
      207 SETTABLE                         R10 R8 R9
      208 GETIMPORT                        R9 K127 [Enum.AssetType.Gear]
      210 GETIMPORT                        R10 K129 [Enum.AccessoryType.Unknown]
      212 SETTABLE                         R10 R8 R9
      213 GETIMPORT                        R9 K131 [Enum.AssetType.HairAccessory]
      215 GETIMPORT                        R10 K133 [Enum.AccessoryType.Hair]
      217 SETTABLE                         R10 R8 R9
      218 GETIMPORT                        R9 K135 [Enum.AssetType.Hat]
      220 GETIMPORT                        R10 K136 [Enum.AccessoryType.Hat]
      222 SETTABLE                         R10 R8 R9
      223 GETIMPORT                        R9 K34 [Enum.AssetType.JacketAccessory]
      225 GETIMPORT                        R10 K138 [Enum.AccessoryType.Jacket]
      227 SETTABLE                         R10 R8 R9
      228 GETIMPORT                        R9 K52 [Enum.AssetType.LeftShoeAccessory]
      230 GETIMPORT                        R10 K140 [Enum.AccessoryType.LeftShoe]
      232 SETTABLE                         R10 R8 R9
      233 GETIMPORT                        R9 K142 [Enum.AssetType.NeckAccessory]
      235 GETIMPORT                        R10 K144 [Enum.AccessoryType.Neck]
      237 SETTABLE                         R10 R8 R9
      238 GETIMPORT                        R9 K38 [Enum.AssetType.PantsAccessory]
      240 GETIMPORT                        R10 K146 [Enum.AccessoryType.Pants]
      242 SETTABLE                         R10 R8 R9
      243 GETIMPORT                        R9 K54 [Enum.AssetType.RightShoeAccessory]
      245 GETIMPORT                        R10 K148 [Enum.AccessoryType.RightShoe]
      247 SETTABLE                         R10 R8 R9
      248 GETIMPORT                        R9 K30 [Enum.AssetType.ShirtAccessory]
      250 GETIMPORT                        R10 K150 [Enum.AccessoryType.Shirt]
      252 SETTABLE                         R10 R8 R9
      253 GETIMPORT                        R9 K152 [Enum.AssetType.ShoulderAccessory]
      255 GETIMPORT                        R10 K154 [Enum.AccessoryType.Shoulder]
      257 SETTABLE                         R10 R8 R9
      258 GETIMPORT                        R9 K40 [Enum.AssetType.ShortsAccessory]
      260 GETIMPORT                        R10 K156 [Enum.AccessoryType.Shorts]
      262 SETTABLE                         R10 R8 R9
      263 GETIMPORT                        R9 K36 [Enum.AssetType.SweaterAccessory]
      265 GETIMPORT                        R10 K158 [Enum.AccessoryType.Sweater]
      267 SETTABLE                         R10 R8 R9
      268 GETIMPORT                        R9 K32 [Enum.AssetType.TShirtAccessory]
      270 GETIMPORT                        R10 K160 [Enum.AccessoryType.TShirt]
      272 SETTABLE                         R10 R8 R9
      273 GETIMPORT                        R9 K162 [Enum.AssetType.WaistAccessory]
      275 GETIMPORT                        R10 K164 [Enum.AccessoryType.Waist]
      277 SETTABLE                         R10 R8 R9
      278 SETTABLEKS                       R8 R7 K165 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
      280 NEWTABLE                         R8 4 0
      282 GETIMPORT                        R9 K46 [Enum.AssetType.FaceMakeup]
      284 GETIMPORT                        R10 K167 [Enum.MakeupType.Face]
      286 SETTABLE                         R10 R8 R9
      287 GETIMPORT                        R9 K48 [Enum.AssetType.LipMakeup]
      289 GETIMPORT                        R10 K169 [Enum.MakeupType.Lip]
      291 SETTABLE                         R10 R8 R9
      292 GETIMPORT                        R9 K50 [Enum.AssetType.EyeMakeup]
      294 GETIMPORT                        R10 K171 [Enum.MakeupType.Eye]
      296 SETTABLE                         R10 R8 R9
      297 SETTABLEKS                       R8 R7 K172 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
      299 NEWTABLE                         R8 0 50
      301 LOADK                            R9 K173 ["ChinRaiser"]
      302 LOADK                            R10 K174 ["ChinRaiserUpperLip"]
      303 LOADK                            R11 K175 ["Corrugator"]
      304 LOADK                            R12 K176 ["EyesLookDown"]
      305 LOADK                            R13 K177 ["EyesLookLeft"]
      306 LOADK                            R14 K178 ["EyesLookRight"]
      307 LOADK                            R15 K179 ["EyesLookUp"]
      308 LOADK                            R16 K180 ["FlatPucker"]
      309 LOADK                            R17 K181 ["Funneler"]
      310 LOADK                            R18 K182 ["JawDrop"]
      311 LOADK                            R19 K183 ["JawLeft"]
      312 LOADK                            R20 K184 ["JawRight"]
      313 LOADK                            R21 K185 ["LeftBrowLowerer"]
      314 LOADK                            R22 K186 ["LeftCheekPuff"]
      315 LOADK                            R23 K187 ["LeftCheekRaiser"]
      316 LOADK                            R24 K188 ["LeftDimpler"]
      317 SETLIST                          R8 R9 16 [1]
      319 LOADK                            R9 K189 ["LeftEyeClosed"]
      320 LOADK                            R10 K190 ["LeftEyeUpperLidRaiser"]
      321 LOADK                            R11 K191 ["LeftInnerBrowRaiser"]
      322 LOADK                            R12 K192 ["LeftLipCornerDown"]
      323 LOADK                            R13 K193 ["LeftLipCornerPuller"]
      324 LOADK                            R14 K194 ["LeftLipStretcher"]
      325 LOADK                            R15 K195 ["LeftLowerLipDepressor"]
      326 LOADK                            R16 K196 ["LeftNoseWrinkler"]
      327 LOADK                            R17 K197 ["LeftOuterBrowRaiser"]
      328 LOADK                            R18 K198 ["LeftUpperLipRaiser"]
      329 LOADK                            R19 K199 ["LipPresser"]
      330 LOADK                            R20 K200 ["LipsTogether"]
      331 LOADK                            R21 K201 ["LowerLipSuck"]
      332 LOADK                            R22 K202 ["MouthLeft"]
      333 LOADK                            R23 K203 ["MouthRight"]
      334 LOADK                            R24 K204 ["Pucker"]
      335 SETLIST                          R8 R9 16 [17]
      337 LOADK                            R9 K205 ["RightBrowLowerer"]
      338 LOADK                            R10 K206 ["RightCheekPuff"]
      339 LOADK                            R11 K207 ["RightCheekRaiser"]
      340 LOADK                            R12 K208 ["RightDimpler"]
      341 LOADK                            R13 K209 ["RightEyeClosed"]
      342 LOADK                            R14 K210 ["RightEyeUpperLidRaiser"]
      343 LOADK                            R15 K211 ["RightInnerBrowRaiser"]
      344 LOADK                            R16 K212 ["RightLipCornerDown"]
      345 LOADK                            R17 K213 ["RightLipCornerPuller"]
      346 LOADK                            R18 K214 ["RightLipStretcher"]
      347 LOADK                            R19 K215 ["RightLowerLipDepressor"]
      348 LOADK                            R20 K216 ["RightNoseWrinkler"]
      349 LOADK                            R21 K217 ["RightOuterBrowRaiser"]
      350 LOADK                            R22 K218 ["RightUpperLipRaiser"]
      351 LOADK                            R23 K219 ["TongueDown"]
      352 LOADK                            R24 K220 ["TongueOut"]
      353 SETLIST                          R8 R9 16 [33]
      355 LOADK                            R9 K221 ["TongueUp"]
      356 LOADK                            R10 K222 ["UpperLipSuck"]
      357 SETLIST                          R8 R9 2 [49]
      359 SETTABLEKS                       R8 R7 K223 ["FACE_CONTROLS_PROPERTIES"]
      361 SETTABLEKS                       R4 R7 K224 ["LIMBS"]
      363 GETTABLEKS                       R8 R1 K43 ["List"]
      365 GETTABLEKS                       R8 R8 K44 ["join"]
      367 MOVE                             R9 R4
      368 NEWTABLE                         R10 0 2
      370 LOADK                            R11 K225 ["Handle"]
      371 LOADK                            R12 K226 ["HumanoidRootPart"]
      372 SETLIST                          R10 R11 2 [1]
      374 CALL                             R8 2 1
      375 SETTABLEKS                       R8 R7 K227 ["ALL_ALLOWED_PART_NAMES"]
      377 DUPTABLE                         R8 K237 [{["BodyPoints"] = "AvatarPreviewerEditingBodyPoints", ["EditingToolbar"] = "AvatarPreviewerEditingToolbar", ["BodyPointsToolToolbar"] = "AvatarPreviewerBodyPointsToolToolbar", ["CageEditingToolToolbar"] = "AvatarPreviewerCageEditingToolToolbar", ["MeshEditingModuleControlPointsAdornments"] = "MeshEditingModuleControlPointsAdornments"}]
      378 SETTABLEKS                       R8 R7 K238 ["EDITING_TOOLS_GUI_NAMES"]
      380 LOADK                            R8 K239 ["AvatarPreviewerClonedDummy"]
      381 SETTABLEKS                       R8 R7 K240 ["CLONED_DUMMY_NAME"]
      383 LOADK                            R8 K241 ["OriginalPosition"]
      384 SETTABLEKS                       R8 R7 K242 ["ORIGINAL_POSITION_VALUE"]
      386 LOADK                            R8 K243 ["NoSelection"]
      387 SETTABLEKS                       R8 R7 K244 ["PHONY_NO_SELECTION"]
      389 LOADK                            R8 K245 ["AvatarPreviewerMakeup"]
      390 SETTABLEKS                       R8 R7 K246 ["MAKEUP_FOLDER_NAME"]
      392 LOADK                            R8 K247 ["AvatarPreviewerMakeupDecal"]
      393 SETTABLEKS                       R8 R7 K248 ["MAKEUP_DECAL_NAME"]
      395 LOADK                            R8 K249 ["RenderRig"]
      396 SETTABLEKS                       R8 R7 K250 ["RENDER_RIG_NAME"]
      398 LOADK                            R8 K251 ["MakeupPreviewWorldModel"]
      399 SETTABLEKS                       R8 R7 K252 ["MAKEUP_PREVIEW_WORLD_MODEL_NAME"]
      401 LOADN                            R8 150
      402 SETTABLEKS                       R8 R7 K253 ["LOOK_PREVIEW_SIZE"]
      404 LOADK                            R8 K254 [1.8]
      405 SETTABLEKS                       R8 R7 K255 ["LOOK_COMPOSER_INPUT_WIDTH_SCALE"]
      407 GETIMPORT                        R8 K258 [CFrame.lookAt]
      409 LOADK                            R9 K259 [{-5.2, 1, -9.2}]
      410 LOADK                            R10 K260 [{0.5, -1.2, 0.85}]
      411 CALL                             R8 2 1
      412 SETTABLEKS                       R8 R7 K261 ["DEFAULT_CAMERA_ANGLE"]
      414 DUPTABLE                         R8 K276 [{["Eyelashes"] = 1, ["Eyebrows"] = 2, ["Face"] = 3, ["Hair"] = 4, ["Shoes"] = 5, ["Bottoms"] = 6, ["Tops"] = 7, ["Outerwear"] = 8}]
      415 SETTABLEKS                       R8 R7 K277 ["PREFERRED_LAYERS"]
      417 DUPTABLE                         R8 K280 [{["Positions"] = 1, ["Dummy"] = 2}]
      418 SETTABLEKS                       R8 R7 K281 ["FOCUS_CALLBACK_PRIORITIES"]
      420 GETIMPORT                        R8 K284 [Color3.fromRGB]
      422 LOADN                            R9 130
      423 LOADN                            R10 130
      424 LOADN                            R11 130
      425 CALL                             R8 3 1
      426 SETTABLEKS                       R8 R7 K285 ["DEFAULT_SKIN_COLOR"]
      428 LOADK                            R8 K286 ["_geo"]
      429 SETTABLEKS                       R8 R7 K287 ["BODY_MESH_SUFFIX"]
      431 LOADK                            R8 K288 ["_autosetup"]
      432 SETTABLEKS                       R8 R7 K289 ["OUTPUT_MODEL_SUFFIX"]
      434 DUPTABLE                         R8 K295 [{["Head"] = "Head", ["UpperTorso"] = "Torso", ["LowerTorso"] = "Torso", ["LeftUpperArm"] = "LeftArm", ["LeftLowerArm"] = "LeftArm", ["LeftHand"] = "LeftArm", ["RightUpperArm"] = "RightArm", ["RightLowerArm"] = "RightArm", ["RightHand"] = "RightArm", ["LeftUpperLeg"] = "LeftLeg", ["LeftLowerLeg"] = "LeftLeg", ["LeftFoot"] = "LeftLeg", ["RightUpperLeg"] = "RightLeg", ["RightLowerLeg"] = "RightLeg", ["RightFoot"] = "RightLeg"}]
      435 SETTABLEKS                       R8 R7 K296 ["BODY_PART_TO_LIMB_NAME"]
      437 LOADK                            R8 K297 [0.7]
      438 SETTABLEKS                       R8 R7 K298 ["FALLOFF_CURSOR_ADJUSTMENT"]
      440 LOADK                            R8 K299 [0.1]
      441 SETTABLEKS                       R8 R7 K300 ["THROTTLE_DELAY"]
      443 LOADK                            R8 K301 [16562317918]
      444 SETTABLEKS                       R8 R7 K302 ["IDLE_ANIMATION_ID"]
      446 LOADK                            R8 K303 ["Avatar Setup Add Items"]
      447 SETTABLEKS                       R8 R7 K304 ["WAYPOINT_NAME_ADD_ITEMS"]
      449 LOADK                            R8 K305 ["Avatar Setup Select Palettes"]
      450 SETTABLEKS                       R8 R7 K306 ["WAYPOINT_NAME_DISAMBIGUATION"]
      452 LOADK                            R8 K307 ["Avatar Setup Edit Cage Mesh"]
      453 SETTABLEKS                       R8 R7 K308 ["WAYPOINT_NAME_EDIT_CAGE_MESH"]
      455 DUPTABLE                         R8 K311 [{"Radius", "Falloff"}]
      456 DUPTABLE                         R9 K315 [{["minimum"] = 0.01, ["maximum"] = 2}]
      457 SETTABLEKS                       R9 R8 K309 ["Radius"]
      459 DUPTABLE                         R9 K317 [{["minimum"] = 1, ["maximum"] = 100}]
      460 SETTABLEKS                       R9 R8 K310 ["Falloff"]
      462 SETTABLEKS                       R8 R7 K318 ["CAGE_BRUSH_SETTINGS"]
      464 LOADK                            R8 K319 [12006493372]
      465 SETTABLEKS                       R8 R7 K320 ["TEMPLATE_BODY_OUTFIT_ID"]
      467 DUPTABLE                         R8 K327 [{["Head"] = 72510165520892, ["Torso"] = 116488623753864, ["LeftArm"] = 133986177057036, ["RightArm"] = 101158810738872, ["LeftLeg"] = 78536356632840, ["RightLeg"] = 129290873866258}]
      468 SETTABLEKS                       R8 R7 K328 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
      470 NEWTABLE                         R8 0 5
      472 GETIMPORT                        R9 K111 [Enum.AssetType.EyebrowAccessory]
      474 GETIMPORT                        R10 K115 [Enum.AssetType.EyelashAccessory]
      476 GETIMPORT                        R11 K46 [Enum.AssetType.FaceMakeup]
      478 GETIMPORT                        R12 K48 [Enum.AssetType.LipMakeup]
      480 GETIMPORT                        R13 K50 [Enum.AssetType.EyeMakeup]
      482 SETLIST                          R8 R9 5 [1]
      484 SETTABLEKS                       R8 R7 K329 ["MAKEUP_ASSET_TYPES"]
      486 SETTABLEKS                       R5 R7 K330 ["CLOTHING_ASSET_TYPES"]
      488 SETTABLEKS                       R6 R7 K331 ["ASSET_TYPES_WITH_ORDER_SET"]
      490 NEWTABLE                         R8 0 12
      492 GETIMPORT                        R9 K135 [Enum.AssetType.Hat]
      494 GETIMPORT                        R10 K131 [Enum.AssetType.HairAccessory]
      496 GETIMPORT                        R11 K119 [Enum.AssetType.FaceAccessory]
      498 GETIMPORT                        R12 K142 [Enum.AssetType.NeckAccessory]
      500 GETIMPORT                        R13 K152 [Enum.AssetType.ShoulderAccessory]
      502 GETIMPORT                        R14 K123 [Enum.AssetType.FrontAccessory]
      504 GETIMPORT                        R15 K104 [Enum.AssetType.BackAccessory]
      506 GETIMPORT                        R16 K162 [Enum.AssetType.WaistAccessory]
      508 GETIMPORT                        R17 K52 [Enum.AssetType.LeftShoeAccessory]
      510 GETIMPORT                        R18 K54 [Enum.AssetType.RightShoeAccessory]
      512 GETIMPORT                        R19 K111 [Enum.AssetType.EyebrowAccessory]
      514 GETIMPORT                        R20 K115 [Enum.AssetType.EyelashAccessory]
      516 SETLIST                          R8 R9 12 [1]
      518 SETTABLEKS                       R8 R7 K332 ["ACCESSORY_ASSET_TYPES"]
      520 GETTABLEKS                       R8 R1 K333 ["Dictionary"]
      522 GETTABLEKS                       R8 R8 K44 ["join"]
      524 NEWTABLE                         R9 32 0
      526 GETIMPORT                        R10 K135 [Enum.AssetType.Hat]
      528 GETTABLEKS                       R10 R10 K334 ["Name"]
      530 LOADK                            R11 K12 ["Head"]
      531 SETTABLE                         R11 R9 R10
      532 GETIMPORT                        R10 K131 [Enum.AssetType.HairAccessory]
      534 GETTABLEKS                       R10 R10 K334 ["Name"]
      536 LOADK                            R11 K132 ["Hair"]
      537 SETTABLE                         R11 R9 R10
      538 GETIMPORT                        R10 K119 [Enum.AssetType.FaceAccessory]
      540 GETTABLEKS                       R10 R10 K334 ["Name"]
      542 LOADK                            R11 K120 ["Face"]
      543 SETTABLE                         R11 R9 R10
      544 GETIMPORT                        R10 K142 [Enum.AssetType.NeckAccessory]
      546 GETTABLEKS                       R10 R10 K334 ["Name"]
      548 LOADK                            R11 K143 ["Neck"]
      549 SETTABLE                         R11 R9 R10
      550 GETIMPORT                        R10 K152 [Enum.AssetType.ShoulderAccessory]
      552 GETTABLEKS                       R10 R10 K334 ["Name"]
      554 LOADK                            R11 K153 ["Shoulder"]
      555 SETTABLE                         R11 R9 R10
      556 GETIMPORT                        R10 K123 [Enum.AssetType.FrontAccessory]
      558 GETTABLEKS                       R10 R10 K334 ["Name"]
      560 LOADK                            R11 K124 ["Front"]
      561 SETTABLE                         R11 R9 R10
      562 GETIMPORT                        R10 K104 [Enum.AssetType.BackAccessory]
      564 GETTABLEKS                       R10 R10 K334 ["Name"]
      566 LOADK                            R11 K106 ["Back"]
      567 SETTABLE                         R11 R9 R10
      568 GETIMPORT                        R10 K162 [Enum.AssetType.WaistAccessory]
      570 GETTABLEKS                       R10 R10 K334 ["Name"]
      572 LOADK                            R11 K163 ["Waist"]
      573 SETTABLE                         R11 R9 R10
      574 GETIMPORT                        R10 K335 [Enum.AssetType.Torso]
      576 GETTABLEKS                       R10 R10 K334 ["Name"]
      578 LOADK                            R11 K290 ["Torso"]
      579 SETTABLE                         R11 R9 R10
      580 GETIMPORT                        R10 K336 [Enum.AssetType.RightArm]
      582 GETTABLEKS                       R10 R10 K334 ["Name"]
      584 LOADK                            R11 K292 ["RightArm"]
      585 SETTABLE                         R11 R9 R10
      586 GETIMPORT                        R10 K337 [Enum.AssetType.LeftArm]
      588 GETTABLEKS                       R10 R10 K334 ["Name"]
      590 LOADK                            R11 K291 ["LeftArm"]
      591 SETTABLE                         R11 R9 R10
      592 GETIMPORT                        R10 K338 [Enum.AssetType.LeftLeg]
      594 GETTABLEKS                       R10 R10 K334 ["Name"]
      596 LOADK                            R11 K293 ["LeftLeg"]
      597 SETTABLE                         R11 R9 R10
      598 GETIMPORT                        R10 K339 [Enum.AssetType.RightLeg]
      600 GETTABLEKS                       R10 R10 K334 ["Name"]
      602 LOADK                            R11 K294 ["RightLeg"]
      603 SETTABLE                         R11 R9 R10
      604 GETIMPORT                        R10 K341 [Enum.AssetType.DynamicHead]
      606 GETTABLEKS                       R10 R10 K334 ["Name"]
      608 LOADK                            R11 K342 ["HeadBodyPart"]
      609 SETTABLE                         R11 R9 R10
      610 GETIMPORT                        R10 K32 [Enum.AssetType.TShirtAccessory]
      612 GETTABLEKS                       R10 R10 K334 ["Name"]
      614 LOADK                            R11 K343 ["TShirts"]
      615 SETTABLE                         R11 R9 R10
      616 GETIMPORT                        R10 K30 [Enum.AssetType.ShirtAccessory]
      618 GETTABLEKS                       R10 R10 K334 ["Name"]
      620 LOADK                            R11 K344 ["Shirts"]
      621 SETTABLE                         R11 R9 R10
      622 GETIMPORT                        R10 K38 [Enum.AssetType.PantsAccessory]
      624 GETTABLEKS                       R10 R10 K334 ["Name"]
      626 LOADK                            R11 K145 ["Pants"]
      627 SETTABLE                         R11 R9 R10
      628 GETIMPORT                        R10 K34 [Enum.AssetType.JacketAccessory]
      630 GETTABLEKS                       R10 R10 K334 ["Name"]
      632 LOADK                            R11 K345 ["Jackets"]
      633 SETTABLE                         R11 R9 R10
      634 GETIMPORT                        R10 K36 [Enum.AssetType.SweaterAccessory]
      636 GETTABLEKS                       R10 R10 K334 ["Name"]
      638 LOADK                            R11 K346 ["Sweaters"]
      639 SETTABLE                         R11 R9 R10
      640 GETIMPORT                        R10 K40 [Enum.AssetType.ShortsAccessory]
      642 GETTABLEKS                       R10 R10 K334 ["Name"]
      644 LOADK                            R11 K155 ["Shorts"]
      645 SETTABLE                         R11 R9 R10
      646 GETIMPORT                        R10 K42 [Enum.AssetType.DressSkirtAccessory]
      648 GETTABLEKS                       R10 R10 K334 ["Name"]
      650 LOADK                            R11 K347 ["Skirts"]
      651 SETTABLE                         R11 R9 R10
      652 GETIMPORT                        R10 K111 [Enum.AssetType.EyebrowAccessory]
      654 GETTABLEKS                       R10 R10 K334 ["Name"]
      656 LOADK                            R11 K264 ["Eyebrows"]
      657 SETTABLE                         R11 R9 R10
      658 GETIMPORT                        R10 K115 [Enum.AssetType.EyelashAccessory]
      660 GETTABLEKS                       R10 R10 K334 ["Name"]
      662 LOADK                            R11 K262 ["Eyelashes"]
      663 SETTABLE                         R11 R9 R10
      664 GETIMPORT                        R10 K46 [Enum.AssetType.FaceMakeup]
      666 GETTABLEKS                       R10 R10 K334 ["Name"]
      668 LOADK                            R11 K45 ["FaceMakeup"]
      669 SETTABLE                         R11 R9 R10
      670 GETIMPORT                        R10 K48 [Enum.AssetType.LipMakeup]
      672 GETTABLEKS                       R10 R10 K334 ["Name"]
      674 LOADK                            R11 K47 ["LipMakeup"]
      675 SETTABLE                         R11 R9 R10
      676 GETIMPORT                        R10 K50 [Enum.AssetType.EyeMakeup]
      678 GETTABLEKS                       R10 R10 K334 ["Name"]
      680 LOADK                            R11 K49 ["EyeMakeup"]
      681 SETTABLE                         R11 R9 R10
      682 MOVE                             R11 R2
      683 CALL                             R11 0 1
      684 JUMPIFNOT                        R11 ; [+21]
      685 NEWTABLE                         R10 4 0
      687 GETIMPORT                        R11 K348 [Enum.AssetType.Shirt]
      689 GETTABLEKS                       R11 R11 K334 ["Name"]
      691 LOADK                            R12 K349 ["ClassicShirts"]
      692 SETTABLE                         R12 R10 R11
      693 GETIMPORT                        R11 K350 [Enum.AssetType.TShirt]
      695 GETTABLEKS                       R11 R11 K334 ["Name"]
      697 LOADK                            R12 K351 ["ClassicTShirts"]
      698 SETTABLE                         R12 R10 R11
      699 GETIMPORT                        R11 K352 [Enum.AssetType.Pants]
      701 GETTABLEKS                       R11 R11 K334 ["Name"]
      703 LOADK                            R12 K353 ["ClassicPants"]
      704 SETTABLE                         R12 R10 R11
      705 JUMP                             ; [+2]
      706 NEWTABLE                         R10 0 0
      708 CALL                             R8 2 1
      709 SETTABLEKS                       R8 R7 K354 ["MARKETPLACE_ASSET_TYPE_TO_PALETTE_KEY"]
      711 NEWTABLE                         R8 8 0
      713 GETIMPORT                        R9 K46 [Enum.AssetType.FaceMakeup]
      715 LOADK                            R10 K355 ["makeup"]
      716 SETTABLE                         R10 R8 R9
      717 GETIMPORT                        R9 K48 [Enum.AssetType.LipMakeup]
      719 LOADK                            R10 K355 ["makeup"]
      720 SETTABLE                         R10 R8 R9
      721 GETIMPORT                        R9 K50 [Enum.AssetType.EyeMakeup]
      723 LOADK                            R10 K355 ["makeup"]
      724 SETTABLE                         R10 R8 R9
      725 GETIMPORT                        R9 K111 [Enum.AssetType.EyebrowAccessory]
      727 LOADK                            R10 K356 ["layered"]
      728 SETTABLE                         R10 R8 R9
      729 GETIMPORT                        R9 K115 [Enum.AssetType.EyelashAccessory]
      731 LOADK                            R10 K356 ["layered"]
      732 SETTABLE                         R10 R8 R9
      733 SETTABLEKS                       R8 R7 K357 ["MARKETPLACE_PUBLISH_ASSET_TYPE_TO_MAKEUP_ASSET_TYPE"]
      735 GETIMPORT                        R8 K284 [Color3.fromRGB]
      737 LOADN                            R9 205
      738 LOADN                            R10 205
      739 LOADN                            R11 204
      740 CALL                             R8 3 1
      741 SETTABLEKS                       R8 R7 K358 ["DEFAULT_SKIN_TONE"]
      743 RETURN                           R7 1
