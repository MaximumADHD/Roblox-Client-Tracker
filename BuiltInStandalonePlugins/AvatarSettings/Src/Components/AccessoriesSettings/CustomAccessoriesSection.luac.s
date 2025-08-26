PROTO_0:
  GETUPVAL R1 0
  JUMPIFEQ R1 R0 [+11]
  GETUPVAL R1 1
  LOADK R3 K0 ["CustomAccessoryModeSelected"]
  DUPTABLE R4 K2 [{"customAccessoryMode"}]
  GETTABLEKS R5 R0 K3 ["Name"]
  SETTABLEKS R5 R4 K1 ["customAccessoryMode"]
  NAMECALL R1 R1 K4 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["customAccessoriesSetting"]
  GETTABLEKS R1 R2 K6 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R3 3
  CALL R3 0 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["useContext"]
  GETUPVAL R5 5
  CALL R4 1 1
  GETTABLEKS R7 R4 K2 ["settings"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K3 [+4]
  LOADK R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  NEWTABLE R5 0 2
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["AccessoriesSettings"]
  LOADK R10 K14 ["CustomAccessoriesSectionPlayerChoiceButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["AccessoriesSettings"]
  LOADK R11 K18 ["CustomAccessoriesSectionCustomAccessoriesButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  SETLIST R5 R6 2 [1]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R6 R7 K19 ["accessoriesSettings"]
  GETTABLEKS R8 R6 K20 ["customAccessoriesSetting"]
  GETTABLEKS R7 R8 K21 ["value"]
  GETIMPORT R8 K24 [UDim.new]
  LOADN R9 0
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R8 2 1
  GETIMPORT R10 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
  JUMPIFEQ R7 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R10 7
  GETUPVAL R11 8
  DUPTABLE R12 K30 [{"text", "contentTags", "layoutOrder", "showWarning"}]
  LOADK R15 K13 ["AccessoriesSettings"]
  LOADK R16 K31 ["CustomAccessoriesSection"]
  NAMECALL R13 R1 K15 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K26 ["text"]
  LOADK R13 K32 ["Component-ExpandableSection-Content"]
  SETTABLEKS R13 R12 K27 ["contentTags"]
  GETTABLEKS R13 R0 K28 ["layoutOrder"]
  SETTABLEKS R13 R12 K28 ["layoutOrder"]
  LOADB R13 1
  SETTABLEKS R13 R12 K29 ["showWarning"]
  DUPTABLE R13 K43 [{"UIListLayout", "CustomAccessoriesModeSelector", "HairAssetSelector", "HeadAssetSelector", "FaceAssetSelector", "NeckAssetSelector", "ShoulderAssetSelector", "FrontAssetSelector", "BackAssetSelector", "WaistAssetSelector"}]
  GETUPVAL R14 7
  LOADK R15 K33 ["UIListLayout"]
  DUPTABLE R16 K45 [{"Padding"}]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K33 ["UIListLayout"]
  GETUPVAL R14 7
  GETUPVAL R15 9
  DUPTABLE R16 K50 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  SETTABLEKS R5 R16 K46 ["items"]
  SETTABLEKS R7 R16 K47 ["selected"]
  GETUPVAL R18 1
  CALL R18 0 1
  JUMPIFNOT R18 [+5]
  NEWCLOSURE R17 P0
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  JUMP [+4]
  GETTABLEKS R18 R6 K20 ["customAccessoriesSetting"]
  GETTABLEKS R17 R18 K51 ["set"]
  SETTABLEKS R17 R16 K48 ["onItemActivated"]
  LOADK R19 K13 ["AccessoriesSettings"]
  GETIMPORT R21 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
  JUMPIFNOTEQ R7 R21 [+3]
  LOADK R20 K52 ["CustomAccessoriesSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R20 K53 ["CustomAccessoriesSectionCustomAccessoriesSubText"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K49 ["subText"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K34 ["CustomAccessoriesModeSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K58 ["CustomAccessoriesSectionCustomAccessoriesHair"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K64 ["customAccessoriesHairSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K67 [Enum.AssetType.HairAccessory]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K35 ["HairAssetSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K68 ["CustomAccessoriesSectionCustomAccessoriesHead"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K69 ["customAccessoriesHeadSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K71 [Enum.AssetType.Hat]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K36 ["HeadAssetSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K72 ["CustomAccessoriesSectionCustomAccessoriesFace"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K73 ["customAccessoriesFaceSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K75 [Enum.AssetType.FaceAccessory]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K37 ["FaceAssetSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K76 ["CustomAccessoriesSectionCustomAccessoriesNeck"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K77 ["customAccessoriesNeckSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K79 [Enum.AssetType.NeckAccessory]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K38 ["NeckAssetSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K80 ["CustomAccessoriesSectionCustomAccessoriesShoulder"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K81 ["customAccessoriesShoulderSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K83 [Enum.AssetType.ShoulderAccessory]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K39 ["ShoulderAssetSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K84 ["CustomAccessoriesSectionCustomAccessoriesFront"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K85 ["customAccessoriesFrontSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K87 [Enum.AssetType.FrontAccessory]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K40 ["FrontAssetSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K88 ["CustomAccessoriesSectionCustomAccessoriesBack"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K89 ["customAccessoriesBackSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K91 [Enum.AssetType.BackAccessory]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K41 ["BackAssetSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R16 K54 ["minTextLabelWidth"]
  LOADK R17 K57 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K55 ["textLabelTags"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K92 ["CustomAccessoriesSectionCustomAccessoriesWaist"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["text"]
  MOVE R17 R3
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  DUPTABLE R17 K60 [{"Content"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K63 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R6 K93 ["customAccessoriesWaistSetting"]
  SETTABLEKS R21 R20 K61 ["assetIdSetting"]
  GETIMPORT R21 K95 [Enum.AssetType.WaistAccessory]
  SETTABLEKS R21 R20 K62 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K42 ["WaistAssetSelector"]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K11 ["Util"]
  GETTABLEKS R14 R15 K22 ["Telemetry"]
  GETTABLEKS R13 R14 K23 ["TelemetryContext"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K24 ["Flags"]
  GETTABLEKS R14 R15 K25 ["getFFlagAddTelemetry"]
  CALL R13 1 1
  GETTABLEKS R14 R8 K26 ["createNextOrder"]
  GETTABLEKS R15 R7 K27 ["createElement"]
  DUPCLOSURE R16 K28 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R1
  RETURN R16 1
