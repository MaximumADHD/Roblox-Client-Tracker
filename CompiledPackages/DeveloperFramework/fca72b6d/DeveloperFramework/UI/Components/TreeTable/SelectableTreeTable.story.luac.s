PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Expansion", "Selection", "Items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Selection"]
        9 NEWTABLE                         R2 0 3
       11 DUPTABLE                         R3 K7 [{"name", "value", "children"}]
       12 LOADK                            R4 K8 ["Workspace"]
       13 SETTABLEKS                       R4 R3 K4 ["name"]
       15 DUPTABLE                         R4 K11 [{"Value", "LeftIcon"}]
       16 LOADN                            R5 12
       17 SETTABLEKS                       R5 R4 K9 ["Value"]
       19 DUPTABLE                         R5 K14 [{"Image", "Size"}]
       20 LOADK                            R6 K15 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       21 SETTABLEKS                       R6 R5 K12 ["Image"]
       23 GETIMPORT                        R6 K18 [UDim2.new]
       25 LOADN                            R7 0
       26 LOADN                            R8 14
       27 LOADN                            R9 0
       28 LOADN                            R10 14
       29 CALL                             R6 4 1
       30 SETTABLEKS                       R6 R5 K13 ["Size"]
       32 SETTABLEKS                       R5 R4 K10 ["LeftIcon"]
       34 SETTABLEKS                       R4 R3 K5 ["value"]
       36 NEWTABLE                         R4 0 1
       38 DUPTABLE                         R5 K7 [{"name", "value", "children"}]
       39 LOADK                            R6 K19 ["Ocean"]
       40 SETTABLEKS                       R6 R5 K4 ["name"]
       42 LOADN                            R6 53
       43 SETTABLEKS                       R6 R5 K5 ["value"]
       45 NEWTABLE                         R6 0 1
       47 DUPTABLE                         R7 K20 [{"name", "value"}]
       48 LOADK                            R8 K21 ["Billy The Fish"]
       49 SETTABLEKS                       R8 R7 K4 ["name"]
       51 LOADN                            R8 12
       52 SETTABLEKS                       R8 R7 K5 ["value"]
       54 SETLIST                          R6 R7 1 [1]
       56 SETTABLEKS                       R6 R5 K6 ["children"]
       58 SETLIST                          R4 R5 1 [1]
       60 SETTABLEKS                       R4 R3 K6 ["children"]
       62 DUPTABLE                         R4 K7 [{"name", "value", "children"}]
       63 LOADK                            R5 K22 ["ReplicatedStorage"]
       64 SETTABLEKS                       R5 R4 K4 ["name"]
       66 LOADN                            R5 18
       67 SETTABLEKS                       R5 R4 K5 ["value"]
       69 NEWTABLE                         R5 0 2
       71 DUPTABLE                         R6 K20 [{"name", "value"}]
       72 LOADK                            R7 K23 ["WeatherSystem"]
       73 SETTABLEKS                       R7 R6 K4 ["name"]
       75 DUPTABLE                         R7 K11 [{"Value", "LeftIcon"}]
       76 LOADN                            R8 193
       77 SETTABLEKS                       R8 R7 K9 ["Value"]
       79 DUPTABLE                         R8 K14 [{"Image", "Size"}]
       80 LOADK                            R9 K15 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       81 SETTABLEKS                       R9 R8 K12 ["Image"]
       83 GETIMPORT                        R9 K18 [UDim2.new]
       85 LOADN                            R10 0
       86 LOADN                            R11 14
       87 LOADN                            R12 0
       88 LOADN                            R13 14
       89 CALL                             R9 4 1
       90 SETTABLEKS                       R9 R8 K13 ["Size"]
       92 SETTABLEKS                       R8 R7 K10 ["LeftIcon"]
       94 SETTABLEKS                       R7 R6 K5 ["value"]
       96 DUPTABLE                         R7 K7 [{"name", "value", "children"}]
       97 LOADK                            R8 K24 ["CloudSystem"]
       98 SETTABLEKS                       R8 R7 K4 ["name"]
      100 LOADN                            R8 41
      101 SETTABLEKS                       R8 R7 K5 ["value"]
      103 NEWTABLE                         R8 0 1
      105 DUPTABLE                         R9 K20 [{"name", "value"}]
      106 LOADK                            R10 K25 ["Cheeky Cumulus"]
      107 SETTABLEKS                       R10 R9 K4 ["name"]
      109 DUPTABLE                         R10 K11 [{"Value", "LeftIcon"}]
      110 LOADN                            R11 200
      111 SETTABLEKS                       R11 R10 K9 ["Value"]
      113 DUPTABLE                         R11 K14 [{"Image", "Size"}]
      114 LOADK                            R12 K15 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      115 SETTABLEKS                       R12 R11 K12 ["Image"]
      117 GETIMPORT                        R12 K18 [UDim2.new]
      119 LOADN                            R13 0
      120 LOADN                            R14 14
      121 LOADN                            R15 0
      122 LOADN                            R16 14
      123 CALL                             R12 4 1
      124 SETTABLEKS                       R12 R11 K13 ["Size"]
      126 SETTABLEKS                       R11 R10 K10 ["LeftIcon"]
      128 SETTABLEKS                       R10 R9 K5 ["value"]
      130 SETLIST                          R8 R9 1 [1]
      132 SETTABLEKS                       R8 R7 K6 ["children"]
      134 SETLIST                          R5 R6 2 [1]
      136 SETTABLEKS                       R5 R4 K6 ["children"]
      138 DUPTABLE                         R5 K7 [{"name", "value", "children"}]
      139 LOADK                            R6 K26 ["ServerStorage"]
      140 SETTABLEKS                       R6 R5 K4 ["name"]
      142 LOADN                            R6 30
      143 SETTABLEKS                       R6 R5 K5 ["value"]
      145 NEWTABLE                         R6 0 1
      147 DUPTABLE                         R7 K7 [{"name", "value", "children"}]
      148 LOADK                            R8 K27 ["Secret Base"]
      149 SETTABLEKS                       R8 R7 K4 ["name"]
      151 LOADN                            R8 212
      152 SETTABLEKS                       R8 R7 K5 ["value"]
      154 NEWTABLE                         R8 0 1
      156 DUPTABLE                         R9 K20 [{"name", "value"}]
      157 LOADK                            R10 K28 ["Obsidian Door"]
      158 SETTABLEKS                       R10 R9 K4 ["name"]
      160 LOADN                            R10 120
      161 SETTABLEKS                       R10 R9 K5 ["value"]
      163 SETLIST                          R8 R9 1 [1]
      165 SETTABLEKS                       R8 R7 K6 ["children"]
      167 SETLIST                          R6 R7 1 [1]
      169 SETTABLEKS                       R6 R5 K6 ["children"]
      171 SETLIST                          R2 R3 3 [1]
      173 SETTABLEKS                       R2 R1 K2 ["Items"]
      175 SETTABLEKS                       R1 R0 K29 ["state"]
      177 RETURN                           R0 0

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
        4 DUPTABLE                         R3 K10 [{"Size", "Columns", "OnExpansionChange", "OnSelectionChange", "Expansion", "Selection", "RootItems", "GetChildren", "Scroll"}]
        5 GETIMPORT                        R4 K13 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 NEWTABLE                         R4 0 2
       16 DUPTABLE                         R5 K16 [{"Name", "Key"}]
       17 LOADK                            R6 K14 ["Name"]
       18 SETTABLEKS                       R6 R5 K14 ["Name"]
       20 LOADK                            R6 K17 ["name"]
       21 SETTABLEKS                       R6 R5 K15 ["Key"]
       23 DUPTABLE                         R6 K16 [{"Name", "Key"}]
       24 LOADK                            R7 K18 ["Value"]
       25 SETTABLEKS                       R7 R6 K14 ["Name"]
       27 LOADK                            R7 K19 ["value"]
       28 SETTABLEKS                       R7 R6 K15 ["Key"]
       30 SETLIST                          R4 R5 2 [1]
       32 SETTABLEKS                       R4 R3 K2 ["Columns"]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U2
       37 SETTABLEKS                       R4 R3 K3 ["OnExpansionChange"]
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R4 R3 K4 ["OnSelectionChange"]
       43 GETTABLEKS                       R4 R0 K20 ["state"]
       45 GETTABLEKS                       R4 R4 K5 ["Expansion"]
       47 SETTABLEKS                       R4 R3 K5 ["Expansion"]
       49 GETTABLEKS                       R4 R0 K20 ["state"]
       51 GETTABLEKS                       R4 R4 K6 ["Selection"]
       53 SETTABLEKS                       R4 R3 K6 ["Selection"]
       55 GETTABLEKS                       R4 R0 K20 ["state"]
       57 GETTABLEKS                       R4 R4 K21 ["Items"]
       59 SETTABLEKS                       R4 R3 K7 ["RootItems"]
       61 DUPCLOSURE                       R4 K22 [PROTO_3]
       62 SETTABLEKS                       R4 R3 K8 ["GetChildren"]
       64 LOADB                            R4 1
       65 SETTABLEKS                       R4 R3 K9 ["Scroll"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

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
