PROTO_0:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 4 0
        2 JUMPIFNOT                        R1 ; [+2]
        3 MOVE                             R3 R1
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["_isEqual"]
        8 SETTABLEKS                       R0 R2 K1 ["_value"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["new"]
       13 CALL                             R3 0 1
       14 SETTABLEKS                       R3 R2 K3 ["_changeSignal"]
       16 GETUPVAL                         R5 2
       17 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       19 MOVE                             R4 R2
       20 GETIMPORT                        R3 K5 [setmetatable]
       22 CALL                             R3 2 1
       23 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_value"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_isEqual"]
        2 GETTABLEKS                       R3 R0 K1 ["_value"]
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+8]
        7 SETTABLEKS                       R1 R0 K1 ["_value"]
        9 GETTABLEKS                       R2 R0 K2 ["_changeSignal"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K3 ["Fire"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_changeSignal"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_changeSignal"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["Connect"]
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKB                    R2 TRUE ; [+5]
        8 MOVE                             R4 R1
        9 GETTABLEKS                       R5 R0 K2 ["_value"]
       11 CALL                             R4 1 0
       12 RETURN                           R3 1

PROTO_6:
        0 LOADK                            R2 K0 ["Observable("]
        1 GETTABLEKS                       R6 R0 K1 ["_value"]
        3 FASTCALL1                        TOSTRING R6 ; [+2]
        4 GETIMPORT                        R5 K3 [tostring]
        6 CALL                             R5 1 1
        7 MOVE                             R3 R5
        8 LOADK                            R4 K4 [")"]
        9 CONCAT                           R1 R2 R4
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 SETTABLEKS                       R2 R2 K8 ["__index"]
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 DUPCLOSURE                       R4 K10 [PROTO_1]
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R2 K11 ["new"]
       25 DUPCLOSURE                       R4 K12 [PROTO_2]
       26 SETTABLEKS                       R4 R2 K13 ["get"]
       28 DUPCLOSURE                       R4 K14 [PROTO_3]
       29 SETTABLEKS                       R4 R2 K15 ["set"]
       31 DUPCLOSURE                       R4 K16 [PROTO_4]
       32 SETTABLEKS                       R4 R2 K17 ["signal"]
       34 DUPCLOSURE                       R4 K18 [PROTO_5]
       35 SETTABLEKS                       R4 R2 K19 ["connect"]
       37 DUPCLOSURE                       R4 K20 [PROTO_6]
       38 SETTABLEKS                       R4 R2 K21 ["__tostring"]
       40 RETURN                           R2 1
