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
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Flags"]
       69 GETTABLEKS                       R10 R10 K19 ["getFFlagAnimGraphUIRemoveEnumParameters"]
       71 CALL                             R9 1 1
       72 DUPTABLE                         R10 K21 [{"contextMenuComponent"}]
       73 SETTABLEKS                       R3 R10 K20 ["contextMenuComponent"]
       75 MOVE                             R12 R9
       76 CALL                             R12 0 1
       77 JUMPIFNOT                        R12 ; [+48]
       78 GETIMPORT                        R11 K24 [table.freeze]
       80 NEWTABLE                         R12 0 4
       82 GETIMPORT                        R13 K24 [table.freeze]
       84 DUPTABLE                         R14 K27 [{"id", "text"}]
       85 LOADK                            R15 K28 ["String"]
       86 SETTABLEKS                       R15 R14 K25 ["id"]
       88 LOADK                            R15 K29 ["string"]
       89 SETTABLEKS                       R15 R14 K26 ["text"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K24 [table.freeze]
       94 DUPTABLE                         R15 K27 [{"id", "text"}]
       95 LOADK                            R16 K30 ["Boolean"]
       96 SETTABLEKS                       R16 R15 K25 ["id"]
       98 LOADK                            R16 K31 ["boolean"]
       99 SETTABLEKS                       R16 R15 K26 ["text"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K24 [table.freeze]
      104 DUPTABLE                         R16 K27 [{"id", "text"}]
      105 LOADK                            R17 K32 ["Number"]
      106 SETTABLEKS                       R17 R16 K25 ["id"]
      108 LOADK                            R17 K33 ["number"]
      109 SETTABLEKS                       R17 R16 K26 ["text"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K24 [table.freeze]
      114 DUPTABLE                         R17 K27 [{"id", "text"}]
      115 LOADK                            R18 K34 ["Mask"]
      116 SETTABLEKS                       R18 R17 K25 ["id"]
      118 LOADK                            R18 K34 ["Mask"]
      119 SETTABLEKS                       R18 R17 K26 ["text"]
      121 CALL                             R16 1 -1
      122 SETLIST                          R12 R13 -1 [1]
      124 CALL                             R11 1 1
      125 JUMP                             ; [+77]
      126 GETIMPORT                        R11 K24 [table.freeze]
      128 NEWTABLE                         R12 0 7
      130 GETIMPORT                        R13 K24 [table.freeze]
      132 DUPTABLE                         R14 K27 [{"id", "text"}]
      133 LOADK                            R15 K28 ["String"]
      134 SETTABLEKS                       R15 R14 K25 ["id"]
      136 LOADK                            R15 K29 ["string"]
      137 SETTABLEKS                       R15 R14 K26 ["text"]
      139 CALL                             R13 1 1
      140 GETIMPORT                        R14 K24 [table.freeze]
      142 DUPTABLE                         R15 K27 [{"id", "text"}]
      143 LOADK                            R16 K30 ["Boolean"]
      144 SETTABLEKS                       R16 R15 K25 ["id"]
      146 LOADK                            R16 K31 ["boolean"]
      147 SETTABLEKS                       R16 R15 K26 ["text"]
      149 CALL                             R14 1 1
      150 GETIMPORT                        R15 K24 [table.freeze]
      152 DUPTABLE                         R16 K27 [{"id", "text"}]
      153 LOADK                            R17 K32 ["Number"]
      154 SETTABLEKS                       R17 R16 K25 ["id"]
      156 LOADK                            R17 K33 ["number"]
      157 SETTABLEKS                       R17 R16 K26 ["text"]
      159 CALL                             R15 1 1
      160 GETIMPORT                        R16 K24 [table.freeze]
      162 DUPTABLE                         R17 K27 [{"id", "text"}]
      163 LOADK                            R18 K34 ["Mask"]
      164 SETTABLEKS                       R18 R17 K25 ["id"]
      166 LOADK                            R18 K34 ["Mask"]
      167 SETTABLEKS                       R18 R17 K26 ["text"]
      169 CALL                             R16 1 1
      170 GETIMPORT                        R17 K24 [table.freeze]
      172 DUPTABLE                         R18 K27 [{"id", "text"}]
      173 LOADK                            R19 K35 ["PlayMode"]
      174 SETTABLEKS                       R19 R18 K25 ["id"]
      176 LOADK                            R19 K35 ["PlayMode"]
      177 SETTABLEKS                       R19 R18 K26 ["text"]
      179 CALL                             R17 1 1
      180 GETIMPORT                        R18 K24 [table.freeze]
      182 DUPTABLE                         R19 K27 [{"id", "text"}]
      183 LOADK                            R20 K36 ["InputMode"]
      184 SETTABLEKS                       R20 R19 K25 ["id"]
      186 LOADK                            R20 K36 ["InputMode"]
      187 SETTABLEKS                       R20 R19 K26 ["text"]
      189 CALL                             R18 1 1
      190 GETIMPORT                        R19 K24 [table.freeze]
      192 DUPTABLE                         R20 K27 [{"id", "text"}]
      193 LOADK                            R21 K37 ["PhaseSync"]
      194 SETTABLEKS                       R21 R20 K25 ["id"]
      196 LOADK                            R21 K37 ["PhaseSync"]
      197 SETTABLEKS                       R21 R20 K26 ["text"]
      199 CALL                             R19 1 -1
      200 SETLIST                          R12 R13 -1 [1]
      202 CALL                             R11 1 1
      203 DUPTABLE                         R12 K38 [{"PlayMode", "InputMode", "PhaseSync"}]
      204 GETIMPORT                        R13 K42 [Enum.AnimationNodePlayMode.Loop]
      206 SETTABLEKS                       R13 R12 K35 ["PlayMode"]
      208 GETIMPORT                        R13 K45 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      210 SETTABLEKS                       R13 R12 K36 ["InputMode"]
      212 GETIMPORT                        R13 K48 [Enum.AnimationNodePhaseSync.Synced]
      214 SETTABLEKS                       R13 R12 K37 ["PhaseSync"]
      216 DUPTABLE                         R13 K49 [{"String", "Boolean", "Number", "PlayMode", "InputMode", "PhaseSync"}]
      217 LOADK                            R14 K50 [""]
      218 SETTABLEKS                       R14 R13 K28 ["String"]
      220 LOADB                            R14 0
      221 SETTABLEKS                       R14 R13 K30 ["Boolean"]
      223 LOADN                            R14 0
      224 SETTABLEKS                       R14 R13 K32 ["Number"]
      226 GETIMPORT                        R14 K42 [Enum.AnimationNodePlayMode.Loop]
      228 SETTABLEKS                       R14 R13 K35 ["PlayMode"]
      230 GETIMPORT                        R14 K45 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      232 SETTABLEKS                       R14 R13 K36 ["InputMode"]
      234 GETIMPORT                        R14 K48 [Enum.AnimationNodePhaseSync.Synced]
      236 SETTABLEKS                       R14 R13 K37 ["PhaseSync"]
      238 DUPCLOSURE                       R14 K51 [PROTO_0]
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R12
      242 DUPCLOSURE                       R15 K52 [PROTO_2]
      243 CAPTURE                          VAL R6
      244 CAPTURE                          VAL R1
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R14
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R5
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R10
      251 RETURN                           R15 1
