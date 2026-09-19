PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["setExpression"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 3
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       10 GETTABLEKS                       R4 R2 K3 ["observeNonPromotedExpressions"]
       12 CALL                             R3 1 1
       13 GETTABLE                         R4 R3 R0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R7 0 4
       24 MOVE                             R8 R0
       25 MOVE                             R9 R1
       26 GETTABLEKS                       R10 R2 K5 ["setExpression"]
       28 MOVE                             R11 R4
       29 SETLIST                          R7 R8 4 [1]
       31 CALL                             R5 2 1
       32 DUPTABLE                         R6 K8 [{"value", "onExpressionChanged"}]
       33 SETTABLEKS                       R4 R6 K6 ["value"]
       35 SETTABLEKS                       R5 R6 K7 ["onExpressionChanged"]
       37 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ParameterContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["SignalsReact"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
