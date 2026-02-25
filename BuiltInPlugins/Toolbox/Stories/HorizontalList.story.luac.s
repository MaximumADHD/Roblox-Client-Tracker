PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 LOADK                            R3 K1 ["TextLabel"]
        4 DUPTABLE                         R4 K5 [{"Size", "Text", "LayoutOrder"}]
        5 GETIMPORT                        R5 K8 [UDim2.new]
        7 LOADN                            R6 0
        8 LOADN                            R7 50
        9 LOADN                            R8 0
       10 LOADN                            R9 50
       11 CALL                             R5 4 1
       12 SETTABLEKS                       R5 R4 K2 ["Size"]
       14 SETTABLEKS                       R1 R4 K3 ["Text"]
       16 SETTABLEKS                       R0 R4 K4 ["LayoutOrder"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K5 [{"BackgroundTransparency", "Size"}]
       12 LOADN                            R7 1
       13 SETTABLEKS                       R7 R6 K3 ["BackgroundTransparency"]
       15 GETIMPORT                        R7 K8 [UDim2.new]
       17 LOADN                            R8 0
       18 LOADN                            R9 88
       19 LOADN                            R10 0
       20 LOADN                            R11 60
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K4 ["Size"]
       24 DUPTABLE                         R7 K10 [{"List"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R8 R9 K0 ["createElement"]
       28 GETUPVAL                         R9 2
       29 DUPTABLE                         R10 K14 [{"DefaultHeight", "Data", "OnRenderItem"}]
       30 LOADN                            R11 50
       31 SETTABLEKS                       R11 R10 K11 ["DefaultHeight"]
       33 NEWTABLE                         R11 0 4
       35 LOADK                            R12 K15 ["This"]
       36 LOADK                            R13 K16 ["is"]
       37 LOADK                            R14 K17 ["a"]
       38 LOADK                            R15 K18 ["test"]
       39 SETLIST                          R11 R12 4 [1]
       41 SETTABLEKS                       R11 R10 K12 ["Data"]
       43 DUPCLOSURE                       R11 K19 [PROTO_0]
       44 CAPTURE                          UPVAL U0
       45 SETTABLEKS                       R11 R10 K13 ["OnRenderItem"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K9 ["List"]
       50 CALL                             R4 3 1
       51 SETTABLEKS                       R4 R3 K1 ["Frame"]
       53 CALL                             R0 3 -1
       54 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Stories"]
       18 GETTABLEKS                       R3 R4 K8 ["ToolboxStoryWrapper"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["Categorization"]
       29 GETTABLEKS                       R4 R5 K12 ["HorizontalList"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K16 [{"name", "summary", "story"}]
       33 LOADK                            R5 K12 ["HorizontalList"]
       34 SETTABLEKS                       R5 R4 K13 ["name"]
       36 LOADK                            R5 K17 ["A generic horizontal list that sizes itself to the size of its content"]
       37 SETTABLEKS                       R5 R4 K14 ["summary"]
       39 DUPCLOSURE                       R5 K18 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R5 R4 K15 ["story"]
       45 RETURN                           R4 1
