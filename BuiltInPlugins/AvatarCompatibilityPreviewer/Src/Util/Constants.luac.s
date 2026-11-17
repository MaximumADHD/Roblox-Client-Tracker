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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagLookComposerMakeupAccessoryOrder"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 0 15
       43 LOADK                            R6 K13 ["Head"]
       44 LOADK                            R7 K14 ["UpperTorso"]
       45 LOADK                            R8 K15 ["LowerTorso"]
       46 LOADK                            R9 K16 ["LeftUpperLeg"]
       47 LOADK                            R10 K17 ["LeftLowerLeg"]
       48 LOADK                            R11 K18 ["LeftFoot"]
       49 LOADK                            R12 K19 ["RightUpperLeg"]
       50 LOADK                            R13 K20 ["RightLowerLeg"]
       51 LOADK                            R14 K21 ["RightFoot"]
       52 LOADK                            R15 K22 ["LeftUpperArm"]
       53 LOADK                            R16 K23 ["LeftLowerArm"]
       54 LOADK                            R17 K24 ["LeftHand"]
       55 LOADK                            R18 K25 ["RightUpperArm"]
       56 LOADK                            R19 K26 ["RightLowerArm"]
       57 LOADK                            R20 K27 ["RightHand"]
       58 SETLIST                          R5 R6 15 [1]
       60 NEWTABLE                         R6 0 7
       62 GETIMPORT                        R7 K31 [Enum.AssetType.ShirtAccessory]
       64 GETIMPORT                        R8 K33 [Enum.AssetType.TShirtAccessory]
       66 GETIMPORT                        R9 K35 [Enum.AssetType.JacketAccessory]
       68 GETIMPORT                        R10 K37 [Enum.AssetType.SweaterAccessory]
       70 GETIMPORT                        R11 K39 [Enum.AssetType.PantsAccessory]
       72 GETIMPORT                        R12 K41 [Enum.AssetType.ShortsAccessory]
       74 GETIMPORT                        R13 K43 [Enum.AssetType.DressSkirtAccessory]
       76 SETLIST                          R6 R7 7 [1]
       78 NEWTABLE                         R7 0 0
       80 MOVE                             R8 R3
       81 CALL                             R8 0 1
       82 JUMPIFNOT                        R8 ; [+42]
       83 GETTABLEKS                       R8 R1 K44 ["List"]
       85 GETTABLEKS                       R8 R8 K45 ["join"]
       87 NEWTABLE                         R9 0 5
       89 GETIMPORT                        R10 K47 [Enum.AssetType.FaceMakeup]
       91 GETIMPORT                        R11 K49 [Enum.AssetType.LipMakeup]
       93 GETIMPORT                        R12 K51 [Enum.AssetType.EyeMakeup]
       95 GETIMPORT                        R13 K53 [Enum.AssetType.LeftShoeAccessory]
       97 GETIMPORT                        R14 K55 [Enum.AssetType.RightShoeAccessory]
       99 SETLIST                          R9 R10 5 [1]
      101 MOVE                             R10 R6
      102 MOVE                             R12 R4
      103 CALL                             R12 0 1
      104 JUMPIFNOT                        R12 ; [+9]
      105 NEWTABLE                         R11 0 2
      107 GETIMPORT                        R12 K57 [Enum.AssetType.EyebrowAccessory]
      109 GETIMPORT                        R13 K59 [Enum.AssetType.EyelashAccessory]
      111 SETLIST                          R11 R12 2 [1]
      113 JUMP                             ; [+2]
      114 NEWTABLE                         R11 0 0
      116 CALL                             R8 3 1
      117 MOVE                             R9 R8
      118 LOADNIL                          R10
      119 LOADNIL                          R11
      120 FORGPREP                         R9
      121 LOADB                            R14 1
      122 SETTABLE                         R14 R7 R13
      123 FORGLOOP                         R9 2 ; [-3]
      125 NEWTABLE                         R8 128 0
      127 LOADK                            R9 K60 ["NoValidScaleError"]
      128 SETTABLEKS                       R9 R8 K61 ["ERROR_NO_VALID_SCALE_ERROR"]
      130 LOADK                            R9 K62 ["builtin"]
      131 SETTABLEKS                       R9 R8 K63 ["SOURCE_BUILTIN"]
      133 LOADK                            R9 K64 ["instance"]
      134 SETTABLEKS                       R9 R8 K65 ["SOURCE_INSTANCE"]
      136 LOADK                            R9 K66 ["marketplace"]
      137 SETTABLEKS                       R9 R8 K67 ["SOURCE_MARKETPLACE"]
      139 LOADK                            R9 K68 ["Assertion for Luau typechecking"]
      140 SETTABLEKS                       R9 R8 K69 ["LUAU_ANALYZE_ERROR"]
      142 LOADK                            R9 K70 ["rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"]
      143 SETTABLEKS                       R9 R8 K71 ["BODY_PREVIEW_PATH"]
      145 LOADK                            R9 K72 ["rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"]
      146 SETTABLEKS                       R9 R8 K73 ["HEAD_PREVIEW_PATH"]
      148 LOADK                            R9 K74 ["rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"]
      149 SETTABLEKS                       R9 R8 K75 ["PEDESTAL_PATH"]
      151 LOADK                            R9 K76 ["rbxasset://models/Thumbnails/MakeupCameras.rbxm"]
      152 SETTABLEKS                       R9 R8 K77 ["MAKEUP_CAMERAS_ASSET_PATH"]
      154 LOADK                            R9 K78 ["RBX_AvatarPreviewer_"]
      155 SETTABLEKS                       R9 R8 K79 ["ATTRIBUTE_PREFIX"]
      157 LOADK                            R9 K80 ["RBX_AutoSetup_OriginalScale"]
      158 SETTABLEKS                       R9 R8 K81 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
      160 LOADK                            R9 K82 ["RBX_AutoSetup_ScaleErrorList"]
      161 SETTABLEKS                       R9 R8 K83 ["ATTRIBUTE_SCALE_ERROR_LIST"]
      163 LOADK                            R9 K84 ["RBX_AutoSetupped"]
      164 SETTABLEKS                       R9 R8 K85 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      166 LOADK                            R9 K86 ["RBX_AvatarCreation"]
      167 SETTABLEKS                       R9 R8 K87 ["ATTRIBUTE_CREATED_BY_AVATAR_CREATION"]
      169 LOADK                            R9 K88 ["RBX_AvatarCreationJobId"]
      170 SETTABLEKS                       R9 R8 K89 ["ATTRIBUTE_AVATAR_CREATION_JOB_ID"]
      172 LOADK                            R9 K90 ["RBX_AvatarCreationPrompt"]
      173 SETTABLEKS                       R9 R8 K91 ["ATTRIBUTE_AVATAR_CREATION_PROMPT"]
      175 LOADK                            R9 K92 ["RBX_AutoSetupOriginalModelHash"]
      176 SETTABLEKS                       R9 R8 K93 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
      178 LOADK                            R9 K94 ["RBX_ImportMethod"]
      179 SETTABLEKS                       R9 R8 K95 ["ATTRIBUTE_IMPORT_METHOD"]
      181 LOADK                            R9 K96 ["RBX_AutoSetupInputAsset"]
      182 SETTABLEKS                       R9 R8 K97 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      184 LOADK                            R9 K98 ["RBX_OriginalBuiltinAssetId"]
      185 SETTABLEKS                       R9 R8 K99 ["ATTRIBUTE_ORIGINAL_BUILTIN_ASSET_ID"]
      187 LOADK                            R9 K100 ["RBX_IsPreviewAccessory"]
      188 SETTABLEKS                       R9 R8 K101 ["ATTRIBUTE_IS_PREVIEW_ACCESSORY"]
      190 LOADK                            R9 K102 ["RBX_AutoSetup_AssetConfiguration"]
      191 SETTABLEKS                       R9 R8 K103 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
      193 LOADK                            R9 K104 ["RBX_AvatarPreviewer_shouldReimport"]
      194 SETTABLEKS                       R9 R8 K105 ["ATTRIBUTE_SHOULD_REIMPORT"]
      196 LOADK                            R9 K106 ["RBX_AvatarPreviewer_Platform"]
      197 SETTABLEKS                       R9 R8 K107 ["ATTRIBUTE_PLATFORM"]
      199 LOADK                            R9 K108 ["AutoSetup_OriginalObjectInstance"]
      200 SETTABLEKS                       R9 R8 K109 ["ORIGINAL_INSTANCE_VALUE_NAME"]
      202 LOADK                            R9 K110 ["AvatarPreviewer_OriginalObjectReference_"]
      203 SETTABLEKS                       R9 R8 K111 ["REFERENCE_VALUE_NAME"]
      205 LOADK                            R9 K112 ["AvatarPreviewer_DisplayName"]
      206 SETTABLEKS                       R9 R8 K113 ["DISPLAY_NAME"]
      208 LOADK                            R9 K114 ["AutoSetupJobInitialization"]
      209 SETTABLEKS                       R9 R8 K115 ["AUTO_SETUP_JOB_INITIALIZATION"]
      211 NEWTABLE                         R9 32 0
      213 GETIMPORT                        R10 K117 [Enum.AssetType.BackAccessory]
      215 GETIMPORT                        R11 K120 [Enum.AccessoryType.Back]
      217 SETTABLE                         R11 R9 R10
      218 GETIMPORT                        R10 K43 [Enum.AssetType.DressSkirtAccessory]
      220 GETIMPORT                        R11 K122 [Enum.AccessoryType.DressSkirt]
      222 SETTABLE                         R11 R9 R10
      223 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      225 GETIMPORT                        R11 K124 [Enum.AccessoryType.Eyebrow]
      227 SETTABLE                         R11 R9 R10
      228 GETIMPORT                        R10 K59 [Enum.AssetType.EyelashAccessory]
      230 GETIMPORT                        R11 K126 [Enum.AccessoryType.Eyelash]
      232 SETTABLE                         R11 R9 R10
      233 GETIMPORT                        R10 K128 [Enum.AssetType.FaceAccessory]
      235 GETIMPORT                        R11 K130 [Enum.AccessoryType.Face]
      237 SETTABLE                         R11 R9 R10
      238 GETIMPORT                        R10 K132 [Enum.AssetType.FrontAccessory]
      240 GETIMPORT                        R11 K134 [Enum.AccessoryType.Front]
      242 SETTABLE                         R11 R9 R10
      243 GETIMPORT                        R10 K136 [Enum.AssetType.Gear]
      245 GETIMPORT                        R11 K138 [Enum.AccessoryType.Unknown]
      247 SETTABLE                         R11 R9 R10
      248 GETIMPORT                        R10 K140 [Enum.AssetType.HairAccessory]
      250 GETIMPORT                        R11 K142 [Enum.AccessoryType.Hair]
      252 SETTABLE                         R11 R9 R10
      253 GETIMPORT                        R10 K144 [Enum.AssetType.Hat]
      255 GETIMPORT                        R11 K145 [Enum.AccessoryType.Hat]
      257 SETTABLE                         R11 R9 R10
      258 GETIMPORT                        R10 K35 [Enum.AssetType.JacketAccessory]
      260 GETIMPORT                        R11 K147 [Enum.AccessoryType.Jacket]
      262 SETTABLE                         R11 R9 R10
      263 GETIMPORT                        R10 K53 [Enum.AssetType.LeftShoeAccessory]
      265 GETIMPORT                        R11 K149 [Enum.AccessoryType.LeftShoe]
      267 SETTABLE                         R11 R9 R10
      268 GETIMPORT                        R10 K151 [Enum.AssetType.NeckAccessory]
      270 GETIMPORT                        R11 K153 [Enum.AccessoryType.Neck]
      272 SETTABLE                         R11 R9 R10
      273 GETIMPORT                        R10 K39 [Enum.AssetType.PantsAccessory]
      275 GETIMPORT                        R11 K155 [Enum.AccessoryType.Pants]
      277 SETTABLE                         R11 R9 R10
      278 GETIMPORT                        R10 K55 [Enum.AssetType.RightShoeAccessory]
      280 GETIMPORT                        R11 K157 [Enum.AccessoryType.RightShoe]
      282 SETTABLE                         R11 R9 R10
      283 GETIMPORT                        R10 K31 [Enum.AssetType.ShirtAccessory]
      285 GETIMPORT                        R11 K159 [Enum.AccessoryType.Shirt]
      287 SETTABLE                         R11 R9 R10
      288 GETIMPORT                        R10 K161 [Enum.AssetType.ShoulderAccessory]
      290 GETIMPORT                        R11 K163 [Enum.AccessoryType.Shoulder]
      292 SETTABLE                         R11 R9 R10
      293 GETIMPORT                        R10 K41 [Enum.AssetType.ShortsAccessory]
      295 GETIMPORT                        R11 K165 [Enum.AccessoryType.Shorts]
      297 SETTABLE                         R11 R9 R10
      298 GETIMPORT                        R10 K37 [Enum.AssetType.SweaterAccessory]
      300 GETIMPORT                        R11 K167 [Enum.AccessoryType.Sweater]
      302 SETTABLE                         R11 R9 R10
      303 GETIMPORT                        R10 K33 [Enum.AssetType.TShirtAccessory]
      305 GETIMPORT                        R11 K169 [Enum.AccessoryType.TShirt]
      307 SETTABLE                         R11 R9 R10
      308 GETIMPORT                        R10 K171 [Enum.AssetType.WaistAccessory]
      310 GETIMPORT                        R11 K173 [Enum.AccessoryType.Waist]
      312 SETTABLE                         R11 R9 R10
      313 SETTABLEKS                       R9 R8 K174 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
      315 NEWTABLE                         R9 4 0
      317 GETIMPORT                        R10 K47 [Enum.AssetType.FaceMakeup]
      319 GETIMPORT                        R11 K176 [Enum.MakeupType.Face]
      321 SETTABLE                         R11 R9 R10
      322 GETIMPORT                        R10 K49 [Enum.AssetType.LipMakeup]
      324 GETIMPORT                        R11 K178 [Enum.MakeupType.Lip]
      326 SETTABLE                         R11 R9 R10
      327 GETIMPORT                        R10 K51 [Enum.AssetType.EyeMakeup]
      329 GETIMPORT                        R11 K180 [Enum.MakeupType.Eye]
      331 SETTABLE                         R11 R9 R10
      332 SETTABLEKS                       R9 R8 K181 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
      334 NEWTABLE                         R9 0 50
      336 LOADK                            R10 K182 ["ChinRaiser"]
      337 LOADK                            R11 K183 ["ChinRaiserUpperLip"]
      338 LOADK                            R12 K184 ["Corrugator"]
      339 LOADK                            R13 K185 ["EyesLookDown"]
      340 LOADK                            R14 K186 ["EyesLookLeft"]
      341 LOADK                            R15 K187 ["EyesLookRight"]
      342 LOADK                            R16 K188 ["EyesLookUp"]
      343 LOADK                            R17 K189 ["FlatPucker"]
      344 LOADK                            R18 K190 ["Funneler"]
      345 LOADK                            R19 K191 ["JawDrop"]
      346 LOADK                            R20 K192 ["JawLeft"]
      347 LOADK                            R21 K193 ["JawRight"]
      348 LOADK                            R22 K194 ["LeftBrowLowerer"]
      349 LOADK                            R23 K195 ["LeftCheekPuff"]
      350 LOADK                            R24 K196 ["LeftCheekRaiser"]
      351 LOADK                            R25 K197 ["LeftDimpler"]
      352 SETLIST                          R9 R10 16 [1]
      354 LOADK                            R10 K198 ["LeftEyeClosed"]
      355 LOADK                            R11 K199 ["LeftEyeUpperLidRaiser"]
      356 LOADK                            R12 K200 ["LeftInnerBrowRaiser"]
      357 LOADK                            R13 K201 ["LeftLipCornerDown"]
      358 LOADK                            R14 K202 ["LeftLipCornerPuller"]
      359 LOADK                            R15 K203 ["LeftLipStretcher"]
      360 LOADK                            R16 K204 ["LeftLowerLipDepressor"]
      361 LOADK                            R17 K205 ["LeftNoseWrinkler"]
      362 LOADK                            R18 K206 ["LeftOuterBrowRaiser"]
      363 LOADK                            R19 K207 ["LeftUpperLipRaiser"]
      364 LOADK                            R20 K208 ["LipPresser"]
      365 LOADK                            R21 K209 ["LipsTogether"]
      366 LOADK                            R22 K210 ["LowerLipSuck"]
      367 LOADK                            R23 K211 ["MouthLeft"]
      368 LOADK                            R24 K212 ["MouthRight"]
      369 LOADK                            R25 K213 ["Pucker"]
      370 SETLIST                          R9 R10 16 [17]
      372 LOADK                            R10 K214 ["RightBrowLowerer"]
      373 LOADK                            R11 K215 ["RightCheekPuff"]
      374 LOADK                            R12 K216 ["RightCheekRaiser"]
      375 LOADK                            R13 K217 ["RightDimpler"]
      376 LOADK                            R14 K218 ["RightEyeClosed"]
      377 LOADK                            R15 K219 ["RightEyeUpperLidRaiser"]
      378 LOADK                            R16 K220 ["RightInnerBrowRaiser"]
      379 LOADK                            R17 K221 ["RightLipCornerDown"]
      380 LOADK                            R18 K222 ["RightLipCornerPuller"]
      381 LOADK                            R19 K223 ["RightLipStretcher"]
      382 LOADK                            R20 K224 ["RightLowerLipDepressor"]
      383 LOADK                            R21 K225 ["RightNoseWrinkler"]
      384 LOADK                            R22 K226 ["RightOuterBrowRaiser"]
      385 LOADK                            R23 K227 ["RightUpperLipRaiser"]
      386 LOADK                            R24 K228 ["TongueDown"]
      387 LOADK                            R25 K229 ["TongueOut"]
      388 SETLIST                          R9 R10 16 [33]
      390 LOADK                            R10 K230 ["TongueUp"]
      391 LOADK                            R11 K231 ["UpperLipSuck"]
      392 SETLIST                          R9 R10 2 [49]
      394 SETTABLEKS                       R9 R8 K232 ["FACE_CONTROLS_PROPERTIES"]
      396 SETTABLEKS                       R5 R8 K233 ["LIMBS"]
      398 GETTABLEKS                       R9 R1 K44 ["List"]
      400 GETTABLEKS                       R9 R9 K45 ["join"]
      402 MOVE                             R10 R5
      403 NEWTABLE                         R11 0 2
      405 LOADK                            R12 K234 ["Handle"]
      406 LOADK                            R13 K235 ["HumanoidRootPart"]
      407 SETLIST                          R11 R12 2 [1]
      409 CALL                             R9 2 1
      410 SETTABLEKS                       R9 R8 K236 ["ALL_ALLOWED_PART_NAMES"]
      412 DUPTABLE                         R9 K246 [{["BodyPoints"] = "AvatarPreviewerEditingBodyPoints", ["EditingToolbar"] = "AvatarPreviewerEditingToolbar", ["BodyPointsToolToolbar"] = "AvatarPreviewerBodyPointsToolToolbar", ["CageEditingToolToolbar"] = "AvatarPreviewerCageEditingToolToolbar", ["MeshEditingModuleControlPointsAdornments"] = "MeshEditingModuleControlPointsAdornments"}]
      413 SETTABLEKS                       R9 R8 K247 ["EDITING_TOOLS_GUI_NAMES"]
      415 LOADK                            R9 K248 ["AvatarPreviewerClonedDummy"]
      416 SETTABLEKS                       R9 R8 K249 ["CLONED_DUMMY_NAME"]
      418 LOADK                            R9 K250 ["OriginalPosition"]
      419 SETTABLEKS                       R9 R8 K251 ["ORIGINAL_POSITION_VALUE"]
      421 LOADK                            R9 K252 ["NoSelection"]
      422 SETTABLEKS                       R9 R8 K253 ["PHONY_NO_SELECTION"]
      424 LOADK                            R9 K254 ["AvatarPreviewerMakeup"]
      425 SETTABLEKS                       R9 R8 K255 ["MAKEUP_FOLDER_NAME"]
      427 LOADK                            R9 K256 ["AvatarPreviewerMakeupDecal"]
      428 SETTABLEKS                       R9 R8 K257 ["MAKEUP_DECAL_NAME"]
      430 LOADK                            R9 K258 ["RenderRig"]
      431 SETTABLEKS                       R9 R8 K259 ["RENDER_RIG_NAME"]
      433 LOADK                            R9 K260 ["MakeupPreviewWorldModel"]
      434 SETTABLEKS                       R9 R8 K261 ["MAKEUP_PREVIEW_WORLD_MODEL_NAME"]
      436 LOADN                            R9 150
      437 SETTABLEKS                       R9 R8 K262 ["LOOK_PREVIEW_SIZE"]
      439 LOADK                            R9 K263 [1.8]
      440 SETTABLEKS                       R9 R8 K264 ["LOOK_COMPOSER_INPUT_WIDTH_SCALE"]
      442 GETIMPORT                        R9 K267 [CFrame.lookAt]
      444 LOADK                            R10 K268 [{-5.2, 1, -9.2}]
      445 LOADK                            R11 K269 [{0.5, -1.2, 0.85}]
      446 CALL                             R9 2 1
      447 SETTABLEKS                       R9 R8 K270 ["DEFAULT_CAMERA_ANGLE"]
      449 DUPTABLE                         R9 K285 [{["Eyelashes"] = 1, ["Eyebrows"] = 2, ["Face"] = 3, ["Hair"] = 4, ["Shoes"] = 5, ["Bottoms"] = 6, ["Tops"] = 7, ["Outerwear"] = 8}]
      450 SETTABLEKS                       R9 R8 K286 ["PREFERRED_LAYERS"]
      452 DUPTABLE                         R9 K289 [{["Positions"] = 1, ["Dummy"] = 2}]
      453 SETTABLEKS                       R9 R8 K290 ["FOCUS_CALLBACK_PRIORITIES"]
      455 GETIMPORT                        R9 K293 [Color3.fromRGB]
      457 LOADN                            R10 130
      458 LOADN                            R11 130
      459 LOADN                            R12 130
      460 CALL                             R9 3 1
      461 SETTABLEKS                       R9 R8 K294 ["DEFAULT_SKIN_COLOR"]
      463 LOADK                            R9 K295 ["_geo"]
      464 SETTABLEKS                       R9 R8 K296 ["BODY_MESH_SUFFIX"]
      466 LOADK                            R9 K297 ["_autosetup"]
      467 SETTABLEKS                       R9 R8 K298 ["OUTPUT_MODEL_SUFFIX"]
      469 DUPTABLE                         R9 K304 [{["Head"] = "Head", ["UpperTorso"] = "Torso", ["LowerTorso"] = "Torso", ["LeftUpperArm"] = "LeftArm", ["LeftLowerArm"] = "LeftArm", ["LeftHand"] = "LeftArm", ["RightUpperArm"] = "RightArm", ["RightLowerArm"] = "RightArm", ["RightHand"] = "RightArm", ["LeftUpperLeg"] = "LeftLeg", ["LeftLowerLeg"] = "LeftLeg", ["LeftFoot"] = "LeftLeg", ["RightUpperLeg"] = "RightLeg", ["RightLowerLeg"] = "RightLeg", ["RightFoot"] = "RightLeg"}]
      470 SETTABLEKS                       R9 R8 K305 ["BODY_PART_TO_LIMB_NAME"]
      472 LOADK                            R9 K306 [0.7]
      473 SETTABLEKS                       R9 R8 K307 ["FALLOFF_CURSOR_ADJUSTMENT"]
      475 LOADK                            R9 K308 [0.1]
      476 SETTABLEKS                       R9 R8 K309 ["THROTTLE_DELAY"]
      478 LOADK                            R9 K310 [16562317918]
      479 SETTABLEKS                       R9 R8 K311 ["IDLE_ANIMATION_ID"]
      481 LOADK                            R9 K312 ["Avatar Setup Add Items"]
      482 SETTABLEKS                       R9 R8 K313 ["WAYPOINT_NAME_ADD_ITEMS"]
      484 LOADK                            R9 K314 ["Avatar Setup Select Palettes"]
      485 SETTABLEKS                       R9 R8 K315 ["WAYPOINT_NAME_DISAMBIGUATION"]
      487 LOADK                            R9 K316 ["Avatar Setup Edit Cage Mesh"]
      488 SETTABLEKS                       R9 R8 K317 ["WAYPOINT_NAME_EDIT_CAGE_MESH"]
      490 DUPTABLE                         R9 K320 [{"Radius", "Falloff"}]
      491 DUPTABLE                         R10 K324 [{["minimum"] = 0.01, ["maximum"] = 2}]
      492 SETTABLEKS                       R10 R9 K318 ["Radius"]
      494 DUPTABLE                         R10 K326 [{["minimum"] = 1, ["maximum"] = 100}]
      495 SETTABLEKS                       R10 R9 K319 ["Falloff"]
      497 SETTABLEKS                       R9 R8 K327 ["CAGE_BRUSH_SETTINGS"]
      499 LOADK                            R9 K328 [12006493372]
      500 SETTABLEKS                       R9 R8 K329 ["TEMPLATE_BODY_OUTFIT_ID"]
      502 DUPTABLE                         R9 K336 [{["Head"] = 72510165520892, ["Torso"] = 116488623753864, ["LeftArm"] = 133986177057036, ["RightArm"] = 101158810738872, ["LeftLeg"] = 78536356632840, ["RightLeg"] = 129290873866258}]
      503 SETTABLEKS                       R9 R8 K337 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
      505 NEWTABLE                         R9 0 5
      507 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      509 GETIMPORT                        R11 K59 [Enum.AssetType.EyelashAccessory]
      511 GETIMPORT                        R12 K47 [Enum.AssetType.FaceMakeup]
      513 GETIMPORT                        R13 K49 [Enum.AssetType.LipMakeup]
      515 GETIMPORT                        R14 K51 [Enum.AssetType.EyeMakeup]
      517 SETLIST                          R9 R10 5 [1]
      519 SETTABLEKS                       R9 R8 K338 ["MAKEUP_ASSET_TYPES"]
      521 SETTABLEKS                       R6 R8 K339 ["CLOTHING_ASSET_TYPES"]
      523 SETTABLEKS                       R7 R8 K340 ["ASSET_TYPES_WITH_ORDER_SET"]
      525 NEWTABLE                         R9 0 12
      527 GETIMPORT                        R10 K144 [Enum.AssetType.Hat]
      529 GETIMPORT                        R11 K140 [Enum.AssetType.HairAccessory]
      531 GETIMPORT                        R12 K128 [Enum.AssetType.FaceAccessory]
      533 GETIMPORT                        R13 K151 [Enum.AssetType.NeckAccessory]
      535 GETIMPORT                        R14 K161 [Enum.AssetType.ShoulderAccessory]
      537 GETIMPORT                        R15 K132 [Enum.AssetType.FrontAccessory]
      539 GETIMPORT                        R16 K117 [Enum.AssetType.BackAccessory]
      541 GETIMPORT                        R17 K171 [Enum.AssetType.WaistAccessory]
      543 GETIMPORT                        R18 K53 [Enum.AssetType.LeftShoeAccessory]
      545 GETIMPORT                        R19 K55 [Enum.AssetType.RightShoeAccessory]
      547 GETIMPORT                        R20 K57 [Enum.AssetType.EyebrowAccessory]
      549 GETIMPORT                        R21 K59 [Enum.AssetType.EyelashAccessory]
      551 SETLIST                          R9 R10 12 [1]
      553 SETTABLEKS                       R9 R8 K341 ["ACCESSORY_ASSET_TYPES"]
      555 GETTABLEKS                       R9 R1 K342 ["Dictionary"]
      557 GETTABLEKS                       R9 R9 K45 ["join"]
      559 NEWTABLE                         R10 32 0
      561 GETIMPORT                        R11 K144 [Enum.AssetType.Hat]
      563 GETTABLEKS                       R11 R11 K343 ["Name"]
      565 LOADK                            R12 K13 ["Head"]
      566 SETTABLE                         R12 R10 R11
      567 GETIMPORT                        R11 K140 [Enum.AssetType.HairAccessory]
      569 GETTABLEKS                       R11 R11 K343 ["Name"]
      571 LOADK                            R12 K141 ["Hair"]
      572 SETTABLE                         R12 R10 R11
      573 GETIMPORT                        R11 K128 [Enum.AssetType.FaceAccessory]
      575 GETTABLEKS                       R11 R11 K343 ["Name"]
      577 LOADK                            R12 K129 ["Face"]
      578 SETTABLE                         R12 R10 R11
      579 GETIMPORT                        R11 K151 [Enum.AssetType.NeckAccessory]
      581 GETTABLEKS                       R11 R11 K343 ["Name"]
      583 LOADK                            R12 K152 ["Neck"]
      584 SETTABLE                         R12 R10 R11
      585 GETIMPORT                        R11 K161 [Enum.AssetType.ShoulderAccessory]
      587 GETTABLEKS                       R11 R11 K343 ["Name"]
      589 LOADK                            R12 K162 ["Shoulder"]
      590 SETTABLE                         R12 R10 R11
      591 GETIMPORT                        R11 K132 [Enum.AssetType.FrontAccessory]
      593 GETTABLEKS                       R11 R11 K343 ["Name"]
      595 LOADK                            R12 K133 ["Front"]
      596 SETTABLE                         R12 R10 R11
      597 GETIMPORT                        R11 K117 [Enum.AssetType.BackAccessory]
      599 GETTABLEKS                       R11 R11 K343 ["Name"]
      601 LOADK                            R12 K119 ["Back"]
      602 SETTABLE                         R12 R10 R11
      603 GETIMPORT                        R11 K171 [Enum.AssetType.WaistAccessory]
      605 GETTABLEKS                       R11 R11 K343 ["Name"]
      607 LOADK                            R12 K172 ["Waist"]
      608 SETTABLE                         R12 R10 R11
      609 GETIMPORT                        R11 K344 [Enum.AssetType.Torso]
      611 GETTABLEKS                       R11 R11 K343 ["Name"]
      613 LOADK                            R12 K299 ["Torso"]
      614 SETTABLE                         R12 R10 R11
      615 GETIMPORT                        R11 K345 [Enum.AssetType.RightArm]
      617 GETTABLEKS                       R11 R11 K343 ["Name"]
      619 LOADK                            R12 K301 ["RightArm"]
      620 SETTABLE                         R12 R10 R11
      621 GETIMPORT                        R11 K346 [Enum.AssetType.LeftArm]
      623 GETTABLEKS                       R11 R11 K343 ["Name"]
      625 LOADK                            R12 K300 ["LeftArm"]
      626 SETTABLE                         R12 R10 R11
      627 GETIMPORT                        R11 K347 [Enum.AssetType.LeftLeg]
      629 GETTABLEKS                       R11 R11 K343 ["Name"]
      631 LOADK                            R12 K302 ["LeftLeg"]
      632 SETTABLE                         R12 R10 R11
      633 GETIMPORT                        R11 K348 [Enum.AssetType.RightLeg]
      635 GETTABLEKS                       R11 R11 K343 ["Name"]
      637 LOADK                            R12 K303 ["RightLeg"]
      638 SETTABLE                         R12 R10 R11
      639 GETIMPORT                        R11 K350 [Enum.AssetType.DynamicHead]
      641 GETTABLEKS                       R11 R11 K343 ["Name"]
      643 LOADK                            R12 K351 ["HeadBodyPart"]
      644 SETTABLE                         R12 R10 R11
      645 GETIMPORT                        R11 K33 [Enum.AssetType.TShirtAccessory]
      647 GETTABLEKS                       R11 R11 K343 ["Name"]
      649 LOADK                            R12 K352 ["TShirts"]
      650 SETTABLE                         R12 R10 R11
      651 GETIMPORT                        R11 K31 [Enum.AssetType.ShirtAccessory]
      653 GETTABLEKS                       R11 R11 K343 ["Name"]
      655 LOADK                            R12 K353 ["Shirts"]
      656 SETTABLE                         R12 R10 R11
      657 GETIMPORT                        R11 K39 [Enum.AssetType.PantsAccessory]
      659 GETTABLEKS                       R11 R11 K343 ["Name"]
      661 LOADK                            R12 K154 ["Pants"]
      662 SETTABLE                         R12 R10 R11
      663 GETIMPORT                        R11 K35 [Enum.AssetType.JacketAccessory]
      665 GETTABLEKS                       R11 R11 K343 ["Name"]
      667 LOADK                            R12 K354 ["Jackets"]
      668 SETTABLE                         R12 R10 R11
      669 GETIMPORT                        R11 K37 [Enum.AssetType.SweaterAccessory]
      671 GETTABLEKS                       R11 R11 K343 ["Name"]
      673 LOADK                            R12 K355 ["Sweaters"]
      674 SETTABLE                         R12 R10 R11
      675 GETIMPORT                        R11 K41 [Enum.AssetType.ShortsAccessory]
      677 GETTABLEKS                       R11 R11 K343 ["Name"]
      679 LOADK                            R12 K164 ["Shorts"]
      680 SETTABLE                         R12 R10 R11
      681 GETIMPORT                        R11 K43 [Enum.AssetType.DressSkirtAccessory]
      683 GETTABLEKS                       R11 R11 K343 ["Name"]
      685 LOADK                            R12 K356 ["Skirts"]
      686 SETTABLE                         R12 R10 R11
      687 GETIMPORT                        R11 K57 [Enum.AssetType.EyebrowAccessory]
      689 GETTABLEKS                       R11 R11 K343 ["Name"]
      691 LOADK                            R12 K273 ["Eyebrows"]
      692 SETTABLE                         R12 R10 R11
      693 GETIMPORT                        R11 K59 [Enum.AssetType.EyelashAccessory]
      695 GETTABLEKS                       R11 R11 K343 ["Name"]
      697 LOADK                            R12 K271 ["Eyelashes"]
      698 SETTABLE                         R12 R10 R11
      699 GETIMPORT                        R11 K47 [Enum.AssetType.FaceMakeup]
      701 GETTABLEKS                       R11 R11 K343 ["Name"]
      703 LOADK                            R12 K46 ["FaceMakeup"]
      704 SETTABLE                         R12 R10 R11
      705 GETIMPORT                        R11 K49 [Enum.AssetType.LipMakeup]
      707 GETTABLEKS                       R11 R11 K343 ["Name"]
      709 LOADK                            R12 K48 ["LipMakeup"]
      710 SETTABLE                         R12 R10 R11
      711 GETIMPORT                        R11 K51 [Enum.AssetType.EyeMakeup]
      713 GETTABLEKS                       R11 R11 K343 ["Name"]
      715 LOADK                            R12 K50 ["EyeMakeup"]
      716 SETTABLE                         R12 R10 R11
      717 MOVE                             R12 R2
      718 CALL                             R12 0 1
      719 JUMPIFNOT                        R12 ; [+21]
      720 NEWTABLE                         R11 4 0
      722 GETIMPORT                        R12 K357 [Enum.AssetType.Shirt]
      724 GETTABLEKS                       R12 R12 K343 ["Name"]
      726 LOADK                            R13 K358 ["ClassicShirts"]
      727 SETTABLE                         R13 R11 R12
      728 GETIMPORT                        R12 K359 [Enum.AssetType.TShirt]
      730 GETTABLEKS                       R12 R12 K343 ["Name"]
      732 LOADK                            R13 K360 ["ClassicTShirts"]
      733 SETTABLE                         R13 R11 R12
      734 GETIMPORT                        R12 K361 [Enum.AssetType.Pants]
      736 GETTABLEKS                       R12 R12 K343 ["Name"]
      738 LOADK                            R13 K362 ["ClassicPants"]
      739 SETTABLE                         R13 R11 R12
      740 JUMP                             ; [+2]
      741 NEWTABLE                         R11 0 0
      743 CALL                             R9 2 1
      744 SETTABLEKS                       R9 R8 K363 ["MARKETPLACE_ASSET_TYPE_TO_PALETTE_KEY"]
      746 NEWTABLE                         R9 8 0
      748 GETIMPORT                        R10 K47 [Enum.AssetType.FaceMakeup]
      750 LOADK                            R11 K364 ["makeup"]
      751 SETTABLE                         R11 R9 R10
      752 GETIMPORT                        R10 K49 [Enum.AssetType.LipMakeup]
      754 LOADK                            R11 K364 ["makeup"]
      755 SETTABLE                         R11 R9 R10
      756 GETIMPORT                        R10 K51 [Enum.AssetType.EyeMakeup]
      758 LOADK                            R11 K364 ["makeup"]
      759 SETTABLE                         R11 R9 R10
      760 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      762 LOADK                            R11 K365 ["layered"]
      763 SETTABLE                         R11 R9 R10
      764 GETIMPORT                        R10 K59 [Enum.AssetType.EyelashAccessory]
      766 LOADK                            R11 K365 ["layered"]
      767 SETTABLE                         R11 R9 R10
      768 SETTABLEKS                       R9 R8 K366 ["MARKETPLACE_PUBLISH_ASSET_TYPE_TO_MAKEUP_ASSET_TYPE"]
      770 NEWTABLE                         R9 8 0
      772 GETIMPORT                        R10 K33 [Enum.AssetType.TShirtAccessory]
      774 LOADK                            R11 K367 ["Top"]
      775 SETTABLE                         R11 R9 R10
      776 GETIMPORT                        R10 K31 [Enum.AssetType.ShirtAccessory]
      778 LOADK                            R11 K367 ["Top"]
      779 SETTABLE                         R11 R9 R10
      780 GETIMPORT                        R10 K37 [Enum.AssetType.SweaterAccessory]
      782 LOADK                            R11 K367 ["Top"]
      783 SETTABLE                         R11 R9 R10
      784 GETIMPORT                        R10 K39 [Enum.AssetType.PantsAccessory]
      786 LOADK                            R11 K368 ["Bottom"]
      787 SETTABLE                         R11 R9 R10
      788 GETIMPORT                        R10 K41 [Enum.AssetType.ShortsAccessory]
      790 LOADK                            R11 K368 ["Bottom"]
      791 SETTABLE                         R11 R9 R10
      792 GETIMPORT                        R10 K43 [Enum.AssetType.DressSkirtAccessory]
      794 LOADK                            R11 K368 ["Bottom"]
      795 SETTABLE                         R11 R9 R10
      796 SETTABLEKS                       R9 R8 K369 ["MARKETPLACE_CLOTHING_SLOTS"]
      798 GETIMPORT                        R9 K293 [Color3.fromRGB]
      800 LOADN                            R10 205
      801 LOADN                            R11 205
      802 LOADN                            R12 204
      803 CALL                             R9 3 1
      804 SETTABLEKS                       R9 R8 K370 ["DEFAULT_SKIN_TONE"]
      806 RETURN                           R8 1
