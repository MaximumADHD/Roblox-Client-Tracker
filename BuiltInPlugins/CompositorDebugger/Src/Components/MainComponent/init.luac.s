PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ToggleAdornment"]
        5 GETTABLEKS                       R2 R0 K2 ["id"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["openedTimestamp"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["useMockPayload"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["onToggleAdornment"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["SETTINGS"]
       10 GETTABLEKS                       R5 R5 K4 ["LayerFilters"]
       12 NAMECALL                         R3 R2 K5 ["GetSetting"]
       14 CALL                             R3 2 1
       15 JUMPIFEQKNIL                     R3 ; [+12]
       17 MOVE                             R4 R3
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLEKS                       R9 R1 K6 ["SetLayerFilter"]
       23 MOVE                             R10 R7
       24 MOVE                             R11 R8
       25 CALL                             R9 2 0
       26 FORGLOOP                         R4 2 ; [-6]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K3 ["SETTINGS"]
       31 GETTABLEKS                       R6 R6 K7 ["ActiveLayersFilter"]
       33 NAMECALL                         R4 R2 K5 ["GetSetting"]
       35 CALL                             R4 2 1
       36 JUMPIFEQKNIL                     R4 ; [+5]
       38 GETTABLEKS                       R5 R1 K8 ["SetActiveLayersFilter"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 0
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K3 ["SETTINGS"]
       45 GETTABLEKS                       R8 R8 K10 ["FrameBufferDuration"]
       47 NAMECALL                         R6 R2 K5 ["GetSetting"]
       49 CALL                             R6 2 1
       50 ORK                              R5 R6 K9 [10]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K11 ["TIMECONTROLS_INVERVALS"]
       54 GETTABLE                         R6 R7 R5
       55 JUMPIF                           R6 ; [+1]
       56 LOADN                            R5 10
       57 GETTABLEKS                       R6 R1 K12 ["SetFrameBufferDuration"]
       59 MOVE                             R7 R5
       60 CALL                             R6 1 0
       61 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K3 ["openedTimestamp"]
        5 NAMECALL                         R1 R0 K4 ["readSettings"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K5 ["hasInternalPermission"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+28]
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K6 ["IsEdit"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+23]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K7 ["UseMockPayload"]
       21 JUMPIFNOT                        R1 ; [+19]
       22 GETIMPORT                        R1 K9 [require]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K10 ["debug_payload"]
       27 CALL                             R1 1 1
       28 GETTABLEKS                       R2 R0 K11 ["props"]
       30 GETTABLEKS                       R2 R2 K12 ["ParseDebugData"]
       32 MOVE                             R3 R1
       33 GETTABLEKS                       R4 R0 K11 ["props"]
       35 GETTABLEKS                       R4 R4 K13 ["Analytics"]
       37 CALL                             R2 2 0
       38 LOADB                            R2 1
       39 SETTABLEKS                       R2 R0 K14 ["useMockPayload"]
       41 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Analytics"]
        4 LOADK                            R3 K2 ["onPluginClosed"]
        5 GETIMPORT                        R5 K5 [os.clock]
        7 CALL                             R5 0 1
        8 GETTABLEKS                       R6 R0 K6 ["openedTimestamp"]
       10 SUB                              R4 R5 R6
       11 NAMECALL                         R1 R1 K7 ["report"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Overrides"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R3 R1 K1 ["Overrides"]
        7 GETTABLEKS                       R4 R1 K2 ["SelectedLayer"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R3 R1 K3 ["ExpandedSections"]
       12 GETTABLEKS                       R4 R1 K4 ["HistoryFrame"]
       14 JUMPIF                           R4 ; [+2]
       15 GETTABLEKS                       R4 R1 K5 ["SkipCounter"]
       17 GETTABLEKS                       R6 R1 K6 ["FrameBuffer"]
       19 JUMPIFNOT                        R6 ; [+4]
       20 GETTABLEKS                       R6 R1 K6 ["FrameBuffer"]
       22 GETTABLE                         R5 R6 R4
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 MOVE                             R6 R5
       26 JUMPIFNOT                        R6 ; [+8]
       27 GETTABLEKS                       R6 R5 K7 ["layerMap"]
       29 JUMPIFNOT                        R6 ; [+5]
       30 GETTABLEKS                       R7 R5 K7 ["layerMap"]
       32 GETTABLEKS                       R8 R1 K2 ["SelectedLayer"]
       34 GETTABLE                         R6 R7 R8
       35 MOVE                             R7 R5
       36 JUMPIFNOT                        R7 ; [+2]
       37 GETTABLEKS                       R7 R5 K8 ["payload"]
       39 JUMPIFNOT                        R7 ; [+15]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R9 R7 K9 ["children"]
       43 GETTABLEKS                       R10 R1 K10 ["LayerFilters"]
       45 GETTABLEKS                       R11 R1 K11 ["ActiveLayersFilter"]
       47 CALL                             R8 3 2
       48 JUMPIFNOT                        R9 ; [+6]
       49 GETUPVAL                         R10 1
       50 MOVE                             R11 R7
       51 CALL                             R10 1 1
       52 MOVE                             R7 R10
       53 SETTABLEKS                       R8 R7 K9 ["children"]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R8 R8 K12 ["createElement"]
       58 GETUPVAL                         R9 3
       59 NEWTABLE                         R10 1 0
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K13 ["Tag"]
       64 LOADK                            R12 K14 ["MainPane X-Fill"]
       65 SETTABLE                         R12 R10 R11
       66 DUPTABLE                         R11 K17 [{"CompositorSelector", "MainSplitPane"}]
       67 GETTABLEKS                       R13 R0 K18 ["useMockPayload"]
       69 JUMPIF                           R13 ; [+6]
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R12 R12 K12 ["createElement"]
       73 GETUPVAL                         R13 4
       74 CALL                             R12 1 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R12
       77 SETTABLEKS                       R12 R11 K15 ["CompositorSelector"]
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R12 R12 K12 ["createElement"]
       82 GETUPVAL                         R13 5
       83 NEWTABLE                         R14 0 0
       85 NEWTABLE                         R15 0 2
       87 GETUPVAL                         R16 2
       88 GETTABLEKS                       R16 R16 K12 ["createElement"]
       90 GETUPVAL                         R17 3
       91 NEWTABLE                         R18 2 0
       93 LOADN                            R19 1
       94 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
       96 GETUPVAL                         R19 2
       97 GETTABLEKS                       R19 R19 K13 ["Tag"]
       99 LOADK                            R20 K20 ["X-ColumnS"]
      100 SETTABLE                         R20 R18 R19
      101 DUPTABLE                         R19 K23 [{"Toolbar", "LayerTree"}]
      102 GETUPVAL                         R20 2
      103 GETTABLEKS                       R20 R20 K12 ["createElement"]
      105 GETUPVAL                         R21 6
      106 DUPTABLE                         R22 K24 [{"FrameBuffer", "LayoutOrder"}]
      107 GETTABLEKS                       R23 R1 K6 ["FrameBuffer"]
      109 SETTABLEKS                       R23 R22 K6 ["FrameBuffer"]
      111 LOADN                            R23 1
      112 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      114 CALL                             R20 2 1
      115 SETTABLEKS                       R20 R19 K21 ["Toolbar"]
      117 GETUPVAL                         R20 2
      118 GETTABLEKS                       R20 R20 K12 ["createElement"]
      120 GETUPVAL                         R21 7
      121 DUPTABLE                         R22 K28 [{"LayoutOrder", "FramePayload", "Adornments", "OnToggleAdornment"}]
      122 LOADN                            R23 2
      123 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      125 SETTABLEKS                       R7 R22 K25 ["FramePayload"]
      127 GETTABLEKS                       R23 R1 K26 ["Adornments"]
      129 SETTABLEKS                       R23 R22 K26 ["Adornments"]
      131 GETTABLEKS                       R23 R0 K29 ["onToggleAdornment"]
      133 SETTABLEKS                       R23 R22 K27 ["OnToggleAdornment"]
      135 CALL                             R20 2 1
      136 SETTABLEKS                       R20 R19 K22 ["LayerTree"]
      138 CALL                             R16 3 1
      139 GETUPVAL                         R17 2
      140 GETTABLEKS                       R17 R17 K12 ["createElement"]
      142 GETUPVAL                         R18 8
      143 DUPTABLE                         R19 K32 [{"LayoutOrder", "LayerData", "FrameBuffer", "HistoryFrame", "SelectedLayer", "ExpandedSections", "Overrides", "ShowRawPayload"}]
      144 LOADN                            R20 2
      145 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      147 SETTABLEKS                       R6 R19 K30 ["LayerData"]
      149 GETTABLEKS                       R20 R1 K6 ["FrameBuffer"]
      151 SETTABLEKS                       R20 R19 K6 ["FrameBuffer"]
      153 GETTABLEKS                       R20 R1 K4 ["HistoryFrame"]
      155 SETTABLEKS                       R20 R19 K4 ["HistoryFrame"]
      157 GETTABLEKS                       R20 R1 K2 ["SelectedLayer"]
      159 SETTABLEKS                       R20 R19 K2 ["SelectedLayer"]
      161 SETTABLEKS                       R3 R19 K3 ["ExpandedSections"]
      163 SETTABLEKS                       R2 R19 K1 ["Overrides"]
      165 GETUPVAL                         R20 9
      166 GETTABLEKS                       R20 R20 K31 ["ShowRawPayload"]
      168 SETTABLEKS                       R20 R19 K31 ["ShowRawPayload"]
      170 CALL                             R17 2 -1
      171 SETLIST                          R15 R16 -1 [1]
      173 CALL                             R12 3 1
      174 SETTABLEKS                       R12 R11 K16 ["MainSplitPane"]
      176 CALL                             R8 3 -1
      177 RETURN                           R8 -1

PROTO_6:
        0 DUPTABLE                         R1 K11 [{"FrameBuffer", "Overrides", "ActiveLayersFilter", "Adornments", "ExpandedSections", "HistoryField", "HistoryFrame", "HistoryOffset", "LayerFilters", "SelectedLayer", "SkipCounter"}]
        1 GETTABLEKS                       R2 R0 K12 ["DebugData"]
        3 GETTABLEKS                       R2 R2 K0 ["FrameBuffer"]
        5 SETTABLEKS                       R2 R1 K0 ["FrameBuffer"]
        7 GETTABLEKS                       R2 R0 K12 ["DebugData"]
        9 GETTABLEKS                       R2 R2 K1 ["Overrides"]
       11 SETTABLEKS                       R2 R1 K1 ["Overrides"]
       13 GETTABLEKS                       R2 R0 K13 ["Status"]
       15 GETTABLEKS                       R2 R2 K2 ["ActiveLayersFilter"]
       17 SETTABLEKS                       R2 R1 K2 ["ActiveLayersFilter"]
       19 GETTABLEKS                       R2 R0 K13 ["Status"]
       21 GETTABLEKS                       R2 R2 K3 ["Adornments"]
       23 SETTABLEKS                       R2 R1 K3 ["Adornments"]
       25 GETTABLEKS                       R2 R0 K13 ["Status"]
       27 GETTABLEKS                       R2 R2 K4 ["ExpandedSections"]
       29 SETTABLEKS                       R2 R1 K4 ["ExpandedSections"]
       31 GETTABLEKS                       R2 R0 K13 ["Status"]
       33 GETTABLEKS                       R2 R2 K5 ["HistoryField"]
       35 SETTABLEKS                       R2 R1 K5 ["HistoryField"]
       37 GETTABLEKS                       R2 R0 K13 ["Status"]
       39 GETTABLEKS                       R2 R2 K6 ["HistoryFrame"]
       41 SETTABLEKS                       R2 R1 K6 ["HistoryFrame"]
       43 GETTABLEKS                       R2 R0 K13 ["Status"]
       45 GETTABLEKS                       R2 R2 K7 ["HistoryOffset"]
       47 SETTABLEKS                       R2 R1 K7 ["HistoryOffset"]
       49 GETTABLEKS                       R2 R0 K13 ["Status"]
       51 GETTABLEKS                       R2 R2 K8 ["LayerFilters"]
       53 SETTABLEKS                       R2 R1 K8 ["LayerFilters"]
       55 GETTABLEKS                       R2 R0 K13 ["Status"]
       57 GETTABLEKS                       R2 R2 K9 ["SelectedLayer"]
       59 SETTABLEKS                       R2 R1 K9 ["SelectedLayer"]
       61 GETTABLEKS                       R2 R0 K13 ["Status"]
       63 GETTABLEKS                       R2 R2 K10 ["SkipCounter"]
       65 SETTABLEKS                       R2 R1 K10 ["SkipCounter"]
       67 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K6 [{"ParseDebugData", "SetActiveLayersFilter", "SetFrameBufferDuration", "SetHistoryField", "SetLayerFilter", "ToggleAdornment"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ParseDebugData"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetActiveLayersFilter"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetFrameBufferDuration"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetHistoryField"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SetLayerFilter"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["ToggleAdornment"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["CompositorDebugger"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["RoactRodux"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["TestLoader"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R2 K16 ["copy"]
       50 GETTABLEKS                       R8 R3 K17 ["ContextServices"]
       52 GETTABLEKS                       R9 R8 K18 ["withContext"]
       54 GETTABLEKS                       R10 R3 K19 ["UI"]
       56 GETTABLEKS                       R11 R10 K20 ["Pane"]
       58 GETTABLEKS                       R12 R1 K21 ["Src"]
       60 GETTABLEKS                       R12 R12 K22 ["Actions"]
       62 GETIMPORT                        R13 K9 [require]
       64 GETTABLEKS                       R14 R12 K23 ["SetActiveLayersFilter"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K9 [require]
       69 GETTABLEKS                       R15 R12 K24 ["SetHistoryField"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K9 [require]
       74 GETTABLEKS                       R16 R12 K25 ["SetLayerFilter"]
       76 CALL                             R15 1 1
       77 GETTABLEKS                       R16 R1 K21 ["Src"]
       79 GETTABLEKS                       R16 R16 K26 ["Components"]
       81 GETIMPORT                        R17 K9 [require]
       83 GETTABLEKS                       R18 R16 K27 ["CompositorSelector"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K9 [require]
       88 GETTABLEKS                       R19 R16 K28 ["LayerPanel"]
       90 CALL                             R18 1 1
       91 GETIMPORT                        R19 K9 [require]
       93 GETTABLEKS                       R20 R16 K29 ["LayerTree"]
       95 CALL                             R19 1 1
       96 GETIMPORT                        R20 K9 [require]
       98 GETTABLEKS                       R21 R16 K30 ["MainSplitPane"]
      100 CALL                             R20 1 1
      101 GETIMPORT                        R21 K9 [require]
      103 GETTABLEKS                       R22 R16 K31 ["Toolbar"]
      105 CALL                             R21 1 1
      106 GETTABLEKS                       R22 R1 K21 ["Src"]
      108 GETTABLEKS                       R22 R22 K32 ["Util"]
      110 GETIMPORT                        R23 K9 [require]
      112 GETTABLEKS                       R24 R22 K33 ["Constants"]
      114 CALL                             R23 1 1
      115 GETIMPORT                        R24 K9 [require]
      117 GETTABLEKS                       R25 R22 K34 ["debugFlags"]
      119 CALL                             R24 1 1
      120 GETTABLEKS                       R25 R1 K21 ["Src"]
      122 GETTABLEKS                       R25 R25 K35 ["Thunks"]
      124 GETIMPORT                        R26 K9 [require]
      126 GETTABLEKS                       R27 R25 K36 ["ParseDebugData"]
      128 CALL                             R26 1 1
      129 GETIMPORT                        R27 K9 [require]
      131 GETTABLEKS                       R28 R25 K37 ["SetFrameBufferDuration"]
      133 CALL                             R27 1 1
      134 GETIMPORT                        R28 K9 [require]
      136 GETTABLEKS                       R29 R25 K38 ["ToggleAdornment"]
      138 CALL                             R28 1 1
      139 GETIMPORT                        R29 K9 [require]
      141 GETTABLEKS                       R30 R1 K21 ["Src"]
      143 GETTABLEKS                       R30 R30 K39 ["Types"]
      145 CALL                             R29 1 1
      146 GETIMPORT                        R30 K9 [require]
      148 GETIMPORT                        R31 K5 [script]
      150 GETTABLEKS                       R31 R31 K40 ["filterChildren"]
      152 CALL                             R30 1 1
      153 GETTABLEKS                       R31 R4 K41 ["PureComponent"]
      155 LOADK                            R33 K42 ["MainComponent"]
      156 NAMECALL                         R31 R31 K43 ["extend"]
      158 CALL                             R31 2 1
      159 DUPCLOSURE                       R32 K44 [PROTO_1]
      160 SETTABLEKS                       R32 R31 K45 ["init"]
      162 DUPCLOSURE                       R32 K46 [PROTO_2]
      163 CAPTURE                          VAL R23
      164 SETTABLEKS                       R32 R31 K47 ["readSettings"]
      166 DUPCLOSURE                       R32 K48 [PROTO_3]
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R0
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R22
      171 SETTABLEKS                       R32 R31 K49 ["didMount"]
      173 DUPCLOSURE                       R32 K50 [PROTO_4]
      174 SETTABLEKS                       R32 R31 K51 ["willUnmount"]
      176 DUPCLOSURE                       R32 K52 [PROTO_5]
      177 CAPTURE                          VAL R30
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R24
      187 SETTABLEKS                       R32 R31 K53 ["render"]
      189 MOVE                             R32 R9
      190 DUPTABLE                         R33 K56 [{"Analytics", "Plugin"}]
      191 GETTABLEKS                       R34 R8 K54 ["Analytics"]
      193 SETTABLEKS                       R34 R33 K54 ["Analytics"]
      195 GETTABLEKS                       R34 R8 K55 ["Plugin"]
      197 SETTABLEKS                       R34 R33 K55 ["Plugin"]
      199 CALL                             R32 1 1
      200 MOVE                             R33 R31
      201 CALL                             R32 1 1
      202 MOVE                             R31 R32
      203 DUPCLOSURE                       R32 K57 [PROTO_6]
      204 DUPCLOSURE                       R33 K58 [PROTO_13]
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R27
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R28
      211 GETTABLEKS                       R34 R5 K59 ["connect"]
      213 MOVE                             R35 R32
      214 MOVE                             R36 R33
      215 CALL                             R34 2 1
      216 MOVE                             R35 R31
      217 CALL                             R34 1 1
      218 MOVE                             R31 R34
      219 RETURN                           R31 1
