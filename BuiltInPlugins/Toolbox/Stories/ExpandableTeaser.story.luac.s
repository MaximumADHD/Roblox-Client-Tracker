PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 LOADK                            R2 K1 ["Frame"]
        6 DUPTABLE                         R3 K4 [{"BackgroundColor3", "Size"}]
        7 GETIMPORT                        R4 K7 [Color3.new]
        9 LOADN                            R5 1
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K2 ["BackgroundColor3"]
       15 GETIMPORT                        R4 K9 [UDim2.new]
       17 LOADN                            R5 1
       18 LOADN                            R6 0
       19 LOADN                            R7 0
       20 LOADN                            R8 100
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R3 K3 ["Size"]
       24 CALL                             R1 2 -1
       25 SETLIST                          R0 R1 -1 [1]
       27 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"SearchList"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K6 [{"AutomaticSize", "Items", "ItemMinWidth"}]
        6 GETIMPORT                        R4 K9 [Enum.AutomaticSize.Y]
        8 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
       10 NEWTABLE                         R4 0 15
       12 LOADK                            R5 K10 ["charmander"]
       13 LOADK                            R6 K11 ["bulbasaur"]
       14 LOADK                            R7 K12 ["squirtle"]
       15 LOADK                            R8 K13 ["cyndaquil"]
       16 LOADK                            R9 K14 ["totodile"]
       17 LOADK                            R10 K15 ["chikorita"]
       18 LOADK                            R11 K16 ["torchic"]
       19 LOADK                            R12 K17 ["mudkip"]
       20 LOADK                            R13 K18 ["treecko"]
       21 LOADK                            R14 K19 ["chimchar"]
       22 LOADK                            R15 K20 ["piplup"]
       23 LOADK                            R16 K21 ["turtwig"]
       24 LOADK                            R17 K22 ["tepig"]
       25 LOADK                            R18 K23 ["oshawott"]
       26 LOADK                            R19 K24 ["snivy"]
       27 SETLIST                          R4 R5 15 [1]
       29 SETTABLEKS                       R4 R3 K4 ["Items"]
       31 LOADN                            R4 28
       32 SETTABLEKS                       R4 R3 K5 ["ItemMinWidth"]
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K0 ["SearchList"]
       37 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["isExpanded: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 LOADK                            R5 K1 ["Frame"]
       12 DUPTABLE                         R6 K5 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
       13 GETIMPORT                        R7 K8 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R7 R6 K2 ["AutomaticSize"]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K3 ["BackgroundTransparency"]
       20 GETIMPORT                        R7 K11 [UDim2.new]
       22 LOADN                            R8 1
       23 LOADN                            R9 0
       24 LOADN                            R10 0
       25 LOADN                            R11 0
       26 CALL                             R7 4 1
       27 SETTABLEKS                       R7 R6 K4 ["Size"]
       29 DUPTABLE                         R7 K13 [{"ExpandableTeaser"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K0 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K17 [{"OnExpandChanged", "Title", "TeaserSize"}]
       35 GETUPVAL                         R11 3
       36 SETTABLEKS                       R11 R10 K14 ["OnExpandChanged"]
       38 LOADK                            R11 K18 ["Expandable"]
       39 SETTABLEKS                       R11 R10 K15 ["Title"]
       41 GETIMPORT                        R11 K20 [Vector2.new]
       43 LOADN                            R12 0
       44 LOADN                            R13 10
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K16 ["TeaserSize"]
       48 GETUPVAL                         R11 4
       49 CALL                             R11 0 1
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K12 ["ExpandableTeaser"]
       53 CALL                             R4 3 -1
       54 SETLIST                          R3 R4 -1 [1]
       56 CALL                             R0 3 -1
       57 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 LOADK                            R5 K1 ["Frame"]
       12 DUPTABLE                         R6 K5 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
       13 GETIMPORT                        R7 K8 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R7 R6 K2 ["AutomaticSize"]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K3 ["BackgroundTransparency"]
       20 GETIMPORT                        R7 K11 [UDim2.new]
       22 LOADN                            R8 1
       23 LOADN                            R9 0
       24 LOADN                            R10 0
       25 LOADN                            R11 0
       26 CALL                             R7 4 1
       27 SETTABLEKS                       R7 R6 K4 ["Size"]
       29 DUPTABLE                         R7 K13 [{"ExpandableTeaser"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K0 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K17 [{"OnExpandChanged", "Title", "TeaserSize"}]
       35 GETUPVAL                         R11 3
       36 SETTABLEKS                       R11 R10 K14 ["OnExpandChanged"]
       38 LOADK                            R11 K18 ["Top Searches"]
       39 SETTABLEKS                       R11 R10 K15 ["Title"]
       41 GETIMPORT                        R11 K20 [Vector2.new]
       43 LOADN                            R12 0
       44 LOADN                            R13 28
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K16 ["TeaserSize"]
       48 GETUPVAL                         R11 4
       49 CALL                             R11 0 1
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K12 ["ExpandableTeaser"]
       53 CALL                             R4 3 -1
       54 SETLIST                          R3 R4 -1 [1]
       56 CALL                             R0 3 -1
       57 RETURN                           R0 -1

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
       29 GETTABLEKS                       R5 R5 K12 ["ExpandableTeaser"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R6 K10 ["Components"]
       38 GETTABLEKS                       R6 R6 K11 ["Categorization"]
       40 GETTABLEKS                       R6 R6 K13 ["SearchList"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K14 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 DUPCLOSURE                       R7 K15 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R8 K16 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R9 K17 [PROTO_3]
       52 DUPTABLE                         R10 K20 [{"summary", "stories"}]
       53 LOADK                            R11 K21 ["An expandable teaser."]
       54 SETTABLEKS                       R11 R10 K18 ["summary"]
       56 NEWTABLE                         R11 0 2
       58 DUPTABLE                         R12 K24 [{"name", "story"}]
       59 LOADK                            R13 K25 ["Expandable"]
       60 SETTABLEKS                       R13 R12 K22 ["name"]
       62 DUPCLOSURE                       R13 K26 [PROTO_4]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R13 R12 K23 ["story"]
       70 DUPTABLE                         R13 K24 [{"name", "story"}]
       71 LOADK                            R14 K27 ["Search Pills"]
       72 SETTABLEKS                       R14 R13 K22 ["name"]
       74 DUPCLOSURE                       R14 K28 [PROTO_5]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R14 R13 K23 ["story"]
       82 SETLIST                          R11 R12 2 [1]
       84 SETTABLEKS                       R11 R10 K19 ["stories"]
       86 RETURN                           R10 1
