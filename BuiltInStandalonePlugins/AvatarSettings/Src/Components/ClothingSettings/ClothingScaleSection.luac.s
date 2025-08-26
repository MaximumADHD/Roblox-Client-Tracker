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
  JUMPIFEQ R0 R1 [+11]
  GETUPVAL R1 1
  LOADK R3 K0 ["ClothingCustomLimitModeSelected"]
  DUPTABLE R4 K2 [{"clothingCustomLimitMode"}]
  GETTABLEKS R5 R0 K3 ["Name"]
  SETTABLEKS R5 R4 K1 ["clothingCustomLimitMode"]
  NAMECALL R1 R1 K4 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["clothingScaleSetting"]
  GETTABLEKS R1 R2 K6 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
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
  GETIMPORT R7 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["ClothingSettings"]
  LOADK R10 K14 ["ClothingScaleSectionPlayerChoiceButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["ClothingSettings"]
  LOADK R11 K18 ["ClothingScaleSectionCustomLimitButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  SETLIST R5 R6 2 [1]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R6 R7 K19 ["clothingSettings"]
  GETTABLEKS R8 R6 K20 ["clothingScaleSetting"]
  GETTABLEKS R7 R8 K21 ["value"]
  GETIMPORT R8 K24 [UDim.new]
  LOADN R9 0
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R8 2 1
  GETIMPORT R10 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
  JUMPIFEQ R7 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R10 7
  NAMECALL R10 R10 K0 ["use"]
  CALL R10 1 1
  NAMECALL R10 R10 K26 ["get"]
  CALL R10 1 1
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K27 ["useEffect"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE UPVAL U8
  NEWTABLE R13 0 2
  MOVE R14 R7
  GETTABLEKS R18 R4 K2 ["settings"]
  GETTABLEKS R17 R18 K19 ["clothingSettings"]
  GETTABLEKS R16 R17 K28 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R15 R16 K21 ["value"]
  SETLIST R13 R14 2 [1]
  CALL R11 2 0
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K27 ["useEffect"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R10
  CAPTURE UPVAL U8
  NEWTABLE R13 0 0
  CALL R11 2 0
  GETUPVAL R11 9
  GETUPVAL R12 10
  DUPTABLE R13 K32 [{"text", "layoutOrder", "showWarning"}]
  LOADK R16 K13 ["ClothingSettings"]
  LOADK R17 K33 ["ClothingScaleSection"]
  NAMECALL R14 R1 K15 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K29 ["text"]
  GETTABLEKS R14 R0 K30 ["layoutOrder"]
  SETTABLEKS R14 R13 K30 ["layoutOrder"]
  LOADB R14 1
  SETTABLEKS R14 R13 K31 ["showWarning"]
  DUPTABLE R14 K37 [{"UIListLayout", "ClothingScaleModeSelector", "LimitBoundsTitleFrame"}]
  GETUPVAL R15 9
  LOADK R16 K34 ["UIListLayout"]
  DUPTABLE R17 K39 [{"Padding"}]
  GETIMPORT R18 K24 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K38 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["UIListLayout"]
  GETUPVAL R15 9
  GETUPVAL R16 11
  DUPTABLE R17 K44 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K30 ["layoutOrder"]
  SETTABLEKS R5 R17 K40 ["items"]
  SETTABLEKS R7 R17 K41 ["selected"]
  GETUPVAL R19 1
  CALL R19 0 1
  JUMPIFNOT R19 [+5]
  NEWCLOSURE R18 P2
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  JUMP [+4]
  GETTABLEKS R19 R6 K20 ["clothingScaleSetting"]
  GETTABLEKS R18 R19 K45 ["set"]
  SETTABLEKS R18 R17 K42 ["onItemActivated"]
  LOADK R20 K13 ["ClothingSettings"]
  GETIMPORT R22 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
  JUMPIFNOTEQ R7 R22 [+3]
  LOADK R21 K46 ["ClothingScaleSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R21 K47 ["ClothingScaleSectionCustomLimitSubText"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K43 ["subText"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["ClothingScaleModeSelector"]
  MOVE R15 R9
  JUMPIFNOT R15 [+61]
  GETUPVAL R15 9
  GETUPVAL R16 12
  DUPTABLE R17 K51 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K30 ["layoutOrder"]
  GETIMPORT R18 K24 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K48 ["separation"]
  LOADK R18 K52 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K49 ["textLabelTags"]
  SETTABLEKS R8 R17 K50 ["minTextLabelWidth"]
  LOADK R20 K13 ["ClothingSettings"]
  LOADK R21 K53 ["ClothingScaleSectionLimitBounds"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K29 ["text"]
  DUPTABLE R18 K55 [{"Input"}]
  GETUPVAL R19 9
  GETUPVAL R20 13
  DUPTABLE R21 K57 [{"layoutOrder", "value", "setValue", "text"}]
  MOVE R22 R3
  CALL R22 0 1
  SETTABLEKS R22 R21 K30 ["layoutOrder"]
  GETTABLEKS R23 R6 K28 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R22 R23 K21 ["value"]
  SETTABLEKS R22 R21 K21 ["value"]
  GETTABLEKS R25 R4 K2 ["settings"]
  GETTABLEKS R24 R25 K19 ["clothingSettings"]
  GETTABLEKS R23 R24 K28 ["clothingScaleLimitBoundsSetting"]
  GETTABLEKS R22 R23 K45 ["set"]
  SETTABLEKS R22 R21 K56 ["setValue"]
  LOADK R24 K58 ["General"]
  LOADK R25 K59 ["PaddingAroundAvatar"]
  NAMECALL R22 R1 K15 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K29 ["text"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K54 ["Input"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K36 ["LimitBoundsTitleFrame"]
  CALL R11 3 -1
  RETURN R11 -1

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
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K10 ["Util"]
  GETTABLEKS R11 R12 K20 ["InvokeKeys"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K21 ["ContextServices"]
  GETTABLEKS R12 R11 K22 ["Localization"]
  GETTABLEKS R13 R11 K23 ["Plugin"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K10 ["Util"]
  GETTABLEKS R16 R17 K24 ["Telemetry"]
  GETTABLEKS R15 R16 K25 ["TelemetryContext"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K26 ["Flags"]
  GETTABLEKS R16 R17 K27 ["getFFlagAddTelemetry"]
  CALL R15 1 1
  GETTABLEKS R16 R7 K28 ["createNextOrder"]
  GETTABLEKS R17 R6 K29 ["createElement"]
  DUPCLOSURE R18 K30 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R18 1
