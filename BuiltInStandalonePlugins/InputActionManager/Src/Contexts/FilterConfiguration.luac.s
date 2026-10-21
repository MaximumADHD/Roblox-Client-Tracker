PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETUPVAL                         R2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K8 [{"builtin", "contexts", "schemas", "searchString", "setBuiltinVisible", "setContextVisible", "setSchemaVisible", "setSearchString"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["builtin"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["contexts"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["schemas"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["searchString"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setBuiltinVisible"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setContextVisible"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setSchemaVisible"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setSearchString"]
       25 RETURN                           R0 1

PROTO_7:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+18]
        7 GETUPVAL                         R5 1
        8 LOADK                            R6 K0 ["InputActionManager_FilterSchemas"]
        9 NEWTABLE                         R7 1 0
       11 LOADB                            R8 0
       12 SETTABLEKS                       R8 R7 K1 ["VR"]
       14 CALL                             R5 2 2
       15 MOVE                             R1 R5
       16 MOVE                             R2 R6
       17 GETUPVAL                         R5 1
       18 LOADK                            R6 K2 ["InputActionManager_FilterBuiltin"]
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 2
       22 MOVE                             R3 R5
       23 MOVE                             R4 R6
       24 JUMP                             ; [+11]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K3 ["useState"]
       28 NEWTABLE                         R6 1 0
       30 LOADB                            R7 0
       31 SETTABLEKS                       R7 R6 K1 ["VR"]
       33 CALL                             R5 1 2
       34 MOVE                             R1 R5
       35 MOVE                             R2 R6
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K3 ["useState"]
       39 NEWTABLE                         R6 0 0
       41 CALL                             R5 1 2
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K3 ["useState"]
       45 LOADK                            R8 K4 [""]
       46 CALL                             R7 1 2
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          REF R2
       52 NEWTABLE                         R11 0 0
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       58 NEWCLOSURE                       R11 P1
       59 CAPTURE                          VAL R6
       60 NEWTABLE                         R12 0 0
       62 CALL                             R10 2 1
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       66 NEWCLOSURE                       R12 P2
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          REF R4
       69 NEWTABLE                         R13 0 0
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 2
       73 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          REF R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          REF R1
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 NEWTABLE                         R14 0 7
       86 MOVE                             R15 R3
       87 MOVE                             R16 R5
       88 MOVE                             R17 R1
       89 MOVE                             R18 R7
       90 MOVE                             R19 R11
       91 MOVE                             R20 R9
       92 MOVE                             R21 R10
       93 SETLIST                          R14 R15 7 [1]
       95 CALL                             R12 2 1
       96 GETUPVAL                         R13 2
       97 GETTABLEKS                       R13 R13 K7 ["createElement"]
       99 GETUPVAL                         R14 3
      100 GETTABLEKS                       R14 R14 K8 ["Provider"]
      102 DUPTABLE                         R15 K10 [{"value"}]
      103 SETTABLEKS                       R12 R15 K9 ["value"]
      105 GETTABLEKS                       R16 R0 K11 ["children"]
      107 CALL                             R13 3 -1
      108 CLOSEUPVALS                      R1
      109 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["useSavedState"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Flags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagIAMSavedFilters"]
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K24 [{["builtin"], ["contexts"], ["schemas"], ["searchString"] = "", ["setBuiltinVisible"], ["setContextVisible"], ["setSchemaVisible"], ["setSearchString"]}]
       47 NEWTABLE                         R7 0 0
       49 SETTABLEKS                       R7 R6 K15 ["builtin"]
       51 NEWTABLE                         R7 0 0
       53 SETTABLEKS                       R7 R6 K16 ["contexts"]
       55 NEWTABLE                         R7 0 0
       57 SETTABLEKS                       R7 R6 K17 ["schemas"]
       59 GETTABLEKS                       R7 R2 K25 ["createUnimplemented"]
       61 LOADK                            R8 K20 ["setBuiltinVisible"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K20 ["setBuiltinVisible"]
       65 GETTABLEKS                       R7 R2 K25 ["createUnimplemented"]
       67 LOADK                            R8 K21 ["setContextVisible"]
       68 CALL                             R7 1 1
       69 SETTABLEKS                       R7 R6 K21 ["setContextVisible"]
       71 GETTABLEKS                       R7 R2 K25 ["createUnimplemented"]
       73 LOADK                            R8 K22 ["setSchemaVisible"]
       74 CALL                             R7 1 1
       75 SETTABLEKS                       R7 R6 K22 ["setSchemaVisible"]
       77 GETTABLEKS                       R7 R2 K25 ["createUnimplemented"]
       79 LOADK                            R8 K23 ["setSearchString"]
       80 CALL                             R7 1 1
       81 SETTABLEKS                       R7 R6 K23 ["setSearchString"]
       83 GETTABLEKS                       R7 R1 K26 ["createContext"]
       85 MOVE                             R8 R6
       86 CALL                             R7 1 1
       87 DUPCLOSURE                       R8 K27 [PROTO_7]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R7
       92 DUPTABLE                         R9 K30 [{"Context", "Provider"}]
       93 SETTABLEKS                       R7 R9 K28 ["Context"]
       95 SETTABLEKS                       R8 R9 K29 ["Provider"]
       97 RETURN                           R9 1
