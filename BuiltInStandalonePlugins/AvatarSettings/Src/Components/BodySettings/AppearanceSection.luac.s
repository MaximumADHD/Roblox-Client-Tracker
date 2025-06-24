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
  GETIMPORT R6 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  SETTABLEKS R6 R5 K6 ["Id"]
  LOADK R8 K13 ["BodySettings"]
  LOADK R9 K14 ["AppearanceSectionPlayerChoiceButtonText"]
  NAMECALL R6 R1 K15 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Label"]
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["BodySettings"]
  LOADK R10 K18 ["AppearanceSectionCustomPartsButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  SETLIST R4 R5 2 [1]
  GETTABLEKS R6 R3 K2 ["settings"]
  GETTABLEKS R5 R6 K19 ["bodySettings"]
  GETTABLEKS R7 R5 K20 ["bodyAppearanceSetting"]
  GETTABLEKS R6 R7 K21 ["value"]
  GETIMPORT R7 K24 [UDim.new]
  LOADN R8 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R7 2 1
  GETIMPORT R9 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
  JUMPIFEQ R6 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R9 5
  GETUPVAL R10 6
  DUPTABLE R11 K28 [{"text", "layoutOrder"}]
  LOADK R14 K13 ["BodySettings"]
  LOADK R15 K29 ["AppearanceSection"]
  NAMECALL R12 R1 K15 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["text"]
  GETTABLEKS R12 R0 K27 ["layoutOrder"]
  SETTABLEKS R12 R11 K27 ["layoutOrder"]
  DUPTABLE R12 K38 [{"AppearanceGenericModeSelector", "FaceAssetSelector", "HeadAssetSelector", "TorsoAssetSelector", "LeftArmAssetSelector", "RightArmAssetSelector", "LeftLegAssetSelector", "RightLegAssetSelector"}]
  GETUPVAL R13 5
  GETUPVAL R14 7
  DUPTABLE R15 K43 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  SETTABLEKS R4 R15 K39 ["items"]
  SETTABLEKS R6 R15 K40 ["selected"]
  GETTABLEKS R17 R5 K20 ["bodyAppearanceSetting"]
  GETTABLEKS R16 R17 K44 ["set"]
  SETTABLEKS R16 R15 K41 ["onItemActivated"]
  LOADK R18 K13 ["BodySettings"]
  GETIMPORT R20 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  JUMPIFNOTEQ R6 R20 [+3]
  LOADK R19 K45 ["AppearanceSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R19 K46 ["AppearanceSectionCustomPartsSubText"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K42 ["subText"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["AppearanceGenericModeSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+38]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K49 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K47 ["minTextLabelWidth"]
  LOADK R16 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K48 ["textLabelTags"]
  LOADK R18 K13 ["BodySettings"]
  LOADK R19 K51 ["AppearanceSectionFace"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  DUPTABLE R16 K53 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R20 R5 K58 ["bodyAppearanceCustomPartsFace"]
  SETTABLEKS R20 R19 K54 ["assetIdSetting"]
  GETIMPORT R20 K61 [Enum.AssetType.Face]
  SETTABLEKS R20 R19 K55 ["expectedAssetType"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["assetCannotBeEmpty"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K31 ["FaceAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+44]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K49 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K47 ["minTextLabelWidth"]
  LOADK R16 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K48 ["textLabelTags"]
  LOADK R18 K13 ["BodySettings"]
  LOADK R19 K62 ["AppearanceSectionHead"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  DUPTABLE R16 K53 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R20 R5 K63 ["bodyAppearanceCustomPartsHead"]
  SETTABLEKS R20 R19 K54 ["assetIdSetting"]
  NEWTABLE R20 0 2
  GETIMPORT R21 K65 [Enum.AssetType.Head]
  GETIMPORT R22 K67 [Enum.AssetType.DynamicHead]
  SETLIST R20 R21 2 [1]
  SETTABLEKS R20 R19 K55 ["expectedAssetType"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["assetCannotBeEmpty"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K32 ["HeadAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+38]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K49 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K47 ["minTextLabelWidth"]
  LOADK R16 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K48 ["textLabelTags"]
  LOADK R18 K13 ["BodySettings"]
  LOADK R19 K68 ["AppearanceSectionTorso"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  DUPTABLE R16 K53 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R20 R5 K69 ["bodyAppearanceCustomPartsTorso"]
  SETTABLEKS R20 R19 K54 ["assetIdSetting"]
  GETIMPORT R20 K71 [Enum.AssetType.Torso]
  SETTABLEKS R20 R19 K55 ["expectedAssetType"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["assetCannotBeEmpty"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K33 ["TorsoAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+38]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K49 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K47 ["minTextLabelWidth"]
  LOADK R16 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K48 ["textLabelTags"]
  LOADK R18 K13 ["BodySettings"]
  LOADK R19 K72 ["AppearanceSectionLeftArm"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  DUPTABLE R16 K53 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R20 R5 K73 ["bodyAppearanceCustomPartsLeftArm"]
  SETTABLEKS R20 R19 K54 ["assetIdSetting"]
  GETIMPORT R20 K75 [Enum.AssetType.LeftArm]
  SETTABLEKS R20 R19 K55 ["expectedAssetType"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["assetCannotBeEmpty"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K34 ["LeftArmAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+38]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K49 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K47 ["minTextLabelWidth"]
  LOADK R16 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K48 ["textLabelTags"]
  LOADK R18 K13 ["BodySettings"]
  LOADK R19 K76 ["AppearanceSectionRightArm"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  DUPTABLE R16 K53 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R20 R5 K77 ["bodyAppearanceCustomPartsRightArm"]
  SETTABLEKS R20 R19 K54 ["assetIdSetting"]
  GETIMPORT R20 K79 [Enum.AssetType.RightArm]
  SETTABLEKS R20 R19 K55 ["expectedAssetType"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["assetCannotBeEmpty"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K35 ["RightArmAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+38]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K49 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K47 ["minTextLabelWidth"]
  LOADK R16 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K48 ["textLabelTags"]
  LOADK R18 K13 ["BodySettings"]
  LOADK R19 K80 ["AppearanceSectionLeftLeg"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  DUPTABLE R16 K53 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R20 R5 K81 ["bodyAppearanceCustomPartsLeftLeg"]
  SETTABLEKS R20 R19 K54 ["assetIdSetting"]
  GETIMPORT R20 K83 [Enum.AssetType.LeftLeg]
  SETTABLEKS R20 R19 K55 ["expectedAssetType"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["assetCannotBeEmpty"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K36 ["LeftLegAssetSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+38]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K49 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R15 K47 ["minTextLabelWidth"]
  LOADK R16 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K48 ["textLabelTags"]
  LOADK R18 K13 ["BodySettings"]
  LOADK R19 K84 ["AppearanceSectionRightLeg"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  DUPTABLE R16 K53 [{"Content"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K57 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R20 R5 K85 ["bodyAppearanceCustomPartsRightLeg"]
  SETTABLEKS R20 R19 K54 ["assetIdSetting"]
  GETIMPORT R20 K87 [Enum.AssetType.RightLeg]
  SETTABLEKS R20 R19 K55 ["expectedAssetType"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["assetCannotBeEmpty"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K37 ["RightLegAssetSelector"]
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
