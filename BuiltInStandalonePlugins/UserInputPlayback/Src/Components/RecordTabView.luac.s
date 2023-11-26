PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["PluginState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["PluginState"]
  GETTABLEKS R1 R2 K2 ["Default"]
  JUMPIFNOTEQ R0 R1 [+23]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["getIsPlayMode"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["onStartRecordingButtonClicked"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K5 ["SetPluginState"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["PluginState"]
  GETTABLEKS R2 R3 K6 ["ShouldStartRecording"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["PluginState"]
  GETTABLEKS R1 R2 K7 ["Recording"]
  JUMPIFNOTEQ R0 R1 [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["onStopRecordingButtonClicked"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["PluginState"]
  GETTABLEKS R1 R2 K6 ["ShouldStartRecording"]
  JUMPIFNOTEQ R0 R1 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K5 ["SetPluginState"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["PluginState"]
  GETTABLEKS R2 R3 K2 ["Default"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"SaveRecordingDialogVisible", "SaveRecordingDialogMessageLocalizationKey", "SaveRecordingDialogMessageLocalizationArgs"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K0 ["SaveRecordingDialogVisible"]
  SETTABLEKS R0 R4 K1 ["SaveRecordingDialogMessageLocalizationKey"]
  SETTABLEKS R1 R4 K2 ["SaveRecordingDialogMessageLocalizationArgs"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"SaveRecordingDialogVisible"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["SaveRecordingDialogVisible"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["onSaveRecordingDialogCancel"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"SaveRecordingDialogVisible"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["SaveRecordingDialogVisible"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["onSaveRecordingDialogSave"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K3 [{"SaveRecordingDialogVisible", "SaveRecordingDialogMessageLocalizationKey", "SaveRecordingDialogMessageLocalizationArgs"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["SaveRecordingDialogVisible"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["SaveRecordingDialogMessageLocalizationKey"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["SaveRecordingDialogMessageLocalizationArgs"]
  SETTABLEKS R1 R0 K4 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K5 ["onRecordingButtonClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["setSaveRecordingDialogVisible"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K7 ["onSaveRecordingDialogCancel"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K8 ["onSaveRecordingDialogSave"]
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K4 [{"SetEmulationDeviceId", "SetEmulationDeviceOrientation", "SetCurrentScreenSize", "SetSaveRecordingDialogVisible"}]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K0 ["SetEmulationDeviceId"]
  SETTABLEKS R2 R1 K0 ["SetEmulationDeviceId"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K1 ["SetEmulationDeviceOrientation"]
  SETTABLEKS R2 R1 K1 ["SetEmulationDeviceOrientation"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K2 ["SetCurrentScreenSize"]
  SETTABLEKS R2 R1 K2 ["SetCurrentScreenSize"]
  GETTABLEKS R2 R0 K6 ["setSaveRecordingDialogVisible"]
  SETTABLEKS R2 R1 K3 ["SetSaveRecordingDialogVisible"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["connectRecordTabEventListenersWithActions"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["onRecordTabShown"]
  CALL R2 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["disconnectRecordTabEventListeners"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onRecordTabHidden"]
  CALL R1 0 0
  GETTABLEKS R2 R0 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["SetPluginState"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["PluginState"]
  GETTABLEKS R2 R3 K5 ["Default"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Localization"]
  GETTABLEKS R4 R0 K3 ["state"]
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  LOADNIL R8
  GETTABLEKS R9 R1 K4 ["PluginState"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["PluginState"]
  GETTABLEKS R10 R11 K5 ["Recording"]
  JUMPIFNOTEQ R9 R10 [+18]
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K7 ["StatusMessageRecording"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K9 ["RecordButtonStopRecording"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R6 R9
  GETUPVAL R9 1
  GETTABLEKS R7 R9 K10 ["Pressed"]
  LOADB R8 1
  JUMP [+75]
  GETTABLEKS R9 R1 K4 ["PluginState"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["PluginState"]
  GETTABLEKS R10 R11 K11 ["ShouldStartRecording"]
  JUMPIFNOTEQ R9 R10 [+18]
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K12 ["StatusMessageShouldRecordOnGamePlayStart"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K13 ["RecordButtonReadyToRecord"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R6 R9
  GETUPVAL R9 1
  GETTABLEKS R7 R9 K14 ["Selected"]
  LOADB R8 0
  JUMP [+49]
  GETTABLEKS R9 R1 K4 ["PluginState"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["PluginState"]
  GETTABLEKS R10 R11 K15 ["Default"]
  JUMPIFNOTEQ R9 R10 [+16]
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K16 ["StatusMessageNotRecording"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K17 ["RecordButtonRecord"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R6 R9
  LOADNIL R7
  LOADB R8 0
  JUMP [+25]
  GETTABLEKS R9 R1 K4 ["PluginState"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["PluginState"]
  GETTABLEKS R10 R11 K18 ["Disabled"]
  JUMPIFNOTEQ R9 R10 [+17]
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K19 ["StatusMessageDisabled"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  LOADK R11 K6 ["RecordTabView"]
  LOADK R12 K17 ["RecordButtonRecord"]
  NAMECALL R9 R3 K8 ["getText"]
  CALL R9 3 1
  MOVE R6 R9
  GETUPVAL R9 1
  GETTABLEKS R7 R9 K18 ["Disabled"]
  LOADB R8 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K20 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K28 [{"Size", "AutomaticSize", "Padding", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R12 K31 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Size"]
  GETIMPORT R12 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K22 ["AutomaticSize"]
  GETTABLEKS R12 R2 K35 ["PaddingPx"]
  SETTABLEKS R12 R11 K23 ["Padding"]
  GETIMPORT R12 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K24 ["Layout"]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R2 K35 ["PaddingPx"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Spacing"]
  GETIMPORT R12 K42 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K26 ["HorizontalAlignment"]
  GETIMPORT R12 K44 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K27 ["VerticalAlignment"]
  DUPTABLE R12 K49 [{"FilterSettings", "DeviceEmulationInfoGroup", "RecordingButtonContainer", "ChooseRecordingNamePopUp"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K52 [{"LayoutOrder", "Disabled", "RoduxStoreContext"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K50 ["LayoutOrder"]
  SETTABLEKS R8 R15 K18 ["Disabled"]
  LOADK R16 K53 ["recordTabFilter"]
  SETTABLEKS R16 R15 K51 ["RoduxStoreContext"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K45 ["FilterSettings"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K54 [{"LayoutOrder"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K50 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K46 ["DeviceEmulationInfoGroup"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K56 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
  LOADN R16 3
  SETTABLEKS R16 R15 K50 ["LayoutOrder"]
  LOADK R16 K57 ["CornerBox"]
  SETTABLEKS R16 R15 K55 ["Style"]
  GETIMPORT R16 K59 [UDim2.fromOffset]
  GETTABLEKS R17 R2 K60 ["UIGroupWidthPx"]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["Size"]
  GETIMPORT R16 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K22 ["AutomaticSize"]
  GETIMPORT R16 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K24 ["Layout"]
  GETIMPORT R16 K40 [UDim.new]
  LOADN R17 0
  GETTABLEKS R18 R2 K35 ["PaddingPx"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Spacing"]
  GETTABLEKS R16 R2 K35 ["PaddingPx"]
  SETTABLEKS R16 R15 K23 ["Padding"]
  GETIMPORT R16 K62 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K26 ["HorizontalAlignment"]
  GETIMPORT R16 K44 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K27 ["VerticalAlignment"]
  DUPTABLE R16 K65 [{"Button", "StatusTextLabel"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K20 ["createElement"]
  GETUPVAL R18 6
  DUPTABLE R19 K69 [{"Size", "LayoutOrder", "Style", "StyleModifier", "Text", "OnClick"}]
  GETTABLEKS R20 R2 K70 ["PrimaryButtonSize"]
  SETTABLEKS R20 R19 K21 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K50 ["LayoutOrder"]
  LOADK R20 K71 ["RoundPrimaryRecordButton"]
  SETTABLEKS R20 R19 K55 ["Style"]
  SETTABLEKS R7 R19 K66 ["StyleModifier"]
  SETTABLEKS R6 R19 K67 ["Text"]
  GETTABLEKS R20 R0 K72 ["onRecordingButtonClicked"]
  SETTABLEKS R20 R19 K68 ["OnClick"]
  NEWTABLE R20 0 1
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K20 ["createElement"]
  GETUPVAL R22 7
  DUPTABLE R23 K74 [{"Cursor"}]
  LOADK R24 K75 ["PointingHand"]
  SETTABLEKS R24 R23 K73 ["Cursor"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  SETTABLEKS R17 R16 K63 ["Button"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K20 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K78 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "Style", "TextXAlignment", "TextYAlignment"}]
  SETTABLEKS R5 R19 K67 ["Text"]
  GETIMPORT R20 K80 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K21 ["Size"]
  GETIMPORT R20 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K22 ["AutomaticSize"]
  LOADN R20 2
  SETTABLEKS R20 R19 K50 ["LayoutOrder"]
  LOADK R20 K64 ["StatusTextLabel"]
  SETTABLEKS R20 R19 K55 ["Style"]
  GETIMPORT R20 K81 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K76 ["TextXAlignment"]
  GETIMPORT R20 K82 [Enum.TextYAlignment.Top]
  SETTABLEKS R20 R19 K77 ["TextYAlignment"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K64 ["StatusTextLabel"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K47 ["RecordingButtonContainer"]
  GETTABLEKS R13 R4 K83 ["SaveRecordingDialogVisible"]
  JUMPIFNOT R13 [+29]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["createElement"]
  GETUPVAL R14 9
  DUPTABLE R15 K89 [{"DefaultInputValue", "OnSaveButtonPressed", "OnCancelButtonPressed", "MessageLocalizationKey", "MessageLocalizationArgs"}]
  LOADK R18 K6 ["RecordTabView"]
  LOADK R19 K90 ["DefaultRecordingName"]
  NAMECALL R16 R3 K8 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K84 ["DefaultInputValue"]
  GETTABLEKS R16 R0 K91 ["onSaveRecordingDialogSave"]
  SETTABLEKS R16 R15 K85 ["OnSaveButtonPressed"]
  GETTABLEKS R16 R0 K92 ["onSaveRecordingDialogCancel"]
  SETTABLEKS R16 R15 K86 ["OnCancelButtonPressed"]
  GETTABLEKS R16 R4 K93 ["SaveRecordingDialogMessageLocalizationKey"]
  SETTABLEKS R16 R15 K87 ["MessageLocalizationKey"]
  GETTABLEKS R16 R4 K94 ["SaveRecordingDialogMessageLocalizationArgs"]
  SETTABLEKS R16 R15 K88 ["MessageLocalizationArgs"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K48 ["ChooseRecordingNamePopUp"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_8:
  DUPTABLE R2 K1 [{"PluginState"}]
  GETTABLEKS R4 R0 K2 ["common"]
  GETTABLEKS R3 R4 K3 ["pluginState"]
  SETTABLEKS R3 R2 K0 ["PluginState"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K4 [{"SetCurrentScreenSize", "SetEmulationDeviceId", "SetEmulationDeviceOrientation", "SetPluginState"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetCurrentScreenSize"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetEmulationDeviceId"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetEmulationDeviceOrientation"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["SetPluginState"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Button"]
  GETTABLEKS R7 R5 K12 ["Pane"]
  GETTABLEKS R8 R5 K13 ["TextLabel"]
  GETTABLEKS R9 R5 K14 ["HoverArea"]
  GETTABLEKS R10 R3 K15 ["Util"]
  GETTABLEKS R11 R10 K16 ["StyleModifier"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K19 ["FilterSettingsUIGroup"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K18 ["Components"]
  GETTABLEKS R14 R15 K20 ["DeviceEmulationInfoUIGroup"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K18 ["Components"]
  GETTABLEKS R15 R16 K21 ["ChooseRecordingNamePopUp"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K15 ["Util"]
  GETTABLEKS R16 R17 K22 ["Enums"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K15 ["Util"]
  GETTABLEKS R17 R18 K23 ["DMBridge"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R21 R0 K17 ["Src"]
  GETTABLEKS R20 R21 K24 ["Actions"]
  GETTABLEKS R19 R20 K25 ["RecordTab"]
  GETTABLEKS R18 R19 K26 ["SetScreenSize"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R22 R0 K17 ["Src"]
  GETTABLEKS R21 R22 K24 ["Actions"]
  GETTABLEKS R20 R21 K25 ["RecordTab"]
  GETTABLEKS R19 R20 K27 ["SetEmulationDeviceId"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R23 R0 K17 ["Src"]
  GETTABLEKS R22 R23 K24 ["Actions"]
  GETTABLEKS R21 R22 K25 ["RecordTab"]
  GETTABLEKS R20 R21 K28 ["SetEmulationDeviceOrientation"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R24 R0 K17 ["Src"]
  GETTABLEKS R23 R24 K24 ["Actions"]
  GETTABLEKS R22 R23 K29 ["Common"]
  GETTABLEKS R21 R22 K30 ["SetPluginState"]
  CALL R20 1 1
  GETTABLEKS R21 R1 K31 ["PureComponent"]
  LOADK R23 K32 ["TabView"]
  NAMECALL R21 R21 K33 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K34 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R22 R21 K35 ["init"]
  DUPCLOSURE R22 K36 [PROTO_5]
  CAPTURE VAL R16
  SETTABLEKS R22 R21 K37 ["didMount"]
  DUPCLOSURE R22 K38 [PROTO_6]
  CAPTURE VAL R16
  CAPTURE VAL R15
  SETTABLEKS R22 R21 K39 ["willUnmount"]
  DUPCLOSURE R22 K40 [PROTO_7]
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R14
  SETTABLEKS R22 R21 K41 ["render"]
  GETTABLEKS R22 R4 K42 ["withContext"]
  DUPTABLE R23 K46 [{"Plugin", "Stylizer", "Localization"}]
  GETTABLEKS R24 R4 K43 ["Plugin"]
  SETTABLEKS R24 R23 K43 ["Plugin"]
  GETTABLEKS R24 R4 K44 ["Stylizer"]
  SETTABLEKS R24 R23 K44 ["Stylizer"]
  GETTABLEKS R24 R4 K45 ["Localization"]
  SETTABLEKS R24 R23 K45 ["Localization"]
  CALL R22 1 1
  MOVE R23 R21
  CALL R22 1 1
  MOVE R21 R22
  DUPCLOSURE R22 K47 [PROTO_8]
  DUPCLOSURE R23 K48 [PROTO_13]
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  GETTABLEKS R24 R2 K49 ["connect"]
  MOVE R25 R22
  MOVE R26 R23
  CALL R24 2 1
  MOVE R25 R21
  CALL R24 1 -1
  RETURN R24 -1
