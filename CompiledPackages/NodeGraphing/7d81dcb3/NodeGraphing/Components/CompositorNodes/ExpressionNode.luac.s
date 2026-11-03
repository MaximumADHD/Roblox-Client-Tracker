PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["https://create.roblox.com/docs/animation/graph-editor-expression"]
        2 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{["IsExpressionNode"] = True, ["Collapsible"] = True, ["ResizableHorizontal"] = True, ["ResizableVertical"] = True, ["OnHelpActivated"]}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K6 ["OnHelpActivated"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["GraphPayload"]
        3 GETTABLEKS                       R2 R2 K1 ["id"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R0
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K3 ["createPropertyHelpers"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R5 R0 K4 ["Collapsed"]
       26 JUMPIFNOT                        R5 ; [+3]
       27 NEWTABLE                         R4 0 0
       29 JUMP                             ; [+22]
       30 DUPTABLE                         R4 K6 [{"ExpressionInput"}]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K7 ["createElement"]
       34 GETUPVAL                         R6 5
       35 DUPTABLE                         R7 K13 [{["Value"], ["Placeholder"] = "math.clamp(Speed, 0, 1)\nSpeed * 0.5\nif Speed > 0 then 1 else 0", ["LayoutOrder"], ["onExpressionChanged"]}]
       36 GETTABLEKS                       R8 R1 K14 ["value"]
       38 SETTABLEKS                       R8 R7 K8 ["Value"]
       40 GETTABLEKS                       R8 R3 K15 ["nextOrder"]
       42 CALL                             R8 0 1
       43 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       45 GETTABLEKS                       R8 R1 K12 ["onExpressionChanged"]
       47 SETTABLEKS                       R8 R7 K12 ["onExpressionChanged"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K5 ["ExpressionInput"]
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K7 ["createElement"]
       55 GETUPVAL                         R6 6
       56 GETTABLEKS                       R7 R3 K16 ["nodeProps"]
       58 DUPTABLE                         R8 K18 [{"OutputPin"}]
       59 GETTABLEKS                       R9 R3 K19 ["outputPin"]
       61 CALL                             R9 0 1
       62 SETTABLEKS                       R9 R8 K17 ["OutputPin"]
       64 CALL                             R7 1 1
       65 MOVE                             R8 R4
       66 CALL                             R5 3 -1
       67 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["NodeGraphing"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["CompositorNode"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["CompositorNodeUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Parent"]
       31 GETTABLEKS                       R5 R5 K15 ["Dash"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Components"]
       38 GETTABLEKS                       R6 R6 K16 ["CompositorNodeProperty"]
       40 GETTABLEKS                       R6 R6 K17 ["PropertyComponent"]
       42 GETTABLEKS                       R6 R6 K18 ["ExpressionInput"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K14 ["Parent"]
       49 GETTABLEKS                       R7 R7 K19 ["React"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K20 ["Hooks"]
       56 GETTABLEKS                       R8 R8 K21 ["useExpressionBinding"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K22 [PROTO_0]
       60 CAPTURE                          VAL R0
       61 DUPCLOSURE                       R9 K23 [PROTO_2]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 RETURN                           R9 1
