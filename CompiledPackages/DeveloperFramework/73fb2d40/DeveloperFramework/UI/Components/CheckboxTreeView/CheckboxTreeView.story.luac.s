PROTO_0:
        0 DUPTABLE                         R1 K2 [{"checked", "items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["checked"]
        5 NEWTABLE                         R2 0 3
        7 DUPTABLE                         R3 K6 [{"text", "children", "icon"}]
        8 LOADK                            R4 K7 ["Workspace"]
        9 SETTABLEKS                       R4 R3 K3 ["text"]
       11 NEWTABLE                         R4 0 1
       13 DUPTABLE                         R5 K8 [{"text", "children"}]
       14 LOADK                            R6 K9 ["Ocean"]
       15 SETTABLEKS                       R6 R5 K3 ["text"]
       17 NEWTABLE                         R6 0 1
       19 DUPTABLE                         R7 K10 [{"text"}]
       20 LOADK                            R8 K11 ["Billy The Fish"]
       21 SETTABLEKS                       R8 R7 K3 ["text"]
       23 SETLIST                          R6 R7 1 [1]
       25 SETTABLEKS                       R6 R5 K4 ["children"]
       27 SETLIST                          R4 R5 1 [1]
       29 SETTABLEKS                       R4 R3 K4 ["children"]
       31 DUPTABLE                         R4 K14 [{"Image", "Size"}]
       32 LOADK                            R5 K15 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       33 SETTABLEKS                       R5 R4 K12 ["Image"]
       35 GETIMPORT                        R5 K18 [UDim2.new]
       37 LOADN                            R6 0
       38 LOADN                            R7 14
       39 LOADN                            R8 0
       40 LOADN                            R9 14
       41 CALL                             R5 4 1
       42 SETTABLEKS                       R5 R4 K13 ["Size"]
       44 SETTABLEKS                       R4 R3 K5 ["icon"]
       46 DUPTABLE                         R4 K8 [{"text", "children"}]
       47 LOADK                            R5 K19 ["ReplicatedStorage"]
       48 SETTABLEKS                       R5 R4 K3 ["text"]
       50 NEWTABLE                         R5 0 2
       52 DUPTABLE                         R6 K10 [{"text"}]
       53 LOADK                            R7 K20 ["WeatherSystem"]
       54 SETTABLEKS                       R7 R6 K3 ["text"]
       56 DUPTABLE                         R7 K8 [{"text", "children"}]
       57 LOADK                            R8 K21 ["CloudSystem"]
       58 SETTABLEKS                       R8 R7 K3 ["text"]
       60 NEWTABLE                         R8 0 1
       62 DUPTABLE                         R9 K10 [{"text"}]
       63 LOADK                            R10 K22 ["Cheeky Cumulus"]
       64 SETTABLEKS                       R10 R9 K3 ["text"]
       66 SETLIST                          R8 R9 1 [1]
       68 SETTABLEKS                       R8 R7 K4 ["children"]
       70 SETLIST                          R5 R6 2 [1]
       72 SETTABLEKS                       R5 R4 K4 ["children"]
       74 DUPTABLE                         R5 K8 [{"text", "children"}]
       75 LOADK                            R6 K23 ["ServerStorage"]
       76 SETTABLEKS                       R6 R5 K3 ["text"]
       78 NEWTABLE                         R6 0 1
       80 DUPTABLE                         R7 K24 [{"text", "icon", "children"}]
       81 LOADK                            R8 K25 ["Secret Base - The access code to enter the secret base is actually incredibly long - enough to make the tree view scroll"]
       82 SETTABLEKS                       R8 R7 K3 ["text"]
       84 DUPTABLE                         R8 K14 [{"Image", "Size"}]
       85 LOADK                            R9 K15 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       86 SETTABLEKS                       R9 R8 K12 ["Image"]
       88 GETIMPORT                        R9 K18 [UDim2.new]
       90 LOADN                            R10 0
       91 LOADN                            R11 14
       92 LOADN                            R12 0
       93 LOADN                            R13 14
       94 CALL                             R9 4 1
       95 SETTABLEKS                       R9 R8 K13 ["Size"]
       97 SETTABLEKS                       R8 R7 K5 ["icon"]
       99 NEWTABLE                         R8 0 1
      101 DUPTABLE                         R9 K10 [{"text"}]
      102 LOADK                            R10 K26 ["Obsidian Door"]
      103 SETTABLEKS                       R10 R9 K3 ["text"]
      105 SETLIST                          R8 R9 1 [1]
      107 SETTABLEKS                       R8 R7 K4 ["children"]
      109 SETLIST                          R6 R7 1 [1]
      111 SETTABLEKS                       R6 R5 K4 ["children"]
      113 SETLIST                          R2 R3 3 [1]
      115 SETTABLEKS                       R2 R1 K1 ["items"]
      117 SETTABLEKS                       R1 R0 K27 ["state"]
      119 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"checked"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K2 ["state"]
        6 GETTABLEKS                       R5 R6 K0 ["checked"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["checked"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"Size", "RootItems", "Checked", "OnCheck", "ToggleAncestors", "ToggleDescendants", "Style"}]
        5 GETIMPORT                        R4 K11 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 240
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R5 R0 K12 ["state"]
       16 GETTABLEKS                       R4 R5 K13 ["items"]
       18 SETTABLEKS                       R4 R3 K2 ["RootItems"]
       20 GETTABLEKS                       R5 R0 K12 ["state"]
       22 GETTABLEKS                       R4 R5 K14 ["checked"]
       24 SETTABLEKS                       R4 R3 K3 ["Checked"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 SETTABLEKS                       R4 R3 K4 ["OnCheck"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K15 ["UpPropagators"]
       34 GETTABLEKS                       R4 R5 K16 ["toggleAncestorsByAllChildren"]
       36 SETTABLEKS                       R4 R3 K5 ["ToggleAncestors"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R5 R6 K17 ["DownPropagators"]
       41 GETTABLEKS                       R4 R5 K18 ["toggleAllChildren"]
       43 SETTABLEKS                       R4 R3 K6 ["ToggleDescendants"]
       45 LOADK                            R4 K19 ["BorderBox"]
       46 SETTABLEKS                       R4 R3 K7 ["Style"]
       48 CALL                             R1 2 -1
       49 RETURN                           R1 -1

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
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K10 ["Components"]
       31 GETTABLEKS                       R5 R6 K11 ["CheckboxTreeView"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       36 GETIMPORT                        R11 K1 [script]
       38 GETTABLEKS                       R10 R11 K4 ["Parent"]
       40 GETTABLEKS                       R8 R10 K13 ["Name"]
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
