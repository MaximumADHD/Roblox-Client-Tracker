PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["setExpression"]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       10 GETTABLEKS                       R3 R1 K3 ["observeExpressions"]
       12 CALL                             R2 1 1
       13 GETTABLE                         R3 R2 R0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R6 0 3
       23 MOVE                             R7 R0
       24 GETTABLEKS                       R8 R1 K5 ["setExpression"]
       26 MOVE                             R9 R3
       27 SETLIST                          R6 R7 3 [1]
       29 CALL                             R4 2 1
       30 DUPTABLE                         R5 K8 [{"value", "onExpressionChanged"}]
       31 SETTABLEKS                       R3 R5 K6 ["value"]
       33 SETTABLEKS                       R4 R5 K7 ["onExpressionChanged"]
       35 RETURN                           R5 1

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
