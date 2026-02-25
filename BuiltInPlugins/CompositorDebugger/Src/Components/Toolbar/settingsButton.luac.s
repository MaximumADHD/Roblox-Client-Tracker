PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["props"]
       11 GETTABLEKS                       R3 R4 K3 ["ActiveLayersFilter"]
       13 NOT                              R2 R3
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["props"]
       17 GETTABLEKS                       R3 R4 K4 ["SetActiveLayersFilter"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K5 ["SETTINGS"]
       24 GETTABLEKS                       R5 R6 K3 ["ActiveLayersFilter"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R1 K6 ["SetSetting"]
       29 CALL                             R3 3 0
       30 GETTABLEKS                       R3 R0 K7 ["Analytics"]
       32 LOADK                            R5 K8 ["onChangeSetting"]
       33 LOADK                            R6 K9 ["activeLayersFilter"]
       34 MOVE                             R7 R2
       35 NAMECALL                         R3 R3 K10 ["report"]
       37 CALL                             R3 4 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K3 ["Data"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["props"]
       13 GETTABLEKS                       R4 R5 K4 ["SetSkipLimit"]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 0
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K5 ["SETTINGS"]
       20 GETTABLEKS                       R6 R7 K6 ["SkipUIFrames"]
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R2 K7 ["SetSetting"]
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K3 ["Data"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["props"]
       13 GETTABLEKS                       R4 R5 K4 ["SetFrameBufferDuration"]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 0
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K5 ["SETTINGS"]
       20 GETTABLEKS                       R6 R7 K6 ["FrameBufferDuration"]
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R2 K7 ["SetSetting"]
       25 CALL                             R4 3 0
       26 GETTABLEKS                       R4 R1 K8 ["Analytics"]
       28 LOADK                            R6 K9 ["onChangeSetting"]
       29 LOADK                            R7 K10 ["frameBufferDuration"]
       30 MOVE                             R8 R3
       31 NAMECALL                         R4 R4 K11 ["report"]
       33 CALL                             R4 4 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["Plugin"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 3
       12 DUPTABLE                         R4 K8 [{"Id", "Text", "Checked", "OnItemClicked"}]
       13 LOADK                            R5 K9 ["ToggleActiveLayers"]
       14 SETTABLEKS                       R5 R4 K4 ["Id"]
       16 LOADK                            R7 K10 ["Settings"]
       17 LOADK                            R8 K9 ["ToggleActiveLayers"]
       18 NAMECALL                         R5 R1 K11 ["getText"]
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K5 ["Text"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K0 ["props"]
       26 GETTABLEKS                       R5 R6 K12 ["ActiveLayersFilter"]
       28 SETTABLEKS                       R5 R4 K6 ["Checked"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K13 ["toggleActiveLayersFilter"]
       33 SETTABLEKS                       R5 R4 K7 ["OnItemClicked"]
       35 GETUPVAL                         R5 0
       36 NAMECALL                         R5 R5 K14 ["makeReplaySubmenu"]
       38 CALL                             R5 1 1
       39 GETUPVAL                         R6 0
       40 NAMECALL                         R6 R6 K15 ["makeSkipUIFramesSubmenu"]
       42 CALL                             R6 1 -1
       43 SETLIST                          R3 R4 -1 [1]
       45 GETUPVAL                         R4 1
       46 MOVE                             R5 R2
       47 MOVE                             R6 R3
       48 CALL                             R4 2 0
       49 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["toggleActiveLayersFilter"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["onSkipUIFramesChanged"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K2 ["onReplayDurationChanged"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R1 R0 K3 ["onButtonClicked"]
       20 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["SkipLimit"]
        6 NEWTABLE                         R4 2 0
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R5 R8 K3 ["SKIP_UI_FRAMES"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 DUPTABLE                         R12 K9 [{"Id", "Data", "Text", "Checked", "OnItemClicked"}]
       15 GETIMPORT                        R13 K12 [string.format]
       17 LOADK                            R14 K13 ["SkipUIFrames_%d"]
       18 MOVE                             R15 R9
       19 CALL                             R13 2 1
       20 SETTABLEKS                       R13 R12 K4 ["Id"]
       22 SETTABLEKS                       R9 R12 K5 ["Data"]
       24 LOADK                            R15 K14 ["Settings"]
       25 LOADK                            R16 K15 ["Frames"]
       26 DUPTABLE                         R17 K17 [{"frames"}]
       27 SETTABLEKS                       R9 R17 K16 ["frames"]
       29 NAMECALL                         R13 R2 K18 ["getText"]
       31 CALL                             R13 4 1
       32 SETTABLEKS                       R13 R12 K6 ["Text"]
       34 JUMPIFEQ                         R9 R3 ; [+2]
       36 LOADB                            R13 0 +1
       37 LOADB                            R13 1
       38 SETTABLEKS                       R13 R12 K7 ["Checked"]
       40 GETTABLEKS                       R13 R0 K19 ["onSkipUIFramesChanged"]
       42 SETTABLEKS                       R13 R12 K8 ["OnItemClicked"]
       44 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       46 MOVE                             R11 R4
       47 GETIMPORT                        R10 K22 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R5 2 ; [-37]
       52 LOADK                            R5 K23 ["SkipUIFrames"]
       53 SETTABLEKS                       R5 R4 K4 ["Id"]
       55 LOADK                            R7 K14 ["Settings"]
       56 LOADK                            R8 K23 ["SkipUIFrames"]
       57 DUPTABLE                         R9 K17 [{"frames"}]
       58 SETTABLEKS                       R3 R9 K16 ["frames"]
       60 NAMECALL                         R5 R2 K18 ["getText"]
       62 CALL                             R5 4 1
       63 SETTABLEKS                       R5 R4 K6 ["Text"]
       65 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["Id"]
        2 GETTABLEKS                       R4 R1 K0 ["Id"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["FrameBuffer"]
        6 JUMPIFNOT                        R4 ; [+10]
        7 GETTABLEKS                       R4 R1 K2 ["FrameBuffer"]
        9 NAMECALL                         R4 R4 K3 ["getSize"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K4 ["FRAMERATE"]
       15 DIV                              R3 R4 R5
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 NEWTABLE                         R4 2 0
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R5 R8 K5 ["TIMECONTROLS_INVERVALS"]
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 DUPTABLE                         R12 K11 [{"Id", "Data", "Text", "Checked", "OnItemClicked"}]
       27 GETIMPORT                        R13 K14 [string.format]
       29 LOADK                            R14 K15 ["Replay_%d"]
       30 MOVE                             R15 R8
       31 CALL                             R13 2 1
       32 SETTABLEKS                       R13 R12 K6 ["Id"]
       34 SETTABLEKS                       R8 R12 K7 ["Data"]
       36 LOADK                            R15 K16 ["Settings"]
       37 LOADK                            R16 K17 ["Seconds"]
       38 DUPTABLE                         R17 K19 [{"duration"}]
       39 SETTABLEKS                       R8 R17 K18 ["duration"]
       41 NAMECALL                         R13 R2 K20 ["getText"]
       43 CALL                             R13 4 1
       44 SETTABLEKS                       R13 R12 K8 ["Text"]
       46 JUMPIFEQ                         R8 R3 ; [+2]
       48 LOADB                            R13 0 +1
       49 LOADB                            R13 1
       50 SETTABLEKS                       R13 R12 K9 ["Checked"]
       52 GETTABLEKS                       R13 R0 K21 ["onReplayDurationChanged"]
       54 SETTABLEKS                       R13 R12 K10 ["OnItemClicked"]
       56 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       58 MOVE                             R11 R4
       59 GETIMPORT                        R10 K24 [table.insert]
       61 CALL                             R10 2 0
       62 FORGLOOP                         R5 2 ; [-37]
       64 GETIMPORT                        R5 K26 [table.sort]
       66 MOVE                             R6 R4
       67 DUPCLOSURE                       R7 K27 [PROTO_6]
       68 CALL                             R5 2 0
       69 LOADK                            R5 K28 ["ReplayLength"]
       70 SETTABLEKS                       R5 R4 K6 ["Id"]
       72 LOADK                            R7 K16 ["Settings"]
       73 LOADK                            R8 K28 ["ReplayLength"]
       74 DUPTABLE                         R9 K19 [{"duration"}]
       75 SETTABLEKS                       R3 R9 K18 ["duration"]
       77 NAMECALL                         R5 R2 K20 ["getText"]
       79 CALL                             R5 4 1
       80 SETTABLEKS                       R5 R4 K8 ["Text"]
       82 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["children"]
        5 DUPTABLE                         R4 K3 [{"Icon"}]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K4 ["createElement"]
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K9 [{"Size", "Position", "AnchorPoint", "Image"}]
       11 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       13 LOADN                            R9 20
       14 LOADN                            R10 20
       15 CALL                             R8 2 1
       16 SETTABLEKS                       R8 R7 K5 ["Size"]
       18 GETIMPORT                        R8 K14 [UDim2.fromScale]
       20 LOADK                            R9 K15 [0.5]
       21 LOADK                            R10 K15 [0.5]
       22 CALL                             R8 2 1
       23 SETTABLEKS                       R8 R7 K6 ["Position"]
       25 GETIMPORT                        R8 K18 [Vector2.new]
       27 LOADK                            R9 K15 [0.5]
       28 LOADK                            R10 K15 [0.5]
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K7 ["AnchorPoint"]
       32 LOADK                            R8 K19 ["rbxasset://textures/CompositorDebugger/settings.png"]
       33 SETTABLEKS                       R8 R7 K8 ["Image"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K2 ["Icon"]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K4 ["createElement"]
       42 GETUPVAL                         R4 3
       43 DUPTABLE                         R5 K23 [{"Style", "Size", "Position", "AnchorPoint", "LayoutOrder", "OnClick"}]
       44 LOADK                            R6 K24 ["Round"]
       45 SETTABLEKS                       R6 R5 K20 ["Style"]
       47 GETTABLEKS                       R6 R1 K5 ["Size"]
       49 SETTABLEKS                       R6 R5 K5 ["Size"]
       51 GETIMPORT                        R6 K14 [UDim2.fromScale]
       53 LOADN                            R7 1
       54 LOADK                            R8 K15 [0.5]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K6 ["Position"]
       58 GETIMPORT                        R6 K18 [Vector2.new]
       60 LOADN                            R7 1
       61 LOADK                            R8 K15 [0.5]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K7 ["AnchorPoint"]
       65 GETTABLEKS                       R6 R1 K21 ["LayoutOrder"]
       67 SETTABLEKS                       R6 R5 K21 ["LayoutOrder"]
       69 GETTABLEKS                       R6 R0 K25 ["onButtonClicked"]
       71 SETTABLEKS                       R6 R5 K22 ["OnClick"]
       73 MOVE                             R6 R2
       74 CALL                             R3 3 -1
       75 RETURN                           R3 -1

PROTO_9:
        0 DUPTABLE                         R2 K3 [{"ActiveLayersFilter", "LayerFilters", "SkipLimit"}]
        1 GETTABLEKS                       R4 R0 K4 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["ActiveLayersFilter"]
        5 SETTABLEKS                       R3 R2 K0 ["ActiveLayersFilter"]
        7 GETTABLEKS                       R4 R0 K4 ["Status"]
        9 GETTABLEKS                       R3 R4 K1 ["LayerFilters"]
       11 SETTABLEKS                       R3 R2 K1 ["LayerFilters"]
       13 GETTABLEKS                       R4 R0 K4 ["Status"]
       15 GETTABLEKS                       R3 R4 K2 ["SkipLimit"]
       17 SETTABLEKS                       R3 R2 K2 ["SkipLimit"]
       19 RETURN                           R2 1

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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K4 [{"SetActiveLayersFilter", "SetFrameBufferDuration", "SetLayerFilter", "SetSkipLimit"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetActiveLayersFilter"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetFrameBufferDuration"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetLayerFilter"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetSkipLimit"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K12 ["join"]
       44 GETTABLEKS                       R7 R3 K13 ["ContextServices"]
       46 GETTABLEKS                       R8 R7 K14 ["withContext"]
       48 GETTABLEKS                       R10 R0 K15 ["Src"]
       50 GETTABLEKS                       R9 R10 K16 ["Actions"]
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R9 K17 ["SetActiveLayersFilter"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R9 K18 ["SetLayerFilter"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R9 K19 ["SetSkipLimit"]
       66 CALL                             R12 1 1
       67 GETTABLEKS                       R14 R0 K15 ["Src"]
       69 GETTABLEKS                       R13 R14 K20 ["Thunks"]
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R13 K21 ["SetFrameBufferDuration"]
       75 CALL                             R14 1 1
       76 GETTABLEKS                       R15 R3 K22 ["UI"]
       78 GETTABLEKS                       R16 R15 K23 ["Button"]
       80 GETTABLEKS                       R17 R15 K24 ["Image"]
       82 GETTABLEKS                       R18 R15 K25 ["showContextMenu"]
       84 GETIMPORT                        R19 K5 [require]
       86 GETTABLEKS                       R21 R0 K15 ["Src"]
       88 GETTABLEKS                       R20 R21 K26 ["Types"]
       90 CALL                             R19 1 1
       91 GETTABLEKS                       R20 R1 K27 ["Constants"]
       93 GETTABLEKS                       R21 R4 K28 ["PureComponent"]
       95 LOADK                            R23 K29 ["SettingsButton"]
       96 NAMECALL                         R21 R21 K30 ["extend"]
       98 CALL                             R21 2 1
       99 DUPCLOSURE                       R22 K31 [PROTO_4]
      100 CAPTURE                          VAL R20
      101 CAPTURE                          VAL R18
      102 SETTABLEKS                       R22 R21 K32 ["init"]
      104 DUPCLOSURE                       R22 K33 [PROTO_5]
      105 CAPTURE                          VAL R20
      106 SETTABLEKS                       R22 R21 K34 ["makeSkipUIFramesSubmenu"]
      108 DUPCLOSURE                       R22 K35 [PROTO_7]
      109 CAPTURE                          VAL R20
      110 SETTABLEKS                       R22 R21 K36 ["makeReplaySubmenu"]
      112 DUPCLOSURE                       R22 K37 [PROTO_8]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R16
      117 SETTABLEKS                       R22 R21 K38 ["render"]
      119 MOVE                             R22 R8
      120 DUPTABLE                         R23 K42 [{"Analytics", "Localization", "Plugin"}]
      121 GETTABLEKS                       R24 R7 K39 ["Analytics"]
      123 SETTABLEKS                       R24 R23 K39 ["Analytics"]
      125 GETTABLEKS                       R24 R7 K40 ["Localization"]
      127 SETTABLEKS                       R24 R23 K40 ["Localization"]
      129 GETTABLEKS                       R24 R7 K41 ["Plugin"]
      131 SETTABLEKS                       R24 R23 K41 ["Plugin"]
      133 CALL                             R22 1 1
      134 MOVE                             R23 R21
      135 CALL                             R22 1 1
      136 MOVE                             R21 R22
      137 DUPCLOSURE                       R22 K43 [PROTO_9]
      138 DUPCLOSURE                       R23 K44 [PROTO_14]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R12
      143 GETTABLEKS                       R24 R5 K45 ["connect"]
      145 MOVE                             R25 R22
      146 MOVE                             R26 R23
      147 CALL                             R24 2 1
      148 MOVE                             R25 R21
      149 CALL                             R24 1 1
      150 MOVE                             R21 R24
      151 RETURN                           R21 1
