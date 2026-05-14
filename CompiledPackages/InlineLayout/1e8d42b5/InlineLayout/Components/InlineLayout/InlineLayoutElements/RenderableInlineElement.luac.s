PROTO_0:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R1 R3 K2 ["props"]
       10 MOVE                             R4 R2
       11 JUMPIF                           R4 ; [+3]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["identity"]
       15 SETTABLEKS                       R4 R3 K4 ["mapProps"]
       17 SETTABLEKS                       R0 R3 K5 ["Element"]
       19 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Size"]
        4 GETTABLEKS                       R1 R1 K2 ["Width"]
        6 GETTABLEKS                       R1 R1 K3 ["Offset"]
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["Element"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K2 ["props"]
        8 CALL                             R3 1 -1
        9 CALL                             R1 -1 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETTABLEKS                       R4 R0 K1 ["Element"]
        5 GETTABLEKS                       R5 R0 K2 ["mapProps"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K3 ["assign"]
       10 GETTABLEKS                       R7 R0 K4 ["props"]
       12 DUPTABLE                         R8 K8 [{"id", "key", "LayoutOrder"}]
       13 SETTABLEKS                       R1 R8 K5 ["id"]
       15 FASTCALL1                        TOSTRING R2 ; [+3]
       16 MOVE                             R10 R2
       17 GETIMPORT                        R9 K10 [tostring]
       19 CALL                             R9 1 1
       20 SETTABLEKS                       R9 R8 K6 ["key"]
       22 SETTABLEKS                       R2 R8 K7 ["LayoutOrder"]
       24 CALL                             R6 2 -1
       25 CALL                             R5 -1 -1
       26 CALL                             R3 -1 -1
       27 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Utils"]
       25 GETTABLEKS                       R5 R5 K10 ["InlineElementType"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K11 ["join"]
       30 NEWTABLE                         R6 8 0
       32 SETTABLEKS                       R6 R6 K12 ["__index"]
       34 SETTABLEKS                       R4 R6 K13 ["__type"]
       36 DUPCLOSURE                       R7 K14 [PROTO_0]
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R7 R6 K15 ["new"]
       41 DUPCLOSURE                       R7 K16 [PROTO_1]
       42 SETTABLEKS                       R7 R6 K17 ["getWidth"]
       44 DUPCLOSURE                       R7 K18 [PROTO_2]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K19 ["split"]
       49 DUPCLOSURE                       R7 K20 [PROTO_3]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R7 R6 K21 ["render"]
       54 RETURN                           R6 1
