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
  GETIMPORT R6 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  SETTABLEKS R6 R5 K6 ["Id"]
  LOADK R8 K13 ["ClothingSettings"]
  LOADK R9 K14 ["ClothingScaleSectionPlayerChoiceButtonText"]
  NAMECALL R6 R1 K15 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Label"]
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["ClothingSettings"]
  LOADK R10 K18 ["ClothingScaleSectionCustomLimitButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  SETLIST R4 R5 2 [1]
  GETTABLEKS R6 R3 K2 ["settings"]
  GETTABLEKS R5 R6 K19 ["clothingSettings"]
  GETTABLEKS R7 R5 K20 ["clothingScaleSetting"]
  GETTABLEKS R6 R7 K21 ["value"]
  GETIMPORT R7 K24 [UDim.new]
  LOADN R8 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R7 2 1
  GETIMPORT R9 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
  JUMPIFEQ R6 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R9 5
  GETUPVAL R10 6
  DUPTABLE R11 K28 [{"text", "layoutOrder"}]
  LOADK R14 K13 ["ClothingSettings"]
  LOADK R15 K29 ["ClothingScaleSection"]
  NAMECALL R12 R1 K15 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["text"]
  GETTABLEKS R12 R0 K27 ["layoutOrder"]
  SETTABLEKS R12 R11 K27 ["layoutOrder"]
  DUPTABLE R12 K33 [{"UIListLayout", "ClothingScaleModeSelector", "LimitBoundsTitleFrame"}]
  GETUPVAL R13 5
  LOADK R14 K30 ["UIListLayout"]
  DUPTABLE R15 K35 [{"Padding"}]
  GETIMPORT R16 K24 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["Padding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["UIListLayout"]
  GETUPVAL R13 5
  GETUPVAL R14 7
  DUPTABLE R15 K40 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  SETTABLEKS R4 R15 K36 ["items"]
  SETTABLEKS R6 R15 K37 ["selected"]
  GETTABLEKS R17 R5 K20 ["clothingScaleSetting"]
  GETTABLEKS R16 R17 K41 ["set"]
  SETTABLEKS R16 R15 K38 ["onItemActivated"]
  LOADK R18 K13 ["ClothingSettings"]
  GETIMPORT R20 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  JUMPIFNOTEQ R6 R20 [+3]
  LOADK R19 K42 ["ClothingScaleSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R19 K43 ["ClothingScaleSectionCustomLimitSubText"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K39 ["subText"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["ClothingScaleModeSelector"]
  MOVE R13 R8
  JUMPIFNOT R13 [+61]
  GETUPVAL R13 5
  GETUPVAL R14 8
  DUPTABLE R15 K47 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R16 R2
  CALL R16 0 1
  SETTABLEKS R16 R15 K27 ["layoutOrder"]
  GETIMPORT R16 K24 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K44 ["separation"]
  LOADK R16 K48 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R16 R15 K45 ["textLabelTags"]
  SETTABLEKS R7 R15 K46 ["minTextLabelWidth"]
  LOADK R18 K13 ["ClothingSettings"]
  LOADK R19 K49 ["ClothingScaleSectionLimitBounds"]
  NAMECALL R16 R1 K15 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["text"]
  DUPTABLE R16 K51 [{"Input"}]
  GETUPVAL R17 5
  GETUPVAL R18 9
  DUPTABLE R19 K53 [{"layoutOrder", "value", "setValue", "text"}]
  MOVE R20 R2
  CALL R20 0 1
  SETTABLEKS R20 R19 K27 ["layoutOrder"]
  GETTABLEKS R21 R5 K54 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R20 R21 K21 ["value"]
  SETTABLEKS R20 R19 K21 ["value"]
  GETTABLEKS R23 R3 K2 ["settings"]
  GETTABLEKS R22 R23 K19 ["clothingSettings"]
  GETTABLEKS R21 R22 K54 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R20 R21 K41 ["set"]
  SETTABLEKS R20 R19 K52 ["setValue"]
  LOADK R22 K55 ["General"]
  LOADK R23 K56 ["PaddingAroundAvatar"]
  NAMECALL R20 R1 K15 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K26 ["text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K50 ["Input"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K32 ["LimitBoundsTitleFrame"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Contexts"]
  GETTABLEKS R2 R3 K9 ["AvatarSettingsContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K12 ["ExpandableSection"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Components"]
  GETTABLEKS R6 R7 K15 ["GenericModeSelector"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K13 ["Packages"]
  GETTABLEKS R7 R8 K16 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K13 ["Packages"]
  GETTABLEKS R8 R9 K17 ["ReactUtils"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Components"]
  GETTABLEKS R9 R10 K18 ["TitledComponent"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K7 ["Components"]
  GETTABLEKS R10 R11 K19 ["Vector3Input"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K20 ["ContextServices"]
  GETTABLEKS R11 R10 K21 ["Localization"]
  GETTABLEKS R12 R7 K22 ["createNextOrder"]
  GETTABLEKS R13 R6 K23 ["createElement"]
  DUPCLOSURE R14 K24 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R14 1
