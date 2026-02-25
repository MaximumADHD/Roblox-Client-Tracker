PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
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
       29 DUPTABLE                         R7 K13 [{"SearchList"}]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K0 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K16 [{"Items", "ItemMinWidth"}]
       35 GETUPVAL                         R11 3
       36 SETTABLEKS                       R11 R10 K14 ["Items"]
       38 LOADN                            R11 28
       39 SETTABLEKS                       R11 R10 K15 ["ItemMinWidth"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K12 ["SearchList"]
       44 CALL                             R4 3 -1
       45 SETLIST                          R3 R4 -1 [1]
       47 CALL                             R0 3 -1
       48 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
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
       29 DUPTABLE                         R7 K13 [{"SearchList"}]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K0 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K17 [{"Items", "ItemMinWidth", "MaxRowCount"}]
       35 GETUPVAL                         R11 3
       36 SETTABLEKS                       R11 R10 K14 ["Items"]
       38 LOADN                            R11 28
       39 SETTABLEKS                       R11 R10 K15 ["ItemMinWidth"]
       41 LOADN                            R11 2
       42 SETTABLEKS                       R11 R10 K16 ["MaxRowCount"]
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K12 ["SearchList"]
       47 CALL                             R4 3 -1
       48 SETLIST                          R3 R4 -1 [1]
       50 CALL                             R0 3 -1
       51 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R5 R0 K7 ["Stories"]
       18 GETTABLEKS                       R4 R5 K8 ["ToolboxStoryWrapper"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R8 R0 K9 ["Src"]
       25 GETTABLEKS                       R7 R8 K10 ["Components"]
       27 GETTABLEKS                       R6 R7 K11 ["Categorization"]
       29 GETTABLEKS                       R5 R6 K12 ["SearchList"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R6 0 21
       37 LOADK                            R7 K14 ["charmander"]
       38 LOADK                            R8 K15 ["bulbasaur"]
       39 LOADK                            R9 K16 ["squirtle"]
       40 LOADK                            R10 K17 ["cyndaquil"]
       41 LOADK                            R11 K18 ["totodile"]
       42 LOADK                            R12 K19 ["chikorita"]
       43 LOADK                            R13 K20 ["torchic"]
       44 LOADK                            R14 K21 ["mudkip"]
       45 LOADK                            R15 K22 ["treecko"]
       46 LOADK                            R16 K23 ["chimchar"]
       47 LOADK                            R17 K24 ["piplup"]
       48 LOADK                            R18 K25 ["turtwig"]
       49 LOADK                            R19 K26 ["tepig"]
       50 LOADK                            R20 K27 ["oshawott"]
       51 LOADK                            R21 K28 ["snivy"]
       52 LOADK                            R22 K29 ["fennekin"]
       53 SETLIST                          R6 R7 16 [1]
       55 LOADK                            R7 K30 ["froakie"]
       56 LOADK                            R8 K31 ["chespin"]
       57 LOADK                            R9 K32 ["litten"]
       58 LOADK                            R10 K33 ["popplio"]
       59 LOADK                            R11 K34 ["rowlet"]
       60 SETLIST                          R6 R7 5 [17]
       62 DUPTABLE                         R7 K37 [{"summary", "stories"}]
       63 LOADK                            R8 K38 ["A generic search list."]
       64 SETTABLEKS                       R8 R7 K35 ["summary"]
       66 NEWTABLE                         R8 0 2
       68 DUPTABLE                         R9 K41 [{"name", "story"}]
       69 LOADK                            R10 K42 ["Full, no max count"]
       70 SETTABLEKS                       R10 R9 K39 ["name"]
       72 DUPCLOSURE                       R10 K43 [PROTO_1]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R10 R9 K40 ["story"]
       79 DUPTABLE                         R10 K41 [{"name", "story"}]
       80 LOADK                            R11 K44 ["Max row count of 2"]
       81 SETTABLEKS                       R11 R10 K39 ["name"]
       83 DUPCLOSURE                       R11 K45 [PROTO_2]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 SETTABLEKS                       R11 R10 K40 ["story"]
       90 SETLIST                          R8 R9 2 [1]
       92 SETTABLEKS                       R8 R7 K36 ["stories"]
       94 RETURN                           R7 1
