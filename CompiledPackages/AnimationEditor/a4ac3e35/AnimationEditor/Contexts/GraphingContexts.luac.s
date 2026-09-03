PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["showNodeInExplorerAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K6 [{"observeParameters", "observeNonPromotedExpressions", "setParameter", "setExpression", "parameterMenuItems", "getDefaultValue"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K7 ["observeAnimationParameters"]
        4 SETTABLEKS                       R1 R0 K0 ["observeParameters"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["observeNonPromotedExpressions"]
        9 SETTABLEKS                       R1 R0 K1 ["observeNonPromotedExpressions"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K8 ["setAnimationParameterAsync"]
       14 SETTABLEKS                       R1 R0 K2 ["setParameter"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K9 ["setAnimationExpressionAsync"]
       19 SETTABLEKS                       R1 R0 K3 ["setExpression"]
       21 GETUPVAL                         R1 1
       22 SETTABLEKS                       R1 R0 K4 ["parameterMenuItems"]
       24 GETUPVAL                         R1 2
       25 SETTABLEKS                       R1 R0 K5 ["getDefaultValue"]
       27 RETURN                           R0 1

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
       33 NEWTABLE                         R6 0 4
       35 GETTABLEKS                       R7 R1 K5 ["observeAnimationParameters"]
       37 GETTABLEKS                       R8 R1 K6 ["observeNonPromotedExpressions"]
       39 GETTABLEKS                       R9 R1 K7 ["setAnimationParameterAsync"]
       41 GETTABLEKS                       R10 R1 K8 ["setAnimationExpressionAsync"]
       43 SETLIST                          R6 R7 4 [1]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K9 ["createElement"]
       49 GETUPVAL                         R6 5
       50 GETTABLEKS                       R6 R6 K10 ["ContextStack"]
       52 DUPTABLE                         R7 K12 [{"providers"}]
       53 NEWTABLE                         R8 0 4
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K9 ["createElement"]
       58 GETUPVAL                         R10 6
       59 CALL                             R9 1 1
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K9 ["createElement"]
       63 GETUPVAL                         R11 7
       64 GETTABLEKS                       R11 R11 K13 ["ContextMenuOverrideContext"]
       66 GETTABLEKS                       R11 R11 K1 ["Context"]
       68 GETTABLEKS                       R11 R11 K14 ["Provider"]
       70 DUPTABLE                         R12 K16 [{"value"}]
       71 GETUPVAL                         R13 8
       72 SETTABLEKS                       R13 R12 K15 ["value"]
       74 CALL                             R10 2 1
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K9 ["createElement"]
       78 GETUPVAL                         R12 7
       79 GETTABLEKS                       R12 R12 K17 ["ParameterContext"]
       81 GETTABLEKS                       R12 R12 K14 ["Provider"]
       83 DUPTABLE                         R13 K16 [{"value"}]
       84 SETTABLEKS                       R4 R13 K15 ["value"]
       86 CALL                             R11 2 1
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K9 ["createElement"]
       90 GETUPVAL                         R13 7
       91 GETTABLEKS                       R13 R13 K18 ["NodeRightClickMenuContext"]
       93 GETTABLEKS                       R13 R13 K14 ["Provider"]
       95 DUPTABLE                         R14 K20 [{"onShowInExplorer"}]
       96 SETTABLEKS                       R3 R14 K19 ["onShowInExplorer"]
       98 CALL                             R12 2 -1
       99 SETLIST                          R8 R9 -1 [1]
      101 SETTABLEKS                       R8 R7 K11 ["providers"]
      103 GETTABLEKS                       R8 R0 K21 ["children"]
      105 CALL                             R5 3 -1
      106 RETURN                           R5 -1

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
       76 GETTABLEKS                       R11 R11 K20 ["getFFlagAnimGraphUIAddInsertExistingParameters"]
       78 CALL                             R10 1 1
       79 DUPTABLE                         R11 K22 [{"contextMenuComponent"}]
       80 SETTABLEKS                       R4 R11 K21 ["contextMenuComponent"]
       82 NEWTABLE                         R12 0 3
       84 GETIMPORT                        R13 K25 [table.freeze]
       86 DUPTABLE                         R14 K30 [{["id"] = "String", ["text"] = "string"}]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K25 [table.freeze]
       90 DUPTABLE                         R15 K33 [{["id"] = "Boolean", ["text"] = "boolean"}]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K25 [table.freeze]
       94 DUPTABLE                         R16 K36 [{["id"] = "Number", ["text"] = "number"}]
       95 CALL                             R15 1 -1
       96 SETLIST                          R12 R13 -1 [1]
       98 JUMPIF                           R2 ; [+9]
       99 MOVE                             R14 R12
      100 GETIMPORT                        R15 K25 [table.freeze]
      102 DUPTABLE                         R16 K38 [{["id"] = "Mask", ["text"] = "Mask"}]
      103 CALL                             R15 1 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R13 K40 [table.insert]
      107 CALL                             R13 -1 0
      108 GETIMPORT                        R13 K25 [table.freeze]
      110 MOVE                             R14 R12
      111 CALL                             R13 1 1
      112 DUPTABLE                         R14 K44 [{"PlayMode", "InputMode", "PhaseSync"}]
      113 GETIMPORT                        R15 K48 [Enum.AnimationNodePlayMode.Loop]
      115 SETTABLEKS                       R15 R14 K41 ["PlayMode"]
      117 GETIMPORT                        R15 K51 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      119 SETTABLEKS                       R15 R14 K42 ["InputMode"]
      121 GETIMPORT                        R15 K54 [Enum.AnimationNodePhaseSync.Synced]
      123 SETTABLEKS                       R15 R14 K43 ["PhaseSync"]
      125 DUPTABLE                         R15 K58 [{["String"] = "", ["Boolean"] = False, ["Number"] = 0, ["PlayMode"], ["InputMode"], ["PhaseSync"]}]
      126 GETIMPORT                        R16 K48 [Enum.AnimationNodePlayMode.Loop]
      128 SETTABLEKS                       R16 R15 K41 ["PlayMode"]
      130 GETIMPORT                        R16 K51 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      132 SETTABLEKS                       R16 R15 K42 ["InputMode"]
      134 GETIMPORT                        R16 K54 [Enum.AnimationNodePhaseSync.Synced]
      136 SETTABLEKS                       R16 R15 K43 ["PhaseSync"]
      138 DUPCLOSURE                       R16 K59 [PROTO_0]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R14
      142 DUPCLOSURE                       R17 K60 [PROTO_3]
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R11
      152 RETURN                           R17 1
