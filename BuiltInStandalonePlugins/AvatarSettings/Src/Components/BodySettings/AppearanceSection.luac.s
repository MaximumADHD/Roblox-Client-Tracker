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
  GETTABLEKS R6 R3 K2 ["settings"]
  GETTABLEKS R10 R6 K20 ["navigationBarSettings"]
  GETTABLEKS R9 R10 K21 ["avatarType"]
  GETTABLEKS R8 R9 K22 ["value"]
  GETIMPORT R9 K25 [Enum.GameAvatarType.R6]
  JUMPIFEQ R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETTABLEKS R9 R5 K26 ["bodyAppearanceSetting"]
  GETTABLEKS R8 R9 K22 ["value"]
  GETIMPORT R9 K29 [UDim.new]
  LOADN R10 0
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K30 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R9 2 1
  GETIMPORT R11 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
  JUMPIFEQ R8 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R11 5
  GETUPVAL R12 6
  DUPTABLE R13 K33 [{"text", "layoutOrder"}]
  LOADK R16 K13 ["BodySettings"]
  LOADK R17 K34 ["AppearanceSection"]
  NAMECALL R14 R1 K15 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K31 ["text"]
  GETTABLEKS R14 R0 K32 ["layoutOrder"]
  SETTABLEKS R14 R13 K32 ["layoutOrder"]
  DUPTABLE R14 K46 [{"AppearanceGenericModeSelector", "FaceAssetSelector", "HeadAssetSelector", "MoodAssetSelector", "EyebrowAssetSelector", "EyelashAssetSelector", "TorsoAssetSelector", "LeftArmAssetSelector", "RightArmAssetSelector", "LeftLegAssetSelector", "RightLegAssetSelector"}]
  GETUPVAL R15 5
  GETUPVAL R16 7
  DUPTABLE R17 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  SETTABLEKS R4 R17 K47 ["items"]
  SETTABLEKS R8 R17 K48 ["selected"]
  GETTABLEKS R19 R5 K26 ["bodyAppearanceSetting"]
  GETTABLEKS R18 R19 K52 ["set"]
  SETTABLEKS R18 R17 K49 ["onItemActivated"]
  LOADK R20 K13 ["BodySettings"]
  GETIMPORT R22 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  JUMPIFNOTEQ R8 R22 [+3]
  LOADK R21 K53 ["AppearanceSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R21 K54 ["AppearanceSectionCustomPartsSubText"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K50 ["subText"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["AppearanceGenericModeSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+49]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K59 ["AppearanceSectionFace"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R22 R5 K66 ["bodyAppearanceCustomPartsFace"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  GETUPVAL R23 10
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K69 [Enum.AssetType.Face]
  GETIMPORT R24 K71 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K69 [Enum.AssetType.Face]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K36 ["FaceAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+44]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K72 ["AppearanceSectionHead"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R22 R5 K73 ["bodyAppearanceCustomPartsHead"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  NEWTABLE R22 0 2
  GETIMPORT R23 K75 [Enum.AssetType.Head]
  GETIMPORT R24 K77 [Enum.AssetType.DynamicHead]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K37 ["HeadAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+40]
  NOT R15 R7
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K78 ["AppearanceSectionMood"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R5 K80 ["bodyAppearanceCustomPartsMood"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  GETIMPORT R22 K82 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K38 ["MoodAssetSelector"]
  GETUPVAL R15 11
  JUMPIFNOT R15 [+42]
  MOVE R15 R10
  JUMPIFNOT R15 [+40]
  NOT R15 R7
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K83 ["AppearanceSectionEyebrow"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R5 K84 ["bodyAppearanceCustomPartsEyebrow"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  GETIMPORT R22 K86 [Enum.AssetType.EyebrowAccessory]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K39 ["EyebrowAssetSelector"]
  GETUPVAL R15 11
  JUMPIFNOT R15 [+42]
  MOVE R15 R10
  JUMPIFNOT R15 [+40]
  NOT R15 R7
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K87 ["AppearanceSectionEyelash"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R5 K88 ["bodyAppearanceCustomPartsEyelash"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  GETIMPORT R22 K90 [Enum.AssetType.EyelashAccessory]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K40 ["EyelashAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+49]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K91 ["AppearanceSectionTorso"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R22 R5 K92 ["bodyAppearanceCustomPartsTorso"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  GETUPVAL R23 10
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K94 [Enum.AssetType.Torso]
  GETIMPORT R24 K71 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K94 [Enum.AssetType.Torso]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K41 ["TorsoAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+49]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K95 ["AppearanceSectionLeftArm"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R22 R5 K96 ["bodyAppearanceCustomPartsLeftArm"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  GETUPVAL R23 10
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K98 [Enum.AssetType.LeftArm]
  GETIMPORT R24 K71 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K98 [Enum.AssetType.LeftArm]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K42 ["LeftArmAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+49]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K99 ["AppearanceSectionRightArm"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R22 R5 K100 ["bodyAppearanceCustomPartsRightArm"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  GETUPVAL R23 10
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K102 [Enum.AssetType.RightArm]
  GETIMPORT R24 K71 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K102 [Enum.AssetType.RightArm]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K43 ["RightArmAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+49]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K103 ["AppearanceSectionLeftLeg"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R22 R5 K104 ["bodyAppearanceCustomPartsLeftLeg"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  GETUPVAL R23 10
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K106 [Enum.AssetType.LeftLeg]
  GETIMPORT R24 K71 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K106 [Enum.AssetType.LeftLeg]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K44 ["LeftLegAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+49]
  GETUPVAL R15 5
  GETUPVAL R16 8
  DUPTABLE R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K55 ["minTextLabelWidth"]
  LOADK R18 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K56 ["textLabelTags"]
  LOADK R20 K13 ["BodySettings"]
  LOADK R21 K107 ["AppearanceSectionRightLeg"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R19 5
  GETUPVAL R20 9
  DUPTABLE R21 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R22 R5 K108 ["bodyAppearanceCustomPartsRightLeg"]
  SETTABLEKS R22 R21 K62 ["assetIdSetting"]
  GETUPVAL R23 10
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K110 [Enum.AssetType.RightLeg]
  GETIMPORT R24 K71 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K110 [Enum.AssetType.RightLeg]
  SETTABLEKS R22 R21 K63 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K64 ["assetCannotBeEmpty"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K45 ["RightLegAssetSelector"]
  CALL R11 3 -1
  RETURN R11 -1

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
  GETIMPORT R14 K25 [game]
  LOADK R16 K26 ["AvatarSettingsDontSaveSomePropsInLegacySettings"]
  NAMECALL R14 R14 K27 ["GetEngineFeature"]
  CALL R14 2 1
  GETIMPORT R15 K25 [game]
  LOADK R17 K28 ["AvatarSettingsEyebrowEyelashSelectors"]
  LOADB R18 0
  NAMECALL R15 R15 K29 ["DefineFastFlag"]
  CALL R15 3 1
  DUPCLOSURE R16 K30 [PROTO_0]
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
  CAPTURE VAL R14
  CAPTURE VAL R15
  RETURN R16 1
