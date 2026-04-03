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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["createElement"]
       15 GETUPVAL                         R6 1
       16 DUPTABLE                         R7 K13 [{"Size", "Columns", "OnExpansionChange", "OnSelectionChange", "Expansion", "Selection", "RootItems", "GetChildren", "Scroll", "Variant", "DisableHover"}]
       17 GETIMPORT                        R8 K16 [UDim2.new]
       19 LOADN                            R9 1
       20 LOADN                            R10 0
       21 LOADN                            R11 0
       22 LOADN                            R12 240
       23 CALL                             R8 4 1
       24 SETTABLEKS                       R8 R7 K2 ["Size"]
       26 NEWTABLE                         R8 0 2
       28 DUPTABLE                         R9 K19 [{"Name", "Key"}]
       29 LOADK                            R10 K17 ["Name"]
       30 SETTABLEKS                       R10 R9 K17 ["Name"]
       32 LOADK                            R10 K20 ["name"]
       33 SETTABLEKS                       R10 R9 K18 ["Key"]
       35 DUPTABLE                         R10 K19 [{"Name", "Key"}]
       36 LOADK                            R11 K21 ["Value"]
       37 SETTABLEKS                       R11 R10 K17 ["Name"]
       39 LOADK                            R11 K22 ["value"]
       40 SETTABLEKS                       R11 R10 K18 ["Key"]
       42 SETLIST                          R8 R9 2 [1]
       44 SETTABLEKS                       R8 R7 K3 ["Columns"]
       46 NEWCLOSURE                       R8 P0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U2
       49 SETTABLEKS                       R8 R7 K4 ["OnExpansionChange"]
       51 SETTABLEKS                       R2 R7 K5 ["OnSelectionChange"]
       53 SETTABLEKS                       R3 R7 K6 ["Expansion"]
       55 SETTABLEKS                       R1 R7 K7 ["Selection"]
       57 GETUPVAL                         R8 3
       58 SETTABLEKS                       R8 R7 K8 ["RootItems"]
       60 DUPCLOSURE                       R8 K23 [PROTO_2]
       61 SETTABLEKS                       R8 R7 K9 ["GetChildren"]
       63 LOADB                            R8 0
       64 SETTABLEKS                       R8 R7 K10 ["Scroll"]
       66 LOADK                            R8 K24 ["modern"]
       67 SETTABLEKS                       R8 R7 K11 ["Variant"]
       69 GETTABLEKS                       R9 R0 K25 ["controls"]
       71 GETTABLEKS                       R8 R9 K12 ["DisableHover"]
       73 SETTABLEKS                       R8 R7 K12 ["DisableHover"]
       75 CALL                             R5 2 -1
       76 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K9 ["Util"]
       22 GETTABLEKS                       R4 R5 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K11 ["Components"]
       31 GETTABLEKS                       R5 R6 K12 ["TreeTable"]
       33 CALL                             R4 1 1
       34 NEWTABLE                         R5 0 3
       36 DUPTABLE                         R6 K16 [{"name", "value", "children"}]
       37 LOADK                            R7 K17 ["Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap Very long workspace that should wrap"]
       38 SETTABLEKS                       R7 R6 K13 ["name"]
       40 DUPTABLE                         R7 K20 [{"Value", "LeftIcon"}]
       41 LOADK                            R8 K21 ["Very long value that should wrap Very long value that should wrap Very long value that should wrap Very long value that should wrap Very long value that should wrap"]
       42 SETTABLEKS                       R8 R7 K18 ["Value"]
       44 DUPTABLE                         R8 K24 [{"Image", "Size"}]
       45 LOADK                            R9 K25 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       46 SETTABLEKS                       R9 R8 K22 ["Image"]
       48 GETIMPORT                        R9 K28 [UDim2.new]
       50 LOADN                            R10 0
       51 LOADN                            R11 14
       52 LOADN                            R12 0
       53 LOADN                            R13 14
       54 CALL                             R9 4 1
       55 SETTABLEKS                       R9 R8 K23 ["Size"]
       57 SETTABLEKS                       R8 R7 K19 ["LeftIcon"]
       59 SETTABLEKS                       R7 R6 K14 ["value"]
       61 NEWTABLE                         R7 0 1
       63 DUPTABLE                         R8 K16 [{"name", "value", "children"}]
       64 LOADK                            R9 K29 ["Ocean"]
       65 SETTABLEKS                       R9 R8 K13 ["name"]
       67 LOADN                            R9 53
       68 SETTABLEKS                       R9 R8 K14 ["value"]
       70 NEWTABLE                         R9 0 1
       72 DUPTABLE                         R10 K30 [{"name", "value"}]
       73 LOADK                            R11 K31 ["Billy The Fish"]
       74 SETTABLEKS                       R11 R10 K13 ["name"]
       76 LOADN                            R11 12
       77 SETTABLEKS                       R11 R10 K14 ["value"]
       79 SETLIST                          R9 R10 1 [1]
       81 SETTABLEKS                       R9 R8 K15 ["children"]
       83 SETLIST                          R7 R8 1 [1]
       85 SETTABLEKS                       R7 R6 K15 ["children"]
       87 DUPTABLE                         R7 K16 [{"name", "value", "children"}]
       88 LOADK                            R8 K32 ["ReplicatedStorage"]
       89 SETTABLEKS                       R8 R7 K13 ["name"]
       91 LOADN                            R8 18
       92 SETTABLEKS                       R8 R7 K14 ["value"]
       94 NEWTABLE                         R8 0 2
       96 DUPTABLE                         R9 K30 [{"name", "value"}]
       97 LOADK                            R10 K33 ["WeatherSystem"]
       98 SETTABLEKS                       R10 R9 K13 ["name"]
      100 DUPTABLE                         R10 K20 [{"Value", "LeftIcon"}]
      101 LOADN                            R11 193
      102 SETTABLEKS                       R11 R10 K18 ["Value"]
      104 DUPTABLE                         R11 K24 [{"Image", "Size"}]
      105 LOADK                            R12 K25 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      106 SETTABLEKS                       R12 R11 K22 ["Image"]
      108 GETIMPORT                        R12 K28 [UDim2.new]
      110 LOADN                            R13 0
      111 LOADN                            R14 14
      112 LOADN                            R15 0
      113 LOADN                            R16 14
      114 CALL                             R12 4 1
      115 SETTABLEKS                       R12 R11 K23 ["Size"]
      117 SETTABLEKS                       R11 R10 K19 ["LeftIcon"]
      119 SETTABLEKS                       R10 R9 K14 ["value"]
      121 DUPTABLE                         R10 K16 [{"name", "value", "children"}]
      122 LOADK                            R11 K34 ["CloudSystem"]
      123 SETTABLEKS                       R11 R10 K13 ["name"]
      125 LOADN                            R11 41
      126 SETTABLEKS                       R11 R10 K14 ["value"]
      128 NEWTABLE                         R11 0 1
      130 DUPTABLE                         R12 K30 [{"name", "value"}]
      131 LOADK                            R13 K35 ["Cheeky Cumulus"]
      132 SETTABLEKS                       R13 R12 K13 ["name"]
      134 DUPTABLE                         R13 K20 [{"Value", "LeftIcon"}]
      135 LOADN                            R14 200
      136 SETTABLEKS                       R14 R13 K18 ["Value"]
      138 DUPTABLE                         R14 K24 [{"Image", "Size"}]
      139 LOADK                            R15 K25 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      140 SETTABLEKS                       R15 R14 K22 ["Image"]
      142 GETIMPORT                        R15 K28 [UDim2.new]
      144 LOADN                            R16 0
      145 LOADN                            R17 14
      146 LOADN                            R18 0
      147 LOADN                            R19 14
      148 CALL                             R15 4 1
      149 SETTABLEKS                       R15 R14 K23 ["Size"]
      151 SETTABLEKS                       R14 R13 K19 ["LeftIcon"]
      153 SETTABLEKS                       R13 R12 K14 ["value"]
      155 SETLIST                          R11 R12 1 [1]
      157 SETTABLEKS                       R11 R10 K15 ["children"]
      159 SETLIST                          R8 R9 2 [1]
      161 SETTABLEKS                       R8 R7 K15 ["children"]
      163 DUPTABLE                         R8 K16 [{"name", "value", "children"}]
      164 LOADK                            R9 K36 ["ServerStorage"]
      165 SETTABLEKS                       R9 R8 K13 ["name"]
      167 LOADN                            R9 30
      168 SETTABLEKS                       R9 R8 K14 ["value"]
      170 NEWTABLE                         R9 0 1
      172 DUPTABLE                         R10 K16 [{"name", "value", "children"}]
      173 LOADK                            R11 K37 ["Secret Base"]
      174 SETTABLEKS                       R11 R10 K13 ["name"]
      176 LOADN                            R11 212
      177 SETTABLEKS                       R11 R10 K14 ["value"]
      179 NEWTABLE                         R11 0 1
      181 DUPTABLE                         R12 K30 [{"name", "value"}]
      182 LOADK                            R13 K38 ["Obsidian Door"]
      183 SETTABLEKS                       R13 R12 K13 ["name"]
      185 LOADN                            R13 120
      186 SETTABLEKS                       R13 R12 K14 ["value"]
      188 SETLIST                          R11 R12 1 [1]
      190 SETTABLEKS                       R11 R10 K15 ["children"]
      192 SETLIST                          R9 R10 1 [1]
      194 SETTABLEKS                       R9 R8 K15 ["children"]
      196 SETLIST                          R5 R6 3 [1]
      198 DUPCLOSURE                       R6 K39 [PROTO_3]
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R5
      203 SETGLOBAL                        R6 K40 ["ModernTreeTableBaseStory"]
      205 DUPTABLE                         R6 K43 [{"controls", "stories"}]
      206 DUPTABLE                         R7 K45 [{"DisableHover"}]
      207 LOADB                            R8 0
      208 SETTABLEKS                       R8 R7 K44 ["DisableHover"]
      210 SETTABLEKS                       R7 R6 K41 ["controls"]
      212 NEWTABLE                         R7 0 1
      214 DUPTABLE                         R8 K47 [{"name", "story"}]
      215 LOADK                            R9 K48 ["Base"]
      216 SETTABLEKS                       R9 R8 K13 ["name"]
      218 GETGLOBAL                        R9 K40 ["ModernTreeTableBaseStory"]
      220 SETTABLEKS                       R9 R8 K46 ["story"]
      222 SETLIST                          R7 R8 1 [1]
      224 SETTABLEKS                       R7 R6 K42 ["stories"]
      226 RETURN                           R6 1
