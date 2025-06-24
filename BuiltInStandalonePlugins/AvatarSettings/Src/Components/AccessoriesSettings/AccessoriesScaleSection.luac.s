PROTO_0:
  GETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["accessoryScaleLimitMethodSetting"]
  GETTABLEKS R1 R2 K2 ["set"]
  GETTABLEKS R2 R0 K0 ["Id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
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
  GETIMPORT R10 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
  JUMPIFEQ R6 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R10 5
  GETUPVAL R11 6
  DUPTABLE R12 K29 [{"text", "layoutOrder"}]
  LOADK R15 K13 ["AccessoriesSettings"]
  LOADK R16 K30 ["AccessoryScaleSection"]
  NAMECALL R13 R1 K15 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["text"]
  GETTABLEKS R13 R0 K28 ["layoutOrder"]
  SETTABLEKS R13 R12 K28 ["layoutOrder"]
  DUPTABLE R13 K35 [{"UIListLayout", "AccessoryScaleModeSelector", "LimitMethodTitleFrame", "LimitBoundsTitleFrame"}]
  GETUPVAL R14 5
  LOADK R15 K31 ["UIListLayout"]
  DUPTABLE R16 K37 [{"Padding"}]
  GETIMPORT R17 K25 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K31 ["UIListLayout"]
  GETUPVAL R14 5
  GETUPVAL R15 7
  DUPTABLE R16 K42 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  SETTABLEKS R4 R16 K38 ["items"]
  SETTABLEKS R6 R16 K39 ["selected"]
  GETTABLEKS R18 R5 K20 ["accessoryScaleSetting"]
  GETTABLEKS R17 R18 K43 ["set"]
  SETTABLEKS R17 R16 K40 ["onItemActivated"]
  LOADK R19 K13 ["AccessoriesSettings"]
  GETIMPORT R21 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
  JUMPIFNOTEQ R6 R21 [+3]
  LOADK R20 K44 ["AccessoryScaleSectionPlayerChoiceSubText"]
  JUMP [+1]
  LOADK R20 K45 ["AccessoryScaleSectionCustomLimitSubText"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K41 ["subText"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["AccessoryScaleModeSelector"]
  MOVE R14 R9
  JUMPIFNOT R14 [+89]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K49 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  GETIMPORT R17 K25 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["separation"]
  LOADK R17 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K47 ["textLabelTags"]
  SETTABLEKS R8 R16 K48 ["minTextLabelWidth"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K51 ["AccessoryScaleSectionLimitMethod"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K27 ["text"]
  DUPTABLE R17 K53 [{"LimitMethodSelectInput"}]
  GETUPVAL R18 5
  GETUPVAL R19 9
  DUPTABLE R20 K61 [{"PlaceholderText", "Items", "Size", "OnRenderItem", "UseAutoWidth", "SelectedId", "OnItemActivated"}]
  LOADK R21 K62 ["Remove"]
  SETTABLEKS R21 R20 K54 ["PlaceholderText"]
  NEWTABLE R21 0 2
  DUPTABLE R22 K8 [{"Id", "Label"}]
  GETIMPORT R23 K65 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
  SETTABLEKS R23 R22 K6 ["Id"]
  LOADK R25 K13 ["AccessoriesSettings"]
  LOADK R26 K66 ["AccessoryScaleSectionLimitMethodScale"]
  NAMECALL R23 R1 K15 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K7 ["Label"]
  DUPTABLE R23 K8 [{"Id", "Label"}]
  GETIMPORT R24 K67 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
  SETTABLEKS R24 R23 K6 ["Id"]
  LOADK R26 K13 ["AccessoriesSettings"]
  LOADK R27 K68 ["AccessoryScaleSectionLimitMethodRemove"]
  NAMECALL R24 R1 K15 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K7 ["Label"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K55 ["Items"]
  GETIMPORT R21 K71 [UDim2.fromOffset]
  LOADN R22 128
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K72 ["STANDARD_HEIGHT"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K56 ["Size"]
  GETUPVAL R21 10
  SETTABLEKS R21 R20 K57 ["OnRenderItem"]
  LOADB R21 1
  SETTABLEKS R21 R20 K58 ["UseAutoWidth"]
  SETTABLEKS R7 R20 K59 ["SelectedId"]
  NEWCLOSURE R21 P0
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R21 R20 K60 ["OnItemActivated"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["LimitMethodSelectInput"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K33 ["LimitMethodTitleFrame"]
  MOVE R14 R9
  JUMPIFNOT R14 [+57]
  GETUPVAL R14 5
  GETUPVAL R15 8
  DUPTABLE R16 K49 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
  MOVE R17 R2
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["layoutOrder"]
  GETIMPORT R17 K25 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["separation"]
  LOADK R17 K50 ["AvatarSettings-LeftTextPrimary"]
  SETTABLEKS R17 R16 K47 ["textLabelTags"]
  SETTABLEKS R8 R16 K48 ["minTextLabelWidth"]
  LOADK R19 K13 ["AccessoriesSettings"]
  LOADK R20 K73 ["AccessoryScaleSectionLimitBounds"]
  NAMECALL R17 R1 K15 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K27 ["text"]
  DUPTABLE R17 K75 [{"Input"}]
  GETUPVAL R18 5
  GETUPVAL R19 11
  DUPTABLE R20 K77 [{"layoutOrder", "value", "setValue", "text"}]
  MOVE R21 R2
  CALL R21 0 1
  SETTABLEKS R21 R20 K28 ["layoutOrder"]
  GETTABLEKS R22 R5 K78 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R21 R22 K21 ["value"]
  SETTABLEKS R21 R20 K21 ["value"]
  GETTABLEKS R22 R5 K78 ["accessoryScaleLimitBoundsSetting"]
  GETTABLEKS R21 R22 K43 ["set"]
  SETTABLEKS R21 R20 K76 ["setValue"]
  LOADK R23 K79 ["General"]
  LOADK R24 K80 ["PaddingAroundAvatar"]
  NAMECALL R21 R1 K15 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K27 ["text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K74 ["Input"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K34 ["LimitBoundsTitleFrame"]
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
  GETTABLEKS R11 R12 K20 ["selectInputOnRenderFunction"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K21 ["ContextServices"]
  GETTABLEKS R12 R11 K22 ["Localization"]
  GETTABLEKS R13 R4 K23 ["UI"]
  GETTABLEKS R14 R13 K24 ["SelectInput"]
  GETTABLEKS R15 R7 K25 ["createNextOrder"]
  GETTABLEKS R16 R6 K26 ["createElement"]
  DUPCLOSURE R17 K27 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R9
  RETURN R17 1
