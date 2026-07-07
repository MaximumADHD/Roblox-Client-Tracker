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
        0 DUPTABLE                         R0 K4 [{"observeParameters", "setParameter", "parameterMenuItems", "getDefaultValue"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["observeAnimationParameters"]
        4 SETTABLEKS                       R1 R0 K0 ["observeParameters"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K6 ["setAnimationParameterAsync"]
        9 SETTABLEKS                       R1 R0 K1 ["setParameter"]
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R1 R0 K2 ["parameterMenuItems"]
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K3 ["getDefaultValue"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R4 0 2
       16 GETTABLEKS                       R5 R1 K3 ["observeAnimationParameters"]
       18 GETTABLEKS                       R6 R1 K4 ["setAnimationParameterAsync"]
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K5 ["createElement"]
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K6 ["ContextStack"]
       29 DUPTABLE                         R5 K8 [{"providers"}]
       30 NEWTABLE                         R6 0 3
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K5 ["createElement"]
       35 GETUPVAL                         R8 5
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K5 ["createElement"]
       40 GETUPVAL                         R9 6
       41 GETTABLEKS                       R9 R9 K9 ["ContextMenuOverrideContext"]
       43 GETTABLEKS                       R9 R9 K1 ["Context"]
       45 GETTABLEKS                       R9 R9 K10 ["Provider"]
       47 DUPTABLE                         R10 K12 [{"value"}]
       48 GETUPVAL                         R11 7
       49 SETTABLEKS                       R11 R10 K11 ["value"]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K5 ["createElement"]
       55 GETUPVAL                         R10 6
       56 GETTABLEKS                       R10 R10 K13 ["ParameterContext"]
       58 GETTABLEKS                       R10 R10 K10 ["Provider"]
       60 DUPTABLE                         R11 K12 [{"value"}]
       61 SETTABLEKS                       R2 R11 K11 ["value"]
       63 CALL                             R9 2 -1
       64 SETLIST                          R6 R7 -1 [1]
       66 SETTABLEKS                       R6 R5 K7 ["providers"]
       68 GETTABLEKS                       R6 R0 K14 ["children"]
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1

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
       32 GETTABLEKS                       R5 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["NodeGraphing"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["NodeLibraryContextProvider"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Flags"]
       62 GETTABLEKS                       R9 R9 K18 ["getFFlagAnimGraphUIAddInsertExistingParameters"]
       64 CALL                             R8 1 1
       65 DUPTABLE                         R9 K20 [{"contextMenuComponent"}]
       66 SETTABLEKS                       R3 R9 K19 ["contextMenuComponent"]
       68 GETIMPORT                        R10 K23 [table.freeze]
       70 NEWTABLE                         R11 0 4
       72 GETIMPORT                        R12 K23 [table.freeze]
       74 DUPTABLE                         R13 K28 [{["id"] = "String", ["text"] = "string"}]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K23 [table.freeze]
       78 DUPTABLE                         R14 K31 [{["id"] = "Boolean", ["text"] = "boolean"}]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K23 [table.freeze]
       82 DUPTABLE                         R15 K34 [{["id"] = "Number", ["text"] = "number"}]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K23 [table.freeze]
       86 DUPTABLE                         R16 K36 [{["id"] = "Mask", ["text"] = "Mask"}]
       87 CALL                             R15 1 -1
       88 SETLIST                          R11 R12 -1 [1]
       90 CALL                             R10 1 1
       91 DUPTABLE                         R11 K40 [{"PlayMode", "InputMode", "PhaseSync"}]
       92 GETIMPORT                        R12 K44 [Enum.AnimationNodePlayMode.Loop]
       94 SETTABLEKS                       R12 R11 K37 ["PlayMode"]
       96 GETIMPORT                        R12 K47 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       98 SETTABLEKS                       R12 R11 K38 ["InputMode"]
      100 GETIMPORT                        R12 K50 [Enum.AnimationNodePhaseSync.Synced]
      102 SETTABLEKS                       R12 R11 K39 ["PhaseSync"]
      104 DUPTABLE                         R12 K54 [{["String"] = "", ["Boolean"] = False, ["Number"] = 0, ["PlayMode"], ["InputMode"], ["PhaseSync"]}]
      105 GETIMPORT                        R13 K44 [Enum.AnimationNodePlayMode.Loop]
      107 SETTABLEKS                       R13 R12 K37 ["PlayMode"]
      109 GETIMPORT                        R13 K47 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      111 SETTABLEKS                       R13 R12 K38 ["InputMode"]
      113 GETIMPORT                        R13 K50 [Enum.AnimationNodePhaseSync.Synced]
      115 SETTABLEKS                       R13 R12 K39 ["PhaseSync"]
      117 DUPCLOSURE                       R13 K55 [PROTO_0]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R11
      121 DUPCLOSURE                       R14 K56 [PROTO_2]
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R9
      130 RETURN                           R14 1
