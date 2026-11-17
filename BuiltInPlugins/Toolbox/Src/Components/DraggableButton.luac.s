PROTO_0:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["clicked"]
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K3 [Vector2.new]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K4 ["clickPosition"]
       12 GETUPVAL                         R3 0
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K5 ["willFireClickOnMouseUp"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K6 ["onMouseDown"]
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["onMouseDown"]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 CALL                             R3 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["clicked"]
        3 JUMPIFNOT                        R3 ; [+33]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["willFireClickOnMouseUp"]
        7 JUMPIFNOT                        R3 ; [+29]
        8 GETIMPORT                        R4 K4 [Vector2.new]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["clickPosition"]
       16 SUB                              R3 R4 R5
       17 GETTABLEKS                       R3 R3 K6 ["magnitude"]
       19 LOADN                            R4 4
       20 JUMPIFNOTLT                      R4 R3 ; [+16]
       22 GETUPVAL                         R4 0
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R4 K1 ["willFireClickOnMouseUp"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K7 ["onDragStart"]
       29 JUMPIFNOT                        R4 ; [+7]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K7 ["onDragStart"]
       33 MOVE                             R5 R0
       34 MOVE                             R6 R1
       35 MOVE                             R7 R2
       36 CALL                             R4 3 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K8 ["onMouseMoved"]
       40 JUMPIFNOT                        R3 ; [+7]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K8 ["onMouseMoved"]
       44 MOVE                             R4 R0
       45 MOVE                             R5 R1
       46 MOVE                             R6 R2
       47 CALL                             R3 3 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["clicked"]
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K3 [Vector2.new]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K4 ["clickPosition"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["willFireClickOnMouseUp"]
       15 JUMPIFNOT                        R3 ; [+15]
       16 GETUPVAL                         R3 0
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K5 ["willFireClickOnMouseUp"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["onClick"]
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K6 ["onClick"]
       27 MOVE                             R4 R0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 CALL                             R3 3 0
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K7 ["onMouseUp"]
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K7 ["onMouseUp"]
       38 MOVE                             R4 R0
       39 MOVE                             R5 R1
       40 MOVE                             R6 R2
       41 CALL                             R3 3 0
       42 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["clicked"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R0 K4 ["clickPosition"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R0 K5 ["willFireClickOnMouseUp"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["shouldDebugWarnings"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+33]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K7 ["Event"]
       21 GETTABLEKS                       R3 R3 K8 ["MouseButton1Down"]
       23 GETTABLE                         R2 R1 R3
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETIMPORT                        R2 K10 [warn]
       27 LOADK                            R3 K11 ["MouseButton1Down should not be defined on DraggableButton. Use onMouseDown instead."]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K7 ["Event"]
       32 GETTABLEKS                       R3 R3 K12 ["MouseMoved"]
       34 GETTABLE                         R2 R1 R3
       35 JUMPIFNOT                        R2 ; [+4]
       36 GETIMPORT                        R2 K10 [warn]
       38 LOADK                            R3 K13 ["MouseButton1Down should not be defined on DraggableButton. Use onMouseMoved instead."]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K7 ["Event"]
       43 GETTABLEKS                       R3 R3 K14 ["MouseButton1Up"]
       45 GETTABLE                         R2 R1 R3
       46 JUMPIFNOT                        R2 ; [+4]
       47 GETIMPORT                        R2 K10 [warn]
       49 LOADK                            R3 K15 ["MouseButton1Up should not be defined on DraggableButton. Use onMouseUp instead."]
       50 CALL                             R2 1 0
       51 NEWCLOSURE                       R2 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R2 R0 K16 ["onMouseButton1Down"]
       56 NEWCLOSURE                       R2 P1
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R2 R0 K17 ["onMouseMoved"]
       61 NEWCLOSURE                       R2 P2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R2 R0 K18 ["onMouseButton1Up"]
       66 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETTABLEKS                       R3 R0 K2 ["props"]
        8 NEWTABLE                         R4 8 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Event"]
       13 GETTABLEKS                       R5 R5 K4 ["MouseButton1Down"]
       15 GETTABLEKS                       R6 R0 K5 ["onMouseButton1Down"]
       17 SETTABLE                         R6 R4 R5
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K3 ["Event"]
       21 GETTABLEKS                       R5 R5 K6 ["MouseMoved"]
       23 GETTABLEKS                       R6 R0 K7 ["onMouseMoved"]
       25 SETTABLE                         R6 R4 R5
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K3 ["Event"]
       29 GETTABLEKS                       R5 R5 K8 ["MouseButton1Up"]
       31 GETTABLEKS                       R6 R0 K9 ["onMouseButton1Up"]
       33 SETTABLE                         R6 R4 R5
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K10 ["None"]
       37 SETTABLEKS                       R5 R4 K11 ["onDragStart"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K10 ["None"]
       42 SETTABLEKS                       R5 R4 K12 ["onClick"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K10 ["None"]
       47 SETTABLEKS                       R5 R4 K13 ["onMouseDown"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K10 ["None"]
       52 SETTABLEKS                       R5 R4 K7 ["onMouseMoved"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K10 ["None"]
       57 SETTABLEKS                       R5 R4 K14 ["onMouseUp"]
       59 CALL                             R2 2 1
       60 MOVE                             R1 R2
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R2 R2 K15 ["createElement"]
       64 LOADK                            R3 K16 ["ImageButton"]
       65 MOVE                             R4 R1
       66 CALL                             R2 2 -1
       67 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["DebugFlags"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K11 ["PureComponent"]
       32 LOADK                            R7 K12 ["DraggableButton"]
       33 NAMECALL                         R5 R5 K13 ["extend"]
       35 CALL                             R5 2 1
       36 DUPCLOSURE                       R6 K14 [PROTO_3]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R6 R5 K15 ["init"]
       41 DUPCLOSURE                       R6 K16 [PROTO_4]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R6 R5 K17 ["render"]
       46 RETURN                           R5 1
