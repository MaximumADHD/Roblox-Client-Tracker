PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["showNodeInExplorerAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["breakNodeConnectionsAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K7 [{"observeParameters", "observeExpressions", "observeParameterDefinitions", "setParameter", "setExpression", "parameterMenuItems", "getDefaultValue"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K8 ["observeAnimationParameters"]
        4 SETTABLEKS                       R1 R0 K0 ["observeParameters"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["observeExpressions"]
        9 SETTABLEKS                       R1 R0 K1 ["observeExpressions"]
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["observeParameterDefinitions"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K2 ["observeParameterDefinitions"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K9 ["setAnimationParameterAsync"]
       24 SETTABLEKS                       R1 R0 K3 ["setParameter"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K10 ["setAnimationExpressionAsync"]
       29 SETTABLEKS                       R1 R0 K4 ["setExpression"]
       31 GETUPVAL                         R1 2
       32 SETTABLEKS                       R1 R0 K5 ["parameterMenuItems"]
       34 GETUPVAL                         R1 3
       35 SETTABLEKS                       R1 R0 K6 ["getDefaultValue"]
       37 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R2 K3 ["showNodeInExplorerAsync"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R6 0 1
       33 GETTABLEKS                       R7 R2 K4 ["breakNodeConnectionsAsync"]
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 NEWTABLE                         R7 0 5
       48 GETTABLEKS                       R8 R1 K6 ["observeAnimationParameters"]
       50 GETTABLEKS                       R9 R1 K7 ["observeExpressions"]
       52 GETTABLEKS                       R10 R1 K8 ["observeParameterDefinitions"]
       54 GETTABLEKS                       R11 R1 K9 ["setAnimationParameterAsync"]
       56 GETTABLEKS                       R12 R1 K10 ["setAnimationExpressionAsync"]
       58 SETLIST                          R7 R8 5 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K11 ["createElement"]
       64 GETUPVAL                         R7 6
       65 GETTABLEKS                       R7 R7 K12 ["ContextStack"]
       67 DUPTABLE                         R8 K14 [{"providers"}]
       68 NEWTABLE                         R9 0 6
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K11 ["createElement"]
       73 GETUPVAL                         R11 7
       74 CALL                             R10 1 1
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K11 ["createElement"]
       78 GETUPVAL                         R12 8
       79 GETTABLEKS                       R12 R12 K15 ["ContextMenuOverrideContext"]
       81 GETTABLEKS                       R12 R12 K1 ["Context"]
       83 GETTABLEKS                       R12 R12 K16 ["Provider"]
       85 DUPTABLE                         R13 K18 [{"value"}]
       86 GETUPVAL                         R14 9
       87 SETTABLEKS                       R14 R13 K17 ["value"]
       89 CALL                             R11 2 1
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K11 ["createElement"]
       93 GETUPVAL                         R13 8
       94 GETTABLEKS                       R13 R13 K19 ["ParameterContext"]
       96 GETTABLEKS                       R13 R13 K16 ["Provider"]
       98 DUPTABLE                         R14 K18 [{"value"}]
       99 SETTABLEKS                       R5 R14 K17 ["value"]
      101 CALL                             R12 2 1
      102 GETUPVAL                         R13 0
      103 GETTABLEKS                       R13 R13 K11 ["createElement"]
      105 GETUPVAL                         R14 8
      106 GETTABLEKS                       R14 R14 K20 ["NodeRightClickMenuContext"]
      108 GETTABLEKS                       R14 R14 K16 ["Provider"]
      110 DUPTABLE                         R15 K23 [{"onShowInExplorer", "onBreakConnections"}]
      111 SETTABLEKS                       R3 R15 K21 ["onShowInExplorer"]
      113 GETUPVAL                         R17 10
      114 CALL                             R17 0 1
      115 JUMPIFNOT                        R17 ; [+2]
      116 MOVE                             R16 R4
      117 JUMP                             ; [+1]
      118 LOADNIL                          R16
      119 SETTABLEKS                       R16 R15 K22 ["onBreakConnections"]
      121 CALL                             R13 2 1
      122 GETUPVAL                         R15 11
      123 CALL                             R15 0 1
      124 JUMPIFNOT                        R15 ; [+12]
      125 GETUPVAL                         R14 0
      126 GETTABLEKS                       R14 R14 K11 ["createElement"]
      128 GETUPVAL                         R15 8
      129 GETTABLEKS                       R15 R15 K24 ["StudioThemeTextColorsContext"]
      131 GETTABLEKS                       R15 R15 K16 ["Provider"]
      133 NEWTABLE                         R16 0 0
      135 CALL                             R14 2 1
      136 JUMP                             ; [+7]
      137 GETUPVAL                         R14 0
      138 GETTABLEKS                       R14 R14 K11 ["createElement"]
      140 GETUPVAL                         R15 0
      141 GETTABLEKS                       R15 R15 K25 ["Fragment"]
      143 CALL                             R14 1 1
      144 GETUPVAL                         R16 12
      145 CALL                             R16 0 1
      146 JUMPIFNOT                        R16 ; [+22]
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R15 R15 K11 ["createElement"]
      150 GETUPVAL                         R16 8
      151 GETTABLEKS                       R16 R16 K26 ["SettingsContext"]
      153 GETTABLEKS                       R16 R16 K16 ["Provider"]
      155 DUPTABLE                         R17 K29 [{"initialTimeFormat", "initialFrameRate"}]
      156 GETTABLEKS                       R18 R0 K27 ["initialTimeFormat"]
      158 SETTABLEKS                       R18 R17 K27 ["initialTimeFormat"]
      160 GETUPVAL                         R18 8
      161 GETTABLEKS                       R18 R18 K26 ["SettingsContext"]
      163 GETTABLEKS                       R18 R18 K30 ["DEFAULT_FRAME_RATE"]
      165 SETTABLEKS                       R18 R17 K28 ["initialFrameRate"]
      167 CALL                             R15 2 1
      168 JUMP                             ; [+7]
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R15 R15 K11 ["createElement"]
      172 GETUPVAL                         R16 0
      173 GETTABLEKS                       R16 R16 K25 ["Fragment"]
      175 CALL                             R15 1 1
      176 SETLIST                          R9 R10 6 [1]
      178 SETTABLEKS                       R9 R8 K13 ["providers"]
      180 GETTABLEKS                       R9 R0 K31 ["children"]
      182 CALL                             R6 3 -1
      183 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationParameterContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K12 ["GraphingCanvasContextMenu"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["NativeGraphContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["NodeGraphing"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["NodeLibraryContextProvider"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R8 K16 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K8 ["Parent"]
       62 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Flags"]
       69 GETTABLEKS                       R10 R10 K19 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K18 ["Flags"]
       76 GETTABLEKS                       R11 R11 K20 ["getFFlagAnimGraphUITimestampFrames"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K18 ["Flags"]
       83 GETTABLEKS                       R12 R12 K21 ["getFFlagAnimGraphUI_BreakConnections"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K18 ["Flags"]
       90 GETTABLEKS                       R13 R13 K22 ["getFFlagEnableExpressionSyntaxHighlighting"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K24 [game]
       95 LOADK                            R15 K25 ["AnimGraphTriggerParameters"]
       96 NAMECALL                         R13 R13 K26 ["GetEngineFeature"]
       98 CALL                             R13 2 1
       99 DUPTABLE                         R14 K28 [{"contextMenuComponent"}]
      100 SETTABLEKS                       R3 R14 K27 ["contextMenuComponent"]
      102 NEWTABLE                         R15 0 3
      104 GETIMPORT                        R16 K31 [table.freeze]
      106 DUPTABLE                         R17 K36 [{["id"] = "String", ["text"] = "string"}]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K31 [table.freeze]
      110 DUPTABLE                         R18 K39 [{["id"] = "Boolean", ["text"] = "boolean"}]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K31 [table.freeze]
      114 DUPTABLE                         R19 K42 [{["id"] = "Number", ["text"] = "number"}]
      115 CALL                             R18 1 -1
      116 SETLIST                          R15 R16 -1 [1]
      118 JUMPIFNOT                        R13 ; [+9]
      119 MOVE                             R17 R15
      120 GETIMPORT                        R18 K31 [table.freeze]
      122 DUPTABLE                         R19 K44 [{["id"] = "Trigger", ["text"] = "Trigger"}]
      123 CALL                             R18 1 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R16 K46 [table.insert]
      127 CALL                             R16 -1 0
      128 GETIMPORT                        R16 K31 [table.freeze]
      130 MOVE                             R17 R15
      131 CALL                             R16 1 1
      132 DUPTABLE                         R17 K53 [{["String"] = "", ["Boolean"] = False, ["Trigger"] = False, ["Number"] = 0, ["PlayMode"], ["InputMode"], ["PhaseSync"]}]
      133 GETIMPORT                        R18 K57 [Enum.AnimationNodePlayMode.Loop]
      135 SETTABLEKS                       R18 R17 K50 ["PlayMode"]
      137 GETIMPORT                        R18 K60 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      139 SETTABLEKS                       R18 R17 K51 ["InputMode"]
      141 GETIMPORT                        R18 K63 [Enum.AnimationNodePhaseSync.Synced]
      143 SETTABLEKS                       R18 R17 K52 ["PhaseSync"]
      145 DUPCLOSURE                       R18 K64 [PROTO_0]
      146 CAPTURE                          VAL R17
      147 DUPCLOSURE                       R19 K65 [PROTO_4]
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R10
      161 RETURN                           R19 1
