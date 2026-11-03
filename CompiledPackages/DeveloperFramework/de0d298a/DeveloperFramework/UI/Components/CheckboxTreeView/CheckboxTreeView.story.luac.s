PROTO_0:
        0 DUPTABLE                         R1 K2 [{"checked", "items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["checked"]
        5 NEWTABLE                         R2 0 3
        7 DUPTABLE                         R3 K7 [{["text"] = "Workspace", ["children"], ["icon"]}]
        8 NEWTABLE                         R4 0 1
       10 DUPTABLE                         R5 K9 [{["text"] = "Ocean", ["children"]}]
       11 NEWTABLE                         R6 0 1
       13 DUPTABLE                         R7 K11 [{["text"] = "Billy The Fish"}]
       14 SETLIST                          R6 R7 1 [1]
       16 SETTABLEKS                       R6 R5 K5 ["children"]
       18 SETLIST                          R4 R5 1 [1]
       20 SETTABLEKS                       R4 R3 K5 ["children"]
       22 DUPTABLE                         R4 K15 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       23 GETIMPORT                        R5 K18 [UDim2.new]
       25 LOADN                            R6 0
       26 LOADN                            R7 14
       27 LOADN                            R8 0
       28 LOADN                            R9 14
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K14 ["Size"]
       32 SETTABLEKS                       R4 R3 K6 ["icon"]
       34 DUPTABLE                         R4 K20 [{["text"] = "ReplicatedStorage", ["children"]}]
       35 NEWTABLE                         R5 0 2
       37 DUPTABLE                         R6 K22 [{["text"] = "WeatherSystem"}]
       38 DUPTABLE                         R7 K24 [{["text"] = "CloudSystem", ["children"]}]
       39 NEWTABLE                         R8 0 1
       41 DUPTABLE                         R9 K26 [{["text"] = "Cheeky Cumulus"}]
       42 SETLIST                          R8 R9 1 [1]
       44 SETTABLEKS                       R8 R7 K5 ["children"]
       46 SETLIST                          R5 R6 2 [1]
       48 SETTABLEKS                       R5 R4 K5 ["children"]
       50 DUPTABLE                         R5 K28 [{["text"] = "ServerStorage", ["children"]}]
       51 NEWTABLE                         R6 0 1
       53 DUPTABLE                         R7 K30 [{["text"] = "Secret Base - The access code to enter the secret base is actually incredibly long - enough to make the tree view scroll", ["icon"], ["children"]}]
       54 DUPTABLE                         R8 K15 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       55 GETIMPORT                        R9 K18 [UDim2.new]
       57 LOADN                            R10 0
       58 LOADN                            R11 14
       59 LOADN                            R12 0
       60 LOADN                            R13 14
       61 CALL                             R9 4 1
       62 SETTABLEKS                       R9 R8 K14 ["Size"]
       64 SETTABLEKS                       R8 R7 K6 ["icon"]
       66 NEWTABLE                         R8 0 1
       68 DUPTABLE                         R9 K32 [{["text"] = "Obsidian Door"}]
       69 SETLIST                          R8 R9 1 [1]
       71 SETTABLEKS                       R8 R7 K5 ["children"]
       73 SETLIST                          R6 R7 1 [1]
       75 SETTABLEKS                       R6 R5 K5 ["children"]
       77 SETLIST                          R2 R3 3 [1]
       79 SETTABLEKS                       R2 R1 K1 ["items"]
       81 SETTABLEKS                       R1 R0 K33 ["state"]
       83 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"checked"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["checked"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["checked"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["Size"], ["RootItems"], ["Checked"], ["OnCheck"], ["ToggleAncestors"], ["ToggleDescendants"], ["Style"] = "BorderBox"}]
        5 GETIMPORT                        R4 K12 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 240
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K13 ["state"]
       16 GETTABLEKS                       R4 R4 K14 ["items"]
       18 SETTABLEKS                       R4 R3 K2 ["RootItems"]
       20 GETTABLEKS                       R4 R0 K13 ["state"]
       22 GETTABLEKS                       R4 R4 K15 ["checked"]
       24 SETTABLEKS                       R4 R3 K3 ["Checked"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 SETTABLEKS                       R4 R3 K4 ["OnCheck"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K16 ["UpPropagators"]
       34 GETTABLEKS                       R4 R4 K17 ["toggleAncestorsByAllChildren"]
       36 SETTABLEKS                       R4 R3 K5 ["ToggleAncestors"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K18 ["DownPropagators"]
       41 GETTABLEKS                       R4 R4 K19 ["toggleAllChildren"]
       43 SETTABLEKS                       R4 R3 K6 ["ToggleDescendants"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1

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
       31 GETTABLEKS                       R5 R5 K11 ["CheckboxTreeView"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       36 GETIMPORT                        R8 K1 [script]
       38 GETTABLEKS                       R8 R8 K4 ["Parent"]
       40 GETTABLEKS                       R8 R8 K13 ["Name"]
       42 LOADK                            R9 K14 ["ExampleCheckboxTreeView"]
       43 CONCAT                           R7 R8 R9
       44 NAMECALL                         R5 R5 K15 ["extend"]
       46 CALL                             R5 2 1
       47 DUPCLOSURE                       R6 K16 [PROTO_0]
       48 SETTABLEKS                       R6 R5 K17 ["init"]
       50 DUPCLOSURE                       R6 K18 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R6 R5 K19 ["render"]
       56 RETURN                           R5 1
