PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R6 R3 K2 ["settings"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K3 [+4]
  LOADK R6 K3 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  NEWTABLE R4 0 2
  DUPTABLE R5 K8 [{"Id", "Label"}]
  GETIMPORT R6 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
  SETTABLEKS R6 R5 K6 ["Id"]
  LOADK R8 K13 ["AccessoriesSettings"]
  LOADK R9 K14 ["CustomAccessoriesSectionPlayerChoiceButtonText"]
  NAMECALL R6 R1 K15 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Label"]
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["AccessoriesSettings"]
  LOADK R10 K18 ["CustomAccessoriesSectionCustomAccessoriesButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  SETLIST R4 R5 2 [1]
  GETTABLEKS R6 R3 K2 ["settings"]
  GETTABLEKS R5 R6 K19 ["accessoriesSettings"]
  GETTABLEKS R7 R5 K20 ["customAccessoriesSetting"]
  GETTABLEKS R6 R7 K21 ["value"]
  GETIMPORT R7 K24 [UDim.new]
  LOADN R8 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R7 2 1
  GETIMPORT R9 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
  JUMPIFEQ R6 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R9 5
  GETUPVAL R10 6
  DUPTABLE R11 K30 [{"text", "contentTags", "layoutOrder", "showWarning"}]
  LOADK R14 K13 ["AccessoriesSettings"]
  LOADK R15 K31 ["CustomAccessoriesSection"]
  NAMECALL R12 R1 K15 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["text"]
  LOADK R12 K32 ["Component-ExpandableSection-Content"]
  SETTABLEKS R12 R11 K27 ["contentTags"]
  GETTABLEKS R12 R0 K28 ["layoutOrder"]
  SETTABLEKS R12 R11 K28 ["layoutOrder"]
  LOADB R12 1
  SETTABLEKS R12 R11 K29 ["showWarning"]
  DUPTABLE R12 K43 [{"UIListLayout", "CustomAccessoriesModeSelector", "HairAssetSelector", "HeadAssetSelector", "FaceAssetSelector", "NeckAssetSelector", "ShoulderAssetSelector", "FrontAssetSelector", "BackAssetSelector", "WaistAssetSelector"}]
  GETUPVAL R13 5
  LOADK R14 K33 ["UIListLayout"]
  DUPTABLE R15 K45 [{"Padding"}]
  GETIMPORT R16 K24 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K44 ["Padding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["UIListLayout"]
  GETUPVAL R13 5
  GETUPVAL R14 7
  DUPTABLE R15 K50 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  SETTABLEKS R4 R15 K46 ["items"]
  SETTABLEKS R6 R15 K47 ["selected"]
  GETTABLEKS R17 R5 K20 ["customAccessoriesSetting"]
  GETTABLEKS R16 R17 K51 ["set"]
  SETTABLEKS R16 R15 K48 ["onItemActivated"]
  LOADK R18 K13 ["AccessoriesSettings"]
  GETIMPORT R20 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
  JUMPIFNOTEQ R6 R20 [+3]
  LOADK R19 K52 ["CustomAccessoriesSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R19 K53 ["CustomAccessoriesSectionCustomAccessoriesSubText"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K49 ["subText"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["CustomAccessoriesModeSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K58 ["CustomAccessoriesSectionCustomAccessoriesHair"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K64 ["customAccessoriesHairSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K67 [Enum.AssetType.HairAccessory]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K35 ["HairAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K68 ["CustomAccessoriesSectionCustomAccessoriesHead"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K69 ["customAccessoriesHeadSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K71 [Enum.AssetType.Hat]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K36 ["HeadAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K72 ["CustomAccessoriesSectionCustomAccessoriesFace"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K73 ["customAccessoriesFaceSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K75 [Enum.AssetType.FaceAccessory]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K37 ["FaceAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K76 ["CustomAccessoriesSectionCustomAccessoriesNeck"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K77 ["customAccessoriesNeckSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K79 [Enum.AssetType.NeckAccessory]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K38 ["NeckAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K80 ["CustomAccessoriesSectionCustomAccessoriesShoulder"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K81 ["customAccessoriesShoulderSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K83 [Enum.AssetType.ShoulderAccessory]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K39 ["ShoulderAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K84 ["CustomAccessoriesSectionCustomAccessoriesFront"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K85 ["customAccessoriesFrontSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K87 [Enum.AssetType.FrontAccessory]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K40 ["FrontAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K88 ["CustomAccessoriesSectionCustomAccessoriesBack"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K89 ["customAccessoriesBackSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K91 [Enum.AssetType.BackAccessory]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K41 ["BackAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+35]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K54 ["minTextLabelWidth"]
  LOADK R16 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K55 ["textLabelTags"]
  LOADK R18 K13 ["AccessoriesSettings"]
  LOADK R19 K92 ["CustomAccessoriesSectionCustomAccessoriesWaist"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K28 ["layoutOrder"]
  DUPTABLE R16 K60 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R20 R5 K93 ["customAccessoriesWaistSetting"]
  SETTABLEKS R20 R19 K61 ["assetIdSetting"]
  GETIMPORT R20 K95 [Enum.AssetType.WaistAccessory]
  SETTABLEKS R20 R19 K62 ["expectedAssetType"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K42 ["WaistAssetSelector"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Components"]
  GETTABLEKS R2 R3 K8 ["AssetIdSelector"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K9 ["Contexts"]
  GETTABLEKS R3 R4 K10 ["AvatarSettingsContext"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Components"]
  GETTABLEKS R5 R6 K13 ["ExpandableSection"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K14 ["Packages"]
  GETTABLEKS R6 R7 K15 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K7 ["Components"]
  GETTABLEKS R7 R8 K16 ["GenericModeSelector"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K14 ["Packages"]
  GETTABLEKS R8 R9 K17 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K14 ["Packages"]
  GETTABLEKS R9 R10 K18 ["ReactUtils"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K7 ["Components"]
  GETTABLEKS R10 R11 K19 ["TitledComponent"]
  CALL R9 1 1
  GETTABLEKS R10 R5 K20 ["ContextServices"]
  GETTABLEKS R11 R10 K21 ["Localization"]
  GETTABLEKS R12 R8 K22 ["createNextOrder"]
  GETTABLEKS R13 R7 K23 ["createElement"]
  DUPCLOSURE R14 K24 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R1
  RETURN R14 1
