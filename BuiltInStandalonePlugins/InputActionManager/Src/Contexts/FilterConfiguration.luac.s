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
        0 DUPTABLE                         R0 K6 [{"contexts", "schemas", "searchString", "setContextVisible", "setSchemaVisible", "setSearchString"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["contexts"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["schemas"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["searchString"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setContextVisible"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setSchemaVisible"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setSearchString"]
       19 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 1 0
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["VR"]
        8 CALL                             R1 1 2
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["useState"]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["useState"]
       18 LOADK                            R6 K2 [""]
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R9 0 0
       27 CALL                             R7 2 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       31 NEWCLOSURE                       R9 P1
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R10 0 0
       35 CALL                             R8 2 1
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       39 NEWCLOSURE                       R10 P2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R11 0 5
       48 MOVE                             R12 R3
       49 MOVE                             R13 R1
       50 MOVE                             R14 R5
       51 MOVE                             R15 R7
       52 MOVE                             R16 R8
       53 SETLIST                          R11 R12 5 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K5 ["createElement"]
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R11 R11 K6 ["Provider"]
       62 DUPTABLE                         R12 K8 [{"value"}]
       63 SETTABLEKS                       R9 R12 K7 ["value"]
       65 GETTABLEKS                       R13 R0 K9 ["children"]
       67 CALL                             R10 3 -1
       68 RETURN                           R10 -1

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
       28 DUPTABLE                         R4 K18 [{["contexts"], ["schemas"], ["searchString"] = "", ["setContextVisible"], ["setSchemaVisible"], ["setSearchString"]}]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K11 ["contexts"]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K12 ["schemas"]
       37 GETTABLEKS                       R5 R2 K19 ["createUnimplemented"]
       39 LOADK                            R6 K15 ["setContextVisible"]
       40 CALL                             R5 1 1
       41 SETTABLEKS                       R5 R4 K15 ["setContextVisible"]
       43 GETTABLEKS                       R5 R2 K19 ["createUnimplemented"]
       45 LOADK                            R6 K16 ["setSchemaVisible"]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K16 ["setSchemaVisible"]
       49 GETTABLEKS                       R5 R2 K19 ["createUnimplemented"]
       51 LOADK                            R6 K17 ["setSearchString"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K17 ["setSearchString"]
       55 GETTABLEKS                       R5 R1 K20 ["createContext"]
       57 MOVE                             R6 R4
       58 CALL                             R5 1 1
       59 DUPCLOSURE                       R6 K21 [PROTO_5]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 DUPTABLE                         R7 K24 [{"Context", "Provider"}]
       63 SETTABLEKS                       R5 R7 K22 ["Context"]
       65 SETTABLEKS                       R6 R7 K23 ["Provider"]
       67 RETURN                           R7 1
