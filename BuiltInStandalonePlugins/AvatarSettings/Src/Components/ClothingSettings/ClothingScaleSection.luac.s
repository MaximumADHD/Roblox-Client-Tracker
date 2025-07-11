PROTO_0:
  GETUPVAL R0 0
  GETIMPORT R1 K3 [Enum.AvatarSettingsClothingMode.CustomLimit]
  JUMPIFNOTEQ R0 R1 [+11]
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["showBoundingBoxes"]
  LOADB R3 1
  LOADK R4 K5 ["Clothing"]
  NAMECALL R0 R0 K6 ["Invoke"]
  CALL R0 4 0
  RETURN R0 0
  GETUPVAL R0 0
  GETIMPORT R1 K8 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["showBoundingBoxes"]
  LOADB R3 0
  LOADK R4 K5 ["Clothing"]
  NAMECALL R0 R0 K6 ["Invoke"]
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["showBoundingBoxes"]
  LOADB R3 0
  LOADK R4 K1 ["Clothing"]
  NAMECALL R0 R0 K2 ["Invoke"]
  CALL R0 4 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_3:
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
  NAMECALL R9 R9 K0 ["use"]
  CALL R9 1 1
  NAMECALL R9 R9 K26 ["get"]
  CALL R9 1 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K27 ["useEffect"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE UPVAL U6
  NEWTABLE R12 0 2
  MOVE R13 R6
  GETTABLEKS R17 R3 K2 ["settings"]
  GETTABLEKS R16 R17 K19 ["clothingSettings"]
  GETTABLEKS R15 R16 K28 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R14 R15 K21 ["value"]
  SETLIST R12 R13 2 [1]
  CALL R10 2 0
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K27 ["useEffect"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R9
  CAPTURE UPVAL U6
  NEWTABLE R12 0 0
  CALL R10 2 0
  GETUPVAL R10 7
  GETUPVAL R11 8
  DUPTABLE R12 K32 [{"text", "layoutOrder", "showWarning"}]
  LOADK R15 K13 ["ClothingSettings"]
  LOADK R16 K33 ["ClothingScaleSection"]
  NAMECALL R13 R1 K15 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K29 ["text"]
  GETTABLEKS R13 R0 K30 ["layoutOrder"]
  SETTABLEKS R13 R12 K30 ["layoutOrder"]
  LOADB R13 1
  SETTABLEKS R13 R12 K31 ["showWarning"]
  DUPTABLE R13 K37 [{"UIListLayout", "ClothingScaleModeSelector", "LimitBoundsTitleFrame"}]
  GETUPVAL R14 7
  LOADK R15 K34 ["UIListLayout"]
  DUPTABLE R16 K39 [{"Padding"}]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K38 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K34 ["UIListLayout"]
  GETUPVAL R14 7
  GETUPVAL R15 9
  DUPTABLE R16 K44 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K30 ["layoutOrder"]
  SETTABLEKS R4 R16 K40 ["items"]
  SETTABLEKS R6 R16 K41 ["selected"]
  GETTABLEKS R18 R5 K20 ["clothingScaleSetting"]
  GETTABLEKS R17 R18 K45 ["set"]
  SETTABLEKS R17 R16 K42 ["onItemActivated"]
  LOADK R19 K13 ["ClothingSettings"]
  GETIMPORT R21 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  JUMPIFNOTEQ R6 R21 [+3]
  LOADK R20 K46 ["ClothingScaleSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R20 K47 ["ClothingScaleSectionCustomLimitSubText"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K43 ["subText"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K35 ["ClothingScaleModeSelector"]
  MOVE R14 R8
  JUMPIFNOT R14 [+61]
  GETUPVAL R14 7
  GETUPVAL R15 10
  DUPTABLE R16 K51 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K30 ["layoutOrder"]
  GETIMPORT R17 K24 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K48 ["separation"]
  LOADK R17 K52 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K49 ["textLabelTags"]
  SETTABLEKS R7 R16 K50 ["minTextLabelWidth"]
  LOADK R19 K13 ["ClothingSettings"]
  LOADK R20 K53 ["ClothingScaleSectionLimitBounds"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K29 ["text"]
  DUPTABLE R17 K55 [{"Input"}]
  GETUPVAL R18 7
  GETUPVAL R19 11
  DUPTABLE R20 K57 [{"layoutOrder", "value", "setValue", "text"}]
  MOVE R21 R2
  CALL R21 0 1
  SETTABLEKS R21 R20 K30 ["layoutOrder"]
  GETTABLEKS R22 R5 K28 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R21 R22 K21 ["value"]
  SETTABLEKS R21 R20 K21 ["value"]
  GETTABLEKS R24 R3 K2 ["settings"]
  GETTABLEKS R23 R24 K19 ["clothingSettings"]
  GETTABLEKS R22 R23 K28 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R21 R22 K45 ["set"]
  SETTABLEKS R21 R20 K56 ["setValue"]
  LOADK R23 K58 ["General"]
  LOADK R24 K59 ["PaddingAroundAvatar"]
  NAMECALL R21 R1 K15 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K29 ["text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["Input"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K36 ["LimitBoundsTitleFrame"]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K10 ["Util"]
  GETTABLEKS R7 R8 K16 ["InvokeKeys"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K13 ["Packages"]
  GETTABLEKS R8 R9 K17 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K13 ["Packages"]
  GETTABLEKS R9 R10 K18 ["ReactUtils"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K7 ["Components"]
  GETTABLEKS R10 R11 K19 ["TitledComponent"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K7 ["Components"]
  GETTABLEKS R11 R12 K20 ["Vector3Input"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K21 ["ContextServices"]
  GETTABLEKS R12 R11 K22 ["Localization"]
  GETTABLEKS R13 R11 K23 ["Plugin"]
  GETTABLEKS R14 R8 K24 ["createNextOrder"]
  GETTABLEKS R15 R7 K25 ["createElement"]
  DUPCLOSURE R16 K26 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R10
  RETURN R16 1
