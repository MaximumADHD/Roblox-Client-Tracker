PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"IsParameterNode", "Collapsed", "Collapsible"}]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["IsParameterNode"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["Collapsed"]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K3 ["Collapsible"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R0
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K3 ["createPropertyHelpers"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K4 ["createElement"]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R6 R3 K5 ["nodeProps"]
       30 DUPTABLE                         R7 K7 [{"OutputPin"}]
       31 GETTABLEKS                       R8 R3 K8 ["outputPin"]
       33 CALL                             R8 0 1
       34 SETTABLEKS                       R8 R7 K6 ["OutputPin"]
       36 CALL                             R6 1 1
       37 NEWTABLE                         R7 0 0
       39 CALL                             R4 3 -1
       40 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorNode"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["CompositorNodeUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K13 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
