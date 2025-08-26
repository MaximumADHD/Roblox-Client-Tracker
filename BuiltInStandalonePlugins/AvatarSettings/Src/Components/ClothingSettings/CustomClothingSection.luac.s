PROTO_0:
  GETUPVAL R1 0
  JUMPIFEQ R0 R1 [+11]
  GETUPVAL R1 1
  LOADK R3 K0 ["CustomClothingModeSelected"]
  DUPTABLE R4 K2 [{"customClothingMode"}]
  GETTABLEKS R5 R0 K3 ["Name"]
  SETTABLEKS R5 R4 K1 ["customClothingMode"]
  NAMECALL R1 R1 K4 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["customClothingSetting"]
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
  GETIMPORT R7 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["ClothingSettings"]
  LOADK R10 K14 ["CustomClothingSectionPlayerChoiceButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["ClothingSettings"]
  LOADK R11 K18 ["CustomClothingSectionCustomClothingButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  SETLIST R5 R6 2 [1]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R6 R7 K19 ["clothingSettings"]
  GETTABLEKS R8 R6 K20 ["customClothingSetting"]
  GETTABLEKS R7 R8 K21 ["value"]
  GETIMPORT R8 K24 [UDim.new]
  LOADN R9 0
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R8 2 1
  GETIMPORT R10 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
  JUMPIFEQ R7 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETTABLEKS R14 R4 K2 ["settings"]
  GETTABLEKS R13 R14 K26 ["navigationBarSettings"]
  GETTABLEKS R12 R13 K27 ["avatarType"]
  GETTABLEKS R11 R12 K21 ["value"]
  GETIMPORT R12 K30 [Enum.GameAvatarType.R6]
  JUMPIFNOTEQ R11 R12 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R11 7
  GETUPVAL R12 8
  DUPTABLE R13 K33 [{"text", "layoutOrder"}]
  LOADK R16 K13 ["ClothingSettings"]
  LOADK R17 K34 ["CustomClothingSection"]
  NAMECALL R14 R1 K15 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K31 ["text"]
  GETTABLEKS R14 R0 K32 ["layoutOrder"]
  SETTABLEKS R14 R13 K32 ["layoutOrder"]
  DUPTABLE R14 K45 [{"UIListLayout", "CustomClothingModeSelector", "TopsAssetSelector", "OuterwearAssetSelector", "BottomsAssetSelector", "LeftShoesAssetSelector", "RightShoesAssetSelector", "ClassicShirtsAssetSelector", "ClassicTShirtsAssetSelector", "ClassicPantsAssetSelector"}]
  GETUPVAL R15 7
  LOADK R16 K35 ["UIListLayout"]
  DUPTABLE R17 K47 [{"Padding"}]
  GETIMPORT R18 K24 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["UIListLayout"]
  GETUPVAL R15 7
  GETUPVAL R16 9
  DUPTABLE R17 K52 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  SETTABLEKS R5 R17 K48 ["items"]
  SETTABLEKS R7 R17 K49 ["selected"]
  GETUPVAL R19 1
  CALL R19 0 1
  JUMPIFNOT R19 [+5]
  NEWCLOSURE R18 P0
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  JUMP [+4]
  GETTABLEKS R19 R6 K20 ["customClothingSetting"]
  GETTABLEKS R18 R19 K53 ["set"]
  SETTABLEKS R18 R17 K50 ["onItemActivated"]
  LOADK R20 K13 ["ClothingSettings"]
  GETIMPORT R22 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
  JUMPIFNOTEQ R7 R22 [+3]
  LOADK R21 K54 ["CustomClothingSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R21 K55 ["CustomClothingSectionCustomClothingSubText"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K51 ["subText"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K36 ["CustomClothingModeSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+41]
  MOVE R15 R10
  JUMPIFNOT R15 [+39]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K60 ["CustomClothingSectionTops"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R22 R6 K67 ["customClothingTopsSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K68 ["TopsAssetSelectorExpectedAssetType"]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K65 ["r15Only"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K37 ["TopsAssetSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+41]
  MOVE R15 R10
  JUMPIFNOT R15 [+39]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K69 ["CustomClothingSectionOuterwear"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R22 R6 K70 ["customClothingOuterwearSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K71 ["OuterwearAssetSelectorExpectedAssetType"]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K65 ["r15Only"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K38 ["OuterwearAssetSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+41]
  MOVE R15 R10
  JUMPIFNOT R15 [+39]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K72 ["CustomClothingSectionBottoms"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R22 R6 K73 ["customClothingBottomsSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K74 ["BottomsAssetSelectorExpectedAssetType"]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K65 ["r15Only"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K39 ["BottomsAssetSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+40]
  MOVE R15 R10
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K75 ["CustomClothingSectionLeftShoes"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R22 R6 K76 ["customClothingLeftShoesSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETIMPORT R22 K79 [Enum.AssetType.LeftShoeAccessory]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K65 ["r15Only"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K40 ["LeftShoesAssetSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+40]
  MOVE R15 R10
  JUMPIFNOT R15 [+38]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K80 ["CustomClothingSectionRightShoes"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R22 R6 K81 ["customClothingRightShoesSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETIMPORT R22 K83 [Enum.AssetType.RightShoeAccessory]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  LOADB R22 1
  SETTABLEKS R22 R21 K65 ["r15Only"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K41 ["RightShoesAssetSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+46]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K84 ["CustomClothingSectionClassicShirts"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K85 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R22 R6 K86 ["customClothingClassicShirtsSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETUPVAL R23 12
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K88 [Enum.AssetType.Shirt]
  GETIMPORT R24 K90 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K88 [Enum.AssetType.Shirt]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K42 ["ClassicShirtsAssetSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+46]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K91 ["CustomClothingSectionClassicTShirts"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K85 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R22 R6 K92 ["customClothingClassicTShirtsSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETUPVAL R23 12
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K94 [Enum.AssetType.TShirt]
  GETIMPORT R24 K90 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K94 [Enum.AssetType.TShirt]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K43 ["ClassicTShirtsAssetSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+46]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R8 R17 K56 ["minTextLabelWidth"]
  LOADK R18 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K57 ["textLabelTags"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K95 ["CustomClothingSectionClassicPants"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["text"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K32 ["layoutOrder"]
  DUPTABLE R18 K62 [{"Content"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K85 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R22 R6 K96 ["customClothingClassicPantsSetting"]
  SETTABLEKS R22 R21 K63 ["assetIdSetting"]
  GETUPVAL R23 12
  JUMPIFNOT R23 [+9]
  NEWTABLE R22 0 2
  GETIMPORT R23 K98 [Enum.AssetType.Pants]
  GETIMPORT R24 K90 [Enum.AssetType.Model]
  SETLIST R22 R23 2 [1]
  JUMP [+2]
  GETIMPORT R22 K98 [Enum.AssetType.Pants]
  SETTABLEKS R22 R21 K64 ["expectedAssetType"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K61 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K44 ["ClassicPantsAssetSelector"]
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
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K20 ["Flags"]
  GETTABLEKS R11 R12 K21 ["getFFlagAddTelemetry"]
  CALL R10 1 1
  GETTABLEKS R11 R5 K22 ["ContextServices"]
  GETTABLEKS R12 R11 K23 ["Localization"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K11 ["Util"]
  GETTABLEKS R15 R16 K24 ["Telemetry"]
  GETTABLEKS R14 R15 K25 ["TelemetryContext"]
  CALL R13 1 1
  GETTABLEKS R14 R8 K26 ["createNextOrder"]
  GETTABLEKS R15 R7 K27 ["createElement"]
  GETIMPORT R16 K29 [game]
  LOADK R18 K30 ["AvatarSettingsDontSaveSomePropsInLegacySettings"]
  NAMECALL R16 R16 K31 ["GetEngineFeature"]
  CALL R16 2 1
  DUPCLOSURE R17 K32 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R13
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
  RETURN R17 1
