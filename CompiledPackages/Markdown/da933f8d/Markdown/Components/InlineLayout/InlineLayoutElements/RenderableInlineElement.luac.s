PROTO_0:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R1 R3 K2 ["props"]
       10 MOVE                             R4 R2
       11 JUMPIF                           R4 ; [+3]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["identity"]
       15 SETTABLEKS                       R4 R3 K4 ["mapProps"]
       17 SETTABLEKS                       R0 R3 K5 ["Element"]
       19 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["Size"]
        4 GETTABLEKS                       R2 R3 K2 ["Width"]
        6 GETTABLEKS                       R1 R2 K3 ["Offset"]
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["Element"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K2 ["props"]
        8 CALL                             R3 1 -1
        9 CALL                             R1 -1 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETTABLEKS                       R4 R0 K1 ["Element"]
        5 GETTABLEKS                       R5 R0 K2 ["mapProps"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K3 ["assign"]
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
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Dash"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R4 K1 [script]
       19 LOADK                            R6 K8 ["Components"]
       20 NAMECALL                         R4 R4 K3 ["FindFirstAncestor"]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R3 R4 K9 ["Parent"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R3 K10 ["Utils"]
       29 GETTABLEKS                       R5 R6 K11 ["InlineElementType"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K12 ["join"]
       34 NEWTABLE                         R6 8 0
       36 SETTABLEKS                       R6 R6 K13 ["__index"]
       38 SETTABLEKS                       R4 R6 K14 ["__type"]
       40 DUPCLOSURE                       R7 K15 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R7 R6 K16 ["new"]
       45 DUPCLOSURE                       R7 K17 [PROTO_1]
       46 SETTABLEKS                       R7 R6 K18 ["getWidth"]
       48 DUPCLOSURE                       R7 K19 [PROTO_2]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R7 R6 K20 ["split"]
       53 DUPCLOSURE                       R7 K21 [PROTO_3]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R7 R6 K22 ["render"]
       58 RETURN                           R6 1
