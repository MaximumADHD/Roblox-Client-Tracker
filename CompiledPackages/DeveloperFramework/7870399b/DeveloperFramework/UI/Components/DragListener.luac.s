PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+14]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["props"]
        9 GETTABLEKS                       R2 R2 K5 ["OnDragMoved"]
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["props"]
       15 GETTABLEKS                       R2 R2 K5 ["OnDragMoved"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnDragEnded"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnDragEnded"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["inputChanged"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["inputEnded"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"OnFocusLost"}]
        5 GETTABLEKS                       R4 R0 K3 ["inputEnded"]
        7 SETTABLEKS                       R4 R3 K1 ["OnFocusLost"]
        9 DUPTABLE                         R4 K5 [{"Listener"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 LOADK                            R6 K6 ["ImageButton"]
       14 NEWTABLE                         R7 8 0
       16 LOADN                            R8 1
       17 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       19 GETIMPORT                        R8 K10 [UDim2.new]
       21 LOADN                            R9 1
       22 LOADN                            R10 0
       23 LOADN                            R11 1
       24 LOADN                            R12 0
       25 CALL                             R8 4 1
       26 SETTABLEKS                       R8 R7 K11 ["Size"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K12 ["Event"]
       31 GETTABLEKS                       R8 R8 K13 ["InputChanged"]
       33 GETTABLEKS                       R9 R0 K14 ["inputChanged"]
       35 SETTABLE                         R9 R7 R8
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K12 ["Event"]
       39 GETTABLEKS                       R8 R8 K15 ["InputEnded"]
       41 GETTABLEKS                       R9 R0 K3 ["inputEnded"]
       43 SETTABLE                         R9 R7 R8
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K12 ["Event"]
       47 GETTABLEKS                       R8 R8 K16 ["MouseButton1Up"]
       49 GETTABLEKS                       R9 R0 K3 ["inputEnded"]
       51 SETTABLE                         R9 R7 R8
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K12 ["Event"]
       55 GETTABLEKS                       R8 R8 K17 ["MouseButton2Up"]
       57 GETTABLEKS                       R9 R0 K3 ["inputEnded"]
       59 SETTABLE                         R9 R7 R8
       60 GETTABLEKS                       R9 R0 K18 ["props"]
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K19 ["Children"]
       65 GETTABLE                         R8 R9 R10
       66 CALL                             R5 3 1
       67 SETTABLEKS                       R5 R4 K4 ["Listener"]
       69 CALL                             R1 3 -1
       70 RETURN                           R1 -1

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
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R2 R2 K9 ["Typecheck"]
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["CaptureFocus"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K12 ["PureComponent"]
       34 LOADK                            R6 K13 ["DragListener"]
       35 NAMECALL                         R4 R4 K14 ["extend"]
       37 CALL                             R4 2 1
       38 GETTABLEKS                       R5 R2 K15 ["wrap"]
       40 MOVE                             R6 R4
       41 GETIMPORT                        R7 K1 [script]
       43 CALL                             R5 2 0
       44 DUPCLOSURE                       R5 K16 [PROTO_2]
       45 SETTABLEKS                       R5 R4 K17 ["init"]
       47 DUPCLOSURE                       R5 K18 [PROTO_3]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R5 R4 K19 ["render"]
       52 RETURN                           R4 1
