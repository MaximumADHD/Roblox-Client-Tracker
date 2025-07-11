PROTO_0:
  GETUPVAL R0 0
  GETIMPORT R1 K3 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
  JUMPIFNOTEQ R0 R1 [+11]
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["showBoundingBoxes"]
  LOADB R3 1
  LOADK R4 K5 ["Accessories"]
  NAMECALL R0 R0 K6 ["Invoke"]
  CALL R0 4 0
  RETURN R0 0
  GETUPVAL R0 0
  GETIMPORT R1 K8 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["showBoundingBoxes"]
  LOADB R3 0
  LOADK R4 K5 ["Accessories"]
  NAMECALL R0 R0 K6 ["Invoke"]
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["showBoundingBoxes"]
  LOADB R3 0
  LOADK R4 K1 ["Accessories"]
  NAMECALL R0 R0 K2 ["Invoke"]
  CALL R0 4 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["accessoryScaleLimitMethodSetting"]
  GETTABLEKS R1 R2 K2 ["set"]
  GETTABLEKS R2 R0 K0 ["Id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
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
  GETIMPORT R6 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  SETTABLEKS R6 R5 K6 ["Id"]
  LOADK R8 K13 ["AccessoriesSettings"]
  LOADK R9 K14 ["AccessoryScaleSectionPlayerChoiceButtonText"]
  NAMECALL R6 R1 K15 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Label"]
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["AccessoriesSettings"]
  LOADK R10 K18 ["AccessoryScaleSectionCustomLimitButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  SETLIST R4 R5 2 [1]
  GETTABLEKS R6 R3 K2 ["settings"]
  GETTABLEKS R5 R6 K19 ["accessoriesSettings"]
  GETTABLEKS R7 R5 K20 ["accessoryScaleSetting"]
  GETTABLEKS R6 R7 K21 ["value"]
  GETTABLEKS R8 R5 K22 ["accessoryScaleLimitMethodSetting"]
  GETTABLEKS R7 R8 K21 ["value"]
  GETIMPORT R8 K25 [UDim.new]
  LOADN R9 0
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R8 2 1
  GETUPVAL R9 5
  NAMECALL R9 R9 K0 ["use"]
  CALL R9 1 1
  NAMECALL R9 R9 K27 ["get"]
  CALL R9 1 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K28 ["useEffect"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE UPVAL U6
  NEWTABLE R12 0 2
  MOVE R13 R6
  GETTABLEKS R17 R3 K2 ["settings"]
  GETTABLEKS R16 R17 K19 ["accessoriesSettings"]
  GETTABLEKS R15 R16 K29 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R14 R15 K21 ["value"]
  SETLIST R12 R13 2 [1]
  CALL R10 2 0
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K28 ["useEffect"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R9
  CAPTURE UPVAL U6
  NEWTABLE R12 0 0
  CALL R10 2 0
  GETIMPORT R11 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
  JUMPIFEQ R6 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R11 7
  GETUPVAL R12 8
  DUPTABLE R13 K32 [{"text", "layoutOrder"}]
  LOADK R16 K13 ["AccessoriesSettings"]
  LOADK R17 K33 ["AccessoryScaleSection"]
  NAMECALL R14 R1 K15 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K30 ["text"]
  GETTABLEKS R14 R0 K31 ["layoutOrder"]
  SETTABLEKS R14 R13 K31 ["layoutOrder"]
  DUPTABLE R14 K38 [{"UIListLayout", "AccessoryScaleModeSelector", "LimitMethodTitleFrame", "LimitBoundsTitleFrame"}]
  GETUPVAL R15 7
  LOADK R16 K34 ["UIListLayout"]
  DUPTABLE R17 K40 [{"Padding"}]
  GETIMPORT R18 K25 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["UIListLayout"]
  GETUPVAL R15 7
  GETUPVAL R16 9
  DUPTABLE R17 K45 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K31 ["layoutOrder"]
  SETTABLEKS R4 R17 K41 ["items"]
  SETTABLEKS R6 R17 K42 ["selected"]
  GETTABLEKS R19 R5 K20 ["accessoryScaleSetting"]
  GETTABLEKS R18 R19 K46 ["set"]
  SETTABLEKS R18 R17 K43 ["onItemActivated"]
  LOADK R20 K13 ["AccessoriesSettings"]
  GETIMPORT R22 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  JUMPIFNOTEQ R6 R22 [+3]
  LOADK R21 K47 ["AccessoryScaleSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R21 K48 ["AccessoryScaleSectionCustomLimitSubText"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K44 ["subText"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["AccessoryScaleModeSelector"]
  MOVE R15 R10
  JUMPIFNOT R15 [+89]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K52 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K31 ["layoutOrder"]
  GETIMPORT R18 K25 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["separation"]
  LOADK R18 K53 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K50 ["textLabelTags"]
  SETTABLEKS R8 R17 K51 ["minTextLabelWidth"]
  LOADK R20 K13 ["AccessoriesSettings"]
  LOADK R21 K54 ["AccessoryScaleSectionLimitMethod"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K30 ["text"]
  DUPTABLE R18 K56 [{"LimitMethodSelectInput"}]
  GETUPVAL R19 7
  GETUPVAL R20 11
  DUPTABLE R21 K64 [{"PlaceholderText", "Items", "Size", "OnRenderItem", "UseAutoWidth", "SelectedId", "OnItemActivated"}]
  LOADK R22 K65 ["Remove"]
  SETTABLEKS R22 R21 K57 ["PlaceholderText"]
  NEWTABLE R22 0 2
  DUPTABLE R23 K8 [{"Id", "Label"}]
  GETIMPORT R24 K68 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
  SETTABLEKS R24 R23 K6 ["Id"]
  LOADK R26 K13 ["AccessoriesSettings"]
  LOADK R27 K69 ["AccessoryScaleSectionLimitMethodScale"]
  NAMECALL R24 R1 K15 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K7 ["Label"]
  DUPTABLE R24 K8 [{"Id", "Label"}]
  GETIMPORT R25 K70 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
  SETTABLEKS R25 R24 K6 ["Id"]
  LOADK R27 K13 ["AccessoriesSettings"]
  LOADK R28 K71 ["AccessoryScaleSectionLimitMethodRemove"]
  NAMECALL R25 R1 K15 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K7 ["Label"]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K58 ["Items"]
  GETIMPORT R22 K74 [UDim2.fromOffset]
  LOADN R23 128
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K75 ["STANDARD_HEIGHT"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K59 ["Size"]
  GETUPVAL R22 12
  SETTABLEKS R22 R21 K60 ["OnRenderItem"]
  LOADB R22 1
  SETTABLEKS R22 R21 K61 ["UseAutoWidth"]
  SETTABLEKS R7 R21 K62 ["SelectedId"]
  NEWCLOSURE R22 P2
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R22 R21 K63 ["OnItemActivated"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K55 ["LimitMethodSelectInput"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K36 ["LimitMethodTitleFrame"]
  MOVE R15 R10
  JUMPIFNOT R15 [+57]
  GETUPVAL R15 7
  GETUPVAL R16 10
  DUPTABLE R17 K52 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R18 R2
  CALL R18 0 1
  SETTABLEKS R18 R17 K31 ["layoutOrder"]
  GETIMPORT R18 K25 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["separation"]
  LOADK R18 K53 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R18 R17 K50 ["textLabelTags"]
  SETTABLEKS R8 R17 K51 ["minTextLabelWidth"]
  LOADK R20 K13 ["AccessoriesSettings"]
  LOADK R21 K76 ["AccessoryScaleSectionLimitBounds"]
  NAMECALL R18 R1 K15 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K30 ["text"]
  DUPTABLE R18 K78 [{"Input"}]
  GETUPVAL R19 7
  GETUPVAL R20 13
  DUPTABLE R21 K80 [{"layoutOrder", "value", "setValue", "text"}]
  MOVE R22 R2
  CALL R22 0 1
  SETTABLEKS R22 R21 K31 ["layoutOrder"]
  GETTABLEKS R23 R5 K29 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R22 R23 K21 ["value"]
  SETTABLEKS R22 R21 K21 ["value"]
  GETTABLEKS R23 R5 K29 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R22 R23 K46 ["set"]
  SETTABLEKS R22 R21 K79 ["setValue"]
  LOADK R24 K81 ["General"]
  LOADK R25 K82 ["PaddingAroundAvatar"]
  NAMECALL R22 R1 K15 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K30 ["text"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K77 ["Input"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K37 ["LimitBoundsTitleFrame"]
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
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K10 ["Util"]
  GETTABLEKS R12 R13 K21 ["selectInputOnRenderFunction"]
  CALL R11 1 1
  GETTABLEKS R12 R4 K22 ["ContextServices"]
  GETTABLEKS R13 R12 K23 ["Localization"]
  GETTABLEKS R14 R12 K24 ["Plugin"]
  GETTABLEKS R15 R4 K25 ["UI"]
  GETTABLEKS R16 R15 K26 ["SelectInput"]
  GETTABLEKS R17 R8 K27 ["createNextOrder"]
  GETTABLEKS R18 R7 K28 ["createElement"]
  DUPCLOSURE R19 K29 [PROTO_4]
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R18
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R10
  RETURN R19 1
