PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"playbackFileNameOptions"}]
        2 SETTABLEKS                       R0 R3 K0 ["playbackFileNameOptions"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["searchForUserInputRecordings"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"playbackFileNameOptions", "selectedRecordingIndex"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["playbackFileNameOptions"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["selectedRecordingIndex"]
        8 SETTABLEKS                       R1 R0 K3 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["setPlayableRecordings"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K5 ["loadRecordingIndex"]
       19 NEWCLOSURE                       R1 P2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 SETTABLEKS                       R1 R0 K6 ["onSelectInputItemActivated"]
       25 DUPCLOSURE                       R1 K7 [PROTO_3]
       26 CAPTURE                          UPVAL U0
       27 SETTABLEKS                       R1 R0 K8 ["onMouseEnter"]
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectSetPlayableRecordingsCallback"]
        3 GETTABLEKS                       R2 R0 K1 ["setPlayableRecordings"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 NEWTABLE                         R7 8 0
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
       50 GETTABLEKS                       R8 R8 K28 ["MouseEnter"]
       52 GETTABLEKS                       R9 R0 K29 ["onMouseEnter"]
       54 SETTABLE                         R9 R7 R8
       55 DUPTABLE                         R8 K32 [{"Label", "Input"}]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K4 ["createElement"]
       59 GETUPVAL                         R10 2
       60 DUPTABLE                         R11 K36 [{"Text", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
       61 LOADK                            R14 K37 ["PlaybackTabView"]
       62 LOADK                            R15 K38 ["PlayFileLabel"]
       63 NAMECALL                         R12 R3 K39 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K33 ["Text"]
       68 GETIMPORT                        R12 K41 [Enum.AutomaticSize.XY]
       70 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       72 LOADN                            R12 255
       73 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       75 GETIMPORT                        R12 K43 [Enum.TextXAlignment.Left]
       77 SETTABLEKS                       R12 R11 K34 ["TextXAlignment"]
       79 GETIMPORT                        R12 K44 [Enum.TextYAlignment.Center]
       81 SETTABLEKS                       R12 R11 K35 ["TextYAlignment"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K30 ["Label"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K4 ["createElement"]
       89 GETUPVAL                         R10 3
       90 DUPTABLE                         R11 K50 [{"Style", "Items", "PlaceholderText", "SelectedIndex", "OnItemActivated"}]
       91 GETTABLEKS                       R12 R4 K51 ["PlaybackSelectInput"]
       93 SETTABLEKS                       R12 R11 K45 ["Style"]
       95 GETTABLEKS                       R12 R2 K52 ["playbackFileNameOptions"]
       97 SETTABLEKS                       R12 R11 K46 ["Items"]
       99 LOADK                            R14 K37 ["PlaybackTabView"]
      100 LOADK                            R15 K53 ["SelectInputDefaultText"]
      101 NAMECALL                         R12 R3 K39 ["getText"]
      103 CALL                             R12 3 1
      104 SETTABLEKS                       R12 R11 K47 ["PlaceholderText"]
      106 GETTABLEKS                       R12 R2 K54 ["selectedRecordingIndex"]
      108 SETTABLEKS                       R12 R11 K48 ["SelectedIndex"]
      110 GETTABLEKS                       R12 R0 K55 ["onSelectInputItemActivated"]
      112 SETTABLEKS                       R12 R11 K49 ["OnItemActivated"]
      114 CALL                             R9 2 1
      115 SETTABLEKS                       R9 R8 K31 ["Input"]
      117 CALL                             R5 3 -1
      118 RETURN                           R5 -1

PROTO_8:
        0 DUPTABLE                         R2 K2 [{"ShouldSetEmulationDevice", "PluginState"}]
        1 GETTABLEKS                       R3 R0 K3 ["playbackTab"]
        3 GETTABLEKS                       R3 R3 K4 ["shouldSetEmulationDevice"]
        5 SETTABLEKS                       R3 R2 K0 ["ShouldSetEmulationDevice"]
        7 GETTABLEKS                       R3 R0 K5 ["common"]
        9 GETTABLEKS                       R3 R3 K6 ["pluginState"]
       11 SETTABLEKS                       R3 R2 K1 ["PluginState"]
       13 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
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
       75 DUPCLOSURE                       R13 K24 [PROTO_4]
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R13 R12 K25 ["init"]
       80 DUPCLOSURE                       R13 K26 [PROTO_5]
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R13 R12 K27 ["didMount"]
       84 DUPCLOSURE                       R13 K28 [PROTO_6]
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R9
       87 SETTABLEKS                       R13 R12 K29 ["willUnmount"]
       89 DUPCLOSURE                       R13 K30 [PROTO_7]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 SETTABLEKS                       R13 R12 K31 ["render"]
       96 GETTABLEKS                       R13 R4 K32 ["withContext"]
       98 DUPTABLE                         R14 K35 [{"Stylizer", "Localization"}]
       99 GETTABLEKS                       R15 R4 K33 ["Stylizer"]
      101 SETTABLEKS                       R15 R14 K33 ["Stylizer"]
      103 GETTABLEKS                       R15 R4 K34 ["Localization"]
      105 SETTABLEKS                       R15 R14 K34 ["Localization"]
      107 CALL                             R13 1 1
      108 MOVE                             R14 R12
      109 CALL                             R13 1 1
      110 MOVE                             R12 R13
      111 DUPCLOSURE                       R13 K36 [PROTO_8]
      112 DUPCLOSURE                       R14 K37 [PROTO_10]
      113 CAPTURE                          VAL R11
      114 GETTABLEKS                       R15 R2 K38 ["connect"]
      116 MOVE                             R16 R13
      117 MOVE                             R17 R14
      118 CALL                             R15 2 1
      119 MOVE                             R16 R12
      120 CALL                             R15 1 -1
      121 RETURN                           R15 -1
