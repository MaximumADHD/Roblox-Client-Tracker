PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+11]
        6 GETTABLEKS                       R2 R1 K4 ["UserInputState"]
        8 GETIMPORT                        R3 K6 [Enum.UserInputState.Begin]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K7 ["searchForUserInputRecordings"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"playbackFileNameOptions"}]
        2 SETTABLEKS                       R0 R3 K0 ["playbackFileNameOptions"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["playbackFileNameOptions"]
        5 FASTCALL1                        ASSERT R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 1 0
       10 GETTABLE                         R2 R1 R0
       11 FASTCALL1                        ASSERT R2 ; [+3]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K3 [assert]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["loadRecordingWithName"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["PluginState"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["PluginState"]
        8 GETTABLEKS                       R4 R4 K2 ["Playing"]
       10 JUMPIFEQ                         R3 R4 ; [+26]
       12 GETTABLEKS                       R3 R2 K1 ["PluginState"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K1 ["PluginState"]
       17 GETTABLEKS                       R4 R4 K3 ["Disabled"]
       19 JUMPIFEQ                         R3 R4 ; [+17]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R5 K5 [{"selectedRecordingIndex"}]
       23 SETTABLEKS                       R1 R5 K4 ["selectedRecordingIndex"]
       25 NAMECALL                         R3 R3 K6 ["setState"]
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R2 K7 ["OnCanStartPlaying"]
       30 LOADB                            R4 1
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K8 ["loadRecordingWithName"]
       35 MOVE                             R4 R0
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["searchForUserInputRecordings"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"playbackFileNameOptions", "selectedRecordingIndex"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["playbackFileNameOptions"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["selectedRecordingIndex"]
        8 SETTABLEKS                       R1 R0 K3 ["state"]
       10 DUPCLOSURE                       R1 K4 [PROTO_0]
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K5 ["DEPRECATED_updatePlaybackFileNameOptions"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K6 ["setPlayableRecordings"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K7 ["loadRecordingIndex"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U0
       27 SETTABLEKS                       R1 R0 K8 ["onSelectInputItemActivated"]
       29 DUPCLOSURE                       R1 K9 [PROTO_4]
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R1 R0 K10 ["onMouseEnter"]
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectSetPlayableRecordingsCallback"]
        3 GETTABLEKS                       R2 R0 K1 ["setPlayableRecordings"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disconnectSetPlayableRecordingsCallback"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["SetPluginState"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["PluginState"]
       11 GETTABLEKS                       R2 R2 K4 ["Default"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 NEWTABLE                         R7 16 0
       14 GETIMPORT                        R8 K7 [UDim2.fromScale]
       16 LOADN                            R9 1
       17 LOADN                            R10 0
       18 CALL                             R8 2 1
       19 SETTABLEKS                       R8 R7 K8 ["Size"]
       21 GETIMPORT                        R8 K12 [Enum.AutomaticSize.Y]
       23 SETTABLEKS                       R8 R7 K10 ["AutomaticSize"]
       25 LOADN                            R8 1
       26 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       28 LOADN                            R8 1
       29 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       31 GETIMPORT                        R8 K17 [Enum.FillDirection.Horizontal]
       33 SETTABLEKS                       R8 R7 K18 ["Layout"]
       35 GETIMPORT                        R8 K21 [UDim.new]
       37 LOADN                            R9 0
       38 GETTABLEKS                       R10 R4 K22 ["PaddingPx"]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K23 ["Spacing"]
       43 GETIMPORT                        R8 K26 [Enum.VerticalAlignment.Center]
       45 SETTABLEKS                       R8 R7 K24 ["VerticalAlignment"]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K27 ["Event"]
       50 GETTABLEKS                       R8 R8 K28 ["InputBegan"]
       52 GETUPVAL                         R10 2
       53 JUMPIFNOT                        R10 ; [+2]
       54 LOADNIL                          R9
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R9 R0 K29 ["DEPRECATED_updatePlaybackFileNameOptions"]
       58 SETTABLE                         R9 R7 R8
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K27 ["Event"]
       62 GETTABLEKS                       R8 R8 K30 ["MouseEnter"]
       64 GETUPVAL                         R10 2
       65 JUMPIFNOT                        R10 ; [+3]
       66 GETTABLEKS                       R9 R0 K31 ["onMouseEnter"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R9
       70 SETTABLE                         R9 R7 R8
       71 DUPTABLE                         R8 K34 [{"Label", "Input"}]
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K4 ["createElement"]
       75 GETUPVAL                         R10 3
       76 DUPTABLE                         R11 K38 [{"Text", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
       77 LOADK                            R14 K39 ["PlaybackTabView"]
       78 LOADK                            R15 K40 ["PlayFileLabel"]
       79 NAMECALL                         R12 R3 K41 ["getText"]
       81 CALL                             R12 3 1
       82 SETTABLEKS                       R12 R11 K35 ["Text"]
       84 GETIMPORT                        R12 K43 [Enum.AutomaticSize.XY]
       86 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       88 LOADN                            R12 255
       89 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       91 GETIMPORT                        R12 K45 [Enum.TextXAlignment.Left]
       93 SETTABLEKS                       R12 R11 K36 ["TextXAlignment"]
       95 GETIMPORT                        R12 K46 [Enum.TextYAlignment.Center]
       97 SETTABLEKS                       R12 R11 K37 ["TextYAlignment"]
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K32 ["Label"]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K4 ["createElement"]
      105 GETUPVAL                         R10 4
      106 DUPTABLE                         R11 K52 [{"Style", "Items", "PlaceholderText", "SelectedIndex", "OnItemActivated"}]
      107 GETTABLEKS                       R12 R4 K53 ["PlaybackSelectInput"]
      109 SETTABLEKS                       R12 R11 K47 ["Style"]
      111 GETTABLEKS                       R12 R2 K54 ["playbackFileNameOptions"]
      113 SETTABLEKS                       R12 R11 K48 ["Items"]
      115 LOADK                            R14 K39 ["PlaybackTabView"]
      116 LOADK                            R15 K55 ["SelectInputDefaultText"]
      117 NAMECALL                         R12 R3 K41 ["getText"]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K49 ["PlaceholderText"]
      122 GETTABLEKS                       R12 R2 K56 ["selectedRecordingIndex"]
      124 SETTABLEKS                       R12 R11 K50 ["SelectedIndex"]
      126 GETTABLEKS                       R12 R0 K57 ["onSelectInputItemActivated"]
      128 SETTABLEKS                       R12 R11 K51 ["OnItemActivated"]
      130 CALL                             R9 2 1
      131 SETTABLEKS                       R9 R8 K33 ["Input"]
      133 CALL                             R5 3 -1
      134 RETURN                           R5 -1

PROTO_9:
        0 DUPTABLE                         R2 K2 [{"ShouldSetEmulationDevice", "PluginState"}]
        1 GETTABLEKS                       R3 R0 K3 ["playbackTab"]
        3 GETTABLEKS                       R3 R3 K4 ["shouldSetEmulationDevice"]
        5 SETTABLEKS                       R3 R2 K0 ["ShouldSetEmulationDevice"]
        7 GETTABLEKS                       R3 R0 K5 ["common"]
        9 GETTABLEKS                       R3 R3 K6 ["pluginState"]
       11 SETTABLEKS                       R3 R2 K1 ["PluginState"]
       13 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"SetPluginState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetPluginState"]
        6 RETURN                           R1 1

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
       34 GETTABLEKS                       R6 R5 K11 ["TextLabel"]
       36 GETTABLEKS                       R7 R5 K12 ["SelectInput"]
       38 GETTABLEKS                       R8 R5 K13 ["Pane"]
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Src"]
       44 GETTABLEKS                       R10 R10 K15 ["Util"]
       46 GETTABLEKS                       R10 R10 K16 ["Enums"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R0 K14 ["Src"]
       53 GETTABLEKS                       R11 R11 K15 ["Util"]
       55 GETTABLEKS                       R11 R11 K17 ["DMBridge"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K4 [require]
       60 GETTABLEKS                       R12 R0 K14 ["Src"]
       62 GETTABLEKS                       R12 R12 K18 ["Actions"]
       64 GETTABLEKS                       R12 R12 K19 ["Common"]
       66 GETTABLEKS                       R12 R12 K20 ["SetPluginState"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R1 K21 ["PureComponent"]
       71 LOADK                            R14 K22 ["RecordingFileSelector"]
       72 NAMECALL                         R12 R12 K23 ["extend"]
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K25 [game]
       77 LOADK                            R15 K26 ["UserInputPlaybackPluginFixRecordingFileSelectorNotUpdating"]
       78 NAMECALL                         R13 R13 K27 ["GetFastFlag"]
       80 CALL                             R13 2 1
       81 DUPCLOSURE                       R14 K28 [PROTO_5]
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 SETTABLEKS                       R14 R12 K29 ["init"]
       86 DUPCLOSURE                       R14 K30 [PROTO_6]
       87 CAPTURE                          VAL R10
       88 SETTABLEKS                       R14 R12 K31 ["didMount"]
       90 DUPCLOSURE                       R14 K32 [PROTO_7]
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R9
       93 SETTABLEKS                       R14 R12 K33 ["willUnmount"]
       95 DUPCLOSURE                       R14 K34 [PROTO_8]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R14 R12 K35 ["render"]
      103 GETTABLEKS                       R14 R4 K36 ["withContext"]
      105 DUPTABLE                         R15 K39 [{"Stylizer", "Localization"}]
      106 GETTABLEKS                       R16 R4 K37 ["Stylizer"]
      108 SETTABLEKS                       R16 R15 K37 ["Stylizer"]
      110 GETTABLEKS                       R16 R4 K38 ["Localization"]
      112 SETTABLEKS                       R16 R15 K38 ["Localization"]
      114 CALL                             R14 1 1
      115 MOVE                             R15 R12
      116 CALL                             R14 1 1
      117 MOVE                             R12 R14
      118 DUPCLOSURE                       R14 K40 [PROTO_9]
      119 DUPCLOSURE                       R15 K41 [PROTO_11]
      120 CAPTURE                          VAL R11
      121 GETTABLEKS                       R16 R2 K42 ["connect"]
      123 MOVE                             R17 R14
      124 MOVE                             R18 R15
      125 CALL                             R16 2 1
      126 MOVE                             R17 R12
      127 CALL                             R16 1 -1
      128 RETURN                           R16 -1
