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
      196 LOADK                            R9 K106 ["AutoSetup_OriginalObjectInstance"]
      197 SETTABLEKS                       R9 R8 K107 ["ORIGINAL_INSTANCE_VALUE_NAME"]
      199 LOADK                            R9 K108 ["AvatarPreviewer_OriginalObjectReference_"]
      200 SETTABLEKS                       R9 R8 K109 ["REFERENCE_VALUE_NAME"]
      202 LOADK                            R9 K110 ["AvatarPreviewer_DisplayName"]
      203 SETTABLEKS                       R9 R8 K111 ["DISPLAY_NAME"]
      205 LOADK                            R9 K112 ["AutoSetupJobInitialization"]
      206 SETTABLEKS                       R9 R8 K113 ["AUTO_SETUP_JOB_INITIALIZATION"]
      208 NEWTABLE                         R9 32 0
      210 GETIMPORT                        R10 K115 [Enum.AssetType.BackAccessory]
      212 GETIMPORT                        R11 K118 [Enum.AccessoryType.Back]
      214 SETTABLE                         R11 R9 R10
      215 GETIMPORT                        R10 K43 [Enum.AssetType.DressSkirtAccessory]
      217 GETIMPORT                        R11 K120 [Enum.AccessoryType.DressSkirt]
      219 SETTABLE                         R11 R9 R10
      220 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      222 GETIMPORT                        R11 K122 [Enum.AccessoryType.Eyebrow]
      224 SETTABLE                         R11 R9 R10
      225 GETIMPORT                        R10 K59 [Enum.AssetType.EyelashAccessory]
      227 GETIMPORT                        R11 K124 [Enum.AccessoryType.Eyelash]
      229 SETTABLE                         R11 R9 R10
      230 GETIMPORT                        R10 K126 [Enum.AssetType.FaceAccessory]
      232 GETIMPORT                        R11 K128 [Enum.AccessoryType.Face]
      234 SETTABLE                         R11 R9 R10
      235 GETIMPORT                        R10 K130 [Enum.AssetType.FrontAccessory]
      237 GETIMPORT                        R11 K132 [Enum.AccessoryType.Front]
      239 SETTABLE                         R11 R9 R10
      240 GETIMPORT                        R10 K134 [Enum.AssetType.Gear]
      242 GETIMPORT                        R11 K136 [Enum.AccessoryType.Unknown]
      244 SETTABLE                         R11 R9 R10
      245 GETIMPORT                        R10 K138 [Enum.AssetType.HairAccessory]
      247 GETIMPORT                        R11 K140 [Enum.AccessoryType.Hair]
      249 SETTABLE                         R11 R9 R10
      250 GETIMPORT                        R10 K142 [Enum.AssetType.Hat]
      252 GETIMPORT                        R11 K143 [Enum.AccessoryType.Hat]
      254 SETTABLE                         R11 R9 R10
      255 GETIMPORT                        R10 K35 [Enum.AssetType.JacketAccessory]
      257 GETIMPORT                        R11 K145 [Enum.AccessoryType.Jacket]
      259 SETTABLE                         R11 R9 R10
      260 GETIMPORT                        R10 K53 [Enum.AssetType.LeftShoeAccessory]
      262 GETIMPORT                        R11 K147 [Enum.AccessoryType.LeftShoe]
      264 SETTABLE                         R11 R9 R10
      265 GETIMPORT                        R10 K149 [Enum.AssetType.NeckAccessory]
      267 GETIMPORT                        R11 K151 [Enum.AccessoryType.Neck]
      269 SETTABLE                         R11 R9 R10
      270 GETIMPORT                        R10 K39 [Enum.AssetType.PantsAccessory]
      272 GETIMPORT                        R11 K153 [Enum.AccessoryType.Pants]
      274 SETTABLE                         R11 R9 R10
      275 GETIMPORT                        R10 K55 [Enum.AssetType.RightShoeAccessory]
      277 GETIMPORT                        R11 K155 [Enum.AccessoryType.RightShoe]
      279 SETTABLE                         R11 R9 R10
      280 GETIMPORT                        R10 K31 [Enum.AssetType.ShirtAccessory]
      282 GETIMPORT                        R11 K157 [Enum.AccessoryType.Shirt]
      284 SETTABLE                         R11 R9 R10
      285 GETIMPORT                        R10 K159 [Enum.AssetType.ShoulderAccessory]
      287 GETIMPORT                        R11 K161 [Enum.AccessoryType.Shoulder]
      289 SETTABLE                         R11 R9 R10
      290 GETIMPORT                        R10 K41 [Enum.AssetType.ShortsAccessory]
      292 GETIMPORT                        R11 K163 [Enum.AccessoryType.Shorts]
      294 SETTABLE                         R11 R9 R10
      295 GETIMPORT                        R10 K37 [Enum.AssetType.SweaterAccessory]
      297 GETIMPORT                        R11 K165 [Enum.AccessoryType.Sweater]
      299 SETTABLE                         R11 R9 R10
      300 GETIMPORT                        R10 K33 [Enum.AssetType.TShirtAccessory]
      302 GETIMPORT                        R11 K167 [Enum.AccessoryType.TShirt]
      304 SETTABLE                         R11 R9 R10
      305 GETIMPORT                        R10 K169 [Enum.AssetType.WaistAccessory]
      307 GETIMPORT                        R11 K171 [Enum.AccessoryType.Waist]
      309 SETTABLE                         R11 R9 R10
      310 SETTABLEKS                       R9 R8 K172 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
      312 NEWTABLE                         R9 4 0
      314 GETIMPORT                        R10 K47 [Enum.AssetType.FaceMakeup]
      316 GETIMPORT                        R11 K174 [Enum.MakeupType.Face]
      318 SETTABLE                         R11 R9 R10
      319 GETIMPORT                        R10 K49 [Enum.AssetType.LipMakeup]
      321 GETIMPORT                        R11 K176 [Enum.MakeupType.Lip]
      323 SETTABLE                         R11 R9 R10
      324 GETIMPORT                        R10 K51 [Enum.AssetType.EyeMakeup]
      326 GETIMPORT                        R11 K178 [Enum.MakeupType.Eye]
      328 SETTABLE                         R11 R9 R10
      329 SETTABLEKS                       R9 R8 K179 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
      331 NEWTABLE                         R9 0 50
      333 LOADK                            R10 K180 ["ChinRaiser"]
      334 LOADK                            R11 K181 ["ChinRaiserUpperLip"]
      335 LOADK                            R12 K182 ["Corrugator"]
      336 LOADK                            R13 K183 ["EyesLookDown"]
      337 LOADK                            R14 K184 ["EyesLookLeft"]
      338 LOADK                            R15 K185 ["EyesLookRight"]
      339 LOADK                            R16 K186 ["EyesLookUp"]
      340 LOADK                            R17 K187 ["FlatPucker"]
      341 LOADK                            R18 K188 ["Funneler"]
      342 LOADK                            R19 K189 ["JawDrop"]
      343 LOADK                            R20 K190 ["JawLeft"]
      344 LOADK                            R21 K191 ["JawRight"]
      345 LOADK                            R22 K192 ["LeftBrowLowerer"]
      346 LOADK                            R23 K193 ["LeftCheekPuff"]
      347 LOADK                            R24 K194 ["LeftCheekRaiser"]
      348 LOADK                            R25 K195 ["LeftDimpler"]
      349 SETLIST                          R9 R10 16 [1]
      351 LOADK                            R10 K196 ["LeftEyeClosed"]
      352 LOADK                            R11 K197 ["LeftEyeUpperLidRaiser"]
      353 LOADK                            R12 K198 ["LeftInnerBrowRaiser"]
      354 LOADK                            R13 K199 ["LeftLipCornerDown"]
      355 LOADK                            R14 K200 ["LeftLipCornerPuller"]
      356 LOADK                            R15 K201 ["LeftLipStretcher"]
      357 LOADK                            R16 K202 ["LeftLowerLipDepressor"]
      358 LOADK                            R17 K203 ["LeftNoseWrinkler"]
      359 LOADK                            R18 K204 ["LeftOuterBrowRaiser"]
      360 LOADK                            R19 K205 ["LeftUpperLipRaiser"]
      361 LOADK                            R20 K206 ["LipPresser"]
      362 LOADK                            R21 K207 ["LipsTogether"]
      363 LOADK                            R22 K208 ["LowerLipSuck"]
      364 LOADK                            R23 K209 ["MouthLeft"]
      365 LOADK                            R24 K210 ["MouthRight"]
      366 LOADK                            R25 K211 ["Pucker"]
      367 SETLIST                          R9 R10 16 [17]
      369 LOADK                            R10 K212 ["RightBrowLowerer"]
      370 LOADK                            R11 K213 ["RightCheekPuff"]
      371 LOADK                            R12 K214 ["RightCheekRaiser"]
      372 LOADK                            R13 K215 ["RightDimpler"]
      373 LOADK                            R14 K216 ["RightEyeClosed"]
      374 LOADK                            R15 K217 ["RightEyeUpperLidRaiser"]
      375 LOADK                            R16 K218 ["RightInnerBrowRaiser"]
      376 LOADK                            R17 K219 ["RightLipCornerDown"]
      377 LOADK                            R18 K220 ["RightLipCornerPuller"]
      378 LOADK                            R19 K221 ["RightLipStretcher"]
      379 LOADK                            R20 K222 ["RightLowerLipDepressor"]
      380 LOADK                            R21 K223 ["RightNoseWrinkler"]
      381 LOADK                            R22 K224 ["RightOuterBrowRaiser"]
      382 LOADK                            R23 K225 ["RightUpperLipRaiser"]
      383 LOADK                            R24 K226 ["TongueDown"]
      384 LOADK                            R25 K227 ["TongueOut"]
      385 SETLIST                          R9 R10 16 [33]
      387 LOADK                            R10 K228 ["TongueUp"]
      388 LOADK                            R11 K229 ["UpperLipSuck"]
      389 SETLIST                          R9 R10 2 [49]
      391 SETTABLEKS                       R9 R8 K230 ["FACE_CONTROLS_PROPERTIES"]
      393 SETTABLEKS                       R5 R8 K231 ["LIMBS"]
      395 GETTABLEKS                       R9 R1 K44 ["List"]
      397 GETTABLEKS                       R9 R9 K45 ["join"]
      399 MOVE                             R10 R5
      400 NEWTABLE                         R11 0 2
      402 LOADK                            R12 K232 ["Handle"]
      403 LOADK                            R13 K233 ["HumanoidRootPart"]
      404 SETLIST                          R11 R12 2 [1]
      406 CALL                             R9 2 1
      407 SETTABLEKS                       R9 R8 K234 ["ALL_ALLOWED_PART_NAMES"]
      409 DUPTABLE                         R9 K244 [{["BodyPoints"] = "AvatarPreviewerEditingBodyPoints", ["EditingToolbar"] = "AvatarPreviewerEditingToolbar", ["BodyPointsToolToolbar"] = "AvatarPreviewerBodyPointsToolToolbar", ["CageEditingToolToolbar"] = "AvatarPreviewerCageEditingToolToolbar", ["MeshEditingModuleControlPointsAdornments"] = "MeshEditingModuleControlPointsAdornments"}]
      410 SETTABLEKS                       R9 R8 K245 ["EDITING_TOOLS_GUI_NAMES"]
      412 LOADK                            R9 K246 ["AvatarPreviewerClonedDummy"]
      413 SETTABLEKS                       R9 R8 K247 ["CLONED_DUMMY_NAME"]
      415 LOADK                            R9 K248 ["OriginalPosition"]
      416 SETTABLEKS                       R9 R8 K249 ["ORIGINAL_POSITION_VALUE"]
      418 LOADK                            R9 K250 ["NoSelection"]
      419 SETTABLEKS                       R9 R8 K251 ["PHONY_NO_SELECTION"]
      421 LOADK                            R9 K252 ["AvatarPreviewerMakeup"]
      422 SETTABLEKS                       R9 R8 K253 ["MAKEUP_FOLDER_NAME"]
      424 LOADK                            R9 K254 ["AvatarPreviewerMakeupDecal"]
      425 SETTABLEKS                       R9 R8 K255 ["MAKEUP_DECAL_NAME"]
      427 LOADK                            R9 K256 ["RenderRig"]
      428 SETTABLEKS                       R9 R8 K257 ["RENDER_RIG_NAME"]
      430 LOADK                            R9 K258 ["MakeupPreviewWorldModel"]
      431 SETTABLEKS                       R9 R8 K259 ["MAKEUP_PREVIEW_WORLD_MODEL_NAME"]
      433 LOADN                            R9 150
      434 SETTABLEKS                       R9 R8 K260 ["LOOK_PREVIEW_SIZE"]
      436 LOADK                            R9 K261 [1.8]
      437 SETTABLEKS                       R9 R8 K262 ["LOOK_COMPOSER_INPUT_WIDTH_SCALE"]
      439 GETIMPORT                        R9 K265 [CFrame.lookAt]
      441 LOADK                            R10 K266 [{-5.2, 1, -9.2}]
      442 LOADK                            R11 K267 [{0.5, -1.2, 0.85}]
      443 CALL                             R9 2 1
      444 SETTABLEKS                       R9 R8 K268 ["DEFAULT_CAMERA_ANGLE"]
      446 DUPTABLE                         R9 K283 [{["Eyelashes"] = 1, ["Eyebrows"] = 2, ["Face"] = 3, ["Hair"] = 4, ["Shoes"] = 5, ["Bottoms"] = 6, ["Tops"] = 7, ["Outerwear"] = 8}]
      447 SETTABLEKS                       R9 R8 K284 ["PREFERRED_LAYERS"]
      449 DUPTABLE                         R9 K287 [{["Positions"] = 1, ["Dummy"] = 2}]
      450 SETTABLEKS                       R9 R8 K288 ["FOCUS_CALLBACK_PRIORITIES"]
      452 GETIMPORT                        R9 K291 [Color3.fromRGB]
      454 LOADN                            R10 130
      455 LOADN                            R11 130
      456 LOADN                            R12 130
      457 CALL                             R9 3 1
      458 SETTABLEKS                       R9 R8 K292 ["DEFAULT_SKIN_COLOR"]
      460 LOADK                            R9 K293 ["_geo"]
      461 SETTABLEKS                       R9 R8 K294 ["BODY_MESH_SUFFIX"]
      463 LOADK                            R9 K295 ["_autosetup"]
      464 SETTABLEKS                       R9 R8 K296 ["OUTPUT_MODEL_SUFFIX"]
      466 DUPTABLE                         R9 K302 [{["Head"] = "Head", ["UpperTorso"] = "Torso", ["LowerTorso"] = "Torso", ["LeftUpperArm"] = "LeftArm", ["LeftLowerArm"] = "LeftArm", ["LeftHand"] = "LeftArm", ["RightUpperArm"] = "RightArm", ["RightLowerArm"] = "RightArm", ["RightHand"] = "RightArm", ["LeftUpperLeg"] = "LeftLeg", ["LeftLowerLeg"] = "LeftLeg", ["LeftFoot"] = "LeftLeg", ["RightUpperLeg"] = "RightLeg", ["RightLowerLeg"] = "RightLeg", ["RightFoot"] = "RightLeg"}]
      467 SETTABLEKS                       R9 R8 K303 ["BODY_PART_TO_LIMB_NAME"]
      469 LOADK                            R9 K304 [0.7]
      470 SETTABLEKS                       R9 R8 K305 ["FALLOFF_CURSOR_ADJUSTMENT"]
      472 LOADK                            R9 K306 [0.1]
      473 SETTABLEKS                       R9 R8 K307 ["THROTTLE_DELAY"]
      475 LOADK                            R9 K308 [16562317918]
      476 SETTABLEKS                       R9 R8 K309 ["IDLE_ANIMATION_ID"]
      478 LOADK                            R9 K310 ["Avatar Setup Add Items"]
      479 SETTABLEKS                       R9 R8 K311 ["WAYPOINT_NAME_ADD_ITEMS"]
      481 LOADK                            R9 K312 ["Avatar Setup Select Palettes"]
      482 SETTABLEKS                       R9 R8 K313 ["WAYPOINT_NAME_DISAMBIGUATION"]
      484 LOADK                            R9 K314 ["Avatar Setup Edit Cage Mesh"]
      485 SETTABLEKS                       R9 R8 K315 ["WAYPOINT_NAME_EDIT_CAGE_MESH"]
      487 DUPTABLE                         R9 K318 [{"Radius", "Falloff"}]
      488 DUPTABLE                         R10 K322 [{["minimum"] = 0.01, ["maximum"] = 2}]
      489 SETTABLEKS                       R10 R9 K316 ["Radius"]
      491 DUPTABLE                         R10 K324 [{["minimum"] = 1, ["maximum"] = 100}]
      492 SETTABLEKS                       R10 R9 K317 ["Falloff"]
      494 SETTABLEKS                       R9 R8 K325 ["CAGE_BRUSH_SETTINGS"]
      496 LOADK                            R9 K326 [12006493372]
      497 SETTABLEKS                       R9 R8 K327 ["TEMPLATE_BODY_OUTFIT_ID"]
      499 DUPTABLE                         R9 K334 [{["Head"] = 72510165520892, ["Torso"] = 116488623753864, ["LeftArm"] = 133986177057036, ["RightArm"] = 101158810738872, ["LeftLeg"] = 78536356632840, ["RightLeg"] = 129290873866258}]
      500 SETTABLEKS                       R9 R8 K335 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
      502 NEWTABLE                         R9 0 5
      504 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      506 GETIMPORT                        R11 K59 [Enum.AssetType.EyelashAccessory]
      508 GETIMPORT                        R12 K47 [Enum.AssetType.FaceMakeup]
      510 GETIMPORT                        R13 K49 [Enum.AssetType.LipMakeup]
      512 GETIMPORT                        R14 K51 [Enum.AssetType.EyeMakeup]
      514 SETLIST                          R9 R10 5 [1]
      516 SETTABLEKS                       R9 R8 K336 ["MAKEUP_ASSET_TYPES"]
      518 SETTABLEKS                       R6 R8 K337 ["CLOTHING_ASSET_TYPES"]
      520 SETTABLEKS                       R7 R8 K338 ["ASSET_TYPES_WITH_ORDER_SET"]
      522 NEWTABLE                         R9 0 12
      524 GETIMPORT                        R10 K142 [Enum.AssetType.Hat]
      526 GETIMPORT                        R11 K138 [Enum.AssetType.HairAccessory]
      528 GETIMPORT                        R12 K126 [Enum.AssetType.FaceAccessory]
      530 GETIMPORT                        R13 K149 [Enum.AssetType.NeckAccessory]
      532 GETIMPORT                        R14 K159 [Enum.AssetType.ShoulderAccessory]
      534 GETIMPORT                        R15 K130 [Enum.AssetType.FrontAccessory]
      536 GETIMPORT                        R16 K115 [Enum.AssetType.BackAccessory]
      538 GETIMPORT                        R17 K169 [Enum.AssetType.WaistAccessory]
      540 GETIMPORT                        R18 K53 [Enum.AssetType.LeftShoeAccessory]
      542 GETIMPORT                        R19 K55 [Enum.AssetType.RightShoeAccessory]
      544 GETIMPORT                        R20 K57 [Enum.AssetType.EyebrowAccessory]
      546 GETIMPORT                        R21 K59 [Enum.AssetType.EyelashAccessory]
      548 SETLIST                          R9 R10 12 [1]
      550 SETTABLEKS                       R9 R8 K339 ["ACCESSORY_ASSET_TYPES"]
      552 GETTABLEKS                       R9 R1 K340 ["Dictionary"]
      554 GETTABLEKS                       R9 R9 K45 ["join"]
      556 NEWTABLE                         R10 32 0
      558 GETIMPORT                        R11 K142 [Enum.AssetType.Hat]
      560 GETTABLEKS                       R11 R11 K341 ["Name"]
      562 LOADK                            R12 K13 ["Head"]
      563 SETTABLE                         R12 R10 R11
      564 GETIMPORT                        R11 K138 [Enum.AssetType.HairAccessory]
      566 GETTABLEKS                       R11 R11 K341 ["Name"]
      568 LOADK                            R12 K139 ["Hair"]
      569 SETTABLE                         R12 R10 R11
      570 GETIMPORT                        R11 K126 [Enum.AssetType.FaceAccessory]
      572 GETTABLEKS                       R11 R11 K341 ["Name"]
      574 LOADK                            R12 K127 ["Face"]
      575 SETTABLE                         R12 R10 R11
      576 GETIMPORT                        R11 K149 [Enum.AssetType.NeckAccessory]
      578 GETTABLEKS                       R11 R11 K341 ["Name"]
      580 LOADK                            R12 K150 ["Neck"]
      581 SETTABLE                         R12 R10 R11
      582 GETIMPORT                        R11 K159 [Enum.AssetType.ShoulderAccessory]
      584 GETTABLEKS                       R11 R11 K341 ["Name"]
      586 LOADK                            R12 K160 ["Shoulder"]
      587 SETTABLE                         R12 R10 R11
      588 GETIMPORT                        R11 K130 [Enum.AssetType.FrontAccessory]
      590 GETTABLEKS                       R11 R11 K341 ["Name"]
      592 LOADK                            R12 K131 ["Front"]
      593 SETTABLE                         R12 R10 R11
      594 GETIMPORT                        R11 K115 [Enum.AssetType.BackAccessory]
      596 GETTABLEKS                       R11 R11 K341 ["Name"]
      598 LOADK                            R12 K117 ["Back"]
      599 SETTABLE                         R12 R10 R11
      600 GETIMPORT                        R11 K169 [Enum.AssetType.WaistAccessory]
      602 GETTABLEKS                       R11 R11 K341 ["Name"]
      604 LOADK                            R12 K170 ["Waist"]
      605 SETTABLE                         R12 R10 R11
      606 GETIMPORT                        R11 K342 [Enum.AssetType.Torso]
      608 GETTABLEKS                       R11 R11 K341 ["Name"]
      610 LOADK                            R12 K297 ["Torso"]
      611 SETTABLE                         R12 R10 R11
      612 GETIMPORT                        R11 K343 [Enum.AssetType.RightArm]
      614 GETTABLEKS                       R11 R11 K341 ["Name"]
      616 LOADK                            R12 K299 ["RightArm"]
      617 SETTABLE                         R12 R10 R11
      618 GETIMPORT                        R11 K344 [Enum.AssetType.LeftArm]
      620 GETTABLEKS                       R11 R11 K341 ["Name"]
      622 LOADK                            R12 K298 ["LeftArm"]
      623 SETTABLE                         R12 R10 R11
      624 GETIMPORT                        R11 K345 [Enum.AssetType.LeftLeg]
      626 GETTABLEKS                       R11 R11 K341 ["Name"]
      628 LOADK                            R12 K300 ["LeftLeg"]
      629 SETTABLE                         R12 R10 R11
      630 GETIMPORT                        R11 K346 [Enum.AssetType.RightLeg]
      632 GETTABLEKS                       R11 R11 K341 ["Name"]
      634 LOADK                            R12 K301 ["RightLeg"]
      635 SETTABLE                         R12 R10 R11
      636 GETIMPORT                        R11 K348 [Enum.AssetType.DynamicHead]
      638 GETTABLEKS                       R11 R11 K341 ["Name"]
      640 LOADK                            R12 K349 ["HeadBodyPart"]
      641 SETTABLE                         R12 R10 R11
      642 GETIMPORT                        R11 K33 [Enum.AssetType.TShirtAccessory]
      644 GETTABLEKS                       R11 R11 K341 ["Name"]
      646 LOADK                            R12 K350 ["TShirts"]
      647 SETTABLE                         R12 R10 R11
      648 GETIMPORT                        R11 K31 [Enum.AssetType.ShirtAccessory]
      650 GETTABLEKS                       R11 R11 K341 ["Name"]
      652 LOADK                            R12 K351 ["Shirts"]
      653 SETTABLE                         R12 R10 R11
      654 GETIMPORT                        R11 K39 [Enum.AssetType.PantsAccessory]
      656 GETTABLEKS                       R11 R11 K341 ["Name"]
      658 LOADK                            R12 K152 ["Pants"]
      659 SETTABLE                         R12 R10 R11
      660 GETIMPORT                        R11 K35 [Enum.AssetType.JacketAccessory]
      662 GETTABLEKS                       R11 R11 K341 ["Name"]
      664 LOADK                            R12 K352 ["Jackets"]
      665 SETTABLE                         R12 R10 R11
      666 GETIMPORT                        R11 K37 [Enum.AssetType.SweaterAccessory]
      668 GETTABLEKS                       R11 R11 K341 ["Name"]
      670 LOADK                            R12 K353 ["Sweaters"]
      671 SETTABLE                         R12 R10 R11
      672 GETIMPORT                        R11 K41 [Enum.AssetType.ShortsAccessory]
      674 GETTABLEKS                       R11 R11 K341 ["Name"]
      676 LOADK                            R12 K162 ["Shorts"]
      677 SETTABLE                         R12 R10 R11
      678 GETIMPORT                        R11 K43 [Enum.AssetType.DressSkirtAccessory]
      680 GETTABLEKS                       R11 R11 K341 ["Name"]
      682 LOADK                            R12 K354 ["Skirts"]
      683 SETTABLE                         R12 R10 R11
      684 GETIMPORT                        R11 K57 [Enum.AssetType.EyebrowAccessory]
      686 GETTABLEKS                       R11 R11 K341 ["Name"]
      688 LOADK                            R12 K271 ["Eyebrows"]
      689 SETTABLE                         R12 R10 R11
      690 GETIMPORT                        R11 K59 [Enum.AssetType.EyelashAccessory]
      692 GETTABLEKS                       R11 R11 K341 ["Name"]
      694 LOADK                            R12 K269 ["Eyelashes"]
      695 SETTABLE                         R12 R10 R11
      696 GETIMPORT                        R11 K47 [Enum.AssetType.FaceMakeup]
      698 GETTABLEKS                       R11 R11 K341 ["Name"]
      700 LOADK                            R12 K46 ["FaceMakeup"]
      701 SETTABLE                         R12 R10 R11
      702 GETIMPORT                        R11 K49 [Enum.AssetType.LipMakeup]
      704 GETTABLEKS                       R11 R11 K341 ["Name"]
      706 LOADK                            R12 K48 ["LipMakeup"]
      707 SETTABLE                         R12 R10 R11
      708 GETIMPORT                        R11 K51 [Enum.AssetType.EyeMakeup]
      710 GETTABLEKS                       R11 R11 K341 ["Name"]
      712 LOADK                            R12 K50 ["EyeMakeup"]
      713 SETTABLE                         R12 R10 R11
      714 MOVE                             R12 R2
      715 CALL                             R12 0 1
      716 JUMPIFNOT                        R12 ; [+21]
      717 NEWTABLE                         R11 4 0
      719 GETIMPORT                        R12 K355 [Enum.AssetType.Shirt]
      721 GETTABLEKS                       R12 R12 K341 ["Name"]
      723 LOADK                            R13 K356 ["ClassicShirts"]
      724 SETTABLE                         R13 R11 R12
      725 GETIMPORT                        R12 K357 [Enum.AssetType.TShirt]
      727 GETTABLEKS                       R12 R12 K341 ["Name"]
      729 LOADK                            R13 K358 ["ClassicTShirts"]
      730 SETTABLE                         R13 R11 R12
      731 GETIMPORT                        R12 K359 [Enum.AssetType.Pants]
      733 GETTABLEKS                       R12 R12 K341 ["Name"]
      735 LOADK                            R13 K360 ["ClassicPants"]
      736 SETTABLE                         R13 R11 R12
      737 JUMP                             ; [+2]
      738 NEWTABLE                         R11 0 0
      740 CALL                             R9 2 1
      741 SETTABLEKS                       R9 R8 K361 ["MARKETPLACE_ASSET_TYPE_TO_PALETTE_KEY"]
      743 NEWTABLE                         R9 8 0
      745 GETIMPORT                        R10 K47 [Enum.AssetType.FaceMakeup]
      747 LOADK                            R11 K362 ["makeup"]
      748 SETTABLE                         R11 R9 R10
      749 GETIMPORT                        R10 K49 [Enum.AssetType.LipMakeup]
      751 LOADK                            R11 K362 ["makeup"]
      752 SETTABLE                         R11 R9 R10
      753 GETIMPORT                        R10 K51 [Enum.AssetType.EyeMakeup]
      755 LOADK                            R11 K362 ["makeup"]
      756 SETTABLE                         R11 R9 R10
      757 GETIMPORT                        R10 K57 [Enum.AssetType.EyebrowAccessory]
      759 LOADK                            R11 K363 ["layered"]
      760 SETTABLE                         R11 R9 R10
      761 GETIMPORT                        R10 K59 [Enum.AssetType.EyelashAccessory]
      763 LOADK                            R11 K363 ["layered"]
      764 SETTABLE                         R11 R9 R10
      765 SETTABLEKS                       R9 R8 K364 ["MARKETPLACE_PUBLISH_ASSET_TYPE_TO_MAKEUP_ASSET_TYPE"]
      767 NEWTABLE                         R9 8 0
      769 GETIMPORT                        R10 K33 [Enum.AssetType.TShirtAccessory]
      771 LOADK                            R11 K365 ["Top"]
      772 SETTABLE                         R11 R9 R10
      773 GETIMPORT                        R10 K31 [Enum.AssetType.ShirtAccessory]
      775 LOADK                            R11 K365 ["Top"]
      776 SETTABLE                         R11 R9 R10
      777 GETIMPORT                        R10 K37 [Enum.AssetType.SweaterAccessory]
      779 LOADK                            R11 K365 ["Top"]
      780 SETTABLE                         R11 R9 R10
      781 GETIMPORT                        R10 K39 [Enum.AssetType.PantsAccessory]
      783 LOADK                            R11 K366 ["Bottom"]
      784 SETTABLE                         R11 R9 R10
      785 GETIMPORT                        R10 K41 [Enum.AssetType.ShortsAccessory]
      787 LOADK                            R11 K366 ["Bottom"]
      788 SETTABLE                         R11 R9 R10
      789 GETIMPORT                        R10 K43 [Enum.AssetType.DressSkirtAccessory]
      791 LOADK                            R11 K366 ["Bottom"]
      792 SETTABLE                         R11 R9 R10
      793 SETTABLEKS                       R9 R8 K367 ["MARKETPLACE_CLOTHING_SLOTS"]
      795 GETIMPORT                        R9 K291 [Color3.fromRGB]
      797 LOADN                            R10 205
      798 LOADN                            R11 205
      799 LOADN                            R12 204
      800 CALL                             R9 3 1
      801 SETTABLEKS                       R9 R8 K368 ["DEFAULT_SKIN_TONE"]
      803 RETURN                           R8 1
