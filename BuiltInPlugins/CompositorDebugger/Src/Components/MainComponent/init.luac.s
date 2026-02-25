PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["ToggleAdornment"]
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
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K3 ["SETTINGS"]
       10 GETTABLEKS                       R5 R6 K4 ["LayerFilters"]
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
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K3 ["SETTINGS"]
       31 GETTABLEKS                       R6 R7 K7 ["ActiveLayersFilter"]
       33 NAMECALL                         R4 R2 K5 ["GetSetting"]
       35 CALL                             R4 2 1
       36 JUMPIFEQKNIL                     R4 ; [+5]
       38 GETTABLEKS                       R5 R1 K8 ["SetActiveLayersFilter"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 0
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K3 ["SETTINGS"]
       45 GETTABLEKS                       R8 R9 K10 ["FrameBufferDuration"]
       47 NAMECALL                         R6 R2 K5 ["GetSetting"]
       49 CALL                             R6 2 1
       50 ORK                              R5 R6 K9 [10]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K11 ["TIMECONTROLS_INVERVALS"]
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
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K5 ["hasInternalPermission"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+25]
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K6 ["IsEdit"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+20]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K7 ["UseMockPayload"]
       21 JUMPIFNOT                        R1 ; [+16]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K8 ["debug_payload"]
       25 GETTABLEKS                       R3 R0 K9 ["props"]
       27 GETTABLEKS                       R2 R3 K10 ["ParseDebugData"]
       29 MOVE                             R3 R1
       30 GETTABLEKS                       R5 R0 K9 ["props"]
       32 GETTABLEKS                       R4 R5 K11 ["Analytics"]
       34 CALL                             R2 2 0
       35 LOADB                            R2 1
       36 SETTABLEKS                       R2 R0 K12 ["useMockPayload"]
       38 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Analytics"]
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
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R8 R9 K12 ["createElement"]
       58 GETUPVAL                         R9 3
       59 NEWTABLE                         R10 1 0
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R11 R12 K13 ["Tag"]
       64 LOADK                            R12 K14 ["MainPane X-Fill"]
       65 SETTABLE                         R12 R10 R11
       66 DUPTABLE                         R11 K18 [{"CompositorSelector", "NodeView", "MainSplitPane"}]
       67 GETTABLEKS                       R13 R0 K19 ["useMockPayload"]
       69 JUMPIF                           R13 ; [+6]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R12 R13 K12 ["createElement"]
       73 GETUPVAL                         R13 4
       74 CALL                             R12 1 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R12
       77 SETTABLEKS                       R12 R11 K15 ["CompositorSelector"]
       79 GETUPVAL                         R13 5
       80 CALL                             R13 0 1
       81 JUMPIFNOT                        R13 ; [+16]
       82 GETTABLEKS                       R14 R0 K20 ["context"]
       84 GETTABLEKS                       R13 R14 K21 ["viewMode"]
       86 JUMPIFNOTEQKS                    R13 K16 ["NodeView"] ; [+11]
       88 GETUPVAL                         R13 2
       89 GETTABLEKS                       R12 R13 K12 ["createElement"]
       91 GETUPVAL                         R13 6
       92 DUPTABLE                         R14 K23 [{"LayoutOrder"}]
       93 LOADN                            R15 2
       94 SETTABLEKS                       R15 R14 K22 ["LayoutOrder"]
       96 CALL                             R12 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R12
       99 SETTABLEKS                       R12 R11 K16 ["NodeView"]
      101 GETUPVAL                         R13 5
      102 CALL                             R13 0 1
      103 JUMPIFNOT                        R13 ; [+2]
      104 LOADNIL                          R12
      105 JUMP                             ; [+106]
      106 GETUPVAL                         R13 2
      107 GETTABLEKS                       R12 R13 K12 ["createElement"]
      109 GETUPVAL                         R13 7
      110 NEWTABLE                         R14 0 0
      112 NEWTABLE                         R15 0 2
      114 GETUPVAL                         R17 2
      115 GETTABLEKS                       R16 R17 K12 ["createElement"]
      117 GETUPVAL                         R17 3
      118 NEWTABLE                         R18 2 0
      120 LOADN                            R19 1
      121 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      123 GETUPVAL                         R20 2
      124 GETTABLEKS                       R19 R20 K13 ["Tag"]
      126 LOADK                            R20 K24 ["X-ColumnS"]
      127 SETTABLE                         R20 R18 R19
      128 DUPTABLE                         R19 K27 [{"Toolbar", "LayerTree"}]
      129 GETUPVAL                         R21 2
      130 GETTABLEKS                       R20 R21 K12 ["createElement"]
      132 GETUPVAL                         R21 8
      133 DUPTABLE                         R22 K28 [{"FrameBuffer", "LayoutOrder"}]
      134 GETTABLEKS                       R23 R1 K6 ["FrameBuffer"]
      136 SETTABLEKS                       R23 R22 K6 ["FrameBuffer"]
      138 LOADN                            R23 1
      139 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      141 CALL                             R20 2 1
      142 SETTABLEKS                       R20 R19 K25 ["Toolbar"]
      144 GETUPVAL                         R21 5
      145 CALL                             R21 0 1
      146 JUMPIFNOT                        R21 ; [+6]
      147 GETTABLEKS                       R22 R0 K20 ["context"]
      149 GETTABLEKS                       R21 R22 K21 ["viewMode"]
      151 JUMPIFNOTEQKS                    R21 K29 ["TreeView"] ; [+21]
      153 GETUPVAL                         R21 2
      154 GETTABLEKS                       R20 R21 K12 ["createElement"]
      156 GETUPVAL                         R21 9
      157 DUPTABLE                         R22 K33 [{"LayoutOrder", "FramePayload", "Adornments", "OnToggleAdornment"}]
      158 LOADN                            R23 2
      159 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      161 SETTABLEKS                       R7 R22 K30 ["FramePayload"]
      163 GETTABLEKS                       R23 R1 K31 ["Adornments"]
      165 SETTABLEKS                       R23 R22 K31 ["Adornments"]
      167 GETTABLEKS                       R23 R0 K34 ["onToggleAdornment"]
      169 SETTABLEKS                       R23 R22 K32 ["OnToggleAdornment"]
      171 CALL                             R20 2 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R20
      174 SETTABLEKS                       R20 R19 K26 ["LayerTree"]
      176 CALL                             R16 3 1
      177 GETUPVAL                         R18 2
      178 GETTABLEKS                       R17 R18 K12 ["createElement"]
      180 GETUPVAL                         R18 10
      181 DUPTABLE                         R19 K37 [{"LayoutOrder", "LayerData", "FrameBuffer", "HistoryFrame", "SelectedLayer", "ExpandedSections", "Overrides", "ShowRawPayload"}]
      182 LOADN                            R20 2
      183 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      185 SETTABLEKS                       R6 R19 K35 ["LayerData"]
      187 GETTABLEKS                       R20 R1 K6 ["FrameBuffer"]
      189 SETTABLEKS                       R20 R19 K6 ["FrameBuffer"]
      191 GETTABLEKS                       R20 R1 K4 ["HistoryFrame"]
      193 SETTABLEKS                       R20 R19 K4 ["HistoryFrame"]
      195 GETTABLEKS                       R20 R1 K2 ["SelectedLayer"]
      197 SETTABLEKS                       R20 R19 K2 ["SelectedLayer"]
      199 SETTABLEKS                       R3 R19 K3 ["ExpandedSections"]
      201 SETTABLEKS                       R2 R19 K1 ["Overrides"]
      203 GETUPVAL                         R21 11
      204 GETTABLEKS                       R20 R21 K36 ["ShowRawPayload"]
      206 SETTABLEKS                       R20 R19 K36 ["ShowRawPayload"]
      208 CALL                             R17 2 -1
      209 SETLIST                          R15 R16 -1 [1]
      211 CALL                             R12 3 1
      212 SETTABLEKS                       R12 R11 K17 ["MainSplitPane"]
      214 CALL                             R8 3 -1
      215 RETURN                           R8 -1

PROTO_6:
        0 DUPTABLE                         R1 K11 [{"FrameBuffer", "Overrides", "ActiveLayersFilter", "Adornments", "ExpandedSections", "HistoryField", "HistoryFrame", "HistoryOffset", "LayerFilters", "SelectedLayer", "SkipCounter"}]
        1 GETTABLEKS                       R3 R0 K12 ["DebugData"]
        3 GETTABLEKS                       R2 R3 K0 ["FrameBuffer"]
        5 SETTABLEKS                       R2 R1 K0 ["FrameBuffer"]
        7 GETTABLEKS                       R3 R0 K12 ["DebugData"]
        9 GETTABLEKS                       R2 R3 K1 ["Overrides"]
       11 SETTABLEKS                       R2 R1 K1 ["Overrides"]
       13 GETTABLEKS                       R3 R0 K13 ["Status"]
       15 GETTABLEKS                       R2 R3 K2 ["ActiveLayersFilter"]
       17 SETTABLEKS                       R2 R1 K2 ["ActiveLayersFilter"]
       19 GETTABLEKS                       R3 R0 K13 ["Status"]
       21 GETTABLEKS                       R2 R3 K3 ["Adornments"]
       23 SETTABLEKS                       R2 R1 K3 ["Adornments"]
       25 GETTABLEKS                       R3 R0 K13 ["Status"]
       27 GETTABLEKS                       R2 R3 K4 ["ExpandedSections"]
       29 SETTABLEKS                       R2 R1 K4 ["ExpandedSections"]
       31 GETTABLEKS                       R3 R0 K13 ["Status"]
       33 GETTABLEKS                       R2 R3 K5 ["HistoryField"]
       35 SETTABLEKS                       R2 R1 K5 ["HistoryField"]
       37 GETTABLEKS                       R3 R0 K13 ["Status"]
       39 GETTABLEKS                       R2 R3 K6 ["HistoryFrame"]
       41 SETTABLEKS                       R2 R1 K6 ["HistoryFrame"]
       43 GETTABLEKS                       R3 R0 K13 ["Status"]
       45 GETTABLEKS                       R2 R3 K7 ["HistoryOffset"]
       47 SETTABLEKS                       R2 R1 K7 ["HistoryOffset"]
       49 GETTABLEKS                       R3 R0 K13 ["Status"]
       51 GETTABLEKS                       R2 R3 K8 ["LayerFilters"]
       53 SETTABLEKS                       R2 R1 K8 ["LayerFilters"]
       55 GETTABLEKS                       R3 R0 K13 ["Status"]
       57 GETTABLEKS                       R2 R3 K9 ["SelectedLayer"]
       59 SETTABLEKS                       R2 R1 K9 ["SelectedLayer"]
       61 GETTABLEKS                       R3 R0 K13 ["Status"]
       63 GETTABLEKS                       R2 R3 K10 ["SkipCounter"]
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
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AnimationEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R8 K15 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R1 K10 ["Packages"]
       52 GETTABLEKS                       R8 R9 K16 ["RoactRodux"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R10 R1 K10 ["Packages"]
       59 GETTABLEKS                       R9 R10 K17 ["TestLoader"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R12 R1 K18 ["Src"]
       66 GETTABLEKS                       R11 R12 K19 ["Contexts"]
       68 GETTABLEKS                       R10 R11 K20 ["DebuggerViewModeContext"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R13 R1 K18 ["Src"]
       75 GETTABLEKS                       R12 R13 K21 ["Flags"]
       77 GETTABLEKS                       R11 R12 K22 ["getFFlagCompositorNodeView"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R3 K23 ["copy"]
       82 GETTABLEKS                       R12 R4 K24 ["ContextServices"]
       84 GETTABLEKS                       R13 R12 K25 ["withContext"]
       86 GETTABLEKS                       R14 R4 K26 ["UI"]
       88 GETTABLEKS                       R15 R14 K27 ["Pane"]
       90 GETTABLEKS                       R17 R1 K18 ["Src"]
       92 GETTABLEKS                       R16 R17 K28 ["Actions"]
       94 GETIMPORT                        R17 K9 [require]
       96 GETTABLEKS                       R18 R16 K29 ["SetActiveLayersFilter"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K9 [require]
      101 GETTABLEKS                       R19 R16 K30 ["SetHistoryField"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K9 [require]
      106 GETTABLEKS                       R20 R16 K31 ["SetLayerFilter"]
      108 CALL                             R19 1 1
      109 GETTABLEKS                       R21 R1 K18 ["Src"]
      111 GETTABLEKS                       R20 R21 K32 ["Components"]
      113 GETIMPORT                        R21 K9 [require]
      115 GETTABLEKS                       R22 R20 K33 ["CompositorSelector"]
      117 CALL                             R21 1 1
      118 GETIMPORT                        R22 K9 [require]
      120 GETTABLEKS                       R23 R20 K34 ["LayerPanel"]
      122 CALL                             R22 1 1
      123 GETIMPORT                        R23 K9 [require]
      125 GETTABLEKS                       R24 R20 K35 ["LayerTree"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K9 [require]
      130 GETTABLEKS                       R25 R20 K36 ["MainSplitPane"]
      132 CALL                             R24 1 1
      133 GETIMPORT                        R25 K9 [require]
      135 GETTABLEKS                       R26 R20 K37 ["Toolbar"]
      137 CALL                             R25 1 1
      138 GETTABLEKS                       R27 R1 K18 ["Src"]
      140 GETTABLEKS                       R26 R27 K38 ["Util"]
      142 GETIMPORT                        R27 K9 [require]
      144 GETTABLEKS                       R28 R26 K39 ["debugFlags"]
      146 CALL                             R27 1 1
      147 GETTABLEKS                       R29 R1 K18 ["Src"]
      149 GETTABLEKS                       R28 R29 K40 ["Thunks"]
      151 GETIMPORT                        R29 K9 [require]
      153 GETTABLEKS                       R30 R28 K41 ["ParseDebugData"]
      155 CALL                             R29 1 1
      156 GETIMPORT                        R30 K9 [require]
      158 GETTABLEKS                       R31 R28 K42 ["SetFrameBufferDuration"]
      160 CALL                             R30 1 1
      161 GETIMPORT                        R31 K9 [require]
      163 GETTABLEKS                       R32 R28 K43 ["ToggleAdornment"]
      165 CALL                             R31 1 1
      166 GETIMPORT                        R32 K9 [require]
      168 GETTABLEKS                       R34 R1 K18 ["Src"]
      170 GETTABLEKS                       R33 R34 K44 ["Types"]
      172 CALL                             R32 1 1
      173 GETIMPORT                        R33 K9 [require]
      175 GETIMPORT                        R35 K5 [script]
      177 GETTABLEKS                       R34 R35 K45 ["filterChildren"]
      179 CALL                             R33 1 1
      180 GETTABLEKS                       R34 R2 K46 ["Constants"]
      182 GETTABLEKS                       R35 R2 K47 ["NodeView"]
      184 GETTABLEKS                       R36 R5 K48 ["PureComponent"]
      186 LOADK                            R38 K49 ["MainComponent"]
      187 NAMECALL                         R36 R36 K50 ["extend"]
      189 CALL                             R36 2 1
      190 MOVE                             R38 R10
      191 CALL                             R38 0 1
      192 JUMPIFNOT                        R38 ; [+3]
      193 GETTABLEKS                       R37 R9 K51 ["Context"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R37
      197 SETTABLEKS                       R37 R36 K52 ["contextType"]
      199 DUPCLOSURE                       R37 K53 [PROTO_1]
      200 SETTABLEKS                       R37 R36 K54 ["init"]
      202 DUPCLOSURE                       R37 K55 [PROTO_2]
      203 CAPTURE                          VAL R34
      204 SETTABLEKS                       R37 R36 K56 ["readSettings"]
      206 DUPCLOSURE                       R37 K57 [PROTO_3]
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R2
      211 SETTABLEKS                       R37 R36 K58 ["didMount"]
      213 DUPCLOSURE                       R37 K59 [PROTO_4]
      214 SETTABLEKS                       R37 R36 K60 ["willUnmount"]
      216 DUPCLOSURE                       R37 K61 [PROTO_5]
      217 CAPTURE                          VAL R33
      218 CAPTURE                          VAL R11
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R35
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R23
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R27
      229 SETTABLEKS                       R37 R36 K62 ["render"]
      231 MOVE                             R37 R13
      232 DUPTABLE                         R38 K65 [{"Analytics", "Plugin"}]
      233 GETTABLEKS                       R39 R12 K63 ["Analytics"]
      235 SETTABLEKS                       R39 R38 K63 ["Analytics"]
      237 GETTABLEKS                       R39 R12 K64 ["Plugin"]
      239 SETTABLEKS                       R39 R38 K64 ["Plugin"]
      241 CALL                             R37 1 1
      242 MOVE                             R38 R36
      243 CALL                             R37 1 1
      244 MOVE                             R36 R37
      245 DUPCLOSURE                       R37 K66 [PROTO_6]
      246 DUPCLOSURE                       R38 K67 [PROTO_13]
      247 CAPTURE                          VAL R29
      248 CAPTURE                          VAL R17
      249 CAPTURE                          VAL R30
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R19
      252 CAPTURE                          VAL R31
      253 GETTABLEKS                       R39 R7 K68 ["connect"]
      255 MOVE                             R40 R37
      256 MOVE                             R41 R38
      257 CALL                             R39 2 1
      258 MOVE                             R40 R36
      259 CALL                             R39 1 1
      260 MOVE                             R36 R39
      261 RETURN                           R36 1
