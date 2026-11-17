PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 LOADK                            R5 K1 ["Frame"]
       12 DUPTABLE                         R6 K6 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
       13 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R7 R6 K2 ["AutomaticSize"]
       17 GETIMPORT                        R7 K12 [UDim2.new]
       19 LOADN                            R8 1
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 LOADN                            R11 0
       23 CALL                             R7 4 1
       24 SETTABLEKS                       R7 R6 K5 ["Size"]
       26 DUPTABLE                         R7 K14 [{"SearchList"}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K0 ["createElement"]
       30 GETUPVAL                         R9 2
       31 DUPTABLE                         R10 K18 [{["Items"], ["ItemMinWidth"] = 28}]
       32 GETUPVAL                         R11 3
       33 SETTABLEKS                       R11 R10 K15 ["Items"]
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K13 ["SearchList"]
       38 CALL                             R4 3 -1
       39 SETLIST                          R3 R4 -1 [1]
       41 CALL                             R0 3 -1
       42 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 LOADK                            R5 K1 ["Frame"]
       12 DUPTABLE                         R6 K6 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
       13 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R7 R6 K2 ["AutomaticSize"]
       17 GETIMPORT                        R7 K12 [UDim2.new]
       19 LOADN                            R8 1
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 LOADN                            R11 0
       23 CALL                             R7 4 1
       24 SETTABLEKS                       R7 R6 K5 ["Size"]
       26 DUPTABLE                         R7 K14 [{"SearchList"}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K0 ["createElement"]
       30 GETUPVAL                         R9 2
       31 DUPTABLE                         R10 K20 [{["Items"], ["ItemMinWidth"] = 28, ["MaxRowCount"] = 2}]
       32 GETUPVAL                         R11 3
       33 SETTABLEKS                       R11 R10 K15 ["Items"]
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K13 ["SearchList"]
       38 CALL                             R4 3 -1
       39 SETLIST                          R3 R4 -1 [1]
       41 CALL                             R0 3 -1
       42 RETURN                           R0 -1

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
       29 GETTABLEKS                       R5 R5 K12 ["SearchList"]
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
       62 DUPTABLE                         R7 K38 [{["summary"] = "A generic search list.", ["stories"]}]
       63 NEWTABLE                         R8 0 2
       65 DUPTABLE                         R9 K42 [{["name"] = "Full, no max count", ["story"]}]
       66 DUPCLOSURE                       R10 K43 [PROTO_1]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R10 R9 K41 ["story"]
       73 DUPTABLE                         R10 K45 [{["name"] = "Max row count of 2", ["story"]}]
       74 DUPCLOSURE                       R11 K46 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R11 R10 K41 ["story"]
       81 SETLIST                          R8 R9 2 [1]
       83 SETTABLEKS                       R8 R7 K37 ["stories"]
       85 RETURN                           R7 1
