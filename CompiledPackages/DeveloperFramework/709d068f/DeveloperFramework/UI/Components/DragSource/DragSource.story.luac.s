PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["DragSource clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"dragging"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["dragging"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"dragging"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["dragging"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K1 [{"dragging"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["dragging"]
        4 NAMECALL                         R1 R0 K2 ["setState"]
        6 CALL                             R1 2 0
        7 DUPCLOSURE                       R1 K3 [PROTO_0]
        8 SETTABLEKS                       R1 R0 K4 ["onClick"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["onDragBegan"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K6 ["onDragEnded"]
       18 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R4 R0 K0 ["state"]
        4 GETTABLEKS                       R3 R4 K1 ["dragging"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R1 R3 K2 ["Blue"]
       10 LOADK                            R2 K3 ["Dragging"]
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R1 R3 K4 ["Gray_Mid"]
       15 LOADK                            R2 K5 ["Drag Me"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K6 ["createElement"]
       19 GETUPVAL                         R4 2
       20 DUPTABLE                         R5 K10 [{"AutomaticSize", "OnDragBegan", "OnDragEnded"}]
       21 GETIMPORT                        R6 K13 [Enum.AutomaticSize.XY]
       23 SETTABLEKS                       R6 R5 K7 ["AutomaticSize"]
       25 GETTABLEKS                       R6 R0 K14 ["onDragBegan"]
       27 SETTABLEKS                       R6 R5 K8 ["OnDragBegan"]
       29 GETTABLEKS                       R6 R0 K15 ["onDragEnded"]
       31 SETTABLEKS                       R6 R5 K9 ["OnDragEnded"]
       33 DUPTABLE                         R6 K17 [{"Pane"}]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K6 ["createElement"]
       37 GETUPVAL                         R8 3
       38 DUPTABLE                         R9 K21 [{"BackgroundColor", "Size", "Style"}]
       39 SETTABLEKS                       R1 R9 K18 ["BackgroundColor"]
       41 GETIMPORT                        R10 K24 [UDim2.fromOffset]
       43 LOADN                            R11 100
       44 LOADN                            R12 60
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K19 ["Size"]
       48 LOADK                            R10 K25 ["Box"]
       49 SETTABLEKS                       R10 R9 K20 ["Style"]
       51 DUPTABLE                         R10 K27 [{"Label"}]
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K6 ["createElement"]
       55 GETUPVAL                         R12 4
       56 DUPTABLE                         R13 K30 [{"Size", "Text", "TextColor"}]
       57 GETIMPORT                        R14 K32 [UDim2.new]
       59 LOADN                            R15 1
       60 LOADN                            R16 0
       61 LOADN                            R17 1
       62 LOADN                            R18 0
       63 CALL                             R14 4 1
       64 SETTABLEKS                       R14 R13 K19 ["Size"]
       66 SETTABLEKS                       R2 R13 K28 ["Text"]
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R14 R15 K33 ["Black"]
       71 SETTABLEKS                       R14 R13 K29 ["TextColor"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K26 ["Label"]
       76 CALL                             R7 3 1
       77 SETTABLEKS                       R7 R6 K16 ["Pane"]
       79 CALL                             R3 3 -1
       80 RETURN                           R3 -1

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
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Style"]
       20 GETTABLEKS                       R3 R4 K9 ["Colors"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K10 ["Components"]
       29 GETTABLEKS                       R4 R5 K11 ["DragSource"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R7 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R7 K10 ["Components"]
       38 GETTABLEKS                       R5 R6 K12 ["Pane"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R8 R0 K2 ["UI"]
       45 GETTABLEKS                       R7 R8 K10 ["Components"]
       47 GETTABLEKS                       R6 R7 K13 ["TextLabel"]
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
       70 DUPTABLE                         R9 K26 [{"name", "summary", "story"}]
       71 LOADK                            R10 K27 ["Example"]
       72 SETTABLEKS                       R10 R9 K23 ["name"]
       74 LOADK                            R10 K28 ["Wrap a TextLabel and update color and text on drag"]
       75 SETTABLEKS                       R10 R9 K24 ["summary"]
       77 SETTABLEKS                       R6 R9 K25 ["story"]
       79 SETLIST                          R8 R9 1 [1]
       81 SETTABLEKS                       R8 R7 K21 ["stories"]
       83 RETURN                           R7 1
