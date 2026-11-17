PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginState"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["PluginState"]
        8 GETTABLEKS                       R1 R1 K2 ["Default"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+23]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["getIsPlayMode"]
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K4 ["onStartRecordingButtonClicked"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["props"]
       25 GETTABLEKS                       R1 R1 K5 ["SetPluginState"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K1 ["PluginState"]
       30 GETTABLEKS                       R2 R2 K6 ["ShouldStartRecording"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K1 ["PluginState"]
       37 GETTABLEKS                       R1 R1 K7 ["Recording"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+6]
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K8 ["onStopRecordingButtonClicked"]
       44 CALL                             R1 0 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K1 ["PluginState"]
       49 GETTABLEKS                       R1 R1 K6 ["ShouldStartRecording"]
       51 JUMPIFNOTEQ                      R0 R1 ; [+12]
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K0 ["props"]
       56 GETTABLEKS                       R1 R1 K5 ["SetPluginState"]
       58 GETUPVAL                         R2 1
       59 GETTABLEKS                       R2 R2 K1 ["PluginState"]
       61 GETTABLEKS                       R2 R2 K2 ["Default"]
       63 CALL                             R1 1 0
       64 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K4 [{[1] = True, ["SaveRecordingDialogMessageLocalizationKey"], ["SaveRecordingDialogMessageLocalizationArgs"]}]
        2 SETTABLEKS                       R0 R4 K2 ["SaveRecordingDialogMessageLocalizationKey"]
        4 SETTABLEKS                       R1 R4 K3 ["SaveRecordingDialogMessageLocalizationArgs"]
        6 NAMECALL                         R2 R2 K5 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["onSaveRecordingDialogCancel"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{[1] = False}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K4 ["onSaveRecordingDialogSave"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K5 [{[1] = False, ["SaveRecordingDialogMessageLocalizationKey"] = , ["SaveRecordingDialogMessageLocalizationArgs"] = }]
        1 SETTABLEKS                       R1 R0 K6 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K7 ["onRecordingButtonClicked"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K8 ["setSaveRecordingDialogVisible"]
       13 NEWCLOSURE                       R1 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R1 R0 K9 ["onSaveRecordingDialogCancel"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 SETTABLEKS                       R1 R0 K10 ["onSaveRecordingDialogSave"]
       23 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K4 [{"SetEmulationDeviceId", "SetEmulationDeviceOrientation", "SetCurrentScreenSize", "SetSaveRecordingDialogVisible"}]
        1 GETTABLEKS                       R2 R0 K5 ["props"]
        3 GETTABLEKS                       R2 R2 K0 ["SetEmulationDeviceId"]
        5 SETTABLEKS                       R2 R1 K0 ["SetEmulationDeviceId"]
        7 GETTABLEKS                       R2 R0 K5 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["SetEmulationDeviceOrientation"]
       11 SETTABLEKS                       R2 R1 K1 ["SetEmulationDeviceOrientation"]
       13 GETTABLEKS                       R2 R0 K5 ["props"]
       15 GETTABLEKS                       R2 R2 K2 ["SetCurrentScreenSize"]
       17 SETTABLEKS                       R2 R1 K2 ["SetCurrentScreenSize"]
       19 GETTABLEKS                       R2 R0 K6 ["setSaveRecordingDialogVisible"]
       21 SETTABLEKS                       R2 R1 K3 ["SetSaveRecordingDialogVisible"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K7 ["connectRecordTabEventListenersWithActions"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K8 ["onRecordTabShown"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disconnectRecordTabEventListeners"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["onRecordTabHidden"]
        7 CALL                             R1 0 0
        8 GETTABLEKS                       R1 R0 K2 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["SetPluginState"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["PluginState"]
       15 GETTABLEKS                       R2 R2 K5 ["Default"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 GETTABLEKS                       R9 R1 K4 ["PluginState"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K4 ["PluginState"]
       19 GETTABLEKS                       R10 R10 K5 ["Recording"]
       21 JUMPIFNOTEQ                      R9 R10 ; [+18]
       23 LOADK                            R11 K6 ["RecordTabView"]
       24 LOADK                            R12 K7 ["StatusMessageRecording"]
       25 NAMECALL                         R9 R3 K8 ["getText"]
       27 CALL                             R9 3 1
       28 MOVE                             R5 R9
       29 LOADK                            R11 K6 ["RecordTabView"]
       30 LOADK                            R12 K9 ["RecordButtonStopRecording"]
       31 NAMECALL                         R9 R3 K8 ["getText"]
       33 CALL                             R9 3 1
       34 MOVE                             R6 R9
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R7 R9 K10 ["Pressed"]
       38 LOADB                            R8 1
       39 JUMP                             ; [+75]
       40 GETTABLEKS                       R9 R1 K4 ["PluginState"]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K4 ["PluginState"]
       45 GETTABLEKS                       R10 R10 K11 ["ShouldStartRecording"]
       47 JUMPIFNOTEQ                      R9 R10 ; [+18]
       49 LOADK                            R11 K6 ["RecordTabView"]
       50 LOADK                            R12 K12 ["StatusMessageShouldRecordOnGamePlayStart"]
       51 NAMECALL                         R9 R3 K8 ["getText"]
       53 CALL                             R9 3 1
       54 MOVE                             R5 R9
       55 LOADK                            R11 K6 ["RecordTabView"]
       56 LOADK                            R12 K13 ["RecordButtonReadyToRecord"]
       57 NAMECALL                         R9 R3 K8 ["getText"]
       59 CALL                             R9 3 1
       60 MOVE                             R6 R9
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R7 R9 K14 ["Selected"]
       64 LOADB                            R8 0
       65 JUMP                             ; [+49]
       66 GETTABLEKS                       R9 R1 K4 ["PluginState"]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K4 ["PluginState"]
       71 GETTABLEKS                       R10 R10 K15 ["Default"]
       73 JUMPIFNOTEQ                      R9 R10 ; [+16]
       75 LOADK                            R11 K6 ["RecordTabView"]
       76 LOADK                            R12 K16 ["StatusMessageNotRecording"]
       77 NAMECALL                         R9 R3 K8 ["getText"]
       79 CALL                             R9 3 1
       80 MOVE                             R5 R9
       81 LOADK                            R11 K6 ["RecordTabView"]
       82 LOADK                            R12 K17 ["RecordButtonRecord"]
       83 NAMECALL                         R9 R3 K8 ["getText"]
       85 CALL                             R9 3 1
       86 MOVE                             R6 R9
       87 LOADNIL                          R7
       88 LOADB                            R8 0
       89 JUMP                             ; [+25]
       90 GETTABLEKS                       R9 R1 K4 ["PluginState"]
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K4 ["PluginState"]
       95 GETTABLEKS                       R10 R10 K18 ["Disabled"]
       97 JUMPIFNOTEQ                      R9 R10 ; [+17]
       99 LOADK                            R11 K6 ["RecordTabView"]
      100 LOADK                            R12 K19 ["StatusMessageDisabled"]
      101 NAMECALL                         R9 R3 K8 ["getText"]
      103 CALL                             R9 3 1
      104 MOVE                             R5 R9
      105 LOADK                            R11 K6 ["RecordTabView"]
      106 LOADK                            R12 K17 ["RecordButtonRecord"]
      107 NAMECALL                         R9 R3 K8 ["getText"]
      109 CALL                             R9 3 1
      110 MOVE                             R6 R9
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R7 R9 K18 ["Disabled"]
      114 LOADB                            R8 1
      115 GETUPVAL                         R9 2
      116 GETTABLEKS                       R9 R9 K20 ["createElement"]
      118 GETUPVAL                         R10 3
      119 DUPTABLE                         R11 K28 [{"Size", "AutomaticSize", "Padding", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      120 GETIMPORT                        R12 K31 [UDim2.new]
      122 LOADN                            R13 1
      123 LOADN                            R14 0
      124 LOADN                            R15 0
      125 LOADN                            R16 0
      126 CALL                             R12 4 1
      127 SETTABLEKS                       R12 R11 K21 ["Size"]
      129 GETIMPORT                        R12 K34 [Enum.AutomaticSize.Y]
      131 SETTABLEKS                       R12 R11 K22 ["AutomaticSize"]
      133 GETTABLEKS                       R12 R2 K35 ["PaddingPx"]
      135 SETTABLEKS                       R12 R11 K23 ["Padding"]
      137 GETIMPORT                        R12 K38 [Enum.FillDirection.Vertical]
      139 SETTABLEKS                       R12 R11 K24 ["Layout"]
      141 GETIMPORT                        R12 K40 [UDim.new]
      143 LOADN                            R13 0
      144 GETTABLEKS                       R14 R2 K35 ["PaddingPx"]
      146 CALL                             R12 2 1
      147 SETTABLEKS                       R12 R11 K25 ["Spacing"]
      149 GETIMPORT                        R12 K42 [Enum.HorizontalAlignment.Left]
      151 SETTABLEKS                       R12 R11 K26 ["HorizontalAlignment"]
      153 GETIMPORT                        R12 K44 [Enum.VerticalAlignment.Top]
      155 SETTABLEKS                       R12 R11 K27 ["VerticalAlignment"]
      157 DUPTABLE                         R12 K49 [{"FilterSettings", "DeviceEmulationInfoGroup", "RecordingButtonContainer", "ChooseRecordingNamePopUp"}]
      158 GETUPVAL                         R13 2
      159 GETTABLEKS                       R13 R13 K20 ["createElement"]
      161 GETUPVAL                         R14 4
      162 DUPTABLE                         R15 K54 [{["LayoutOrder"] = 1, ["Disabled"], ["RoduxStoreContext"] = "recordTabFilter"}]
      163 SETTABLEKS                       R8 R15 K18 ["Disabled"]
      165 CALL                             R13 2 1
      166 SETTABLEKS                       R13 R12 K45 ["FilterSettings"]
      168 GETUPVAL                         R13 2
      169 GETTABLEKS                       R13 R13 K20 ["createElement"]
      171 GETUPVAL                         R14 5
      172 DUPTABLE                         R15 K56 [{["LayoutOrder"] = 2}]
      173 CALL                             R13 2 1
      174 SETTABLEKS                       R13 R12 K46 ["DeviceEmulationInfoGroup"]
      176 GETUPVAL                         R13 2
      177 GETTABLEKS                       R13 R13 K20 ["createElement"]
      179 GETUPVAL                         R14 3
      180 DUPTABLE                         R15 K60 [{["LayoutOrder"] = 3, ["Style"] = "CornerBox", ["Size"], ["AutomaticSize"], ["Layout"], ["Spacing"], ["Padding"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
      181 GETIMPORT                        R16 K62 [UDim2.fromOffset]
      183 GETTABLEKS                       R17 R2 K63 ["UIGroupWidthPx"]
      185 LOADN                            R18 0
      186 CALL                             R16 2 1
      187 SETTABLEKS                       R16 R15 K21 ["Size"]
      189 GETIMPORT                        R16 K34 [Enum.AutomaticSize.Y]
      191 SETTABLEKS                       R16 R15 K22 ["AutomaticSize"]
      193 GETIMPORT                        R16 K38 [Enum.FillDirection.Vertical]
      195 SETTABLEKS                       R16 R15 K24 ["Layout"]
      197 GETIMPORT                        R16 K40 [UDim.new]
      199 LOADN                            R17 0
      200 GETTABLEKS                       R18 R2 K35 ["PaddingPx"]
      202 CALL                             R16 2 1
      203 SETTABLEKS                       R16 R15 K25 ["Spacing"]
      205 GETTABLEKS                       R16 R2 K35 ["PaddingPx"]
      207 SETTABLEKS                       R16 R15 K23 ["Padding"]
      209 GETIMPORT                        R16 K65 [Enum.HorizontalAlignment.Center]
      211 SETTABLEKS                       R16 R15 K26 ["HorizontalAlignment"]
      213 GETIMPORT                        R16 K44 [Enum.VerticalAlignment.Top]
      215 SETTABLEKS                       R16 R15 K27 ["VerticalAlignment"]
      217 DUPTABLE                         R16 K68 [{"Button", "StatusTextLabel"}]
      218 GETUPVAL                         R17 2
      219 GETTABLEKS                       R17 R17 K20 ["createElement"]
      221 GETUPVAL                         R18 6
      222 DUPTABLE                         R19 K73 [{["Size"], ["LayoutOrder"] = 1, ["Style"] = "RoundPrimaryRecordButton", ["StyleModifier"], ["Text"], ["OnClick"]}]
      223 GETTABLEKS                       R20 R2 K74 ["PrimaryButtonSize"]
      225 SETTABLEKS                       R20 R19 K21 ["Size"]
      227 SETTABLEKS                       R7 R19 K70 ["StyleModifier"]
      229 SETTABLEKS                       R6 R19 K71 ["Text"]
      231 GETTABLEKS                       R20 R0 K75 ["onRecordingButtonClicked"]
      233 SETTABLEKS                       R20 R19 K72 ["OnClick"]
      235 NEWTABLE                         R20 0 1
      237 GETUPVAL                         R21 2
      238 GETTABLEKS                       R21 R21 K20 ["createElement"]
      240 GETUPVAL                         R22 7
      241 DUPTABLE                         R23 K78 [{["Cursor"] = "PointingHand"}]
      242 CALL                             R21 2 -1
      243 SETLIST                          R20 R21 -1 [1]
      245 CALL                             R17 3 1
      246 SETTABLEKS                       R17 R16 K66 ["Button"]
      248 GETUPVAL                         R17 2
      249 GETTABLEKS                       R17 R17 K20 ["createElement"]
      251 GETUPVAL                         R18 8
      252 DUPTABLE                         R19 K81 [{["Text"], ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 2, ["Style"] = "StatusTextLabel", ["TextXAlignment"], ["TextYAlignment"]}]
      253 SETTABLEKS                       R5 R19 K71 ["Text"]
      255 GETIMPORT                        R20 K83 [UDim2.fromScale]
      257 LOADN                            R21 1
      258 LOADN                            R22 0
      259 CALL                             R20 2 1
      260 SETTABLEKS                       R20 R19 K21 ["Size"]
      262 GETIMPORT                        R20 K34 [Enum.AutomaticSize.Y]
      264 SETTABLEKS                       R20 R19 K22 ["AutomaticSize"]
      266 GETIMPORT                        R20 K84 [Enum.TextXAlignment.Left]
      268 SETTABLEKS                       R20 R19 K79 ["TextXAlignment"]
      270 GETIMPORT                        R20 K85 [Enum.TextYAlignment.Top]
      272 SETTABLEKS                       R20 R19 K80 ["TextYAlignment"]
      274 CALL                             R17 2 1
      275 SETTABLEKS                       R17 R16 K67 ["StatusTextLabel"]
      277 CALL                             R13 3 1
      278 SETTABLEKS                       R13 R12 K47 ["RecordingButtonContainer"]
      280 GETTABLEKS                       R13 R4 K86 ["SaveRecordingDialogVisible"]
      282 JUMPIFNOT                        R13 ; [+29]
      283 GETUPVAL                         R13 2
      284 GETTABLEKS                       R13 R13 K20 ["createElement"]
      286 GETUPVAL                         R14 9
      287 DUPTABLE                         R15 K92 [{"DefaultInputValue", "OnSaveButtonPressed", "OnCancelButtonPressed", "MessageLocalizationKey", "MessageLocalizationArgs"}]
      288 LOADK                            R18 K6 ["RecordTabView"]
      289 LOADK                            R19 K93 ["DefaultRecordingName"]
      290 NAMECALL                         R16 R3 K8 ["getText"]
      292 CALL                             R16 3 1
      293 SETTABLEKS                       R16 R15 K87 ["DefaultInputValue"]
      295 GETTABLEKS                       R16 R0 K94 ["onSaveRecordingDialogSave"]
      297 SETTABLEKS                       R16 R15 K88 ["OnSaveButtonPressed"]
      299 GETTABLEKS                       R16 R0 K95 ["onSaveRecordingDialogCancel"]
      301 SETTABLEKS                       R16 R15 K89 ["OnCancelButtonPressed"]
      303 GETTABLEKS                       R16 R4 K96 ["SaveRecordingDialogMessageLocalizationKey"]
      305 SETTABLEKS                       R16 R15 K90 ["MessageLocalizationKey"]
      307 GETTABLEKS                       R16 R4 K97 ["SaveRecordingDialogMessageLocalizationArgs"]
      309 SETTABLEKS                       R16 R15 K91 ["MessageLocalizationArgs"]
      311 CALL                             R13 2 1
      312 SETTABLEKS                       R13 R12 K48 ["ChooseRecordingNamePopUp"]
      314 CALL                             R9 3 -1
      315 RETURN                           R9 -1

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"PluginState"}]
        1 GETTABLEKS                       R3 R0 K2 ["common"]
        3 GETTABLEKS                       R3 R3 K3 ["pluginState"]
        5 SETTABLEKS                       R3 R2 K0 ["PluginState"]
        7 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K4 [{"SetCurrentScreenSize", "SetEmulationDeviceId", "SetEmulationDeviceOrientation", "SetPluginState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetCurrentScreenSize"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetEmulationDeviceId"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetEmulationDeviceOrientation"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetPluginState"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R3 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["Button"]
       36 GETTABLEKS                       R7 R5 K12 ["Pane"]
       38 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       40 GETTABLEKS                       R9 R5 K14 ["HoverArea"]
       42 GETTABLEKS                       R10 R3 K15 ["Util"]
       44 GETTABLEKS                       R11 R10 K16 ["StyleModifier"]
       46 GETIMPORT                        R12 K4 [require]
       48 GETTABLEKS                       R13 R0 K17 ["Src"]
       50 GETTABLEKS                       R13 R13 K18 ["Components"]
       52 GETTABLEKS                       R13 R13 K19 ["FilterSettingsUIGroup"]
       54 CALL                             R12 1 1
       55 GETIMPORT                        R13 K4 [require]
       57 GETTABLEKS                       R14 R0 K17 ["Src"]
       59 GETTABLEKS                       R14 R14 K18 ["Components"]
       61 GETTABLEKS                       R14 R14 K20 ["DeviceEmulationInfoUIGroup"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K4 [require]
       66 GETTABLEKS                       R15 R0 K17 ["Src"]
       68 GETTABLEKS                       R15 R15 K18 ["Components"]
       70 GETTABLEKS                       R15 R15 K21 ["ChooseRecordingNamePopUp"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K4 [require]
       75 GETTABLEKS                       R16 R0 K17 ["Src"]
       77 GETTABLEKS                       R16 R16 K15 ["Util"]
       79 GETTABLEKS                       R16 R16 K22 ["Enums"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R0 K17 ["Src"]
       86 GETTABLEKS                       R17 R17 K15 ["Util"]
       88 GETTABLEKS                       R17 R17 K23 ["DMBridge"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K4 [require]
       93 GETTABLEKS                       R18 R0 K17 ["Src"]
       95 GETTABLEKS                       R18 R18 K24 ["Actions"]
       97 GETTABLEKS                       R18 R18 K25 ["RecordTab"]
       99 GETTABLEKS                       R18 R18 K26 ["SetScreenSize"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K4 [require]
      104 GETTABLEKS                       R19 R0 K17 ["Src"]
      106 GETTABLEKS                       R19 R19 K24 ["Actions"]
      108 GETTABLEKS                       R19 R19 K25 ["RecordTab"]
      110 GETTABLEKS                       R19 R19 K27 ["SetEmulationDeviceId"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K4 [require]
      115 GETTABLEKS                       R20 R0 K17 ["Src"]
      117 GETTABLEKS                       R20 R20 K24 ["Actions"]
      119 GETTABLEKS                       R20 R20 K25 ["RecordTab"]
      121 GETTABLEKS                       R20 R20 K28 ["SetEmulationDeviceOrientation"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K4 [require]
      126 GETTABLEKS                       R21 R0 K17 ["Src"]
      128 GETTABLEKS                       R21 R21 K24 ["Actions"]
      130 GETTABLEKS                       R21 R21 K29 ["Common"]
      132 GETTABLEKS                       R21 R21 K30 ["SetPluginState"]
      134 CALL                             R20 1 1
      135 GETTABLEKS                       R21 R1 K31 ["PureComponent"]
      137 LOADK                            R23 K32 ["TabView"]
      138 NAMECALL                         R21 R21 K33 ["extend"]
      140 CALL                             R21 2 1
      141 DUPCLOSURE                       R22 K34 [PROTO_4]
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R16
      144 SETTABLEKS                       R22 R21 K35 ["init"]
      146 DUPCLOSURE                       R22 K36 [PROTO_5]
      147 CAPTURE                          VAL R16
      148 SETTABLEKS                       R22 R21 K37 ["didMount"]
      150 DUPCLOSURE                       R22 K38 [PROTO_6]
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R15
      153 SETTABLEKS                       R22 R21 K39 ["willUnmount"]
      155 DUPCLOSURE                       R22 K40 [PROTO_7]
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R14
      166 SETTABLEKS                       R22 R21 K41 ["render"]
      168 GETTABLEKS                       R22 R4 K42 ["withContext"]
      170 DUPTABLE                         R23 K46 [{"Plugin", "Stylizer", "Localization"}]
      171 GETTABLEKS                       R24 R4 K43 ["Plugin"]
      173 SETTABLEKS                       R24 R23 K43 ["Plugin"]
      175 GETTABLEKS                       R24 R4 K44 ["Stylizer"]
      177 SETTABLEKS                       R24 R23 K44 ["Stylizer"]
      179 GETTABLEKS                       R24 R4 K45 ["Localization"]
      181 SETTABLEKS                       R24 R23 K45 ["Localization"]
      183 CALL                             R22 1 1
      184 MOVE                             R23 R21
      185 CALL                             R22 1 1
      186 MOVE                             R21 R22
      187 DUPCLOSURE                       R22 K47 [PROTO_8]
      188 DUPCLOSURE                       R23 K48 [PROTO_13]
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R20
      193 GETTABLEKS                       R24 R2 K49 ["connect"]
      195 MOVE                             R25 R22
      196 MOVE                             R26 R23
      197 CALL                             R24 2 1
      198 MOVE                             R25 R21
      199 CALL                             R24 1 -1
      200 RETURN                           R24 -1
