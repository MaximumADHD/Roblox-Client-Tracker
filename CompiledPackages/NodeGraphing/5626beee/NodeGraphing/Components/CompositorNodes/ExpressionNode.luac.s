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
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R0
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K3 ["createPropertyHelpers"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K4 ["Collapsed"]
       25 JUMPIFNOT                        R5 ; [+3]
       26 NEWTABLE                         R4 0 0
       28 JUMP                             ; [+22]
       29 DUPTABLE                         R4 K6 [{"ExpressionInput"}]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K7 ["createElement"]
       33 GETUPVAL                         R6 4
       34 DUPTABLE                         R7 K11 [{"Value", "LayoutOrder", "onExpressionChanged"}]
       35 GETTABLEKS                       R8 R1 K12 ["value"]
       37 SETTABLEKS                       R8 R7 K8 ["Value"]
       39 GETTABLEKS                       R8 R3 K13 ["nextOrder"]
       41 CALL                             R8 0 1
       42 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       44 GETTABLEKS                       R8 R1 K10 ["onExpressionChanged"]
       46 SETTABLEKS                       R8 R7 K10 ["onExpressionChanged"]
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K5 ["ExpressionInput"]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K7 ["createElement"]
       54 GETUPVAL                         R6 5
       55 GETTABLEKS                       R7 R3 K14 ["nodeProps"]
       57 DUPTABLE                         R8 K16 [{"OutputPin"}]
       58 GETTABLEKS                       R9 R3 K17 ["outputPin"]
       60 CALL                             R9 0 1
       61 SETTABLEKS                       R9 R8 K15 ["OutputPin"]
       63 CALL                             R7 1 1
       64 MOVE                             R8 R4
       65 CALL                             R5 3 -1
       66 RETURN                           R5 -1

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
