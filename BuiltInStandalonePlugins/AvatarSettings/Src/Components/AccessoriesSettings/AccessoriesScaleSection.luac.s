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
  GETUPVAL R1 0
  JUMPIFEQ R0 R1 [+11]
  GETUPVAL R1 1
  LOADK R3 K0 ["AccessoryCustomLimitModeSelected"]
  DUPTABLE R4 K2 [{"accessoryCustomLimitMode"}]
  GETTABLEKS R5 R0 K3 ["Name"]
  SETTABLEKS R5 R4 K1 ["accessoryCustomLimitMode"]
  NAMECALL R1 R1 K4 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["accessoryScaleSetting"]
  GETTABLEKS R1 R2 K6 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+24]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 2
  LOADK R3 K1 ["AccessoriesLimitMethodSelected"]
  DUPTABLE R4 K3 [{"limitMethod"}]
  GETTABLEKS R6 R0 K0 ["Id"]
  GETTABLEKS R5 R6 K4 ["Name"]
  SETTABLEKS R5 R4 K2 ["limitMethod"]
  NAMECALL R1 R1 K5 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["accessoryScaleLimitMethodSetting"]
  GETTABLEKS R1 R2 K7 ["set"]
  GETTABLEKS R2 R0 K0 ["Id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
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
  GETIMPORT R7 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["AccessoriesSettings"]
  LOADK R10 K14 ["AccessoryScaleSectionPlayerChoiceButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["AccessoriesSettings"]
  LOADK R11 K18 ["AccessoryScaleSectionCustomLimitButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  SETLIST R5 R6 2 [1]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R6 R7 K19 ["accessoriesSettings"]
  GETTABLEKS R8 R6 K20 ["accessoryScaleSetting"]
  GETTABLEKS R7 R8 K21 ["value"]
  GETTABLEKS R9 R6 K22 ["accessoryScaleLimitMethodSetting"]
  GETTABLEKS R8 R9 K21 ["value"]
  GETIMPORT R9 K25 [UDim.new]
  LOADN R10 0
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
  CALL R9 2 1
  GETUPVAL R10 7
  NAMECALL R10 R10 K0 ["use"]
  CALL R10 1 1
  NAMECALL R10 R10 K27 ["get"]
  CALL R10 1 1
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K28 ["useEffect"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE UPVAL U8
  NEWTABLE R13 0 2
  MOVE R14 R7
  GETTABLEKS R18 R4 K2 ["settings"]
  GETTABLEKS R17 R18 K19 ["accessoriesSettings"]
  GETTABLEKS R16 R17 K29 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R15 R16 K21 ["value"]
  SETLIST R13 R14 2 [1]
  CALL R11 2 0
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K28 ["useEffect"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R10
  CAPTURE UPVAL U8
  NEWTABLE R13 0 0
  CALL R11 2 0
  GETIMPORT R12 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
  JUMPIFEQ R7 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R12 9
  GETUPVAL R13 10
  DUPTABLE R14 K33 [{"text", "layoutOrder", "showWarning"}]
  LOADK R17 K13 ["AccessoriesSettings"]
  LOADK R18 K34 ["AccessoryScaleSection"]
  NAMECALL R15 R1 K15 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K30 ["text"]
  GETTABLEKS R15 R0 K31 ["layoutOrder"]
  SETTABLEKS R15 R14 K31 ["layoutOrder"]
  LOADB R15 1
  SETTABLEKS R15 R14 K32 ["showWarning"]
  DUPTABLE R15 K39 [{"UIListLayout", "AccessoryScaleModeSelector", "LimitMethodTitleFrame", "LimitBoundsTitleFrame"}]
  GETUPVAL R16 9
  LOADK R17 K35 ["UIListLayout"]
  DUPTABLE R18 K41 [{"Padding"}]
  GETIMPORT R19 K25 [UDim.new]
  LOADN R20 0
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K40 ["Padding"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["UIListLayout"]
  GETUPVAL R16 9
  GETUPVAL R17 11
  DUPTABLE R18 K46 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K31 ["layoutOrder"]
  SETTABLEKS R5 R18 K42 ["items"]
  SETTABLEKS R7 R18 K43 ["selected"]
  GETUPVAL R20 1
  CALL R20 0 1
  JUMPIFNOT R20 [+5]
  NEWCLOSURE R19 P2
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  JUMP [+4]
  GETTABLEKS R20 R6 K20 ["accessoryScaleSetting"]
  GETTABLEKS R19 R20 K47 ["set"]
  SETTABLEKS R19 R18 K44 ["onItemActivated"]
  LOADK R21 K13 ["AccessoriesSettings"]
  GETIMPORT R23 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  JUMPIFNOTEQ R7 R23 [+3]
  LOADK R22 K48 ["AccessoryScaleSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R22 K49 ["AccessoryScaleSectionCustomLimitSubText"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K45 ["subText"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["AccessoryScaleModeSelector"]
  MOVE R16 R11
  JUMPIFNOT R16 [+91]
  GETUPVAL R16 9
  GETUPVAL R17 12
  DUPTABLE R18 K53 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K31 ["layoutOrder"]
  GETIMPORT R19 K25 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K50 ["separation"]
  LOADK R19 K54 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K51 ["textLabelTags"]
  SETTABLEKS R9 R18 K52 ["minTextLabelWidth"]
  LOADK R21 K13 ["AccessoriesSettings"]
  LOADK R22 K55 ["AccessoryScaleSectionLimitMethod"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K30 ["text"]
  DUPTABLE R19 K57 [{"LimitMethodSelectInput"}]
  GETUPVAL R20 9
  GETUPVAL R21 13
  DUPTABLE R22 K65 [{"PlaceholderText", "Items", "Size", "OnRenderItem", "UseAutoWidth", "SelectedId", "OnItemActivated"}]
  LOADK R23 K66 ["Remove"]
  SETTABLEKS R23 R22 K58 ["PlaceholderText"]
  NEWTABLE R23 0 2
  DUPTABLE R24 K8 [{"Id", "Label"}]
  GETIMPORT R25 K69 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
  SETTABLEKS R25 R24 K6 ["Id"]
  LOADK R27 K13 ["AccessoriesSettings"]
  LOADK R28 K70 ["AccessoryScaleSectionLimitMethodScale"]
  NAMECALL R25 R1 K15 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K7 ["Label"]
  DUPTABLE R25 K8 [{"Id", "Label"}]
  GETIMPORT R26 K71 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
  SETTABLEKS R26 R25 K6 ["Id"]
  LOADK R28 K13 ["AccessoriesSettings"]
  LOADK R29 K72 ["AccessoryScaleSectionLimitMethodRemove"]
  NAMECALL R26 R1 K15 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K7 ["Label"]
  SETLIST R23 R24 2 [1]
  SETTABLEKS R23 R22 K59 ["Items"]
  GETIMPORT R23 K75 [UDim2.fromOffset]
  LOADN R24 128
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K76 ["STANDARD_HEIGHT"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K60 ["Size"]
  GETUPVAL R23 14
  SETTABLEKS R23 R22 K61 ["OnRenderItem"]
  LOADB R23 1
  SETTABLEKS R23 R22 K62 ["UseAutoWidth"]
  SETTABLEKS R8 R22 K63 ["SelectedId"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R8
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R23 R22 K64 ["OnItemActivated"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K56 ["LimitMethodSelectInput"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["LimitMethodTitleFrame"]
  MOVE R16 R11
  JUMPIFNOT R16 [+57]
  GETUPVAL R16 9
  GETUPVAL R17 12
  DUPTABLE R18 K53 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K31 ["layoutOrder"]
  GETIMPORT R19 K25 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K50 ["separation"]
  LOADK R19 K54 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R19 R18 K51 ["textLabelTags"]
  SETTABLEKS R9 R18 K52 ["minTextLabelWidth"]
  LOADK R21 K13 ["AccessoriesSettings"]
  LOADK R22 K77 ["AccessoryScaleSectionLimitBounds"]
  NAMECALL R19 R1 K15 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K30 ["text"]
  DUPTABLE R19 K79 [{"Input"}]
  GETUPVAL R20 9
  GETUPVAL R21 15
  DUPTABLE R22 K81 [{"layoutOrder", "value", "setValue", "text"}]
  MOVE R23 R3
  CALL R23 0 1
  SETTABLEKS R23 R22 K31 ["layoutOrder"]
  GETTABLEKS R24 R6 K29 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R23 R24 K21 ["value"]
  SETTABLEKS R23 R22 K21 ["value"]
  GETTABLEKS R24 R6 K29 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R23 R24 K47 ["set"]
  SETTABLEKS R23 R22 K80 ["setValue"]
  LOADK R25 K82 ["General"]
  LOADK R26 K83 ["PaddingAroundAvatar"]
  NAMECALL R23 R1 K15 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K30 ["text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K78 ["Input"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K38 ["LimitBoundsTitleFrame"]
  CALL R12 3 -1
  RETURN R12 -1

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
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K10 ["Util"]
  GETTABLEKS R12 R13 K21 ["selectInputOnRenderFunction"]
  CALL R11 1 1
  GETTABLEKS R12 R4 K22 ["ContextServices"]
  GETTABLEKS R13 R12 K23 ["Localization"]
  GETTABLEKS R14 R12 K24 ["Plugin"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K10 ["Util"]
  GETTABLEKS R17 R18 K25 ["Telemetry"]
  GETTABLEKS R16 R17 K26 ["TelemetryContext"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K27 ["Flags"]
  GETTABLEKS R17 R18 K28 ["getFFlagAddTelemetry"]
  CALL R16 1 1
  GETTABLEKS R17 R4 K29 ["UI"]
  GETTABLEKS R18 R17 K30 ["SelectInput"]
  GETTABLEKS R19 R7 K31 ["createNextOrder"]
  GETTABLEKS R20 R6 K32 ["createElement"]
  DUPCLOSURE R21 K33 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R20
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R9
  RETURN R21 1
