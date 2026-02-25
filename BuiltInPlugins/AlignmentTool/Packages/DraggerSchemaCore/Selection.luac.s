PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["SelectionChangedThisFrame"]
       11 SETTABLEKS                       R1 R0 K3 ["SelectionChanged"]
       13 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+13]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R5 R2 K0 ["Removed"]
        4 NAMECALL                         R3 R3 K1 ["Remove"]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R5 R2 K2 ["Added"]
       10 NAMECALL                         R3 R3 K3 ["Add"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R3 K4 ["Set"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K2 [ipairs]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 3
       10 FORGPREP_INEXT                   R3
       11 GETUPVAL                         R8 1
       12 MOVE                             R9 R7
       13 CALL                             R8 1 1
       14 JUMPIF                           R8 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       17 MOVE                             R9 R2
       18 MOVE                             R10 R7
       19 GETIMPORT                        R8 K5 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 [inext] ; [-12]
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ActiveInstance"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETTABLEKS                       R3 R1 K7 ["Packages"]
       17 GETTABLEKS                       R2 R3 K8 ["DraggerFramework"]
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Utility"]
       23 GETTABLEKS                       R4 R5 K12 ["isProtectedInstance"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 8 0
       28 SETTABLEKS                       R4 R4 K13 ["__index"]
       30 DUPCLOSURE                       R5 K14 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R5 R4 K15 ["new"]
       35 DUPCLOSURE                       R5 K16 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R5 R4 K17 ["Set"]
       39 DUPCLOSURE                       R5 K18 [PROTO_2]
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K19 ["Get"]
       44 DUPCLOSURE                       R5 K20 [PROTO_3]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R5 R4 K21 ["GetActiveInstance"]
       48 RETURN                           R4 1
