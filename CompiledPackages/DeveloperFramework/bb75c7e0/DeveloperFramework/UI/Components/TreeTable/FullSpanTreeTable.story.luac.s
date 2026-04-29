PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Expansion", "Selection", "Items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Selection"]
        9 NEWTABLE                         R2 0 3
       11 DUPTABLE                         R3 K6 [{"name", "children"}]
       12 LOADK                            R4 K7 ["Workspace.AbsurdlyLongFIlePath1.AbsurdlyLongFIlePath2.AbsurdlyLongFIlePath3.AbsurdlyLongFIlePath4.Script"]
       13 SETTABLEKS                       R4 R3 K4 ["name"]
       15 NEWTABLE                         R4 0 1
       17 DUPTABLE                         R5 K13 [{"name", "Col1", "Col2", "Col3", "Col4", "Col5", "children"}]
       18 LOADK                            R6 K14 ["Ocean"]
       19 SETTABLEKS                       R6 R5 K4 ["name"]
       21 LOADN                            R6 53
       22 SETTABLEKS                       R6 R5 K8 ["Col1"]
       24 LOADN                            R6 54
       25 SETTABLEKS                       R6 R5 K9 ["Col2"]
       27 LOADN                            R6 55
       28 SETTABLEKS                       R6 R5 K10 ["Col3"]
       30 LOADN                            R6 56
       31 SETTABLEKS                       R6 R5 K11 ["Col4"]
       33 LOADN                            R6 57
       34 SETTABLEKS                       R6 R5 K12 ["Col5"]
       36 NEWTABLE                         R6 0 1
       38 DUPTABLE                         R7 K15 [{"name", "Col1", "Col2", "Col3", "Col4", "Col5"}]
       39 LOADK                            R8 K16 ["Billy The Fish"]
       40 SETTABLEKS                       R8 R7 K4 ["name"]
       42 LOADN                            R8 12
       43 SETTABLEKS                       R8 R7 K8 ["Col1"]
       45 LOADN                            R8 13
       46 SETTABLEKS                       R8 R7 K9 ["Col2"]
       48 LOADN                            R8 14
       49 SETTABLEKS                       R8 R7 K10 ["Col3"]
       51 LOADN                            R8 15
       52 SETTABLEKS                       R8 R7 K11 ["Col4"]
       54 LOADN                            R8 16
       55 SETTABLEKS                       R8 R7 K12 ["Col5"]
       57 SETLIST                          R6 R7 1 [1]
       59 SETTABLEKS                       R6 R5 K5 ["children"]
       61 SETLIST                          R4 R5 1 [1]
       63 SETTABLEKS                       R4 R3 K5 ["children"]
       65 DUPTABLE                         R4 K6 [{"name", "children"}]
       66 LOADK                            R5 K17 ["ReplicatedStorage"]
       67 SETTABLEKS                       R5 R4 K4 ["name"]
       69 NEWTABLE                         R5 0 2
       71 DUPTABLE                         R6 K13 [{"name", "Col1", "Col2", "Col3", "Col4", "Col5", "children"}]
       72 LOADK                            R7 K18 ["WeatherSystem"]
       73 SETTABLEKS                       R7 R6 K4 ["name"]
       75 LOADK                            R7 K19 ["a"]
       76 SETTABLEKS                       R7 R6 K8 ["Col1"]
       78 LOADK                            R7 K20 ["b"]
       79 SETTABLEKS                       R7 R6 K9 ["Col2"]
       81 LOADK                            R7 K21 ["c"]
       82 SETTABLEKS                       R7 R6 K10 ["Col3"]
       84 LOADK                            R7 K22 ["d"]
       85 SETTABLEKS                       R7 R6 K11 ["Col4"]
       87 LOADK                            R7 K23 ["e"]
       88 SETTABLEKS                       R7 R6 K12 ["Col5"]
       90 DUPTABLE                         R7 K25 [{"Col1", "Col2", "Col3", "Col4", "Col5", "LeftIcon"}]
       91 LOADN                            R8 193
       92 SETTABLEKS                       R8 R7 K8 ["Col1"]
       94 LOADN                            R8 194
       95 SETTABLEKS                       R8 R7 K9 ["Col2"]
       97 LOADN                            R8 195
       98 SETTABLEKS                       R8 R7 K10 ["Col3"]
      100 LOADN                            R8 196
      101 SETTABLEKS                       R8 R7 K11 ["Col4"]
      103 LOADN                            R8 197
      104 SETTABLEKS                       R8 R7 K12 ["Col5"]
      106 DUPTABLE                         R8 K28 [{"Image", "Size"}]
      107 LOADK                            R9 K29 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      108 SETTABLEKS                       R9 R8 K26 ["Image"]
      110 GETIMPORT                        R9 K32 [UDim2.new]
      112 LOADN                            R10 0
      113 LOADN                            R11 14
      114 LOADN                            R12 0
      115 LOADN                            R13 14
      116 CALL                             R9 4 1
      117 SETTABLEKS                       R9 R8 K27 ["Size"]
      119 SETTABLEKS                       R8 R7 K24 ["LeftIcon"]
      121 SETTABLEKS                       R7 R6 K5 ["children"]
      123 DUPTABLE                         R7 K13 [{"name", "Col1", "Col2", "Col3", "Col4", "Col5", "children"}]
      124 LOADK                            R8 K33 ["CloudSystem"]
      125 SETTABLEKS                       R8 R7 K4 ["name"]
      127 LOADN                            R8 41
      128 SETTABLEKS                       R8 R7 K8 ["Col1"]
      130 LOADN                            R8 42
      131 SETTABLEKS                       R8 R7 K9 ["Col2"]
      133 LOADN                            R8 43
      134 SETTABLEKS                       R8 R7 K10 ["Col3"]
      136 LOADN                            R8 44
      137 SETTABLEKS                       R8 R7 K11 ["Col4"]
      139 LOADN                            R8 45
      140 SETTABLEKS                       R8 R7 K12 ["Col5"]
      142 NEWTABLE                         R8 0 1
      144 DUPTABLE                         R9 K13 [{"name", "Col1", "Col2", "Col3", "Col4", "Col5", "children"}]
      145 LOADK                            R10 K34 ["Cheeky Cumulus"]
      146 SETTABLEKS                       R10 R9 K4 ["name"]
      148 LOADK                            R10 K23 ["e"]
      149 SETTABLEKS                       R10 R9 K8 ["Col1"]
      151 LOADK                            R10 K35 ["f"]
      152 SETTABLEKS                       R10 R9 K9 ["Col2"]
      154 LOADK                            R10 K36 ["g"]
      155 SETTABLEKS                       R10 R9 K10 ["Col3"]
      157 LOADK                            R10 K37 ["h"]
      158 SETTABLEKS                       R10 R9 K11 ["Col4"]
      160 LOADK                            R10 K38 ["i"]
      161 SETTABLEKS                       R10 R9 K12 ["Col5"]
      163 DUPTABLE                         R10 K25 [{"Col1", "Col2", "Col3", "Col4", "Col5", "LeftIcon"}]
      164 LOADN                            R11 255
      165 SETTABLEKS                       R11 R10 K8 ["Col1"]
      167 LOADN                            R11 254
      168 SETTABLEKS                       R11 R10 K9 ["Col2"]
      170 LOADN                            R11 253
      171 SETTABLEKS                       R11 R10 K10 ["Col3"]
      173 LOADN                            R11 252
      174 SETTABLEKS                       R11 R10 K11 ["Col4"]
      176 LOADN                            R11 251
      177 SETTABLEKS                       R11 R10 K12 ["Col5"]
      179 DUPTABLE                         R11 K28 [{"Image", "Size"}]
      180 LOADK                            R12 K29 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      181 SETTABLEKS                       R12 R11 K26 ["Image"]
      183 GETIMPORT                        R12 K32 [UDim2.new]
      185 LOADN                            R13 0
      186 LOADN                            R14 14
      187 LOADN                            R15 0
      188 LOADN                            R16 14
      189 CALL                             R12 4 1
      190 SETTABLEKS                       R12 R11 K27 ["Size"]
      192 SETTABLEKS                       R11 R10 K24 ["LeftIcon"]
      194 SETTABLEKS                       R10 R9 K5 ["children"]
      196 SETLIST                          R8 R9 1 [1]
      198 SETTABLEKS                       R8 R7 K5 ["children"]
      200 SETLIST                          R5 R6 2 [1]
      202 SETTABLEKS                       R5 R4 K5 ["children"]
      204 DUPTABLE                         R5 K6 [{"name", "children"}]
      205 LOADK                            R6 K39 ["ServerStorage"]
      206 SETTABLEKS                       R6 R5 K4 ["name"]
      208 NEWTABLE                         R6 0 1
      210 DUPTABLE                         R7 K13 [{"name", "Col1", "Col2", "Col3", "Col4", "Col5", "children"}]
      211 LOADK                            R8 K40 ["Secret Base"]
      212 SETTABLEKS                       R8 R7 K4 ["name"]
      214 LOADN                            R8 212
      215 SETTABLEKS                       R8 R7 K8 ["Col1"]
      217 LOADN                            R8 213
      218 SETTABLEKS                       R8 R7 K9 ["Col2"]
      220 LOADN                            R8 214
      221 SETTABLEKS                       R8 R7 K10 ["Col3"]
      223 LOADN                            R8 215
      224 SETTABLEKS                       R8 R7 K11 ["Col4"]
      226 LOADN                            R8 216
      227 SETTABLEKS                       R8 R7 K12 ["Col5"]
      229 NEWTABLE                         R8 0 1
      231 DUPTABLE                         R9 K15 [{"name", "Col1", "Col2", "Col3", "Col4", "Col5"}]
      232 LOADK                            R10 K41 ["Obsidian Door"]
      233 SETTABLEKS                       R10 R9 K4 ["name"]
      235 LOADN                            R10 120
      236 SETTABLEKS                       R10 R9 K8 ["Col1"]
      238 LOADN                            R10 121
      239 SETTABLEKS                       R10 R9 K9 ["Col2"]
      241 LOADN                            R10 122
      242 SETTABLEKS                       R10 R9 K10 ["Col3"]
      244 LOADN                            R10 123
      245 SETTABLEKS                       R10 R9 K11 ["Col4"]
      247 LOADN                            R10 124
      248 SETTABLEKS                       R10 R9 K12 ["Col5"]
      250 SETLIST                          R8 R9 1 [1]
      252 SETTABLEKS                       R8 R7 K5 ["children"]
      254 SETLIST                          R6 R7 1 [1]
      256 SETTABLEKS                       R6 R5 K5 ["children"]
      258 SETLIST                          R2 R3 3 [1]
      260 SETTABLEKS                       R2 R1 K2 ["Items"]
      262 SETTABLEKS                       R1 R0 K42 ["state"]
      264 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K2 ["state"]
        6 GETTABLEKS                       R5 R6 K0 ["Expansion"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{"Size", "Columns", "OnExpansionChange", "OnSelectionChange", "Expansion", "RootItems", "GetChildren", "Scroll", "FullSpan"}]
        5 GETIMPORT                        R4 K13 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 NEWTABLE                         R4 0 6
       16 DUPTABLE                         R5 K16 [{"Name", "Key"}]
       17 LOADK                            R6 K14 ["Name"]
       18 SETTABLEKS                       R6 R5 K14 ["Name"]
       20 LOADK                            R6 K17 ["name"]
       21 SETTABLEKS                       R6 R5 K15 ["Key"]
       23 DUPTABLE                         R6 K16 [{"Name", "Key"}]
       24 LOADK                            R7 K18 ["Col1"]
       25 SETTABLEKS                       R7 R6 K14 ["Name"]
       27 LOADK                            R7 K18 ["Col1"]
       28 SETTABLEKS                       R7 R6 K15 ["Key"]
       30 DUPTABLE                         R7 K16 [{"Name", "Key"}]
       31 LOADK                            R8 K19 ["Col2"]
       32 SETTABLEKS                       R8 R7 K14 ["Name"]
       34 LOADK                            R8 K19 ["Col2"]
       35 SETTABLEKS                       R8 R7 K15 ["Key"]
       37 DUPTABLE                         R8 K16 [{"Name", "Key"}]
       38 LOADK                            R9 K20 ["Col3"]
       39 SETTABLEKS                       R9 R8 K14 ["Name"]
       41 LOADK                            R9 K20 ["Col3"]
       42 SETTABLEKS                       R9 R8 K15 ["Key"]
       44 DUPTABLE                         R9 K16 [{"Name", "Key"}]
       45 LOADK                            R10 K21 ["Col4"]
       46 SETTABLEKS                       R10 R9 K14 ["Name"]
       48 LOADK                            R10 K21 ["Col4"]
       49 SETTABLEKS                       R10 R9 K15 ["Key"]
       51 DUPTABLE                         R10 K16 [{"Name", "Key"}]
       52 LOADK                            R11 K22 ["Col5"]
       53 SETTABLEKS                       R11 R10 K14 ["Name"]
       55 LOADK                            R11 K22 ["Col5"]
       56 SETTABLEKS                       R11 R10 K15 ["Key"]
       58 SETLIST                          R4 R5 6 [1]
       60 SETTABLEKS                       R4 R3 K2 ["Columns"]
       62 NEWCLOSURE                       R4 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U2
       65 SETTABLEKS                       R4 R3 K3 ["OnExpansionChange"]
       67 NEWCLOSURE                       R4 P1
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R4 R3 K4 ["OnSelectionChange"]
       71 GETTABLEKS                       R5 R0 K23 ["state"]
       73 GETTABLEKS                       R4 R5 K5 ["Expansion"]
       75 SETTABLEKS                       R4 R3 K5 ["Expansion"]
       77 GETTABLEKS                       R5 R0 K23 ["state"]
       79 GETTABLEKS                       R4 R5 K24 ["Items"]
       81 SETTABLEKS                       R4 R3 K6 ["RootItems"]
       83 DUPCLOSURE                       R4 K25 [PROTO_3]
       84 SETTABLEKS                       R4 R3 K7 ["GetChildren"]
       86 LOADB                            R4 1
       87 SETTABLEKS                       R4 R3 K8 ["Scroll"]
       89 LOADB                            R4 1
       90 SETTABLEKS                       R4 R3 K9 ["FullSpan"]
       92 CALL                             R1 2 -1
       93 RETURN                           R1 -1

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
       20 GETTABLEKS                       R5 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R5 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K10 ["Components"]
       31 GETTABLEKS                       R5 R6 K11 ["TreeTable"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K12 ["PureComponent"]
       36 GETIMPORT                        R11 K1 [script]
       38 GETTABLEKS                       R10 R11 K4 ["Parent"]
       40 GETTABLEKS                       R8 R10 K13 ["Name"]
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
