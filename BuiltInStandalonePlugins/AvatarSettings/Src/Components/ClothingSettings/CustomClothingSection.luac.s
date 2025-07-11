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
  GETIMPORT R6 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
  SETTABLEKS R6 R5 K6 ["Id"]
  LOADK R8 K13 ["ClothingSettings"]
  LOADK R9 K14 ["CustomClothingSectionPlayerChoiceButtonText"]
  NAMECALL R6 R1 K15 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Label"]
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["ClothingSettings"]
  LOADK R10 K18 ["CustomClothingSectionCustomClothingButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  SETLIST R4 R5 2 [1]
  GETTABLEKS R6 R3 K2 ["settings"]
  GETTABLEKS R5 R6 K19 ["clothingSettings"]
  GETTABLEKS R7 R5 K20 ["customClothingSetting"]
  GETTABLEKS R6 R7 K21 ["value"]
  GETIMPORT R7 K24 [UDim.new]
  LOADN R8 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R7 2 1
  GETIMPORT R9 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
  JUMPIFEQ R6 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETTABLEKS R13 R3 K2 ["settings"]
  GETTABLEKS R12 R13 K26 ["navigationBarSettings"]
  GETTABLEKS R11 R12 K27 ["avatarType"]
  GETTABLEKS R10 R11 K21 ["value"]
  GETIMPORT R11 K30 [Enum.GameAvatarType.R6]
  JUMPIFNOTEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R10 5
  GETUPVAL R11 6
  DUPTABLE R12 K33 [{"text", "layoutOrder"}]
  LOADK R15 K13 ["ClothingSettings"]
  LOADK R16 K34 ["CustomClothingSection"]
  NAMECALL R13 R1 K15 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K31 ["text"]
  GETTABLEKS R13 R0 K32 ["layoutOrder"]
  SETTABLEKS R13 R12 K32 ["layoutOrder"]
  DUPTABLE R13 K45 [{"UIListLayout", "CustomClothingModeSelector", "TopsAssetSelector", "OuterwearAssetSelector", "BottomsAssetSelector", "LeftShoesAssetSelector", "RightShoesAssetSelector", "ClassicShirtsAssetSelector", "ClassicTShirtsAssetSelector", "ClassicPantsAssetSelector"}]
  GETUPVAL R14 5
  LOADK R15 K35 ["UIListLayout"]
  DUPTABLE R16 K47 [{"Padding"}]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K35 ["UIListLayout"]
  GETUPVAL R14 5
  GETUPVAL R15 7
  DUPTABLE R16 K52 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  SETTABLEKS R4 R16 K48 ["items"]
  SETTABLEKS R6 R16 K49 ["selected"]
  GETTABLEKS R18 R5 K20 ["customClothingSetting"]
  GETTABLEKS R17 R18 K53 ["set"]
  SETTABLEKS R17 R16 K50 ["onItemActivated"]
  LOADK R19 K13 ["ClothingSettings"]
  GETIMPORT R21 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
  JUMPIFNOTEQ R6 R21 [+3]
  LOADK R20 K54 ["CustomClothingSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R20 K55 ["CustomClothingSectionCustomClothingSubText"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K51 ["subText"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["CustomClothingModeSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+41]
  MOVE R14 R9
  JUMPIFNOT R14 [+39]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K60 ["CustomClothingSectionTops"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R21 R5 K67 ["customClothingTopsSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K68 ["TopsAssetSelectorExpectedAssetType"]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  LOADB R21 1
  SETTABLEKS R21 R20 K65 ["r15Only"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K37 ["TopsAssetSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+41]
  MOVE R14 R9
  JUMPIFNOT R14 [+39]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K69 ["CustomClothingSectionOuterwear"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R21 R5 K70 ["customClothingOuterwearSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K71 ["OuterwearAssetSelectorExpectedAssetType"]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  LOADB R21 1
  SETTABLEKS R21 R20 K65 ["r15Only"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K38 ["OuterwearAssetSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+41]
  MOVE R14 R9
  JUMPIFNOT R14 [+39]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K72 ["CustomClothingSectionBottoms"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R21 R5 K73 ["customClothingBottomsSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K74 ["BottomsAssetSelectorExpectedAssetType"]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  LOADB R21 1
  SETTABLEKS R21 R20 K65 ["r15Only"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K39 ["BottomsAssetSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+40]
  MOVE R14 R9
  JUMPIFNOT R14 [+38]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K75 ["CustomClothingSectionLeftShoes"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R21 R5 K76 ["customClothingLeftShoesSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETIMPORT R21 K79 [Enum.AssetType.LeftShoeAccessory]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  LOADB R21 1
  SETTABLEKS R21 R20 K65 ["r15Only"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K40 ["LeftShoesAssetSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+40]
  MOVE R14 R9
  JUMPIFNOT R14 [+38]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K80 ["CustomClothingSectionRightShoes"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
  GETTABLEKS R21 R5 K81 ["customClothingRightShoesSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETIMPORT R21 K83 [Enum.AssetType.RightShoeAccessory]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  LOADB R21 1
  SETTABLEKS R21 R20 K65 ["r15Only"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K41 ["RightShoesAssetSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K84 ["CustomClothingSectionClassicShirts"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K85 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R5 K86 ["customClothingClassicShirtsSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETIMPORT R21 K88 [Enum.AssetType.Shirt]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K42 ["ClassicShirtsAssetSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K89 ["CustomClothingSectionClassicTShirts"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K85 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R5 K90 ["customClothingClassicTShirtsSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETIMPORT R21 K92 [Enum.AssetType.TShirt]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K43 ["ClassicTShirtsAssetSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+35]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
  SETTABLEKS R7 R16 K56 ["minTextLabelWidth"]
  LOADK R17 K59 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K57 ["textLabelTags"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K93 ["CustomClothingSectionClassicPants"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["text"]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K32 ["layoutOrder"]
  DUPTABLE R17 K62 [{"Content"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K85 [{"assetIdSetting", "expectedAssetType"}]
  GETTABLEKS R21 R5 K94 ["customClothingClassicPantsSetting"]
  SETTABLEKS R21 R20 K63 ["assetIdSetting"]
  GETIMPORT R21 K96 [Enum.AssetType.Pants]
  SETTABLEKS R21 R20 K64 ["expectedAssetType"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Content"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K44 ["ClassicPantsAssetSelector"]
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
