PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Expansion", "Selection", "Items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Selection"]
        9 NEWTABLE                         R2 0 3
       11 DUPTABLE                         R3 K8 [{["name"] = "Workspace", ["value"], ["children"]}]
       12 DUPTABLE                         R4 K12 [{["Value"] = 12, ["LeftIcon"]}]
       13 DUPTABLE                         R5 K16 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       14 GETIMPORT                        R6 K19 [UDim2.new]
       16 LOADN                            R7 0
       17 LOADN                            R8 14
       18 LOADN                            R9 0
       19 LOADN                            R10 14
       20 CALL                             R6 4 1
       21 SETTABLEKS                       R6 R5 K15 ["Size"]
       23 SETTABLEKS                       R5 R4 K11 ["LeftIcon"]
       25 SETTABLEKS                       R4 R3 K6 ["value"]
       27 NEWTABLE                         R4 0 1
       29 DUPTABLE                         R5 K22 [{["name"] = "Ocean", ["value"] = 53, ["children"]}]
       30 NEWTABLE                         R6 0 1
       32 DUPTABLE                         R7 K24 [{["name"] = "Billy The Fish", ["value"] = 12}]
       33 SETLIST                          R6 R7 1 [1]
       35 SETTABLEKS                       R6 R5 K7 ["children"]
       37 SETLIST                          R4 R5 1 [1]
       39 SETTABLEKS                       R4 R3 K7 ["children"]
       41 DUPTABLE                         R4 K27 [{["name"] = "ReplicatedStorage", ["value"] = 18, ["children"]}]
       42 NEWTABLE                         R5 0 2
       44 DUPTABLE                         R6 K29 [{["name"] = "WeatherSystem", ["value"]}]
       45 DUPTABLE                         R7 K31 [{["Value"] = 193, ["LeftIcon"]}]
       46 DUPTABLE                         R8 K16 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       47 GETIMPORT                        R9 K19 [UDim2.new]
       49 LOADN                            R10 0
       50 LOADN                            R11 14
       51 LOADN                            R12 0
       52 LOADN                            R13 14
       53 CALL                             R9 4 1
       54 SETTABLEKS                       R9 R8 K15 ["Size"]
       56 SETTABLEKS                       R8 R7 K11 ["LeftIcon"]
       58 SETTABLEKS                       R7 R6 K6 ["value"]
       60 DUPTABLE                         R7 K34 [{["name"] = "CloudSystem", ["value"] = 9001, ["children"]}]
       61 NEWTABLE                         R8 0 1
       63 DUPTABLE                         R9 K36 [{["name"] = "Cheeky Cumulus", ["value"]}]
       64 DUPTABLE                         R10 K38 [{["Value"] = 200, ["LeftIcon"]}]
       65 DUPTABLE                         R11 K16 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       66 GETIMPORT                        R12 K19 [UDim2.new]
       68 LOADN                            R13 0
       69 LOADN                            R14 14
       70 LOADN                            R15 0
       71 LOADN                            R16 14
       72 CALL                             R12 4 1
       73 SETTABLEKS                       R12 R11 K15 ["Size"]
       75 SETTABLEKS                       R11 R10 K11 ["LeftIcon"]
       77 SETTABLEKS                       R10 R9 K6 ["value"]
       79 SETLIST                          R8 R9 1 [1]
       81 SETTABLEKS                       R8 R7 K7 ["children"]
       83 SETLIST                          R5 R6 2 [1]
       85 SETTABLEKS                       R5 R4 K7 ["children"]
       87 DUPTABLE                         R5 K41 [{["name"] = "ServerStorage", ["value"] = 30, ["children"]}]
       88 NEWTABLE                         R6 0 1
       90 DUPTABLE                         R7 K44 [{["name"] = "Secret Base", ["value"] = 212, ["children"]}]
       91 NEWTABLE                         R8 0 1
       93 DUPTABLE                         R9 K47 [{["name"] = "Obsidian Door", ["value"] = 120}]
       94 SETLIST                          R8 R9 1 [1]
       96 SETTABLEKS                       R8 R7 K7 ["children"]
       98 SETLIST                          R6 R7 1 [1]
      100 SETTABLEKS                       R6 R5 K7 ["children"]
      102 SETLIST                          R2 R3 3 [1]
      104 SETTABLEKS                       R2 R1 K2 ["Items"]
      106 SETTABLEKS                       R1 R0 K48 ["state"]
      108 RETURN                           R0 0

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
        4 DUPTABLE                         R3 K11 [{["Size"], ["Columns"], ["OnExpansionChange"], ["OnSelectionChange"], ["Expansion"], ["Selection"], ["RootItems"], ["GetChildren"], ["Scroll"] = True}]
        5 GETIMPORT                        R4 K14 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 NEWTABLE                         R4 0 2
       16 DUPTABLE                         R5 K18 [{["Name"] = "Name", ["Key"] = "name"}]
       17 DUPTABLE                         R6 K21 [{["Name"] = "Value", ["Key"] = "value"}]
       18 SETLIST                          R4 R5 2 [1]
       20 SETTABLEKS                       R4 R3 K2 ["Columns"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 SETTABLEKS                       R4 R3 K3 ["OnExpansionChange"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R3 K4 ["OnSelectionChange"]
       31 GETTABLEKS                       R4 R0 K22 ["state"]
       33 GETTABLEKS                       R4 R4 K5 ["Expansion"]
       35 SETTABLEKS                       R4 R3 K5 ["Expansion"]
       37 GETTABLEKS                       R4 R0 K22 ["state"]
       39 GETTABLEKS                       R4 R4 K6 ["Selection"]
       41 SETTABLEKS                       R4 R3 K6 ["Selection"]
       43 GETTABLEKS                       R4 R0 K22 ["state"]
       45 GETTABLEKS                       R4 R4 K23 ["Items"]
       47 SETTABLEKS                       R4 R3 K7 ["RootItems"]
       49 DUPCLOSURE                       R4 K24 [PROTO_3]
       50 SETTABLEKS                       R4 R3 K8 ["GetChildren"]
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1

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
