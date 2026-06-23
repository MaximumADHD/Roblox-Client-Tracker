PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Selection", "Expansion", "Items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Selection"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Expansion"]
        9 NEWTABLE                         R2 0 3
       11 DUPTABLE                         R3 K7 [{"text", "children", "icon"}]
       12 LOADK                            R4 K8 ["Workspace"]
       13 SETTABLEKS                       R4 R3 K4 ["text"]
       15 NEWTABLE                         R4 0 1
       17 DUPTABLE                         R5 K9 [{"text", "children"}]
       18 LOADK                            R6 K10 ["Ocean"]
       19 SETTABLEKS                       R6 R5 K4 ["text"]
       21 NEWTABLE                         R6 0 1
       23 DUPTABLE                         R7 K11 [{"text"}]
       24 LOADK                            R8 K12 ["Billy The Fish"]
       25 SETTABLEKS                       R8 R7 K4 ["text"]
       27 SETLIST                          R6 R7 1 [1]
       29 SETTABLEKS                       R6 R5 K5 ["children"]
       31 SETLIST                          R4 R5 1 [1]
       33 SETTABLEKS                       R4 R3 K5 ["children"]
       35 DUPTABLE                         R4 K15 [{"Image", "Size"}]
       36 LOADK                            R5 K16 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       37 SETTABLEKS                       R5 R4 K13 ["Image"]
       39 GETIMPORT                        R5 K19 [UDim2.new]
       41 LOADN                            R6 0
       42 LOADN                            R7 14
       43 LOADN                            R8 0
       44 LOADN                            R9 14
       45 CALL                             R5 4 1
       46 SETTABLEKS                       R5 R4 K14 ["Size"]
       48 SETTABLEKS                       R4 R3 K6 ["icon"]
       50 DUPTABLE                         R4 K9 [{"text", "children"}]
       51 LOADK                            R5 K20 ["ReplicatedStorage"]
       52 SETTABLEKS                       R5 R4 K4 ["text"]
       54 NEWTABLE                         R5 0 2
       56 DUPTABLE                         R6 K11 [{"text"}]
       57 LOADK                            R7 K21 ["WeatherSystem"]
       58 SETTABLEKS                       R7 R6 K4 ["text"]
       60 DUPTABLE                         R7 K9 [{"text", "children"}]
       61 LOADK                            R8 K22 ["CloudSystem"]
       62 SETTABLEKS                       R8 R7 K4 ["text"]
       64 NEWTABLE                         R8 0 1
       66 DUPTABLE                         R9 K11 [{"text"}]
       67 LOADK                            R10 K23 ["Cheeky Cumulus"]
       68 SETTABLEKS                       R10 R9 K4 ["text"]
       70 SETLIST                          R8 R9 1 [1]
       72 SETTABLEKS                       R8 R7 K5 ["children"]
       74 SETLIST                          R5 R6 2 [1]
       76 SETTABLEKS                       R5 R4 K5 ["children"]
       78 DUPTABLE                         R5 K9 [{"text", "children"}]
       79 LOADK                            R6 K24 ["ServerStorage"]
       80 SETTABLEKS                       R6 R5 K4 ["text"]
       82 NEWTABLE                         R6 0 1
       84 DUPTABLE                         R7 K25 [{"text", "icon", "children"}]
       85 LOADK                            R8 K26 ["Secret Base - The access code to enter the secret base is actually incredibly long - enough to make the tree view scroll"]
       86 SETTABLEKS                       R8 R7 K4 ["text"]
       88 DUPTABLE                         R8 K15 [{"Image", "Size"}]
       89 LOADK                            R9 K16 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       90 SETTABLEKS                       R9 R8 K13 ["Image"]
       92 GETIMPORT                        R9 K19 [UDim2.new]
       94 LOADN                            R10 0
       95 LOADN                            R11 14
       96 LOADN                            R12 0
       97 LOADN                            R13 14
       98 CALL                             R9 4 1
       99 SETTABLEKS                       R9 R8 K14 ["Size"]
      101 SETTABLEKS                       R8 R7 K6 ["icon"]
      103 NEWTABLE                         R8 0 1
      105 DUPTABLE                         R9 K11 [{"text"}]
      106 LOADK                            R10 K27 ["Obsidian Door"]
      107 SETTABLEKS                       R10 R9 K4 ["text"]
      109 SETLIST                          R8 R9 1 [1]
      111 SETTABLEKS                       R8 R7 K5 ["children"]
      113 SETLIST                          R6 R7 1 [1]
      115 SETTABLEKS                       R6 R5 K5 ["children"]
      117 SETLIST                          R2 R3 3 [1]
      119 SETTABLEKS                       R2 R1 K2 ["Items"]
      121 SETTABLEKS                       R1 R0 K28 ["state"]
      123 RETURN                           R0 0

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
        4 DUPTABLE                         R3 K8 [{"Size", "Expansion", "Selection", "RootItems", "Style", "OnExpansionChange", "OnSelectionChange"}]
        5 GETIMPORT                        R4 K11 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 240
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K12 ["state"]
       16 GETTABLEKS                       R4 R4 K2 ["Expansion"]
       18 SETTABLEKS                       R4 R3 K2 ["Expansion"]
       20 GETTABLEKS                       R4 R0 K12 ["state"]
       22 GETTABLEKS                       R4 R4 K3 ["Selection"]
       24 SETTABLEKS                       R4 R3 K3 ["Selection"]
       26 GETTABLEKS                       R4 R0 K12 ["state"]
       28 GETTABLEKS                       R4 R4 K13 ["Items"]
       30 SETTABLEKS                       R4 R3 K4 ["RootItems"]
       32 LOADK                            R4 K14 ["BorderBox"]
       33 SETTABLEKS                       R4 R3 K5 ["Style"]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U2
       38 SETTABLEKS                       R4 R3 K6 ["OnExpansionChange"]
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R4 R3 K7 ["OnSelectionChange"]
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1

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
       59 DUPTABLE                         R8 K24 [{"name", "story"}]
       60 LOADK                            R9 K25 ["Standard"]
       61 SETTABLEKS                       R9 R8 K22 ["name"]
       63 SETTABLEKS                       R5 R8 K23 ["story"]
       65 SETLIST                          R7 R8 1 [1]
       67 SETTABLEKS                       R7 R6 K20 ["stories"]
       69 RETURN                           R6 1
