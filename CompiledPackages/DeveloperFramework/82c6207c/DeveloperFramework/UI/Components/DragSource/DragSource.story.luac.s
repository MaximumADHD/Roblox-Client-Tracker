PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["DragSource clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K2 [{[1] = False}]
        1 NAMECALL                         R1 R0 K3 ["setState"]
        3 CALL                             R1 2 0
        4 DUPCLOSURE                       R1 K4 [PROTO_0]
        5 SETTABLEKS                       R1 R0 K5 ["onClick"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K6 ["onDragBegan"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K7 ["onDragEnded"]
       15 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["state"]
        4 GETTABLEKS                       R3 R3 K1 ["dragging"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R1 R3 K2 ["Blue"]
       10 LOADK                            R2 K3 ["Dragging"]
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R1 R3 K4 ["Gray_Mid"]
       15 LOADK                            R2 K5 ["Drag Me"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K6 ["createElement"]
       19 GETUPVAL                         R4 2
       20 DUPTABLE                         R5 K10 [{"AutomaticSize", "OnDragBegan", "OnDragEnded"}]
       21 GETIMPORT                        R6 K13 [Enum.AutomaticSize.XY]
       23 SETTABLEKS                       R6 R5 K7 ["AutomaticSize"]
       25 GETTABLEKS                       R6 R0 K14 ["onDragBegan"]
       27 SETTABLEKS                       R6 R5 K8 ["OnDragBegan"]
       29 GETTABLEKS                       R6 R0 K15 ["onDragEnded"]
       31 SETTABLEKS                       R6 R5 K9 ["OnDragEnded"]
       33 DUPTABLE                         R6 K17 [{"Pane"}]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K6 ["createElement"]
       37 GETUPVAL                         R8 3
       38 DUPTABLE                         R9 K22 [{["BackgroundColor"], ["Size"], ["Style"] = "Box"}]
       39 SETTABLEKS                       R1 R9 K18 ["BackgroundColor"]
       41 GETIMPORT                        R10 K25 [UDim2.fromOffset]
       43 LOADN                            R11 100
       44 LOADN                            R12 60
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K19 ["Size"]
       48 DUPTABLE                         R10 K27 [{"Label"}]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K6 ["createElement"]
       52 GETUPVAL                         R12 4
       53 DUPTABLE                         R13 K30 [{"Size", "Text", "TextColor"}]
       54 GETIMPORT                        R14 K32 [UDim2.new]
       56 LOADN                            R15 1
       57 LOADN                            R16 0
       58 LOADN                            R17 1
       59 LOADN                            R18 0
       60 CALL                             R14 4 1
       61 SETTABLEKS                       R14 R13 K19 ["Size"]
       63 SETTABLEKS                       R2 R13 K28 ["Text"]
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K33 ["Black"]
       68 SETTABLEKS                       R14 R13 K29 ["TextColor"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K26 ["Label"]
       73 CALL                             R7 3 1
       74 SETTABLEKS                       R7 R6 K16 ["Pane"]
       76 CALL                             R3 3 -1
       77 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["Style"]
       20 GETTABLEKS                       R3 R3 K9 ["Colors"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["DragSource"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["Pane"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K2 ["UI"]
       45 GETTABLEKS                       R6 R6 K10 ["Components"]
       47 GETTABLEKS                       R6 R6 K13 ["TextLabel"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       52 LOADK                            R8 K15 ["DragSourceStory"]
       53 NAMECALL                         R6 R6 K16 ["extend"]
       55 CALL                             R6 2 1
       56 DUPCLOSURE                       R7 K17 [PROTO_3]
       57 SETTABLEKS                       R7 R6 K18 ["init"]
       59 DUPCLOSURE                       R7 K19 [PROTO_4]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R7 R6 K20 ["render"]
       67 DUPTABLE                         R7 K22 [{"stories"}]
       68 NEWTABLE                         R8 0 1
       70 DUPTABLE                         R9 K28 [{["name"] = "Example", ["summary"] = "Wrap a TextLabel and update color and text on drag", ["story"]}]
       71 SETTABLEKS                       R6 R9 K27 ["story"]
       73 SETLIST                          R8 R9 1 [1]
       75 SETTABLEKS                       R8 R7 K21 ["stories"]
       77 RETURN                           R7 1
