PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["createElement"]
       15 GETUPVAL                         R6 1
       16 DUPTABLE                         R7 K15 [{["Size"], ["Columns"], ["OnExpansionChange"], ["OnSelectionChange"], ["Expansion"], ["Selection"], ["RootItems"], ["GetChildren"], ["Scroll"] = False, ["Variant"] = "modern", ["DisableHover"]}]
       17 GETIMPORT                        R8 K18 [UDim2.new]
       19 LOADN                            R9 1
       20 LOADN                            R10 0
       21 LOADN                            R11 0
       22 LOADN                            R12 240
       23 CALL                             R8 4 1
       24 SETTABLEKS                       R8 R7 K2 ["Size"]
       26 NEWTABLE                         R8 0 2
       28 DUPTABLE                         R9 K22 [{["Name"] = "Name", ["Key"] = "name"}]
       29 DUPTABLE                         R10 K25 [{["Name"] = "Value", ["Key"] = "value"}]
       30 SETLIST                          R8 R9 2 [1]
       32 SETTABLEKS                       R8 R7 K3 ["Columns"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U2
       37 SETTABLEKS                       R8 R7 K4 ["OnExpansionChange"]
       39 SETTABLEKS                       R2 R7 K5 ["OnSelectionChange"]
       41 SETTABLEKS                       R3 R7 K6 ["Expansion"]
       43 SETTABLEKS                       R1 R7 K7 ["Selection"]
       45 GETUPVAL                         R8 3
       46 SETTABLEKS                       R8 R7 K8 ["RootItems"]
       48 DUPCLOSURE                       R8 K26 [PROTO_2]
       49 SETTABLEKS                       R8 R7 K9 ["GetChildren"]
       51 GETTABLEKS                       R8 R0 K27 ["controls"]
       53 GETTABLEKS                       R8 R8 K14 ["DisableHover"]
       55 SETTABLEKS                       R8 R7 K14 ["DisableHover"]
       57 CALL                             R5 2 -1
       58 RETURN                           R5 -1

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
       20 GETTABLEKS                       R4 R0 K9 ["Util"]
       22 GETTABLEKS                       R4 R4 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K11 ["Components"]
       31 GETTABLEKS                       R5 R5 K12 ["TreeTable"]
       33 CALL                             R4 1 1
       34 NEWTABLE                         R5 0 3
       36 DUPTABLE                         R6 K17 [{["name"] = "Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap", ["value"], ["children"]}]
       37 DUPTABLE                         R7 K21 [{["Value"] = "Very long value that should wrap Very long value that should wrap Very long value that should wrap Very long value that should wrap Very long value that should wrap", ["LeftIcon"]}]
       38 DUPTABLE                         R8 K25 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       39 GETIMPORT                        R9 K28 [UDim2.new]
       41 LOADN                            R10 0
       42 LOADN                            R11 14
       43 LOADN                            R12 0
       44 LOADN                            R13 14
       45 CALL                             R9 4 1
       46 SETTABLEKS                       R9 R8 K24 ["Size"]
       48 SETTABLEKS                       R8 R7 K20 ["LeftIcon"]
       50 SETTABLEKS                       R7 R6 K15 ["value"]
       52 NEWTABLE                         R7 0 1
       54 DUPTABLE                         R8 K31 [{["name"] = "Ocean", ["value"] = 53, ["children"]}]
       55 NEWTABLE                         R9 0 1
       57 DUPTABLE                         R10 K34 [{["name"] = "Billy The Fish", ["value"] = 12}]
       58 SETLIST                          R9 R10 1 [1]
       60 SETTABLEKS                       R9 R8 K16 ["children"]
       62 SETLIST                          R7 R8 1 [1]
       64 SETTABLEKS                       R7 R6 K16 ["children"]
       66 DUPTABLE                         R7 K37 [{["name"] = "ReplicatedStorage", ["value"] = 18, ["children"]}]
       67 NEWTABLE                         R8 0 2
       69 DUPTABLE                         R9 K39 [{["name"] = "WeatherSystem", ["value"]}]
       70 DUPTABLE                         R10 K41 [{["Value"] = 193, ["LeftIcon"]}]
       71 DUPTABLE                         R11 K25 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       72 GETIMPORT                        R12 K28 [UDim2.new]
       74 LOADN                            R13 0
       75 LOADN                            R14 14
       76 LOADN                            R15 0
       77 LOADN                            R16 14
       78 CALL                             R12 4 1
       79 SETTABLEKS                       R12 R11 K24 ["Size"]
       81 SETTABLEKS                       R11 R10 K20 ["LeftIcon"]
       83 SETTABLEKS                       R10 R9 K15 ["value"]
       85 DUPTABLE                         R10 K44 [{["name"] = "CloudSystem", ["value"] = 9001, ["children"]}]
       86 NEWTABLE                         R11 0 1
       88 DUPTABLE                         R12 K46 [{["name"] = "Cheeky Cumulus", ["value"]}]
       89 DUPTABLE                         R13 K48 [{["Value"] = 200, ["LeftIcon"]}]
       90 DUPTABLE                         R14 K25 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       91 GETIMPORT                        R15 K28 [UDim2.new]
       93 LOADN                            R16 0
       94 LOADN                            R17 14
       95 LOADN                            R18 0
       96 LOADN                            R19 14
       97 CALL                             R15 4 1
       98 SETTABLEKS                       R15 R14 K24 ["Size"]
      100 SETTABLEKS                       R14 R13 K20 ["LeftIcon"]
      102 SETTABLEKS                       R13 R12 K15 ["value"]
      104 SETLIST                          R11 R12 1 [1]
      106 SETTABLEKS                       R11 R10 K16 ["children"]
      108 SETLIST                          R8 R9 2 [1]
      110 SETTABLEKS                       R8 R7 K16 ["children"]
      112 DUPTABLE                         R8 K51 [{["name"] = "ServerStorage", ["value"] = 30, ["children"]}]
      113 NEWTABLE                         R9 0 1
      115 DUPTABLE                         R10 K54 [{["name"] = "Secret Base", ["value"] = 212, ["children"]}]
      116 NEWTABLE                         R11 0 1
      118 DUPTABLE                         R12 K57 [{["name"] = "Obsidian Door", ["value"] = 120}]
      119 SETLIST                          R11 R12 1 [1]
      121 SETTABLEKS                       R11 R10 K16 ["children"]
      123 SETLIST                          R9 R10 1 [1]
      125 SETTABLEKS                       R9 R8 K16 ["children"]
      127 SETLIST                          R5 R6 3 [1]
      129 DUPCLOSURE                       R6 K58 [PROTO_3]
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R5
      134 SETGLOBAL                        R6 K59 ["ModernTreeTableBaseStory"]
      136 DUPTABLE                         R6 K62 [{"controls", "stories"}]
      137 DUPTABLE                         R7 K65 [{["DisableHover"] = False}]
      138 SETTABLEKS                       R7 R6 K60 ["controls"]
      140 NEWTABLE                         R7 0 1
      142 DUPTABLE                         R8 K68 [{["name"] = "Base", ["story"]}]
      143 GETGLOBAL                        R9 K59 ["ModernTreeTableBaseStory"]
      145 SETTABLEKS                       R9 R8 K67 ["story"]
      147 SETLIST                          R7 R8 1 [1]
      149 SETTABLEKS                       R7 R6 K61 ["stories"]
      151 RETURN                           R6 1
