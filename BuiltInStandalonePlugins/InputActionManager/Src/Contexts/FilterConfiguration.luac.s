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
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["useState"]
       15 LOADK                            R6 K1 [""]
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R9 0 0
       24 CALL                             R7 2 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R10 0 0
       32 CALL                             R8 2 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       36 NEWCLOSURE                       R10 P2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R6
       43 NEWTABLE                         R11 0 5
       45 MOVE                             R12 R3
       46 MOVE                             R13 R1
       47 MOVE                             R14 R5
       48 MOVE                             R15 R7
       49 MOVE                             R16 R8
       50 SETLIST                          R11 R12 5 [1]
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K4 ["createElement"]
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K5 ["Provider"]
       59 DUPTABLE                         R12 K7 [{"value"}]
       60 SETTABLEKS                       R9 R12 K6 ["value"]
       62 GETTABLEKS                       R13 R0 K8 ["children"]
       64 CALL                             R10 3 -1
       65 RETURN                           R10 -1

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
       28 DUPTABLE                         R4 K17 [{"contexts", "schemas", "searchString", "setContextVisible", "setSchemaVisible", "setSearchString"}]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K11 ["contexts"]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K12 ["schemas"]
       37 LOADK                            R5 K18 [""]
       38 SETTABLEKS                       R5 R4 K13 ["searchString"]
       40 GETTABLEKS                       R5 R2 K19 ["createUnimplemented"]
       42 LOADK                            R6 K14 ["setContextVisible"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K14 ["setContextVisible"]
       46 GETTABLEKS                       R5 R2 K19 ["createUnimplemented"]
       48 LOADK                            R6 K15 ["setSchemaVisible"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K15 ["setSchemaVisible"]
       52 GETTABLEKS                       R5 R2 K19 ["createUnimplemented"]
       54 LOADK                            R6 K16 ["setSearchString"]
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R4 K16 ["setSearchString"]
       58 GETTABLEKS                       R5 R1 K20 ["createContext"]
       60 MOVE                             R6 R4
       61 CALL                             R5 1 1
       62 DUPCLOSURE                       R6 K21 [PROTO_5]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R5
       65 DUPTABLE                         R7 K24 [{"Context", "Provider"}]
       66 SETTABLEKS                       R5 R7 K22 ["Context"]
       68 SETTABLEKS                       R6 R7 K23 ["Provider"]
       70 RETURN                           R7 1
