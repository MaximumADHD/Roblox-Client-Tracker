PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{["IsParameterNode"] = True, ["NodeType"], ["Collapsed"] = True, ["Collapsible"] = False}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["NodeType"]
        8 GETTABLEKS                       R3 R3 K8 ["Parameter"]
       10 SETTABLEKS                       R3 R2 K3 ["NodeType"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

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
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R0
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K3 ["createPropertyHelpers"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K4 ["createElement"]
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R6 R3 K5 ["nodeProps"]
       31 DUPTABLE                         R7 K7 [{"OutputPin"}]
       32 GETTABLEKS                       R8 R3 K8 ["outputPin"]
       34 CALL                             R8 0 1
       35 SETTABLEKS                       R8 R7 K6 ["OutputPin"]
       37 CALL                             R6 1 1
       38 NEWTABLE                         R7 0 0
       40 CALL                             R4 3 -1
       41 RETURN                           R4 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["Dash"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["React"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K14 [PROTO_2]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 RETURN                           R6 1
