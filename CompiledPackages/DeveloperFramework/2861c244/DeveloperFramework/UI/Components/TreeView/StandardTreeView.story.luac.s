PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Selection", "Expansion", "Items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Selection"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Expansion"]
        9 NEWTABLE                         R2 0 3
       11 DUPTABLE                         R3 K8 [{["text"] = "Workspace", ["children"], ["icon"]}]
       12 NEWTABLE                         R4 0 1
       14 DUPTABLE                         R5 K10 [{["text"] = "Ocean", ["children"]}]
       15 NEWTABLE                         R6 0 1
       17 DUPTABLE                         R7 K12 [{["text"] = "Billy The Fish"}]
       18 SETLIST                          R6 R7 1 [1]
       20 SETTABLEKS                       R6 R5 K6 ["children"]
       22 SETLIST                          R4 R5 1 [1]
       24 SETTABLEKS                       R4 R3 K6 ["children"]
       26 DUPTABLE                         R4 K16 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       27 GETIMPORT                        R5 K19 [UDim2.new]
       29 LOADN                            R6 0
       30 LOADN                            R7 14
       31 LOADN                            R8 0
       32 LOADN                            R9 14
       33 CALL                             R5 4 1
       34 SETTABLEKS                       R5 R4 K15 ["Size"]
       36 SETTABLEKS                       R4 R3 K7 ["icon"]
       38 DUPTABLE                         R4 K21 [{["text"] = "ReplicatedStorage", ["children"]}]
       39 NEWTABLE                         R5 0 2
       41 DUPTABLE                         R6 K23 [{["text"] = "WeatherSystem"}]
       42 DUPTABLE                         R7 K25 [{["text"] = "CloudSystem", ["children"]}]
       43 NEWTABLE                         R8 0 1
       45 DUPTABLE                         R9 K27 [{["text"] = "Cheeky Cumulus"}]
       46 SETLIST                          R8 R9 1 [1]
       48 SETTABLEKS                       R8 R7 K6 ["children"]
       50 SETLIST                          R5 R6 2 [1]
       52 SETTABLEKS                       R5 R4 K6 ["children"]
       54 DUPTABLE                         R5 K29 [{["text"] = "ServerStorage", ["children"]}]
       55 NEWTABLE                         R6 0 1
       57 DUPTABLE                         R7 K31 [{["text"] = "Secret Base - The access code to enter the secret base is actually incredibly long - enough to make the tree view scroll", ["icon"], ["children"]}]
       58 DUPTABLE                         R8 K16 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       59 GETIMPORT                        R9 K19 [UDim2.new]
       61 LOADN                            R10 0
       62 LOADN                            R11 14
       63 LOADN                            R12 0
       64 LOADN                            R13 14
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K15 ["Size"]
       68 SETTABLEKS                       R8 R7 K7 ["icon"]
       70 NEWTABLE                         R8 0 1
       72 DUPTABLE                         R9 K33 [{["text"] = "Obsidian Door"}]
       73 SETLIST                          R8 R9 1 [1]
       75 SETTABLEKS                       R8 R7 K6 ["children"]
       77 SETLIST                          R6 R7 1 [1]
       79 SETTABLEKS                       R6 R5 K6 ["children"]
       81 SETLIST                          R2 R3 3 [1]
       83 SETTABLEKS                       R2 R1 K2 ["Items"]
       85 SETTABLEKS                       R1 R0 K34 ["state"]
       87 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["Size"], ["Expansion"], ["Selection"], ["RootItems"], ["Style"] = "BorderBox", ["OnExpansionChange"], ["OnSelectionChange"]}]
        5 GETIMPORT                        R4 K12 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 240
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K13 ["state"]
       16 GETTABLEKS                       R4 R4 K2 ["Expansion"]
       18 SETTABLEKS                       R4 R3 K2 ["Expansion"]
       20 GETTABLEKS                       R4 R0 K13 ["state"]
       22 GETTABLEKS                       R4 R4 K3 ["Selection"]
       24 SETTABLEKS                       R4 R3 K3 ["Selection"]
       26 GETTABLEKS                       R4 R0 K13 ["state"]
       28 GETTABLEKS                       R4 R4 K14 ["Items"]
       30 SETTABLEKS                       R4 R3 K4 ["RootItems"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R4 R3 K7 ["OnExpansionChange"]
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R4 R3 K8 ["OnSelectionChange"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

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
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K11 ["TreeView"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       36 GETIMPORT                        R8 K1 [script]
       38 GETTABLEKS                       R8 R8 K4 ["Parent"]
       40 GETTABLEKS                       R8 R8 K13 ["Name"]
       42 LOADK                            R9 K14 ["ExampleTreeView"]
       43 CONCAT                           R7 R8 R9
       44 NAMECALL                         R5 R5 K15 ["extend"]
       46 CALL                             R5 2 1
       47 DUPCLOSURE                       R6 K16 [PROTO_0]
       48 SETTABLEKS                       R6 R5 K17 ["init"]
       50 DUPCLOSURE                       R6 K18 [PROTO_3]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R6 R5 K19 ["render"]
       56 DUPTABLE                         R6 K21 [{"stories"}]
       57 NEWTABLE                         R7 0 1
       59 DUPTABLE                         R8 K25 [{["name"] = "Standard", ["story"]}]
       60 SETTABLEKS                       R5 R8 K24 ["story"]
       62 SETLIST                          R7 R8 1 [1]
       64 SETTABLEKS                       R7 R6 K20 ["stories"]
       66 RETURN                           R6 1
