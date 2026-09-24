PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["IsExpressionNode"] = True, ["Collapsible"] = True, ["ResizableHorizontal"] = True, ["ResizableVertical"] = True}]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["GraphPayload"]
        3 GETTABLEKS                       R2 R2 K1 ["id"]
        5 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        7 GETTABLEKS                       R3 R3 K2 ["name"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R0
       19 SETLIST                          R4 R5 1 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K4 ["createPropertyHelpers"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R0 K5 ["Collapsed"]
       29 JUMPIFNOT                        R5 ; [+3]
       30 NEWTABLE                         R4 0 0
       32 JUMP                             ; [+22]
       33 DUPTABLE                         R4 K7 [{"ExpressionInput"}]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K8 ["createElement"]
       37 GETUPVAL                         R6 4
       38 DUPTABLE                         R7 K12 [{"Value", "LayoutOrder", "onExpressionChanged"}]
       39 GETTABLEKS                       R8 R1 K13 ["value"]
       41 SETTABLEKS                       R8 R7 K9 ["Value"]
       43 GETTABLEKS                       R8 R3 K14 ["nextOrder"]
       45 CALL                             R8 0 1
       46 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       48 GETTABLEKS                       R8 R1 K11 ["onExpressionChanged"]
       50 SETTABLEKS                       R8 R7 K11 ["onExpressionChanged"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K6 ["ExpressionInput"]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K8 ["createElement"]
       58 GETUPVAL                         R6 5
       59 GETTABLEKS                       R7 R3 K15 ["nodeProps"]
       61 DUPTABLE                         R8 K17 [{"OutputPin"}]
       62 GETTABLEKS                       R9 R3 K18 ["outputPin"]
       64 CALL                             R9 0 1
       65 SETTABLEKS                       R9 R8 K16 ["OutputPin"]
       67 CALL                             R7 1 1
       68 MOVE                             R8 R4
       69 CALL                             R5 3 -1
       70 RETURN                           R5 -1

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
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["CompositorNodeProperty"]
       34 GETTABLEKS                       R5 R5 K13 ["PropertyComponent"]
       36 GETTABLEKS                       R5 R5 K14 ["ExpressionInput"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Hooks"]
       50 GETTABLEKS                       R7 R7 K17 ["useExpressionBinding"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K18 [PROTO_1]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 RETURN                           R7 1
