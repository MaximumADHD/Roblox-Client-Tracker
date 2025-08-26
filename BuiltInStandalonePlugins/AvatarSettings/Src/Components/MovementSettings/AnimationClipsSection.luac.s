PROTO_0:
  GETUPVAL R1 0
  JUMPIFEQ R1 R0 [+11]
  GETUPVAL R1 1
  LOADK R3 K0 ["AnimationClipsModeSelected"]
  DUPTABLE R4 K2 [{"animationClipsMode"}]
  GETTABLEKS R5 R0 K3 ["Name"]
  SETTABLEKS R5 R4 K1 ["animationClipsMode"]
  NAMECALL R1 R1 K4 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["animationClipsSetting"]
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
  GETIMPORT R7 K12 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["AnimationSettings"]
  LOADK R10 K14 ["AnimationClipsSectionPlayerChoiceButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K17 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["AnimationSettings"]
  LOADK R11 K18 ["AnimationClipsSectionCustomClipsButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  SETLIST R5 R6 2 [1]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R6 R7 K19 ["animationSettings"]
  GETTABLEKS R8 R6 K20 ["animationPacksSetting"]
  GETTABLEKS R7 R8 K21 ["value"]
  GETTABLEKS R9 R6 K22 ["animationClipsSetting"]
  GETTABLEKS R8 R9 K21 ["value"]
  GETIMPORT R9 K25 [UDim.new]
  LOADN R10 0
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R9 2 1
  GETIMPORT R11 K17 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
  JUMPIFEQ R8 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R11 7
  GETUPVAL R12 8
  DUPTABLE R13 K30 [{"text", "layoutOrder", "showWarning"}]
  LOADK R16 K13 ["AnimationSettings"]
  LOADK R17 K31 ["AnimationClipsSection"]
  NAMECALL R14 R1 K15 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K27 ["text"]
  GETTABLEKS R14 R0 K28 ["layoutOrder"]
  SETTABLEKS R14 R13 K28 ["layoutOrder"]
  LOADB R14 1
  SETTABLEKS R14 R13 K29 ["showWarning"]
  DUPTABLE R14 K43 [{"AnimationClipsModeSelector", "RunAssetSelector", "WalkAssetSelector", "FallAssetSelector", "JumpAssetSelector", "IdleAssetSelector", "IdleAlt1AssetSelector", "IdleAlt2AssetSelector", "SwimAssetSelector", "SwimIdleAssetSelector", "ClimbAssetSelector"}]
  GETUPVAL R15 7
  GETUPVAL R16 9
  DUPTABLE R17 K48 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  SETTABLEKS R5 R17 K44 ["items"]
  SETTABLEKS R8 R17 K45 ["selected"]
  GETUPVAL R19 1
  CALL R19 0 1
  JUMPIFNOT R19 [+5]
  NEWCLOSURE R18 P0
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  JUMP [+4]
  GETTABLEKS R19 R6 K22 ["animationClipsSetting"]
  GETTABLEKS R18 R19 K49 ["set"]
  SETTABLEKS R18 R17 K46 ["onItemActivated"]
  LOADK R20 K13 ["AnimationSettings"]
  GETIMPORT R22 K12 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
  JUMPIFNOTEQ R8 R22 [+3]
  LOADK R21 K50 ["AnimationClipsSectionPlayerChoiceSubText"]
  JUMP [+13]
  GETIMPORT R22 K52 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
  JUMPIFNOTEQ R7 R22 [+3]
  LOADK R21 K53 ["AnimationClipsSectionCustomClipsPlayerChoiceSubText"]
  JUMP [+7]
  GETIMPORT R22 K55 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
  JUMPIFNOTEQ R7 R22 [+3]
  LOADK R21 K56 ["AnimationClipsSectionCustomClipsStandardR15SubText"]
  JUMP [+1]
  LOADK R21 K57 ["AnimationClipsSectionCustomClipsStandardR6SubText"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K47 ["subText"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["AnimationClipsModeSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K62 ["AnimationClipsSectionCustomClipsRun"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R6 K69 ["animationClipsRunSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["RunAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K73 ["AnimationClipsSectionCustomClipsWalk"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R6 K74 ["animationClipsWalkSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K34 ["WalkAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K75 ["AnimationClipsSectionCustomClipsFall"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R6 K76 ["animationClipsFallSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["FallAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K77 ["AnimationClipsSectionCustomClipsJump"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R6 K78 ["animationClipsJumpSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K36 ["JumpAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+41]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K79 ["AnimationClipsSectionCustomClipsIdle"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
  GETTABLEKS R22 R6 K82 ["animationClipsIdleSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  LOADK R22 K83 ["Animation1"]
  SETTABLEKS R22 R21 K80 ["animationType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K37 ["IdleAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+41]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K84 ["AnimationClipsSectionCustomClipsIdleAlt1"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
  GETTABLEKS R22 R6 K85 ["animationClipsIdleAlt1Setting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  LOADK R22 K86 ["Animation2"]
  SETTABLEKS R22 R21 K80 ["animationType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K38 ["IdleAlt1AssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+41]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K87 ["AnimationClipsSectionCustomClipsIdleAlt2"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
  GETTABLEKS R22 R6 K88 ["animationClipsIdleAlt2Setting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  LOADK R22 K89 ["Animation3"]
  SETTABLEKS R22 R21 K80 ["animationType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K39 ["IdleAlt2AssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+41]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K90 ["AnimationClipsSectionCustomClipsSwim"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
  GETTABLEKS R22 R6 K91 ["animationClipsSwimSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  LOADK R22 K92 ["Swim"]
  SETTABLEKS R22 R21 K80 ["animationType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K40 ["SwimAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+41]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K93 ["AnimationClipsSectionCustomClipsSwimIdle"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
  GETTABLEKS R22 R6 K94 ["animationClipsSwimIdleSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  LOADK R22 K95 ["SwimIdle"]
  SETTABLEKS R22 R21 K80 ["animationType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K41 ["SwimIdleAssetSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R9 R17 K58 ["minTextLabelWidth"]
  LOADK R18 K61 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K59 ["textLabelTags"]
  LOADK R20 K13 ["AnimationSettings"]
  LOADK R21 K96 ["AnimationClipsSectionCustomClipsClimb"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K28 ["layoutOrder"]
  DUPTABLE R18 K64 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
  GETTABLEKS R22 R6 K97 ["animationClipsClimbSetting"]
  SETTABLEKS R22 R21 K65 ["assetIdSetting"]
  LOADB R22 1
  SETTABLEKS R22 R21 K66 ["assetCannotBeEmpty"]
  GETIMPORT R22 K72 [Enum.AssetType.Animation]
  SETTABLEKS R22 R21 K67 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K63 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K42 ["ClimbAssetSelector"]
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
