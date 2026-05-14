PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["props"]
       14 GETTABLEKS                       R2 R2 K2 ["Cursor"]
       16 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["state"]
        9 GETTABLEKS                       R0 R0 K3 ["Dragging"]
       11 JUMPIF                           R0 ; [+8]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       17 NAMECALL                         R0 R0 K4 ["__popCursor"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnDragBegan"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnDragBegan"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 0
       13 DUPTABLE                         R2 K3 [{"Dragging"}]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K2 ["Dragging"]
       17 NAMECALL                         R0 R0 K4 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnDragMoved"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnDragMoved"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"Dragging"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Dragging"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onMouseLeave"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["startDragging"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["onDragMoved"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["__resetCursor"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R2 K2 [{"Dragging"}]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["Dragging"]
        9 NAMECALL                         R0 R0 K3 ["setState"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K4 ["props"]
       15 GETTABLEKS                       R0 R0 K5 ["OnDragEnded"]
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K4 ["props"]
       21 GETTABLEKS                       R0 R0 K5 ["OnDragEnded"]
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R2 R0 K2 ["stopDragging"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R1 K2 ["Dragging"]
        6 GETTABLEKS                       R4 R2 K3 ["Size"]
        8 JUMPIF                           R4 ; [+7]
        9 GETIMPORT                        R4 K6 [UDim2.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADN                            R7 1
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 GETTABLEKS                       R5 R2 K7 ["AnchorPoint"]
       18 JUMPIF                           R5 ; [+3]
       19 GETIMPORT                        R5 K9 [Vector2.new]
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K10 ["createElement"]
       25 LOADK                            R7 K11 ["ImageButton"]
       26 NEWTABLE                         R8 8 0
       28 SETTABLEKS                       R4 R8 K3 ["Size"]
       30 SETTABLEKS                       R5 R8 K7 ["AnchorPoint"]
       32 LOADN                            R9 1
       33 SETTABLEKS                       R9 R8 K12 ["ImageTransparency"]
       35 LOADN                            R9 1
       36 SETTABLEKS                       R9 R8 K13 ["BackgroundTransparency"]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K14 ["Event"]
       41 GETTABLEKS                       R9 R9 K15 ["MouseEnter"]
       43 GETTABLEKS                       R10 R0 K16 ["onMouseEnter"]
       45 SETTABLE                         R10 R8 R9
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K14 ["Event"]
       49 GETTABLEKS                       R9 R9 K17 ["MouseLeave"]
       51 GETTABLEKS                       R10 R0 K18 ["onMouseLeave"]
       53 SETTABLE                         R10 R8 R9
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K14 ["Event"]
       57 GETTABLEKS                       R9 R9 K19 ["MouseButton1Down"]
       59 GETTABLEKS                       R10 R0 K20 ["startDragging"]
       61 SETTABLE                         R10 R8 R9
       62 DUPTABLE                         R9 K22 [{"Target"}]
       63 MOVE                             R10 R3
       64 JUMPIFNOT                        R10 ; [+14]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K10 ["createElement"]
       68 GETUPVAL                         R11 1
       69 DUPTABLE                         R12 K25 [{"OnDragMoved", "OnDragEnded"}]
       70 GETTABLEKS                       R13 R0 K26 ["onDragMoved"]
       72 SETTABLEKS                       R13 R12 K23 ["OnDragMoved"]
       74 GETTABLEKS                       R13 R0 K27 ["stopDragging"]
       76 SETTABLEKS                       R13 R12 K24 ["OnDragEnded"]
       78 CALL                             R10 2 1
       79 SETTABLEKS                       R10 R9 K21 ["Target"]
       81 CALL                             R6 3 -1
       82 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["DragListener"]
       29 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       31 LOADK                            R8 K14 ["DragListenerArea"]
       32 NAMECALL                         R6 R6 K15 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K16 [PROTO_4]
       36 SETTABLEKS                       R7 R6 K17 ["init"]
       38 DUPCLOSURE                       R7 K18 [PROTO_6]
       39 SETTABLEKS                       R7 R6 K19 ["didMount"]
       41 DUPCLOSURE                       R7 K20 [PROTO_7]
       42 SETTABLEKS                       R7 R6 K21 ["willUnmount"]
       44 DUPCLOSURE                       R7 K22 [PROTO_8]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K23 ["render"]
       49 MOVE                             R7 R4
       50 DUPTABLE                         R8 K25 [{"Mouse"}]
       51 GETTABLEKS                       R9 R3 K24 ["Mouse"]
       53 SETTABLEKS                       R9 R8 K24 ["Mouse"]
       55 CALL                             R7 1 1
       56 MOVE                             R8 R6
       57 CALL                             R7 1 1
       58 MOVE                             R6 R7
       59 RETURN                           R6 1
