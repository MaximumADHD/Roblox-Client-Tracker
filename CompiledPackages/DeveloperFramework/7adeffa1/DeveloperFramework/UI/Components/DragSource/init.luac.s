PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_dragging"]
        3 JUMPIF                           R3 ; [+14]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["props"]
        7 GETTABLEKS                       R3 R4 K2 ["OnClick"]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["props"]
       13 GETTABLEKS                       R3 R4 K2 ["OnClick"]
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R4 K2 [Vector2.new]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 SETTABLEKS                       R4 R3 K3 ["_mouseDownPosition"]
        8 GETUPVAL                         R3 0
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K4 ["_dragging"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_dragging"]
        3 JUMPIF                           R3 ; [+4]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["_mouseDownPosition"]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R3 K4 [Vector2.new]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K1 ["_mouseDownPosition"]
       17 SUB                              R5 R3 R6
       18 GETTABLEKS                       R4 R5 K5 ["Magnitude"]
       20 LOADN                            R5 4
       21 JUMPIFNOTLT                      R5 R4 ; [+21]
       23 GETUPVAL                         R4 0
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K1 ["_mouseDownPosition"]
       27 GETUPVAL                         R4 0
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K0 ["_dragging"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K6 ["props"]
       34 GETTABLEKS                       R4 R5 K7 ["OnDragBegan"]
       36 JUMPIFNOT                        R4 ; [+6]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K6 ["props"]
       40 GETTABLEKS                       R4 R5 K7 ["OnDragBegan"]
       42 CALL                             R4 0 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_mouseDownPosition"]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["_dragging"]
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_dragging"]
        3 JUMPIF                           R0 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["props"]
        7 GETTABLEKS                       R0 R1 K2 ["OnRightClick"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K1 ["props"]
       13 GETTABLEKS                       R0 R1 K2 ["OnRightClick"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_dragging"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_mouseDownPosition"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["click"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K3 ["mouseButton1Down"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["mouseMoved"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K5 ["mouseButton1Up"]
       22 NEWCLOSURE                       R1 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K6 ["rightClick"]
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 LOADK                            R3 K2 ["ImageButton"]
        6 NEWTABLE                         R4 16 0
        8 GETTABLEKS                       R5 R1 K3 ["AutomaticSize"]
       10 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       12 LOADN                            R5 1
       13 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       15 GETTABLEKS                       R5 R1 K5 ["LayoutOrder"]
       17 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       19 GETTABLEKS                       R5 R1 K6 ["Position"]
       21 SETTABLEKS                       R5 R4 K6 ["Position"]
       23 GETTABLEKS                       R5 R1 K7 ["Size"]
       25 SETTABLEKS                       R5 R4 K7 ["Size"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K8 ["Event"]
       30 GETTABLEKS                       R5 R6 K9 ["Activated"]
       32 GETTABLEKS                       R7 R1 K10 ["OnClick"]
       34 JUMPIFNOT                        R7 ; [+3]
       35 GETTABLEKS                       R6 R0 K11 ["click"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R6
       39 SETTABLE                         R6 R4 R5
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K8 ["Event"]
       43 GETTABLEKS                       R5 R6 K12 ["MouseButton1Down"]
       45 GETTABLEKS                       R6 R0 K13 ["mouseButton1Down"]
       47 SETTABLE                         R6 R4 R5
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K8 ["Event"]
       51 GETTABLEKS                       R5 R6 K14 ["MouseButton1Up"]
       53 GETTABLEKS                       R6 R0 K15 ["mouseButton1Up"]
       55 SETTABLE                         R6 R4 R5
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R6 R7 K8 ["Event"]
       59 GETTABLEKS                       R5 R6 K16 ["MouseButton2Click"]
       61 GETTABLEKS                       R7 R1 K17 ["OnRightClick"]
       63 JUMPIFNOT                        R7 ; [+3]
       64 GETTABLEKS                       R6 R0 K18 ["rightClick"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R6
       68 SETTABLE                         R6 R4 R5
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R6 R7 K8 ["Event"]
       72 GETTABLEKS                       R5 R6 K19 ["MouseMoved"]
       74 GETTABLEKS                       R6 R0 K20 ["mouseMoved"]
       76 SETTABLE                         R6 R4 R5
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R6 R7 K21 ["Children"]
       80 GETTABLE                         R5 R1 R6
       81 CALL                             R2 3 -1
       82 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R2 R3 K9 ["Typecheck"]
       23 GETTABLEKS                       R3 R1 K10 ["PureComponent"]
       25 LOADK                            R5 K11 ["DragSource"]
       26 NAMECALL                         R3 R3 K12 ["extend"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R2 K13 ["wrap"]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R6 K1 [script]
       34 CALL                             R4 2 0
       35 DUPCLOSURE                       R4 K14 [PROTO_5]
       36 SETTABLEKS                       R4 R3 K15 ["init"]
       38 DUPCLOSURE                       R4 K16 [PROTO_6]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R3 K17 ["render"]
       42 RETURN                           R3 1
