PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["Button "]
        2 MOVE                             R5 R1
        3 CONCAT                           R3 R4 R5
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["createElement"]
        7 GETUPVAL                         R5 2
        8 DUPTABLE                         R6 K9 [{"AutomaticSize", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Text", "TooltipText"}]
        9 GETIMPORT                        R7 K12 [Enum.AutomaticSize.X]
       11 SETTABLEKS                       R7 R6 K2 ["AutomaticSize"]
       13 SETTABLEKS                       R1 R6 K3 ["LayoutOrder"]
       15 GETTABLEKS                       R7 R0 K13 ["Icon"]
       17 SETTABLEKS                       R7 R6 K4 ["LeftIcon"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R7 R6 K5 ["OnClick"]
       24 GETIMPORT                        R7 K16 [UDim2.fromScale]
       26 LOADN                            R8 0
       27 LOADN                            R9 1
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K6 ["Size"]
       31 GETTABLEKS                       R7 R0 K17 ["Label"]
       33 SETTABLEKS                       R7 R6 K7 ["Text"]
       35 GETTABLEKS                       R7 R0 K18 ["Tooltip"]
       37 SETTABLEKS                       R7 R6 K8 ["TooltipText"]
       39 CALL                             R4 2 1
       40 SETTABLE                         R4 R2 R3
       41 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K1 ["Items"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["createElement"]
       16 GETUPVAL                         R4 3
       17 DUPTABLE                         R5 K5 [{"HorizontalAlignment", "Layout"}]
       18 GETIMPORT                        R6 K8 [Enum.HorizontalAlignment.Right]
       20 SETTABLEKS                       R6 R5 K3 ["HorizontalAlignment"]
       22 GETIMPORT                        R6 K11 [Enum.FillDirection.Horizontal]
       24 SETTABLEKS                       R6 R5 K4 ["Layout"]
       26 MOVE                             R6 R2
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETTABLEKS                       R2 R2 K8 ["Components"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R2 K9 ["IconButton"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R2 K10 ["Pane"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K11 ["Dash"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["forEach"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K4 ["Parent"]
       45 GETTABLEKS                       R8 R8 K4 ["Parent"]
       47 GETTABLEKS                       R8 R8 K13 ["Types"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K14 [PROTO_2]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 RETURN                           R8 1
