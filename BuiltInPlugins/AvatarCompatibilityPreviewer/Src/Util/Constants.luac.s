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
      125 NEWTABLE                         R8 64 0
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
      166 LOADK                            R9 K86 ["RBX_AutoSetupOriginalModelHash"]
      167 SETTABLEKS                       R9 R8 K87 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
      169 LOADK                            R9 K88 ["RBX_ImportMethod"]
      170 SETTABLEKS                       R9 R8 K89 ["ATTRIBUTE_IMPORT_METHOD"]
      172 LOADK                            R9 K90 ["RBX_AutoSetupInputAsset"]
      173 SETTABLEKS                       R9 R8 K91 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      175 LOADK                            R9 K92 ["RBX_OriginalBuiltinAssetId"]
      176 SETTABLEKS                       R9 R8 K93 ["ATTRIBUTE_ORIGINAL_BUILTIN_ASSET_ID"]
      178 LOADK                            R9 K94 ["RBX_IsPreviewAccessory"]
      179 SETTABLEKS                       R9 R8 K95 ["ATTRIBUTE_IS_PREVIEW_ACCESSORY"]
      181 LOADK                            R9 K96 ["RBX_AutoSetup_AssetConfiguration"]
      182 SETTABLEKS                       R9 R8 K97 ["ATTRIBUTE_ASSET_CLASSIFICATION"]
      184 LOADK                            R9 K98 ["RBX_AvatarPreviewer_shouldReimport"]
      185 SETTABLEKS                       R9 R8 K99 ["ATTRIBUTE_SHOULD_REIMPORT"]
      187 LOADK                            R9 K100 ["AutoSetup_OriginalObjectInstance"]
      188 SETTABLEKS                       R9 R8 K101 ["ORIGINAL_INSTANCE_VALUE_NAME"]
      190 LOADK                            R9 K102 ["AvatarPreviewer_OriginalObjectReference_"]
      191 SETTABLEKS                       R9 R8 K103 ["REFERENCE_VALUE_NAME"]
      193 LOADK                            R9 K104 ["AvatarPreviewer_DisplayName"]
      194 SETTABLEKS                       R9 R8 K105 ["DISPLAY_NAME"]
      196 LOADK                            R9 K106 ["AutoSetupJobInitialization"]
      197 SETTABLEKS                       R9 R8 K107 ["AUTO_SETUP_JOB_INITIALIZATION"]
      199 NEWTABLE                         R9 32 0
      201 GETIMPORT                        R10 K109 [Enum.AssetType.BackAccessory]
      203 GETIMPORT                        R11 K112 [Enum.AccessoryType.Back]
      205 SETTABLE                         R11 R9 R10
      206 GETIMPORT                        R10 K43 [Enum.AssetType.DressSkirtAccessory]
      208 GETIMPORT                        R11 K114 [Enum.AccessoryType.DressSkirt]
      210 SETTABLE                         R11 R9 R10
      211 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      213 GETIMPORT                        R11 K116 [Enum.AccessoryType.Eyebrow]
      215 SETTABLE                         R11 R9 R10
      216 GETIMPORT                        R10 K59 [Enum.AssetType.EyelashAccessory]
      218 GETIMPORT                        R11 K118 [Enum.AccessoryType.Eyelash]
      220 SETTABLE                         R11 R9 R10
      221 GETIMPORT                        R10 K120 [Enum.AssetType.FaceAccessory]
      223 GETIMPORT                        R11 K122 [Enum.AccessoryType.Face]
      225 SETTABLE                         R11 R9 R10
      226 GETIMPORT                        R10 K124 [Enum.AssetType.FrontAccessory]
      228 GETIMPORT                        R11 K126 [Enum.AccessoryType.Front]
      230 SETTABLE                         R11 R9 R10
      231 GETIMPORT                        R10 K128 [Enum.AssetType.Gear]
      233 GETIMPORT                        R11 K130 [Enum.AccessoryType.Unknown]
      235 SETTABLE                         R11 R9 R10
      236 GETIMPORT                        R10 K132 [Enum.AssetType.HairAccessory]
      238 GETIMPORT                        R11 K134 [Enum.AccessoryType.Hair]
      240 SETTABLE                         R11 R9 R10
      241 GETIMPORT                        R10 K136 [Enum.AssetType.Hat]
      243 GETIMPORT                        R11 K137 [Enum.AccessoryType.Hat]
      245 SETTABLE                         R11 R9 R10
      246 GETIMPORT                        R10 K35 [Enum.AssetType.JacketAccessory]
      248 GETIMPORT                        R11 K139 [Enum.AccessoryType.Jacket]
      250 SETTABLE                         R11 R9 R10
      251 GETIMPORT                        R10 K53 [Enum.AssetType.LeftShoeAccessory]
      253 GETIMPORT                        R11 K141 [Enum.AccessoryType.LeftShoe]
      255 SETTABLE                         R11 R9 R10
      256 GETIMPORT                        R10 K143 [Enum.AssetType.NeckAccessory]
      258 GETIMPORT                        R11 K145 [Enum.AccessoryType.Neck]
      260 SETTABLE                         R11 R9 R10
      261 GETIMPORT                        R10 K39 [Enum.AssetType.PantsAccessory]
      263 GETIMPORT                        R11 K147 [Enum.AccessoryType.Pants]
      265 SETTABLE                         R11 R9 R10
      266 GETIMPORT                        R10 K55 [Enum.AssetType.RightShoeAccessory]
      268 GETIMPORT                        R11 K149 [Enum.AccessoryType.RightShoe]
      270 SETTABLE                         R11 R9 R10
      271 GETIMPORT                        R10 K31 [Enum.AssetType.ShirtAccessory]
      273 GETIMPORT                        R11 K151 [Enum.AccessoryType.Shirt]
      275 SETTABLE                         R11 R9 R10
      276 GETIMPORT                        R10 K153 [Enum.AssetType.ShoulderAccessory]
      278 GETIMPORT                        R11 K155 [Enum.AccessoryType.Shoulder]
      280 SETTABLE                         R11 R9 R10
      281 GETIMPORT                        R10 K41 [Enum.AssetType.ShortsAccessory]
      283 GETIMPORT                        R11 K157 [Enum.AccessoryType.Shorts]
      285 SETTABLE                         R11 R9 R10
      286 GETIMPORT                        R10 K37 [Enum.AssetType.SweaterAccessory]
      288 GETIMPORT                        R11 K159 [Enum.AccessoryType.Sweater]
      290 SETTABLE                         R11 R9 R10
      291 GETIMPORT                        R10 K33 [Enum.AssetType.TShirtAccessory]
      293 GETIMPORT                        R11 K161 [Enum.AccessoryType.TShirt]
      295 SETTABLE                         R11 R9 R10
      296 GETIMPORT                        R10 K163 [Enum.AssetType.WaistAccessory]
      298 GETIMPORT                        R11 K165 [Enum.AccessoryType.Waist]
      300 SETTABLE                         R11 R9 R10
      301 SETTABLEKS                       R9 R8 K166 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
      303 NEWTABLE                         R9 4 0
      305 GETIMPORT                        R10 K47 [Enum.AssetType.FaceMakeup]
      307 GETIMPORT                        R11 K168 [Enum.MakeupType.Face]
      309 SETTABLE                         R11 R9 R10
      310 GETIMPORT                        R10 K49 [Enum.AssetType.LipMakeup]
      312 GETIMPORT                        R11 K170 [Enum.MakeupType.Lip]
      314 SETTABLE                         R11 R9 R10
      315 GETIMPORT                        R10 K51 [Enum.AssetType.EyeMakeup]
      317 GETIMPORT                        R11 K172 [Enum.MakeupType.Eye]
      319 SETTABLE                         R11 R9 R10
      320 SETTABLEKS                       R9 R8 K173 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
      322 NEWTABLE                         R9 0 50
      324 LOADK                            R10 K174 ["ChinRaiser"]
      325 LOADK                            R11 K175 ["ChinRaiserUpperLip"]
      326 LOADK                            R12 K176 ["Corrugator"]
      327 LOADK                            R13 K177 ["EyesLookDown"]
      328 LOADK                            R14 K178 ["EyesLookLeft"]
      329 LOADK                            R15 K179 ["EyesLookRight"]
      330 LOADK                            R16 K180 ["EyesLookUp"]
      331 LOADK                            R17 K181 ["FlatPucker"]
      332 LOADK                            R18 K182 ["Funneler"]
      333 LOADK                            R19 K183 ["JawDrop"]
      334 LOADK                            R20 K184 ["JawLeft"]
      335 LOADK                            R21 K185 ["JawRight"]
      336 LOADK                            R22 K186 ["LeftBrowLowerer"]
      337 LOADK                            R23 K187 ["LeftCheekPuff"]
      338 LOADK                            R24 K188 ["LeftCheekRaiser"]
      339 LOADK                            R25 K189 ["LeftDimpler"]
      340 SETLIST                          R9 R10 16 [1]
      342 LOADK                            R10 K190 ["LeftEyeClosed"]
      343 LOADK                            R11 K191 ["LeftEyeUpperLidRaiser"]
      344 LOADK                            R12 K192 ["LeftInnerBrowRaiser"]
      345 LOADK                            R13 K193 ["LeftLipCornerDown"]
      346 LOADK                            R14 K194 ["LeftLipCornerPuller"]
      347 LOADK                            R15 K195 ["LeftLipStretcher"]
      348 LOADK                            R16 K196 ["LeftLowerLipDepressor"]
      349 LOADK                            R17 K197 ["LeftNoseWrinkler"]
      350 LOADK                            R18 K198 ["LeftOuterBrowRaiser"]
      351 LOADK                            R19 K199 ["LeftUpperLipRaiser"]
      352 LOADK                            R20 K200 ["LipPresser"]
      353 LOADK                            R21 K201 ["LipsTogether"]
      354 LOADK                            R22 K202 ["LowerLipSuck"]
      355 LOADK                            R23 K203 ["MouthLeft"]
      356 LOADK                            R24 K204 ["MouthRight"]
      357 LOADK                            R25 K205 ["Pucker"]
      358 SETLIST                          R9 R10 16 [17]
      360 LOADK                            R10 K206 ["RightBrowLowerer"]
      361 LOADK                            R11 K207 ["RightCheekPuff"]
      362 LOADK                            R12 K208 ["RightCheekRaiser"]
      363 LOADK                            R13 K209 ["RightDimpler"]
      364 LOADK                            R14 K210 ["RightEyeClosed"]
      365 LOADK                            R15 K211 ["RightEyeUpperLidRaiser"]
      366 LOADK                            R16 K212 ["RightInnerBrowRaiser"]
      367 LOADK                            R17 K213 ["RightLipCornerDown"]
      368 LOADK                            R18 K214 ["RightLipCornerPuller"]
      369 LOADK                            R19 K215 ["RightLipStretcher"]
      370 LOADK                            R20 K216 ["RightLowerLipDepressor"]
      371 LOADK                            R21 K217 ["RightNoseWrinkler"]
      372 LOADK                            R22 K218 ["RightOuterBrowRaiser"]
      373 LOADK                            R23 K219 ["RightUpperLipRaiser"]
      374 LOADK                            R24 K220 ["TongueDown"]
      375 LOADK                            R25 K221 ["TongueOut"]
      376 SETLIST                          R9 R10 16 [33]
      378 LOADK                            R10 K222 ["TongueUp"]
      379 LOADK                            R11 K223 ["UpperLipSuck"]
      380 SETLIST                          R9 R10 2 [49]
      382 SETTABLEKS                       R9 R8 K224 ["FACE_CONTROLS_PROPERTIES"]
      384 SETTABLEKS                       R5 R8 K225 ["LIMBS"]
      386 GETTABLEKS                       R9 R1 K44 ["List"]
      388 GETTABLEKS                       R9 R9 K45 ["join"]
      390 MOVE                             R10 R5
      391 NEWTABLE                         R11 0 2
      393 LOADK                            R12 K226 ["Handle"]
      394 LOADK                            R13 K227 ["HumanoidRootPart"]
      395 SETLIST                          R11 R12 2 [1]
      397 CALL                             R9 2 1
      398 SETTABLEKS                       R9 R8 K228 ["ALL_ALLOWED_PART_NAMES"]
      400 DUPTABLE                         R9 K238 [{["BodyPoints"] = "AvatarPreviewerEditingBodyPoints", ["EditingToolbar"] = "AvatarPreviewerEditingToolbar", ["BodyPointsToolToolbar"] = "AvatarPreviewerBodyPointsToolToolbar", ["CageEditingToolToolbar"] = "AvatarPreviewerCageEditingToolToolbar", ["MeshEditingModuleControlPointsAdornments"] = "MeshEditingModuleControlPointsAdornments"}]
      401 SETTABLEKS                       R9 R8 K239 ["EDITING_TOOLS_GUI_NAMES"]
      403 LOADK                            R9 K240 ["AvatarPreviewerClonedDummy"]
      404 SETTABLEKS                       R9 R8 K241 ["CLONED_DUMMY_NAME"]
      406 LOADK                            R9 K242 ["OriginalPosition"]
      407 SETTABLEKS                       R9 R8 K243 ["ORIGINAL_POSITION_VALUE"]
      409 LOADK                            R9 K244 ["NoSelection"]
      410 SETTABLEKS                       R9 R8 K245 ["PHONY_NO_SELECTION"]
      412 LOADK                            R9 K246 ["AvatarPreviewerMakeup"]
      413 SETTABLEKS                       R9 R8 K247 ["MAKEUP_FOLDER_NAME"]
      415 LOADK                            R9 K248 ["AvatarPreviewerMakeupDecal"]
      416 SETTABLEKS                       R9 R8 K249 ["MAKEUP_DECAL_NAME"]
      418 LOADK                            R9 K250 ["RenderRig"]
      419 SETTABLEKS                       R9 R8 K251 ["RENDER_RIG_NAME"]
      421 LOADK                            R9 K252 ["MakeupPreviewWorldModel"]
      422 SETTABLEKS                       R9 R8 K253 ["MAKEUP_PREVIEW_WORLD_MODEL_NAME"]
      424 LOADN                            R9 150
      425 SETTABLEKS                       R9 R8 K254 ["LOOK_PREVIEW_SIZE"]
      427 LOADK                            R9 K255 [1.8]
      428 SETTABLEKS                       R9 R8 K256 ["LOOK_COMPOSER_INPUT_WIDTH_SCALE"]
      430 GETIMPORT                        R9 K259 [CFrame.lookAt]
      432 LOADK                            R10 K260 [{-5.2, 1, -9.2}]
      433 LOADK                            R11 K261 [{0.5, -1.2, 0.85}]
      434 CALL                             R9 2 1
      435 SETTABLEKS                       R9 R8 K262 ["DEFAULT_CAMERA_ANGLE"]
      437 DUPTABLE                         R9 K277 [{["Eyelashes"] = 1, ["Eyebrows"] = 2, ["Face"] = 3, ["Hair"] = 4, ["Shoes"] = 5, ["Bottoms"] = 6, ["Tops"] = 7, ["Outerwear"] = 8}]
      438 SETTABLEKS                       R9 R8 K278 ["PREFERRED_LAYERS"]
      440 DUPTABLE                         R9 K281 [{["Positions"] = 1, ["Dummy"] = 2}]
      441 SETTABLEKS                       R9 R8 K282 ["FOCUS_CALLBACK_PRIORITIES"]
      443 GETIMPORT                        R9 K285 [Color3.fromRGB]
      445 LOADN                            R10 130
      446 LOADN                            R11 130
      447 LOADN                            R12 130
      448 CALL                             R9 3 1
      449 SETTABLEKS                       R9 R8 K286 ["DEFAULT_SKIN_COLOR"]
      451 LOADK                            R9 K287 ["_geo"]
      452 SETTABLEKS                       R9 R8 K288 ["BODY_MESH_SUFFIX"]
      454 LOADK                            R9 K289 ["_autosetup"]
      455 SETTABLEKS                       R9 R8 K290 ["OUTPUT_MODEL_SUFFIX"]
      457 DUPTABLE                         R9 K296 [{["Head"] = "Head", ["UpperTorso"] = "Torso", ["LowerTorso"] = "Torso", ["LeftUpperArm"] = "LeftArm", ["LeftLowerArm"] = "LeftArm", ["LeftHand"] = "LeftArm", ["RightUpperArm"] = "RightArm", ["RightLowerArm"] = "RightArm", ["RightHand"] = "RightArm", ["LeftUpperLeg"] = "LeftLeg", ["LeftLowerLeg"] = "LeftLeg", ["LeftFoot"] = "LeftLeg", ["RightUpperLeg"] = "RightLeg", ["RightLowerLeg"] = "RightLeg", ["RightFoot"] = "RightLeg"}]
      458 SETTABLEKS                       R9 R8 K297 ["BODY_PART_TO_LIMB_NAME"]
      460 LOADK                            R9 K298 [0.7]
      461 SETTABLEKS                       R9 R8 K299 ["FALLOFF_CURSOR_ADJUSTMENT"]
      463 LOADK                            R9 K300 [0.1]
      464 SETTABLEKS                       R9 R8 K301 ["THROTTLE_DELAY"]
      466 LOADK                            R9 K302 [16562317918]
      467 SETTABLEKS                       R9 R8 K303 ["IDLE_ANIMATION_ID"]
      469 LOADK                            R9 K304 ["Avatar Setup Add Items"]
      470 SETTABLEKS                       R9 R8 K305 ["WAYPOINT_NAME_ADD_ITEMS"]
      472 LOADK                            R9 K306 ["Avatar Setup Select Palettes"]
      473 SETTABLEKS                       R9 R8 K307 ["WAYPOINT_NAME_DISAMBIGUATION"]
      475 LOADK                            R9 K308 ["Avatar Setup Edit Cage Mesh"]
      476 SETTABLEKS                       R9 R8 K309 ["WAYPOINT_NAME_EDIT_CAGE_MESH"]
      478 DUPTABLE                         R9 K312 [{"Radius", "Falloff"}]
      479 DUPTABLE                         R10 K316 [{["minimum"] = 0.01, ["maximum"] = 2}]
      480 SETTABLEKS                       R10 R9 K310 ["Radius"]
      482 DUPTABLE                         R10 K318 [{["minimum"] = 1, ["maximum"] = 100}]
      483 SETTABLEKS                       R10 R9 K311 ["Falloff"]
      485 SETTABLEKS                       R9 R8 K319 ["CAGE_BRUSH_SETTINGS"]
      487 LOADK                            R9 K320 [12006493372]
      488 SETTABLEKS                       R9 R8 K321 ["TEMPLATE_BODY_OUTFIT_ID"]
      490 DUPTABLE                         R9 K328 [{["Head"] = 72510165520892, ["Torso"] = 116488623753864, ["LeftArm"] = 133986177057036, ["RightArm"] = 101158810738872, ["LeftLeg"] = 78536356632840, ["RightLeg"] = 129290873866258}]
      491 SETTABLEKS                       R9 R8 K329 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
      493 NEWTABLE                         R9 0 5
      495 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      497 GETIMPORT                        R11 K59 [Enum.AssetType.EyelashAccessory]
      499 GETIMPORT                        R12 K47 [Enum.AssetType.FaceMakeup]
      501 GETIMPORT                        R13 K49 [Enum.AssetType.LipMakeup]
      503 GETIMPORT                        R14 K51 [Enum.AssetType.EyeMakeup]
      505 SETLIST                          R9 R10 5 [1]
      507 SETTABLEKS                       R9 R8 K330 ["MAKEUP_ASSET_TYPES"]
      509 SETTABLEKS                       R6 R8 K331 ["CLOTHING_ASSET_TYPES"]
      511 SETTABLEKS                       R7 R8 K332 ["ASSET_TYPES_WITH_ORDER_SET"]
      513 NEWTABLE                         R9 0 12
      515 GETIMPORT                        R10 K136 [Enum.AssetType.Hat]
      517 GETIMPORT                        R11 K132 [Enum.AssetType.HairAccessory]
      519 GETIMPORT                        R12 K120 [Enum.AssetType.FaceAccessory]
      521 GETIMPORT                        R13 K143 [Enum.AssetType.NeckAccessory]
      523 GETIMPORT                        R14 K153 [Enum.AssetType.ShoulderAccessory]
      525 GETIMPORT                        R15 K124 [Enum.AssetType.FrontAccessory]
      527 GETIMPORT                        R16 K109 [Enum.AssetType.BackAccessory]
      529 GETIMPORT                        R17 K163 [Enum.AssetType.WaistAccessory]
      531 GETIMPORT                        R18 K53 [Enum.AssetType.LeftShoeAccessory]
      533 GETIMPORT                        R19 K55 [Enum.AssetType.RightShoeAccessory]
      535 GETIMPORT                        R20 K57 [Enum.AssetType.EyebrowAccessory]
      537 GETIMPORT                        R21 K59 [Enum.AssetType.EyelashAccessory]
      539 SETLIST                          R9 R10 12 [1]
      541 SETTABLEKS                       R9 R8 K333 ["ACCESSORY_ASSET_TYPES"]
      543 GETTABLEKS                       R9 R1 K334 ["Dictionary"]
      545 GETTABLEKS                       R9 R9 K45 ["join"]
      547 NEWTABLE                         R10 32 0
      549 GETIMPORT                        R11 K136 [Enum.AssetType.Hat]
      551 GETTABLEKS                       R11 R11 K335 ["Name"]
      553 LOADK                            R12 K13 ["Head"]
      554 SETTABLE                         R12 R10 R11
      555 GETIMPORT                        R11 K132 [Enum.AssetType.HairAccessory]
      557 GETTABLEKS                       R11 R11 K335 ["Name"]
      559 LOADK                            R12 K133 ["Hair"]
      560 SETTABLE                         R12 R10 R11
      561 GETIMPORT                        R11 K120 [Enum.AssetType.FaceAccessory]
      563 GETTABLEKS                       R11 R11 K335 ["Name"]
      565 LOADK                            R12 K121 ["Face"]
      566 SETTABLE                         R12 R10 R11
      567 GETIMPORT                        R11 K143 [Enum.AssetType.NeckAccessory]
      569 GETTABLEKS                       R11 R11 K335 ["Name"]
      571 LOADK                            R12 K144 ["Neck"]
      572 SETTABLE                         R12 R10 R11
      573 GETIMPORT                        R11 K153 [Enum.AssetType.ShoulderAccessory]
      575 GETTABLEKS                       R11 R11 K335 ["Name"]
      577 LOADK                            R12 K154 ["Shoulder"]
      578 SETTABLE                         R12 R10 R11
      579 GETIMPORT                        R11 K124 [Enum.AssetType.FrontAccessory]
      581 GETTABLEKS                       R11 R11 K335 ["Name"]
      583 LOADK                            R12 K125 ["Front"]
      584 SETTABLE                         R12 R10 R11
      585 GETIMPORT                        R11 K109 [Enum.AssetType.BackAccessory]
      587 GETTABLEKS                       R11 R11 K335 ["Name"]
      589 LOADK                            R12 K111 ["Back"]
      590 SETTABLE                         R12 R10 R11
      591 GETIMPORT                        R11 K163 [Enum.AssetType.WaistAccessory]
      593 GETTABLEKS                       R11 R11 K335 ["Name"]
      595 LOADK                            R12 K164 ["Waist"]
      596 SETTABLE                         R12 R10 R11
      597 GETIMPORT                        R11 K336 [Enum.AssetType.Torso]
      599 GETTABLEKS                       R11 R11 K335 ["Name"]
      601 LOADK                            R12 K291 ["Torso"]
      602 SETTABLE                         R12 R10 R11
      603 GETIMPORT                        R11 K337 [Enum.AssetType.RightArm]
      605 GETTABLEKS                       R11 R11 K335 ["Name"]
      607 LOADK                            R12 K293 ["RightArm"]
      608 SETTABLE                         R12 R10 R11
      609 GETIMPORT                        R11 K338 [Enum.AssetType.LeftArm]
      611 GETTABLEKS                       R11 R11 K335 ["Name"]
      613 LOADK                            R12 K292 ["LeftArm"]
      614 SETTABLE                         R12 R10 R11
      615 GETIMPORT                        R11 K339 [Enum.AssetType.LeftLeg]
      617 GETTABLEKS                       R11 R11 K335 ["Name"]
      619 LOADK                            R12 K294 ["LeftLeg"]
      620 SETTABLE                         R12 R10 R11
      621 GETIMPORT                        R11 K340 [Enum.AssetType.RightLeg]
      623 GETTABLEKS                       R11 R11 K335 ["Name"]
      625 LOADK                            R12 K295 ["RightLeg"]
      626 SETTABLE                         R12 R10 R11
      627 GETIMPORT                        R11 K342 [Enum.AssetType.DynamicHead]
      629 GETTABLEKS                       R11 R11 K335 ["Name"]
      631 LOADK                            R12 K343 ["HeadBodyPart"]
      632 SETTABLE                         R12 R10 R11
      633 GETIMPORT                        R11 K33 [Enum.AssetType.TShirtAccessory]
      635 GETTABLEKS                       R11 R11 K335 ["Name"]
      637 LOADK                            R12 K344 ["TShirts"]
      638 SETTABLE                         R12 R10 R11
      639 GETIMPORT                        R11 K31 [Enum.AssetType.ShirtAccessory]
      641 GETTABLEKS                       R11 R11 K335 ["Name"]
      643 LOADK                            R12 K345 ["Shirts"]
      644 SETTABLE                         R12 R10 R11
      645 GETIMPORT                        R11 K39 [Enum.AssetType.PantsAccessory]
      647 GETTABLEKS                       R11 R11 K335 ["Name"]
      649 LOADK                            R12 K146 ["Pants"]
      650 SETTABLE                         R12 R10 R11
      651 GETIMPORT                        R11 K35 [Enum.AssetType.JacketAccessory]
      653 GETTABLEKS                       R11 R11 K335 ["Name"]
      655 LOADK                            R12 K346 ["Jackets"]
      656 SETTABLE                         R12 R10 R11
      657 GETIMPORT                        R11 K37 [Enum.AssetType.SweaterAccessory]
      659 GETTABLEKS                       R11 R11 K335 ["Name"]
      661 LOADK                            R12 K347 ["Sweaters"]
      662 SETTABLE                         R12 R10 R11
      663 GETIMPORT                        R11 K41 [Enum.AssetType.ShortsAccessory]
      665 GETTABLEKS                       R11 R11 K335 ["Name"]
      667 LOADK                            R12 K156 ["Shorts"]
      668 SETTABLE                         R12 R10 R11
      669 GETIMPORT                        R11 K43 [Enum.AssetType.DressSkirtAccessory]
      671 GETTABLEKS                       R11 R11 K335 ["Name"]
      673 LOADK                            R12 K348 ["Skirts"]
      674 SETTABLE                         R12 R10 R11
      675 GETIMPORT                        R11 K57 [Enum.AssetType.EyebrowAccessory]
      677 GETTABLEKS                       R11 R11 K335 ["Name"]
      679 LOADK                            R12 K265 ["Eyebrows"]
      680 SETTABLE                         R12 R10 R11
      681 GETIMPORT                        R11 K59 [Enum.AssetType.EyelashAccessory]
      683 GETTABLEKS                       R11 R11 K335 ["Name"]
      685 LOADK                            R12 K263 ["Eyelashes"]
      686 SETTABLE                         R12 R10 R11
      687 GETIMPORT                        R11 K47 [Enum.AssetType.FaceMakeup]
      689 GETTABLEKS                       R11 R11 K335 ["Name"]
      691 LOADK                            R12 K46 ["FaceMakeup"]
      692 SETTABLE                         R12 R10 R11
      693 GETIMPORT                        R11 K49 [Enum.AssetType.LipMakeup]
      695 GETTABLEKS                       R11 R11 K335 ["Name"]
      697 LOADK                            R12 K48 ["LipMakeup"]
      698 SETTABLE                         R12 R10 R11
      699 GETIMPORT                        R11 K51 [Enum.AssetType.EyeMakeup]
      701 GETTABLEKS                       R11 R11 K335 ["Name"]
      703 LOADK                            R12 K50 ["EyeMakeup"]
      704 SETTABLE                         R12 R10 R11
      705 MOVE                             R12 R2
      706 CALL                             R12 0 1
      707 JUMPIFNOT                        R12 ; [+21]
      708 NEWTABLE                         R11 4 0
      710 GETIMPORT                        R12 K349 [Enum.AssetType.Shirt]
      712 GETTABLEKS                       R12 R12 K335 ["Name"]
      714 LOADK                            R13 K350 ["ClassicShirts"]
      715 SETTABLE                         R13 R11 R12
      716 GETIMPORT                        R12 K351 [Enum.AssetType.TShirt]
      718 GETTABLEKS                       R12 R12 K335 ["Name"]
      720 LOADK                            R13 K352 ["ClassicTShirts"]
      721 SETTABLE                         R13 R11 R12
      722 GETIMPORT                        R12 K353 [Enum.AssetType.Pants]
      724 GETTABLEKS                       R12 R12 K335 ["Name"]
      726 LOADK                            R13 K354 ["ClassicPants"]
      727 SETTABLE                         R13 R11 R12
      728 JUMP                             ; [+2]
      729 NEWTABLE                         R11 0 0
      731 CALL                             R9 2 1
      732 SETTABLEKS                       R9 R8 K355 ["MARKETPLACE_ASSET_TYPE_TO_PALETTE_KEY"]
      734 NEWTABLE                         R9 8 0
      736 GETIMPORT                        R10 K47 [Enum.AssetType.FaceMakeup]
      738 LOADK                            R11 K356 ["makeup"]
      739 SETTABLE                         R11 R9 R10
      740 GETIMPORT                        R10 K49 [Enum.AssetType.LipMakeup]
      742 LOADK                            R11 K356 ["makeup"]
      743 SETTABLE                         R11 R9 R10
      744 GETIMPORT                        R10 K51 [Enum.AssetType.EyeMakeup]
      746 LOADK                            R11 K356 ["makeup"]
      747 SETTABLE                         R11 R9 R10
      748 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      750 LOADK                            R11 K357 ["layered"]
      751 SETTABLE                         R11 R9 R10
      752 GETIMPORT                        R10 K59 [Enum.AssetType.EyelashAccessory]
      754 LOADK                            R11 K357 ["layered"]
      755 SETTABLE                         R11 R9 R10
      756 SETTABLEKS                       R9 R8 K358 ["MARKETPLACE_PUBLISH_ASSET_TYPE_TO_MAKEUP_ASSET_TYPE"]
      758 GETIMPORT                        R9 K285 [Color3.fromRGB]
      760 LOADN                            R10 205
      761 LOADN                            R11 205
      762 LOADN                            R12 204
      763 CALL                             R9 3 1
      764 SETTABLEKS                       R9 R8 K359 ["DEFAULT_SKIN_TONE"]
      766 RETURN                           R8 1
