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
       70 NEWTABLE                         R11 0 7
       72 GETIMPORT                        R12 K23 [table.freeze]
       74 DUPTABLE                         R13 K26 [{"id", "text"}]
       75 LOADK                            R14 K27 ["String"]
       76 SETTABLEKS                       R14 R13 K24 ["id"]
       78 LOADK                            R14 K28 ["string"]
       79 SETTABLEKS                       R14 R13 K25 ["text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K23 [table.freeze]
       84 DUPTABLE                         R14 K26 [{"id", "text"}]
       85 LOADK                            R15 K29 ["Boolean"]
       86 SETTABLEKS                       R15 R14 K24 ["id"]
       88 LOADK                            R15 K30 ["boolean"]
       89 SETTABLEKS                       R15 R14 K25 ["text"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K23 [table.freeze]
       94 DUPTABLE                         R15 K26 [{"id", "text"}]
       95 LOADK                            R16 K31 ["Number"]
       96 SETTABLEKS                       R16 R15 K24 ["id"]
       98 LOADK                            R16 K32 ["number"]
       99 SETTABLEKS                       R16 R15 K25 ["text"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K23 [table.freeze]
      104 DUPTABLE                         R16 K26 [{"id", "text"}]
      105 LOADK                            R17 K33 ["Mask"]
      106 SETTABLEKS                       R17 R16 K24 ["id"]
      108 LOADK                            R17 K33 ["Mask"]
      109 SETTABLEKS                       R17 R16 K25 ["text"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K23 [table.freeze]
      114 DUPTABLE                         R17 K26 [{"id", "text"}]
      115 LOADK                            R18 K34 ["PlayMode"]
      116 SETTABLEKS                       R18 R17 K24 ["id"]
      118 LOADK                            R18 K34 ["PlayMode"]
      119 SETTABLEKS                       R18 R17 K25 ["text"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K23 [table.freeze]
      124 DUPTABLE                         R18 K26 [{"id", "text"}]
      125 LOADK                            R19 K35 ["InputMode"]
      126 SETTABLEKS                       R19 R18 K24 ["id"]
      128 LOADK                            R19 K35 ["InputMode"]
      129 SETTABLEKS                       R19 R18 K25 ["text"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K23 [table.freeze]
      134 DUPTABLE                         R19 K26 [{"id", "text"}]
      135 LOADK                            R20 K36 ["PhaseSync"]
      136 SETTABLEKS                       R20 R19 K24 ["id"]
      138 LOADK                            R20 K36 ["PhaseSync"]
      139 SETTABLEKS                       R20 R19 K25 ["text"]
      141 CALL                             R18 1 -1
      142 SETLIST                          R11 R12 -1 [1]
      144 CALL                             R10 1 1
      145 DUPTABLE                         R11 K37 [{"PlayMode", "InputMode", "PhaseSync"}]
      146 GETIMPORT                        R12 K41 [Enum.AnimationNodePlayMode.Loop]
      148 SETTABLEKS                       R12 R11 K34 ["PlayMode"]
      150 GETIMPORT                        R12 K44 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      152 SETTABLEKS                       R12 R11 K35 ["InputMode"]
      154 GETIMPORT                        R12 K47 [Enum.AnimationNodePhaseSync.Synced]
      156 SETTABLEKS                       R12 R11 K36 ["PhaseSync"]
      158 DUPTABLE                         R12 K48 [{"String", "Boolean", "Number", "PlayMode", "InputMode", "PhaseSync"}]
      159 LOADK                            R13 K49 [""]
      160 SETTABLEKS                       R13 R12 K27 ["String"]
      162 LOADB                            R13 0
      163 SETTABLEKS                       R13 R12 K29 ["Boolean"]
      165 LOADN                            R13 0
      166 SETTABLEKS                       R13 R12 K31 ["Number"]
      168 GETIMPORT                        R13 K41 [Enum.AnimationNodePlayMode.Loop]
      170 SETTABLEKS                       R13 R12 K34 ["PlayMode"]
      172 GETIMPORT                        R13 K44 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      174 SETTABLEKS                       R13 R12 K35 ["InputMode"]
      176 GETIMPORT                        R13 K47 [Enum.AnimationNodePhaseSync.Synced]
      178 SETTABLEKS                       R13 R12 K36 ["PhaseSync"]
      180 DUPCLOSURE                       R13 K50 [PROTO_0]
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R11
      184 DUPCLOSURE                       R14 K51 [PROTO_2]
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R9
      193 RETURN                           R14 1
