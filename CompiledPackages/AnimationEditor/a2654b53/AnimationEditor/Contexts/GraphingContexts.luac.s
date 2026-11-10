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

PROTO_3:
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
       27 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 NEWTABLE                         R6 0 5
       36 GETTABLEKS                       R7 R1 K5 ["observeAnimationParameters"]
       38 GETTABLEKS                       R8 R1 K6 ["observeExpressions"]
       40 GETTABLEKS                       R9 R1 K7 ["observeParameterDefinitions"]
       42 GETTABLEKS                       R10 R1 K8 ["setAnimationParameterAsync"]
       44 GETTABLEKS                       R11 R1 K9 ["setAnimationExpressionAsync"]
       46 SETLIST                          R6 R7 5 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K10 ["createElement"]
       52 GETUPVAL                         R6 6
       53 GETTABLEKS                       R6 R6 K11 ["ContextStack"]
       55 DUPTABLE                         R7 K13 [{"providers"}]
       56 NEWTABLE                         R8 0 6
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K10 ["createElement"]
       61 GETUPVAL                         R10 7
       62 CALL                             R9 1 1
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K10 ["createElement"]
       66 GETUPVAL                         R11 8
       67 GETTABLEKS                       R11 R11 K14 ["ContextMenuOverrideContext"]
       69 GETTABLEKS                       R11 R11 K1 ["Context"]
       71 GETTABLEKS                       R11 R11 K15 ["Provider"]
       73 DUPTABLE                         R12 K17 [{"value"}]
       74 GETUPVAL                         R13 9
       75 SETTABLEKS                       R13 R12 K16 ["value"]
       77 CALL                             R10 2 1
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R11 R11 K10 ["createElement"]
       81 GETUPVAL                         R12 8
       82 GETTABLEKS                       R12 R12 K18 ["ParameterContext"]
       84 GETTABLEKS                       R12 R12 K15 ["Provider"]
       86 DUPTABLE                         R13 K17 [{"value"}]
       87 SETTABLEKS                       R4 R13 K16 ["value"]
       89 CALL                             R11 2 1
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K10 ["createElement"]
       93 GETUPVAL                         R13 8
       94 GETTABLEKS                       R13 R13 K19 ["NodeRightClickMenuContext"]
       96 GETTABLEKS                       R13 R13 K15 ["Provider"]
       98 DUPTABLE                         R14 K21 [{"onShowInExplorer"}]
       99 SETTABLEKS                       R3 R14 K20 ["onShowInExplorer"]
      101 CALL                             R12 2 1
      102 GETUPVAL                         R14 10
      103 CALL                             R14 0 1
      104 JUMPIFNOT                        R14 ; [+12]
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R13 R13 K10 ["createElement"]
      108 GETUPVAL                         R14 8
      109 GETTABLEKS                       R14 R14 K22 ["StudioThemeTextColorsContext"]
      111 GETTABLEKS                       R14 R14 K15 ["Provider"]
      113 NEWTABLE                         R15 0 0
      115 CALL                             R13 2 1
      116 JUMP                             ; [+7]
      117 GETUPVAL                         R13 0
      118 GETTABLEKS                       R13 R13 K10 ["createElement"]
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K23 ["Fragment"]
      123 CALL                             R13 1 1
      124 GETUPVAL                         R15 11
      125 CALL                             R15 0 1
      126 JUMPIFNOT                        R15 ; [+22]
      127 GETUPVAL                         R14 0
      128 GETTABLEKS                       R14 R14 K10 ["createElement"]
      130 GETUPVAL                         R15 8
      131 GETTABLEKS                       R15 R15 K24 ["SettingsContext"]
      133 GETTABLEKS                       R15 R15 K15 ["Provider"]
      135 DUPTABLE                         R16 K27 [{"initialTimeFormat", "initialFrameRate"}]
      136 GETTABLEKS                       R17 R0 K25 ["initialTimeFormat"]
      138 SETTABLEKS                       R17 R16 K25 ["initialTimeFormat"]
      140 GETUPVAL                         R17 8
      141 GETTABLEKS                       R17 R17 K24 ["SettingsContext"]
      143 GETTABLEKS                       R17 R17 K28 ["DEFAULT_FRAME_RATE"]
      145 SETTABLEKS                       R17 R16 K26 ["initialFrameRate"]
      147 CALL                             R14 2 1
      148 JUMP                             ; [+7]
      149 GETUPVAL                         R14 0
      150 GETTABLEKS                       R14 R14 K10 ["createElement"]
      152 GETUPVAL                         R15 0
      153 GETTABLEKS                       R15 R15 K23 ["Fragment"]
      155 CALL                             R14 1 1
      156 SETLIST                          R8 R9 6 [1]
      158 SETTABLEKS                       R8 R7 K12 ["providers"]
      160 GETTABLEKS                       R8 R0 K29 ["children"]
      162 CALL                             R5 3 -1
      163 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimGraphUINoMaskParameter"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Components"]
       32 GETTABLEKS                       R5 R5 K13 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K14 ["GraphingCanvasContextMenu"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K15 ["NativeGraphContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Parent"]
       48 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K17 ["NodeLibraryContextProvider"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K10 ["Parent"]
       62 GETTABLEKS                       R9 R9 K18 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K10 ["Parent"]
       69 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Flags"]
       76 GETTABLEKS                       R11 R11 K20 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K8 ["Flags"]
       83 GETTABLEKS                       R12 R12 K21 ["getFFlagAnimGraphUITimestampFrames"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K8 ["Flags"]
       90 GETTABLEKS                       R13 R13 K22 ["getFFlagEnableExpressionSyntaxHighlighting"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K24 [game]
       95 LOADK                            R15 K25 ["AnimGraphTriggerParameters"]
       96 NAMECALL                         R13 R13 K26 ["GetEngineFeature"]
       98 CALL                             R13 2 1
       99 DUPTABLE                         R14 K28 [{"contextMenuComponent"}]
      100 SETTABLEKS                       R4 R14 K27 ["contextMenuComponent"]
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
      118 JUMPIF                           R2 ; [+9]
      119 MOVE                             R17 R15
      120 GETIMPORT                        R18 K31 [table.freeze]
      122 DUPTABLE                         R19 K44 [{["id"] = "Mask", ["text"] = "Mask"}]
      123 CALL                             R18 1 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R16 K46 [table.insert]
      127 CALL                             R16 -1 0
      128 JUMPIFNOT                        R13 ; [+9]
      129 MOVE                             R17 R15
      130 GETIMPORT                        R18 K31 [table.freeze]
      132 DUPTABLE                         R19 K48 [{["id"] = "Trigger", ["text"] = "Trigger"}]
      133 CALL                             R18 1 -1
      134 FASTCALL                         TABLE_INSERT ; [+2]
      135 GETIMPORT                        R16 K46 [table.insert]
      137 CALL                             R16 -1 0
      138 GETIMPORT                        R16 K31 [table.freeze]
      140 MOVE                             R17 R15
      141 CALL                             R16 1 1
      142 DUPTABLE                         R17 K55 [{["String"] = "", ["Boolean"] = False, ["Trigger"] = False, ["Number"] = 0, ["PlayMode"], ["InputMode"], ["PhaseSync"]}]
      143 GETIMPORT                        R18 K59 [Enum.AnimationNodePlayMode.Loop]
      145 SETTABLEKS                       R18 R17 K52 ["PlayMode"]
      147 GETIMPORT                        R18 K62 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      149 SETTABLEKS                       R18 R17 K53 ["InputMode"]
      151 GETIMPORT                        R18 K65 [Enum.AnimationNodePhaseSync.Synced]
      153 SETTABLEKS                       R18 R17 K54 ["PhaseSync"]
      155 DUPCLOSURE                       R18 K66 [PROTO_0]
      156 CAPTURE                          VAL R17
      157 DUPCLOSURE                       R19 K67 [PROTO_3]
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R11
      170 RETURN                           R19 1
