PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"SearchPill"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{"AutomaticSize", "Text", "OnClick"}]
       12 GETIMPORT                        R7 K9 [Enum.AutomaticSize.XY]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 LOADK                            R7 K10 ["Clickable"]
       17 SETTABLEKS                       R7 R6 K4 ["Text"]
       19 DUPCLOSURE                       R7 K11 [PROTO_1]
       20 SETTABLEKS                       R7 R6 K5 ["OnClick"]
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K1 ["SearchPill"]
       25 CALL                             R0 3 -1
       26 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"SearchPill"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"Text", "Size"}]
       12 LOADK                            R7 K6 ["Size 100x50"]
       13 SETTABLEKS                       R7 R6 K3 ["Text"]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 0
       18 LOADN                            R9 100
       19 LOADN                            R10 0
       20 LOADN                            R11 50
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K4 ["Size"]
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K1 ["SearchPill"]
       27 CALL                             R0 3 -1
       28 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Stories"]
       18 GETTABLEKS                       R4 R4 K8 ["ToolboxStoryWrapper"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R5 K10 ["Components"]
       27 GETTABLEKS                       R5 R5 K11 ["Categorization"]
       29 GETTABLEKS                       R5 R5 K12 ["SearchPill"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 DUPTABLE                         R6 K16 [{"summary", "stories"}]
       36 LOADK                            R7 K17 ["A generic search pill."]
       37 SETTABLEKS                       R7 R6 K14 ["summary"]
       39 NEWTABLE                         R7 0 2
       41 DUPTABLE                         R8 K20 [{"name", "story"}]
       42 LOADK                            R9 K21 ["Clickable"]
       43 SETTABLEKS                       R9 R8 K18 ["name"]
       45 DUPCLOSURE                       R9 K22 [PROTO_2]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R9 R8 K19 ["story"]
       51 DUPTABLE                         R9 K20 [{"name", "story"}]
       52 LOADK                            R10 K23 ["Constant Size"]
       53 SETTABLEKS                       R10 R9 K18 ["name"]
       55 DUPCLOSURE                       R10 K24 [PROTO_3]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R10 R9 K19 ["story"]
       61 SETLIST                          R7 R8 2 [1]
       63 SETTABLEKS                       R7 R6 K15 ["stories"]
       65 RETURN                           R6 1
