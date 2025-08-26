PROTO_0:
  GETUPVAL R1 0
  JUMPIFEQ R0 R1 [+11]
  GETUPVAL R1 1
  LOADK R3 K0 ["AppearanceModeSelected"]
  DUPTABLE R4 K2 [{"appearanceMode"}]
  GETTABLEKS R5 R0 K3 ["Name"]
  SETTABLEKS R5 R4 K1 ["appearanceMode"]
  NAMECALL R1 R1 K4 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["bodyAppearanceSetting"]
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
  GETIMPORT R7 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["BodySettings"]
  LOADK R10 K14 ["AppearanceSectionPlayerChoiceButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["BodySettings"]
  LOADK R11 K18 ["AppearanceSectionCustomPartsButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  SETLIST R5 R6 2 [1]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R6 R7 K19 ["bodySettings"]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R11 R7 K20 ["navigationBarSettings"]
  GETTABLEKS R10 R11 K21 ["avatarType"]
  GETTABLEKS R9 R10 K22 ["value"]
  GETIMPORT R10 K25 [Enum.GameAvatarType.R6]
  JUMPIFEQ R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETTABLEKS R10 R6 K26 ["bodyAppearanceSetting"]
  GETTABLEKS R9 R10 K22 ["value"]
  GETIMPORT R10 K29 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K30 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R10 2 1
  GETIMPORT R12 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
  JUMPIFEQ R9 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R12 7
  GETUPVAL R13 8
  DUPTABLE R14 K33 [{"text", "layoutOrder"}]
  LOADK R17 K13 ["BodySettings"]
  LOADK R18 K34 ["AppearanceSection"]
  NAMECALL R15 R1 K15 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K31 ["text"]
  GETTABLEKS R15 R0 K32 ["layoutOrder"]
  SETTABLEKS R15 R14 K32 ["layoutOrder"]
  DUPTABLE R15 K46 [{"AppearanceGenericModeSelector", "FaceAssetSelector", "HeadAssetSelector", "MoodAssetSelector", "EyebrowAssetSelector", "EyelashAssetSelector", "TorsoAssetSelector", "LeftArmAssetSelector", "RightArmAssetSelector", "LeftLegAssetSelector", "RightLegAssetSelector"}]
  GETUPVAL R16 7
  GETUPVAL R17 9
  DUPTABLE R18 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  SETTABLEKS R5 R18 K47 ["items"]
  SETTABLEKS R9 R18 K48 ["selected"]
  GETUPVAL R20 1
  CALL R20 0 1
  JUMPIFNOT R20 [+5]
  NEWCLOSURE R19 P0
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R6
  JUMP [+4]
  GETTABLEKS R20 R6 K26 ["bodyAppearanceSetting"]
  GETTABLEKS R19 R20 K52 ["set"]
  SETTABLEKS R19 R18 K49 ["onItemActivated"]
  LOADK R21 K13 ["BodySettings"]
  GETIMPORT R23 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
  JUMPIFNOTEQ R9 R23 [+3]
  LOADK R22 K53 ["AppearanceSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R22 K54 ["AppearanceSectionCustomPartsSubText"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K50 ["subText"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["AppearanceGenericModeSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+49]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K59 ["AppearanceSectionFace"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R23 R6 K66 ["bodyAppearanceCustomPartsFace"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  GETUPVAL R24 12
  JUMPIFNOT R24 [+9]
  NEWTABLE R23 0 2
  GETIMPORT R24 K69 [Enum.AssetType.Face]
  GETIMPORT R25 K71 [Enum.AssetType.Model]
  SETLIST R23 R24 2 [1]
  JUMP [+2]
  GETIMPORT R23 K69 [Enum.AssetType.Face]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K36 ["FaceAssetSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+44]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K72 ["AppearanceSectionHead"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R23 R6 K73 ["bodyAppearanceCustomPartsHead"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  NEWTABLE R23 0 2
  GETIMPORT R24 K75 [Enum.AssetType.Head]
  GETIMPORT R25 K77 [Enum.AssetType.DynamicHead]
  SETLIST R23 R24 2 [1]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["HeadAssetSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+40]
  NOT R16 R8
  JUMPIFNOT R16 [+38]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K78 ["AppearanceSectionMood"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R23 R6 K80 ["bodyAppearanceCustomPartsMood"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  GETIMPORT R23 K82 [Enum.AssetType.Animation]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K38 ["MoodAssetSelector"]
  GETUPVAL R16 13
  JUMPIFNOT R16 [+42]
  MOVE R16 R11
  JUMPIFNOT R16 [+40]
  NOT R16 R8
  JUMPIFNOT R16 [+38]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K83 ["AppearanceSectionEyebrow"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R23 R6 K84 ["bodyAppearanceCustomPartsEyebrow"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  GETIMPORT R23 K86 [Enum.AssetType.EyebrowAccessory]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K39 ["EyebrowAssetSelector"]
  GETUPVAL R16 13
  JUMPIFNOT R16 [+42]
  MOVE R16 R11
  JUMPIFNOT R16 [+40]
  NOT R16 R8
  JUMPIFNOT R16 [+38]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K87 ["AppearanceSectionEyelash"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R23 R6 K88 ["bodyAppearanceCustomPartsEyelash"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  GETIMPORT R23 K90 [Enum.AssetType.EyelashAccessory]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K40 ["EyelashAssetSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+49]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K91 ["AppearanceSectionTorso"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R23 R6 K92 ["bodyAppearanceCustomPartsTorso"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  GETUPVAL R24 12
  JUMPIFNOT R24 [+9]
  NEWTABLE R23 0 2
  GETIMPORT R24 K94 [Enum.AssetType.Torso]
  GETIMPORT R25 K71 [Enum.AssetType.Model]
  SETLIST R23 R24 2 [1]
  JUMP [+2]
  GETIMPORT R23 K94 [Enum.AssetType.Torso]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["TorsoAssetSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+49]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K95 ["AppearanceSectionLeftArm"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R23 R6 K96 ["bodyAppearanceCustomPartsLeftArm"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  GETUPVAL R24 12
  JUMPIFNOT R24 [+9]
  NEWTABLE R23 0 2
  GETIMPORT R24 K98 [Enum.AssetType.LeftArm]
  GETIMPORT R25 K71 [Enum.AssetType.Model]
  SETLIST R23 R24 2 [1]
  JUMP [+2]
  GETIMPORT R23 K98 [Enum.AssetType.LeftArm]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K42 ["LeftArmAssetSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+49]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K99 ["AppearanceSectionRightArm"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R23 R6 K100 ["bodyAppearanceCustomPartsRightArm"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  GETUPVAL R24 12
  JUMPIFNOT R24 [+9]
  NEWTABLE R23 0 2
  GETIMPORT R24 K102 [Enum.AssetType.RightArm]
  GETIMPORT R25 K71 [Enum.AssetType.Model]
  SETLIST R23 R24 2 [1]
  JUMP [+2]
  GETIMPORT R23 K102 [Enum.AssetType.RightArm]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K43 ["RightArmAssetSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+49]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K103 ["AppearanceSectionLeftLeg"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R23 R6 K104 ["bodyAppearanceCustomPartsLeftLeg"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  GETUPVAL R24 12
  JUMPIFNOT R24 [+9]
  NEWTABLE R23 0 2
  GETIMPORT R24 K106 [Enum.AssetType.LeftLeg]
  GETIMPORT R25 K71 [Enum.AssetType.Model]
  SETLIST R23 R24 2 [1]
  JUMP [+2]
  GETIMPORT R23 K106 [Enum.AssetType.LeftLeg]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K44 ["LeftLegAssetSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+49]
  GETUPVAL R16 7
  GETUPVAL R17 10
  DUPTABLE R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R10 R18 K55 ["minTextLabelWidth"]
  LOADK R19 K58 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K56 ["textLabelTags"]
  LOADK R21 K13 ["BodySettings"]
  LOADK R22 K107 ["AppearanceSectionRightLeg"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K32 ["layoutOrder"]
  DUPTABLE R19 K61 [{"Content"}]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
  GETTABLEKS R23 R6 K108 ["bodyAppearanceCustomPartsRightLeg"]
  SETTABLEKS R23 R22 K62 ["assetIdSetting"]
  GETUPVAL R24 12
  JUMPIFNOT R24 [+9]
  NEWTABLE R23 0 2
  GETIMPORT R24 K110 [Enum.AssetType.RightLeg]
  GETIMPORT R25 K71 [Enum.AssetType.Model]
  SETLIST R23 R24 2 [1]
  JUMP [+2]
  GETIMPORT R23 K110 [Enum.AssetType.RightLeg]
  SETTABLEKS R23 R22 K63 ["expectedAssetType"]
  LOADB R23 1
  SETTABLEKS R23 R22 K64 ["assetCannotBeEmpty"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Content"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K45 ["RightLegAssetSelector"]
  CALL R12 3 -1
  RETURN R12 -1

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
  GETIMPORT R16 K29 [game]
  LOADK R18 K30 ["AvatarSettingsDontSaveSomePropsInLegacySettings"]
  NAMECALL R16 R16 K31 ["GetEngineFeature"]
  CALL R16 2 1
  GETIMPORT R17 K29 [game]
  LOADK R19 K32 ["AvatarSettingsEyebrowEyelashSelectors"]
  LOADB R20 0
  NAMECALL R17 R17 K33 ["DefineFastFlag"]
  CALL R17 3 1
  DUPCLOSURE R18 K34 [PROTO_1]
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
  CAPTURE VAL R16
  CAPTURE VAL R17
  RETURN R18 1
