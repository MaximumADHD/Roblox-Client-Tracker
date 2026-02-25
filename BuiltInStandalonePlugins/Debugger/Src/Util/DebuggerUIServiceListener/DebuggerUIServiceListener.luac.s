PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["store"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 -1
        4 NAMECALL                         R1 R1 K1 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnExpressionsCleared"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+6]
        2 GETIMPORT                        R2 K1 [game]
        4 LOADK                            R4 K2 ["DebuggerUIService"]
        5 NAMECALL                         R2 R2 K3 ["GetService"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R2 K4 ["ExpressionsCleared"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 NAMECALL                         R3 R3 K5 ["Connect"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R0 K6 ["_expressionsClearedConnection"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_expressionsClearedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_expressionsClearedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_expressionsClearedConnection"]
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"store"}]
        1 SETTABLEKS                       R0 R2 K0 ["store"]
        3 MOVE                             R3 R1
        4 JUMPIF                           R3 ; [+6]
        5 GETIMPORT                        R3 K3 [game]
        7 LOADK                            R5 K4 ["DebuggerUIService"]
        8 NAMECALL                         R3 R3 K5 ["GetService"]
       10 CALL                             R3 2 1
       11 GETTABLEKS                       R4 R3 K6 ["ExpressionsCleared"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 NAMECALL                         R4 R4 K7 ["Connect"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R2 K8 ["_expressionsClearedConnection"]
       20 GETUPVAL                         R5 0
       21 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K10 [setmetatable]
       26 CALL                             R3 2 0
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Actions"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Watch"]
       15 GETTABLEKS                       R3 R4 K7 ["ClearAllExpressions"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 4 0
       20 SETTABLEKS                       R3 R3 K8 ["__index"]
       22 DUPCLOSURE                       R4 K9 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R3 K10 ["OnExpressionsCleared"]
       26 DUPCLOSURE                       R4 K11 [PROTO_2]
       27 DUPCLOSURE                       R5 K12 [PROTO_3]
       28 SETTABLEKS                       R5 R3 K13 ["destroy"]
       30 DUPCLOSURE                       R5 K14 [PROTO_4]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R3 K15 ["new"]
       34 RETURN                           R3 1
