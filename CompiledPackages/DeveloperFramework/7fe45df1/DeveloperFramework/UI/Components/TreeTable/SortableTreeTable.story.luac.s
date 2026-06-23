PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 GETTABLEKS                       R6 R2 K0 ["Key"]
        5 GETTABLE                         R5 R0 R6
        6 FASTCALL1                        TYPEOF R5 ; [+2]
        7 GETIMPORT                        R4 K2 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+7]
       12 GETTABLEKS                       R4 R2 K0 ["Key"]
       14 GETTABLE                         R3 R0 R4
       15 GETTABLEKS                       R3 R3 K4 ["Value"]
       17 JUMPIF                           R3 ; [+3]
       18 GETTABLEKS                       R4 R2 K0 ["Key"]
       20 GETTABLE                         R3 R0 R4
       21 GETTABLEKS                       R7 R2 K0 ["Key"]
       23 GETTABLE                         R6 R1 R7
       24 FASTCALL1                        TYPEOF R6 ; [+2]
       25 GETIMPORT                        R5 K2 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+7]
       30 GETTABLEKS                       R5 R2 K0 ["Key"]
       32 GETTABLE                         R4 R1 R5
       33 GETTABLEKS                       R4 R4 K4 ["Value"]
       35 JUMPIF                           R4 ; [+3]
       36 GETTABLEKS                       R5 R2 K0 ["Key"]
       38 GETTABLE                         R4 R1 R5
       39 GETUPVAL                         R5 2
       40 GETIMPORT                        R6 K8 [Enum.SortDirection.Descending]
       42 JUMPIFNOTEQ                      R5 R6 ; [+6]
       44 JUMPIFLT                         R3 R4 ; [+2]
       46 LOADB                            R5 0 +1
       47 LOADB                            R5 1
       48 RETURN                           R5 1
       49 JUMPIFLT                         R4 R3 ; [+2]
       51 LOADB                            R5 0 +1
       52 LOADB                            R5 1
       53 RETURN                           R5 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K0 ["state"]
        8 GETTABLEKS                       R4 R4 K1 ["Items"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R3
       13 MOVE                             R6 R2
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 2
       16 DUPTABLE                         R6 K5 [{"Items", "SortChildren", "SortIndex", "SortOrder"}]
       17 SETTABLEKS                       R3 R6 K1 ["Items"]
       19 SETTABLEKS                       R2 R6 K2 ["SortChildren"]
       21 SETTABLEKS                       R0 R6 K3 ["SortIndex"]
       23 SETTABLEKS                       R1 R6 K4 ["SortOrder"]
       25 NAMECALL                         R4 R4 K6 ["setState"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["Sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"SortChildren", "SortIndex", "SortOrder", "Expansion", "Sizes", "Items"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["SortChildren"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["SortIndex"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["SortOrder"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["Expansion"]
       14 NEWTABLE                         R2 0 2
       16 GETIMPORT                        R3 K9 [UDim.new]
       18 LOADK                            R4 K10 [0.5]
       19 LOADN                            R5 0
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K9 [UDim.new]
       23 LOADK                            R5 K10 [0.5]
       24 LOADN                            R6 0
       25 CALL                             R4 2 -1
       26 SETLIST                          R2 R3 -1 [1]
       28 SETTABLEKS                       R2 R1 K4 ["Sizes"]
       30 NEWTABLE                         R2 0 3
       32 DUPTABLE                         R3 K15 [{"id", "name", "value", "children"}]
       33 LOADK                            R4 K16 ["1"]
       34 SETTABLEKS                       R4 R3 K11 ["id"]
       36 LOADK                            R4 K17 ["Workspace"]
       37 SETTABLEKS                       R4 R3 K12 ["name"]
       39 DUPTABLE                         R4 K20 [{"Value", "LeftIcon"}]
       40 LOADN                            R5 12
       41 SETTABLEKS                       R5 R4 K18 ["Value"]
       43 DUPTABLE                         R5 K23 [{"Image", "Size"}]
       44 LOADK                            R6 K24 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       45 SETTABLEKS                       R6 R5 K21 ["Image"]
       47 GETIMPORT                        R6 K26 [UDim2.new]
       49 LOADN                            R7 0
       50 LOADN                            R8 14
       51 LOADN                            R9 0
       52 LOADN                            R10 14
       53 CALL                             R6 4 1
       54 SETTABLEKS                       R6 R5 K22 ["Size"]
       56 SETTABLEKS                       R5 R4 K19 ["LeftIcon"]
       58 SETTABLEKS                       R4 R3 K13 ["value"]
       60 NEWTABLE                         R4 0 1
       62 DUPTABLE                         R5 K15 [{"id", "name", "value", "children"}]
       63 LOADK                            R6 K27 ["1.1"]
       64 SETTABLEKS                       R6 R5 K11 ["id"]
       66 LOADK                            R6 K28 ["Ocean"]
       67 SETTABLEKS                       R6 R5 K12 ["name"]
       69 LOADN                            R6 53
       70 SETTABLEKS                       R6 R5 K13 ["value"]
       72 NEWTABLE                         R6 0 1
       74 DUPTABLE                         R7 K29 [{"id", "name", "value"}]
       75 LOADK                            R8 K30 ["1.1.1"]
       76 SETTABLEKS                       R8 R7 K11 ["id"]
       78 LOADK                            R8 K31 ["Billy The Fish"]
       79 SETTABLEKS                       R8 R7 K12 ["name"]
       81 LOADN                            R8 12
       82 SETTABLEKS                       R8 R7 K13 ["value"]
       84 SETLIST                          R6 R7 1 [1]
       86 SETTABLEKS                       R6 R5 K14 ["children"]
       88 SETLIST                          R4 R5 1 [1]
       90 SETTABLEKS                       R4 R3 K14 ["children"]
       92 DUPTABLE                         R4 K15 [{"id", "name", "value", "children"}]
       93 LOADK                            R5 K32 ["2"]
       94 SETTABLEKS                       R5 R4 K11 ["id"]
       96 LOADK                            R5 K33 ["ReplicatedStorage"]
       97 SETTABLEKS                       R5 R4 K12 ["name"]
       99 LOADN                            R5 18
      100 SETTABLEKS                       R5 R4 K13 ["value"]
      102 NEWTABLE                         R5 0 2
      104 DUPTABLE                         R6 K29 [{"id", "name", "value"}]
      105 LOADK                            R7 K34 ["2.1"]
      106 SETTABLEKS                       R7 R6 K11 ["id"]
      108 LOADK                            R7 K35 ["WeatherSystem"]
      109 SETTABLEKS                       R7 R6 K12 ["name"]
      111 DUPTABLE                         R7 K20 [{"Value", "LeftIcon"}]
      112 LOADN                            R8 193
      113 SETTABLEKS                       R8 R7 K18 ["Value"]
      115 DUPTABLE                         R8 K23 [{"Image", "Size"}]
      116 LOADK                            R9 K24 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      117 SETTABLEKS                       R9 R8 K21 ["Image"]
      119 GETIMPORT                        R9 K26 [UDim2.new]
      121 LOADN                            R10 0
      122 LOADN                            R11 14
      123 LOADN                            R12 0
      124 LOADN                            R13 14
      125 CALL                             R9 4 1
      126 SETTABLEKS                       R9 R8 K22 ["Size"]
      128 SETTABLEKS                       R8 R7 K19 ["LeftIcon"]
      130 SETTABLEKS                       R7 R6 K13 ["value"]
      132 DUPTABLE                         R7 K15 [{"id", "name", "value", "children"}]
      133 LOADK                            R8 K36 ["2.2"]
      134 SETTABLEKS                       R8 R7 K11 ["id"]
      136 LOADK                            R8 K37 ["CloudSystem"]
      137 SETTABLEKS                       R8 R7 K12 ["name"]
      139 LOADN                            R8 41
      140 SETTABLEKS                       R8 R7 K13 ["value"]
      142 NEWTABLE                         R8 0 1
      144 DUPTABLE                         R9 K29 [{"id", "name", "value"}]
      145 LOADK                            R10 K38 ["2.2.1"]
      146 SETTABLEKS                       R10 R9 K11 ["id"]
      148 LOADK                            R10 K39 ["Cheeky Cumulus"]
      149 SETTABLEKS                       R10 R9 K12 ["name"]
      151 DUPTABLE                         R10 K20 [{"Value", "LeftIcon"}]
      152 LOADN                            R11 200
      153 SETTABLEKS                       R11 R10 K18 ["Value"]
      155 DUPTABLE                         R11 K23 [{"Image", "Size"}]
      156 LOADK                            R12 K24 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      157 SETTABLEKS                       R12 R11 K21 ["Image"]
      159 GETIMPORT                        R12 K26 [UDim2.new]
      161 LOADN                            R13 0
      162 LOADN                            R14 14
      163 LOADN                            R15 0
      164 LOADN                            R16 14
      165 CALL                             R12 4 1
      166 SETTABLEKS                       R12 R11 K22 ["Size"]
      168 SETTABLEKS                       R11 R10 K19 ["LeftIcon"]
      170 SETTABLEKS                       R10 R9 K13 ["value"]
      172 SETLIST                          R8 R9 1 [1]
      174 SETTABLEKS                       R8 R7 K14 ["children"]
      176 SETLIST                          R5 R6 2 [1]
      178 SETTABLEKS                       R5 R4 K14 ["children"]
      180 DUPTABLE                         R5 K15 [{"id", "name", "value", "children"}]
      181 LOADK                            R6 K40 ["3"]
      182 SETTABLEKS                       R6 R5 K11 ["id"]
      184 LOADK                            R6 K41 ["ServerStorage"]
      185 SETTABLEKS                       R6 R5 K12 ["name"]
      187 LOADN                            R6 30
      188 SETTABLEKS                       R6 R5 K13 ["value"]
      190 NEWTABLE                         R6 0 1
      192 DUPTABLE                         R7 K15 [{"id", "name", "value", "children"}]
      193 LOADK                            R8 K42 ["3.1"]
      194 SETTABLEKS                       R8 R7 K11 ["id"]
      196 LOADK                            R8 K43 ["Secret Base"]
      197 SETTABLEKS                       R8 R7 K12 ["name"]
      199 LOADN                            R8 212
      200 SETTABLEKS                       R8 R7 K13 ["value"]
      202 NEWTABLE                         R8 0 1
      204 DUPTABLE                         R9 K29 [{"id", "name", "value"}]
      205 LOADK                            R10 K44 ["3.1.1"]
      206 SETTABLEKS                       R10 R9 K11 ["id"]
      208 LOADK                            R10 K45 ["Obsidian Door"]
      209 SETTABLEKS                       R10 R9 K12 ["name"]
      211 LOADN                            R10 120
      212 SETTABLEKS                       R10 R9 K13 ["value"]
      214 SETLIST                          R8 R9 1 [1]
      216 SETTABLEKS                       R8 R7 K14 ["children"]
      218 SETLIST                          R6 R7 1 [1]
      220 SETTABLEKS                       R6 R5 K14 ["children"]
      222 SETLIST                          R2 R3 3 [1]
      224 SETTABLEKS                       R2 R1 K5 ["Items"]
      226 SETTABLEKS                       R1 R0 K46 ["state"]
      228 NEWCLOSURE                       R1 P0
      229 CAPTURE                          UPVAL U0
      230 CAPTURE                          UPVAL U1
      231 CAPTURE                          VAL R0
      232 CAPTURE                          UPVAL U2
      233 SETTABLEKS                       R1 R0 K47 ["onSortChange"]
      235 NEWCLOSURE                       R1 P1
      236 CAPTURE                          VAL R0
      237 SETTABLEKS                       R1 R0 K48 ["onSizesChange"]
      239 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["state"]
        6 GETTABLEKS                       R6 R6 K3 ["Sizes"]
        8 GETTABLE                         R5 R6 R1
        9 SETTABLEKS                       R5 R4 K0 ["Width"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["createElement"]
        9 GETUPVAL                         R3 4
       10 DUPTABLE                         R4 K16 [{"Columns", "SortIndex", "SortOrder", "SortChildren", "OnSortChange", "Size", "OnExpansionChange", "OnColumnSizesChange", "Expansion", "RootItems", "GetChildren", "GetItemId", "UseScale", "ClampSize", "Scroll"}]
       11 SETTABLEKS                       R1 R4 K1 ["Columns"]
       13 GETTABLEKS                       R5 R0 K17 ["state"]
       15 GETTABLEKS                       R5 R5 K2 ["SortIndex"]
       17 SETTABLEKS                       R5 R4 K2 ["SortIndex"]
       19 GETTABLEKS                       R5 R0 K17 ["state"]
       21 GETTABLEKS                       R5 R5 K3 ["SortOrder"]
       23 SETTABLEKS                       R5 R4 K3 ["SortOrder"]
       25 GETTABLEKS                       R5 R0 K17 ["state"]
       27 GETTABLEKS                       R5 R5 K4 ["SortChildren"]
       29 SETTABLEKS                       R5 R4 K4 ["SortChildren"]
       31 GETTABLEKS                       R5 R0 K18 ["onSortChange"]
       33 SETTABLEKS                       R5 R4 K5 ["OnSortChange"]
       35 GETIMPORT                        R5 K21 [UDim2.new]
       37 LOADN                            R6 1
       38 LOADN                            R7 0
       39 LOADN                            R8 0
       40 LOADN                            R9 240
       41 CALL                             R5 4 1
       42 SETTABLEKS                       R5 R4 K6 ["Size"]
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R5 R4 K7 ["OnExpansionChange"]
       49 GETTABLEKS                       R5 R0 K22 ["onSizesChange"]
       51 SETTABLEKS                       R5 R4 K8 ["OnColumnSizesChange"]
       53 GETTABLEKS                       R5 R0 K17 ["state"]
       55 GETTABLEKS                       R5 R5 K9 ["Expansion"]
       57 SETTABLEKS                       R5 R4 K9 ["Expansion"]
       59 GETTABLEKS                       R5 R0 K17 ["state"]
       61 GETTABLEKS                       R5 R5 K23 ["Items"]
       63 SETTABLEKS                       R5 R4 K10 ["RootItems"]
       65 DUPCLOSURE                       R5 K24 [PROTO_6]
       66 SETTABLEKS                       R5 R4 K11 ["GetChildren"]
       68 DUPCLOSURE                       R5 K25 [PROTO_7]
       69 SETTABLEKS                       R5 R4 K12 ["GetItemId"]
       71 LOADB                            R5 1
       72 SETTABLEKS                       R5 R4 K13 ["UseScale"]
       74 LOADB                            R5 1
       75 SETTABLEKS                       R5 R4 K14 ["ClampSize"]
       77 LOADB                            R5 1
       78 SETTABLEKS                       R5 R4 K15 ["Scroll"]
       80 CALL                             R2 2 -1
       81 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R1 K9 ["map"]
       20 GETIMPORT                        R4 K12 [table.sort]
       22 GETIMPORT                        R5 K6 [require]
       24 GETTABLEKS                       R6 R0 K4 ["Parent"]
       26 GETTABLEKS                       R6 R6 K13 ["Roact"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K2 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["Components"]
       35 GETTABLEKS                       R7 R7 K15 ["TreeTable"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R5 K16 ["PureComponent"]
       40 GETIMPORT                        R10 K1 [script]
       42 GETTABLEKS                       R10 R10 K4 ["Parent"]
       44 GETTABLEKS                       R10 R10 K17 ["Name"]
       46 LOADK                            R11 K18 ["ExampleTreeTable"]
       47 CONCAT                           R9 R10 R11
       48 NAMECALL                         R7 R7 K19 ["extend"]
       50 CALL                             R7 2 1
       51 NEWTABLE                         R8 0 2
       53 DUPTABLE                         R9 K21 [{"Name", "Key"}]
       54 LOADK                            R10 K17 ["Name"]
       55 SETTABLEKS                       R10 R9 K17 ["Name"]
       57 LOADK                            R10 K22 ["name"]
       58 SETTABLEKS                       R10 R9 K20 ["Key"]
       60 DUPTABLE                         R10 K21 [{"Name", "Key"}]
       61 LOADK                            R11 K23 ["Value"]
       62 SETTABLEKS                       R11 R10 K17 ["Name"]
       64 LOADK                            R11 K24 ["value"]
       65 SETTABLEKS                       R11 R10 K20 ["Key"]
       67 SETLIST                          R8 R9 2 [1]
       69 DUPCLOSURE                       R9 K25 [PROTO_3]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R9 R7 K26 ["init"]
       75 DUPCLOSURE                       R9 K27 [PROTO_8]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R9 R7 K28 ["render"]
       83 RETURN                           R7 1
