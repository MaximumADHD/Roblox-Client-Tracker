PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["SelectionChangedThisFrame"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ActiveInstance"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["DraggerFramework"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K10 ["Utility"]
       20 GETTABLEKS                       R3 R3 K11 ["isProtectedInstance"]
       22 NEWTABLE                         R4 8 0
       24 SETTABLEKS                       R4 R4 K12 ["__index"]
       26 DUPCLOSURE                       R5 K13 [PROTO_0]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R5 R4 K14 ["new"]
       31 DUPCLOSURE                       R5 K15 [PROTO_1]
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R5 R4 K16 ["Set"]
       35 DUPCLOSURE                       R5 K17 [PROTO_2]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K18 ["Get"]
       40 DUPCLOSURE                       R5 K19 [PROTO_3]
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R5 R4 K20 ["GetActiveInstance"]
       44 RETURN                           R4 1
