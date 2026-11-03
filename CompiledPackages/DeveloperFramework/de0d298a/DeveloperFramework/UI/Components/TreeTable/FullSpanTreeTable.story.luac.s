PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Expansion", "Selection", "Items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Selection"]
        9 NEWTABLE                         R2 0 3
       11 DUPTABLE                         R3 K7 [{["name"] = "Workspace.AbsurdlyLongFIlePath1.AbsurdlyLongFIlePath2.AbsurdlyLongFIlePath3.AbsurdlyLongFIlePath4.Script", ["children"]}]
       12 NEWTABLE                         R4 0 1
       14 DUPTABLE                         R5 K19 [{["name"] = "Ocean", ["Col1"] = 53, ["Col2"] = 54, ["Col3"] = 55, ["Col4"] = 56, ["Col5"] = 57, ["children"]}]
       15 NEWTABLE                         R6 0 1
       17 DUPTABLE                         R7 K26 [{["name"] = "Billy The Fish", ["Col1"] = 12, ["Col2"] = 13, ["Col3"] = 14, ["Col4"] = 15, ["Col5"] = 16}]
       18 SETLIST                          R6 R7 1 [1]
       20 SETTABLEKS                       R6 R5 K6 ["children"]
       22 SETLIST                          R4 R5 1 [1]
       24 SETTABLEKS                       R4 R3 K6 ["children"]
       26 DUPTABLE                         R4 K28 [{["name"] = "ReplicatedStorage", ["children"]}]
       27 NEWTABLE                         R5 0 2
       29 DUPTABLE                         R6 K35 [{["name"] = "WeatherSystem", ["Col1"] = "a", ["Col2"] = "b", ["Col3"] = "c", ["Col4"] = "d", ["Col5"] = "e", ["children"]}]
       30 DUPTABLE                         R7 K42 [{["Col1"] = 193, ["Col2"] = 194, ["Col3"] = 195, ["Col4"] = 196, ["Col5"] = 197, ["LeftIcon"]}]
       31 DUPTABLE                         R8 K46 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       32 GETIMPORT                        R9 K49 [UDim2.new]
       34 LOADN                            R10 0
       35 LOADN                            R11 14
       36 LOADN                            R12 0
       37 LOADN                            R13 14
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K45 ["Size"]
       41 SETTABLEKS                       R8 R7 K41 ["LeftIcon"]
       43 SETTABLEKS                       R7 R6 K6 ["children"]
       45 DUPTABLE                         R7 K56 [{["name"] = "CloudSystem", ["Col1"] = 9001, ["Col2"] = 9002, ["Col3"] = 9003, ["Col4"] = 9004, ["Col5"] = 9005, ["children"]}]
       46 NEWTABLE                         R8 0 1
       48 DUPTABLE                         R9 K62 [{["name"] = "Cheeky Cumulus", ["Col1"] = "e", ["Col2"] = "f", ["Col3"] = "g", ["Col4"] = "h", ["Col5"] = "i", ["children"]}]
       49 DUPTABLE                         R10 K68 [{["Col1"] = -1, ["Col2"] = -2, ["Col3"] = -3, ["Col4"] = -4, ["Col5"] = -5, ["LeftIcon"]}]
       50 DUPTABLE                         R11 K46 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       51 GETIMPORT                        R12 K49 [UDim2.new]
       53 LOADN                            R13 0
       54 LOADN                            R14 14
       55 LOADN                            R15 0
       56 LOADN                            R16 14
       57 CALL                             R12 4 1
       58 SETTABLEKS                       R12 R11 K45 ["Size"]
       60 SETTABLEKS                       R11 R10 K41 ["LeftIcon"]
       62 SETTABLEKS                       R10 R9 K6 ["children"]
       64 SETLIST                          R8 R9 1 [1]
       66 SETTABLEKS                       R8 R7 K6 ["children"]
       68 SETLIST                          R5 R6 2 [1]
       70 SETTABLEKS                       R5 R4 K6 ["children"]
       72 DUPTABLE                         R5 K70 [{["name"] = "ServerStorage", ["children"]}]
       73 NEWTABLE                         R6 0 1
       75 DUPTABLE                         R7 K77 [{["name"] = "Secret Base", ["Col1"] = 212, ["Col2"] = 213, ["Col3"] = 214, ["Col4"] = 215, ["Col5"] = 216, ["children"]}]
       76 NEWTABLE                         R8 0 1
       78 DUPTABLE                         R9 K84 [{["name"] = "Obsidian Door", ["Col1"] = 120, ["Col2"] = 121, ["Col3"] = 122, ["Col4"] = 123, ["Col5"] = 124}]
       79 SETLIST                          R8 R9 1 [1]
       81 SETTABLEKS                       R8 R7 K6 ["children"]
       83 SETLIST                          R6 R7 1 [1]
       85 SETTABLEKS                       R6 R5 K6 ["children"]
       87 SETLIST                          R2 R3 3 [1]
       89 SETTABLEKS                       R2 R1 K2 ["Items"]
       91 SETTABLEKS                       R1 R0 K85 ["state"]
       93 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["Expansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Selection"}]
        2 SETTABLEKS                       R0 R3 K0 ["Selection"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K11 [{["Size"], ["Columns"], ["OnExpansionChange"], ["OnSelectionChange"], ["Expansion"], ["RootItems"], ["GetChildren"], ["Scroll"] = True, ["FullSpan"] = True}]
        5 GETIMPORT                        R4 K14 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 NEWTABLE                         R4 0 6
       16 DUPTABLE                         R5 K18 [{["Name"] = "Name", ["Key"] = "name"}]
       17 DUPTABLE                         R6 K20 [{["Name"] = "Col1", ["Key"] = "Col1"}]
       18 DUPTABLE                         R7 K22 [{["Name"] = "Col2", ["Key"] = "Col2"}]
       19 DUPTABLE                         R8 K24 [{["Name"] = "Col3", ["Key"] = "Col3"}]
       20 DUPTABLE                         R9 K26 [{["Name"] = "Col4", ["Key"] = "Col4"}]
       21 DUPTABLE                         R10 K28 [{["Name"] = "Col5", ["Key"] = "Col5"}]
       22 SETLIST                          R4 R5 6 [1]
       24 SETTABLEKS                       R4 R3 K2 ["Columns"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 SETTABLEKS                       R4 R3 K3 ["OnExpansionChange"]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R4 R3 K4 ["OnSelectionChange"]
       35 GETTABLEKS                       R4 R0 K29 ["state"]
       37 GETTABLEKS                       R4 R4 K5 ["Expansion"]
       39 SETTABLEKS                       R4 R3 K5 ["Expansion"]
       41 GETTABLEKS                       R4 R0 K29 ["state"]
       43 GETTABLEKS                       R4 R4 K30 ["Items"]
       45 SETTABLEKS                       R4 R3 K6 ["RootItems"]
       47 DUPCLOSURE                       R4 K31 [PROTO_3]
       48 SETTABLEKS                       R4 R3 K7 ["GetChildren"]
       50 CALL                             R1 2 -1
       51 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K11 ["TreeTable"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K12 ["PureComponent"]
       36 GETIMPORT                        R8 K1 [script]
       38 GETTABLEKS                       R8 R8 K4 ["Parent"]
       40 GETTABLEKS                       R8 R8 K13 ["Name"]
       42 LOADK                            R9 K14 ["ExampleTreeTable"]
       43 CONCAT                           R7 R8 R9
       44 NAMECALL                         R5 R5 K15 ["extend"]
       46 CALL                             R5 2 1
       47 DUPCLOSURE                       R6 K16 [PROTO_0]
       48 SETTABLEKS                       R6 R5 K17 ["init"]
       50 DUPCLOSURE                       R6 K18 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R6 R5 K19 ["render"]
       56 RETURN                           R5 1
