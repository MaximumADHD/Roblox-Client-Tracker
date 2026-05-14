PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["action"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R3 R1 K1 ["uuid"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETTABLEKS                       R3 R1 K2 ["hash"]
        8 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       10 LOADK                            R4 K3 ["Action must have action, uuid, and hash fields"]
       11 GETIMPORT                        R2 K5 [assert]
       13 CALL                             R2 2 0
       14 GETIMPORT                        R2 K8 [table.clone]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 MOVE                             R0 R2
       19 GETTABLEKS                       R2 R1 K0 ["action"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["GENERATION_ACTIONS"]
       24 GETTABLEKS                       R3 R3 K10 ["ADD"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+31]
       28 GETTABLEKS                       R3 R1 K2 ["hash"]
       30 GETTABLE                         R2 R0 R3
       31 JUMPIF                           R2 ; [+6]
       32 GETTABLEKS                       R2 R1 K2 ["hash"]
       34 NEWTABLE                         R3 0 0
       36 SETTABLE                         R3 R0 R2
       37 JUMP                             ; [+9]
       38 GETTABLEKS                       R2 R1 K2 ["hash"]
       40 GETIMPORT                        R3 K8 [table.clone]
       42 GETTABLEKS                       R5 R1 K2 ["hash"]
       44 GETTABLE                         R4 R0 R5
       45 CALL                             R3 1 1
       46 SETTABLE                         R3 R0 R2
       47 GETTABLEKS                       R4 R1 K2 ["hash"]
       49 GETTABLE                         R3 R0 R4
       50 GETTABLEKS                       R4 R1 K1 ["uuid"]
       52 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       54 GETIMPORT                        R2 K12 [table.insert]
       56 CALL                             R2 2 0
       57 RETURN                           R0 1
       58 GETTABLEKS                       R2 R1 K0 ["action"]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K9 ["GENERATION_ACTIONS"]
       63 GETTABLEKS                       R3 R3 K13 ["REMOVE"]
       65 JUMPIFNOTEQ                      R2 R3 ; [+31]
       67 GETTABLEKS                       R3 R1 K2 ["hash"]
       69 GETTABLE                         R2 R0 R3
       70 JUMPIFNOT                        R2 ; [+36]
       71 GETIMPORT                        R2 K15 [table.find]
       73 GETTABLEKS                       R4 R1 K2 ["hash"]
       75 GETTABLE                         R3 R0 R4
       76 GETTABLEKS                       R4 R1 K1 ["uuid"]
       78 CALL                             R2 2 1
       79 JUMPIFNOT                        R2 ; [+27]
       80 GETTABLEKS                       R3 R1 K2 ["hash"]
       82 GETIMPORT                        R4 K8 [table.clone]
       84 GETTABLEKS                       R6 R1 K2 ["hash"]
       86 GETTABLE                         R5 R0 R6
       87 CALL                             R4 1 1
       88 SETTABLE                         R4 R0 R3
       89 GETIMPORT                        R3 K17 [table.remove]
       91 GETTABLEKS                       R5 R1 K2 ["hash"]
       93 GETTABLE                         R4 R0 R5
       94 MOVE                             R5 R2
       95 CALL                             R3 2 0
       96 RETURN                           R0 1
       97 GETIMPORT                        R2 K19 [error]
       99 LOADK                            R4 K20 ["Invalid action: %*"]
      100 GETTABLEKS                       R6 R1 K0 ["action"]
      102 NAMECALL                         R4 R4 K21 ["format"]
      104 CALL                             R4 2 1
      105 MOVE                             R3 R4
      106 CALL                             R2 1 0
      107 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Generations table: "]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["ModelToGenerations table: "]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReducer"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useReducer"]
       10 GETUPVAL                         R4 2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K1 ["useState"]
       17 LOADNIL                          R6
       18 CALL                             R5 1 2
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K1 ["useState"]
       22 LOADN                            R8 0
       23 CALL                             R7 1 2
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K1 ["useState"]
       27 LOADN                            R10 0
       28 CALL                             R9 1 2
       29 GETUPVAL                         R11 3
       30 CALL                             R11 0 1
       31 JUMPIFNOT                        R11 ; [+22]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K2 ["useEffect"]
       35 NEWCLOSURE                       R12 P0
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R13 0 1
       39 MOVE                             R14 R1
       40 SETLIST                          R13 R14 1 [1]
       42 CALL                             R11 2 0
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K2 ["useEffect"]
       46 NEWCLOSURE                       R12 P1
       47 CAPTURE                          VAL R3
       48 NEWTABLE                         R13 0 1
       50 MOVE                             R14 R3
       51 SETLIST                          R13 R14 1 [1]
       53 CALL                             R11 2 0
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K3 ["createElement"]
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R12 R12 K4 ["Provider"]
       60 DUPTABLE                         R13 K6 [{"value"}]
       61 DUPTABLE                         R14 K17 [{"generations", "updateGeneration", "modelToGenerations", "updateModelToGenerations", "selected", "setSelected", "quota", "setQuota", "total", "setTotal"}]
       62 SETTABLEKS                       R1 R14 K7 ["generations"]
       64 SETTABLEKS                       R2 R14 K8 ["updateGeneration"]
       66 SETTABLEKS                       R3 R14 K9 ["modelToGenerations"]
       68 SETTABLEKS                       R4 R14 K10 ["updateModelToGenerations"]
       70 SETTABLEKS                       R5 R14 K11 ["selected"]
       72 SETTABLEKS                       R6 R14 K12 ["setSelected"]
       74 SETTABLEKS                       R7 R14 K13 ["quota"]
       76 SETTABLEKS                       R8 R14 K14 ["setQuota"]
       78 SETTABLEKS                       R9 R14 K15 ["total"]
       80 SETTABLEKS                       R10 R14 K16 ["setTotal"]
       82 SETTABLEKS                       R14 R13 K5 ["value"]
       84 GETTABLEKS                       R14 R0 K18 ["children"]
       86 CALL                             R11 3 -1
       87 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["GenerationsContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K13 ["jobTableReducer"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Flags"]
       47 GETTABLEKS                       R6 R6 K15 ["getFFlagDebugTextureGeneratorLogging"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K16 [PROTO_0]
       51 CAPTURE                          VAL R2
       52 DUPCLOSURE                       R7 K17 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 RETURN                           R7 1
