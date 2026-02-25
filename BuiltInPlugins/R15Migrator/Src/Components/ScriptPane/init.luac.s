PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"expanded"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["expanded"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["expanded"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchFilters"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K2 ["state"]
        6 GETTABLEKS                       R5 R6 K0 ["searchFilters"]
        8 DUPTABLE                         R6 K4 [{"scriptName"}]
        9 JUMPIFEQKS                       R0 K5 [""] ; [+3]
       11 MOVE                             R7 R0
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R7 2
       14 SETTABLEKS                       R7 R6 K3 ["scriptName"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K0 ["searchFilters"]
       19 NAMECALL                         R1 R1 K6 ["setState"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R2 K1 ["RigType"]
        4 GETTABLEKS                       R3 R0 K0 ["Data"]
        6 GETTABLEKS                       R2 R3 K2 ["InstanceName"]
        8 GETUPVAL                         R3 0
        9 DUPTABLE                         R5 K4 [{"searchFilters"}]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K5 ["state"]
       14 GETTABLEKS                       R7 R8 K3 ["searchFilters"]
       16 DUPTABLE                         R8 K7 [{"rigFilters"}]
       17 GETUPVAL                         R9 1
       18 GETUPVAL                         R13 0
       19 GETTABLEKS                       R12 R13 K5 ["state"]
       21 GETTABLEKS                       R11 R12 K3 ["searchFilters"]
       23 GETTABLEKS                       R10 R11 K6 ["rigFilters"]
       25 NEWTABLE                         R11 1 0
       27 GETUPVAL                         R12 1
       28 GETUPVAL                         R17 0
       29 GETTABLEKS                       R16 R17 K5 ["state"]
       31 GETTABLEKS                       R15 R16 K3 ["searchFilters"]
       33 GETTABLEKS                       R14 R15 K6 ["rigFilters"]
       35 GETTABLE                         R13 R14 R1
       36 NEWTABLE                         R14 1 0
       38 GETUPVAL                         R21 0
       39 GETTABLEKS                       R20 R21 K5 ["state"]
       41 GETTABLEKS                       R19 R20 K3 ["searchFilters"]
       43 GETTABLEKS                       R18 R19 K6 ["rigFilters"]
       45 GETTABLE                         R17 R18 R1
       46 GETTABLE                         R16 R17 R2
       47 NOT                              R15 R16
       48 JUMPIF                           R15 ; [+1]
       49 GETUPVAL                         R15 2
       50 SETTABLE                         R15 R14 R2
       51 CALL                             R12 2 1
       52 SETTABLE                         R12 R11 R1
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K6 ["rigFilters"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K3 ["searchFilters"]
       59 NAMECALL                         R3 R3 K8 ["setState"]
       61 CALL                             R3 2 0
       62 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K4 [{"expanded", "searchFilters", "expandedTreeView", "_Ref"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["expanded"]
        4 DUPTABLE                         R2 K7 [{"scriptName", "rigFilters"}]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K5 ["scriptName"]
        8 DUPTABLE                         R3 K10 [{"R6", "R15"}]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K8 ["R6"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K9 ["R15"]
       17 SETTABLEKS                       R3 R2 K6 ["rigFilters"]
       19 SETTABLEKS                       R2 R1 K1 ["searchFilters"]
       21 LOADB                            R2 0
       22 SETTABLEKS                       R2 R1 K2 ["expandedTreeView"]
       24 DUPTABLE                         R2 K12 [{"diagnostics"}]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K11 ["diagnostics"]
       28 SETTABLEKS                       R2 R1 K3 ["_Ref"]
       30 SETTABLEKS                       R1 R0 K13 ["state"]
       32 NEWCLOSURE                       R1 P0
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K14 ["expandedChanged"]
       36 NEWCLOSURE                       R1 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 SETTABLEKS                       R1 R0 K15 ["onSearchRequested"]
       42 NEWCLOSURE                       R1 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U1
       46 SETTABLEKS                       R1 R0 K16 ["onFilterSelected"]
       48 GETIMPORT                        R1 K19 [Instance.new]
       50 LOADK                            R2 K20 ["BindableEvent"]
       51 CALL                             R1 1 1
       52 SETTABLEKS                       R1 R0 K21 ["ExpandTreeView"]
       54 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["_list"]
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R12 R11 K1 ["issueType"]
       13 GETUPVAL                         R14 0
       14 GETTABLEKS                       R13 R14 K2 ["AnimationKey"]
       16 JUMPIFEQ                         R12 R13 ; [+5]
       18 GETTABLEKS                       R12 R11 K3 ["instanceName"]
       20 LOADB                            R13 1
       21 SETTABLE                         R13 R1 R12
       22 FORGLOOP                         R7 2 ; [-12]
       24 FORGLOOP                         R2 2 ; [-19]
       26 GETUPVAL                         R2 1
       27 MOVE                             R3 R1
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K6 [table.sort]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["diagnostics"]
        2 GETTABLEKS                       R4 R1 K1 ["_Ref"]
        4 GETTABLEKS                       R3 R4 K0 ["diagnostics"]
        6 JUMPIFEQ                         R2 R3 ; [+20]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K0 ["diagnostics"]
       11 CALL                             R2 1 1
       12 DUPTABLE                         R3 K3 [{"instanceNames", "_Ref"}]
       13 SETTABLEKS                       R2 R3 K2 ["instanceNames"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R5 R1 K1 ["_Ref"]
       18 DUPTABLE                         R6 K4 [{"diagnostics"}]
       19 GETTABLEKS                       R7 R0 K0 ["diagnostics"]
       21 SETTABLEKS                       R7 R6 K0 ["diagnostics"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K1 ["_Ref"]
       26 RETURN                           R3 1
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["expandedTreeView"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["ExpandTreeView"]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K3 ["Fire"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 DUPTABLE                         R3 K4 [{"expandedTreeView"}]
       15 SETTABLEKS                       R0 R3 K1 ["expandedTreeView"]
       17 NAMECALL                         R1 R1 K5 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Localization"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K5 [{"Size"}]
       13 GETIMPORT                        R7 K8 [UDim2.fromScale]
       15 LOADN                            R8 1
       16 LOADN                            R9 1
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K4 ["Size"]
       20 DUPTABLE                         R7 K12 [{"ExpandablePane", "Contents", "Footer"}]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K3 ["createElement"]
       24 GETUPVAL                         R9 2
       25 DUPTABLE                         R10 K17 [{"Expanded", "HeaderComponent", "HeaderComponentProps", "OnExpandedChanged"}]
       26 GETTABLEKS                       R12 R0 K0 ["state"]
       28 GETTABLEKS                       R11 R12 K18 ["expanded"]
       30 SETTABLEKS                       R11 R10 K13 ["Expanded"]
       32 GETUPVAL                         R11 3
       33 SETTABLEKS                       R11 R10 K14 ["HeaderComponent"]
       35 DUPTABLE                         R11 K22 [{"Text", "TextXAlignment", "TextYAlignment"}]
       36 LOADK                            R12 K23 ["Scripts"]
       37 SETTABLEKS                       R12 R11 K19 ["Text"]
       39 GETIMPORT                        R12 K26 [Enum.TextXAlignment.Left]
       41 SETTABLEKS                       R12 R11 K20 ["TextXAlignment"]
       43 GETIMPORT                        R12 K28 [Enum.TextYAlignment.Center]
       45 SETTABLEKS                       R12 R11 K21 ["TextYAlignment"]
       47 SETTABLEKS                       R11 R10 K15 ["HeaderComponentProps"]
       49 GETTABLEKS                       R11 R0 K29 ["expandedChanged"]
       51 SETTABLEKS                       R11 R10 K16 ["OnExpandedChanged"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K9 ["ExpandablePane"]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R8 R9 K3 ["createElement"]
       59 GETUPVAL                         R9 1
       60 DUPTABLE                         R10 K35 [{"Position", "Size", "Visible", "Layout", "Padding", "Spacing"}]
       61 GETIMPORT                        R11 K37 [UDim2.new]
       63 LOADN                            R12 0
       64 LOADN                            R13 0
       65 LOADN                            R14 0
       66 LOADN                            R15 32
       67 CALL                             R11 4 1
       68 SETTABLEKS                       R11 R10 K30 ["Position"]
       70 GETIMPORT                        R11 K37 [UDim2.new]
       72 LOADN                            R12 1
       73 LOADN                            R13 0
       74 LOADN                            R14 1
       75 LOADN                            R15 176
       76 CALL                             R11 4 1
       77 SETTABLEKS                       R11 R10 K4 ["Size"]
       79 GETTABLEKS                       R12 R0 K0 ["state"]
       81 GETTABLEKS                       R11 R12 K18 ["expanded"]
       83 SETTABLEKS                       R11 R10 K31 ["Visible"]
       85 GETIMPORT                        R11 K40 [Enum.FillDirection.Vertical]
       87 SETTABLEKS                       R11 R10 K32 ["Layout"]
       89 DUPTABLE                         R11 K42 [{"Left", "Right"}]
       90 LOADN                            R12 5
       91 SETTABLEKS                       R12 R11 K25 ["Left"]
       93 LOADN                            R12 5
       94 SETTABLEKS                       R12 R11 K41 ["Right"]
       96 SETTABLEKS                       R11 R10 K33 ["Padding"]
       98 LOADN                            R11 5
       99 SETTABLEKS                       R11 R10 K34 ["Spacing"]
      101 DUPTABLE                         R11 K46 [{"Search", "Toolbar", "ScriptTree"}]
      102 GETUPVAL                         R13 0
      103 GETTABLEKS                       R12 R13 K3 ["createElement"]
      105 GETUPVAL                         R13 1
      106 DUPTABLE                         R14 K48 [{"LayoutOrder", "Size", "Layout", "Padding"}]
      107 LOADN                            R15 0
      108 SETTABLEKS                       R15 R14 K47 ["LayoutOrder"]
      110 GETIMPORT                        R15 K37 [UDim2.new]
      112 LOADN                            R16 1
      113 LOADN                            R17 0
      114 LOADN                            R18 0
      115 LOADN                            R19 32
      116 CALL                             R15 4 1
      117 SETTABLEKS                       R15 R14 K4 ["Size"]
      119 GETIMPORT                        R15 K50 [Enum.FillDirection.Horizontal]
      121 SETTABLEKS                       R15 R14 K32 ["Layout"]
      123 LOADN                            R15 5
      124 SETTABLEKS                       R15 R14 K33 ["Padding"]
      126 DUPTABLE                         R15 K52 [{"Search", "FilterMenuButton"}]
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R16 R17 K3 ["createElement"]
      130 GETUPVAL                         R17 4
      131 DUPTABLE                         R18 K59 [{"LayoutOrder", "PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "OnSearchRequested", "IncrementalTextSearch", "IncrementalTextSearchDelay", "Size"}]
      132 LOADN                            R19 0
      133 SETTABLEKS                       R19 R18 K47 ["LayoutOrder"]
      135 LOADK                            R21 K60 ["ScriptPane"]
      136 LOADK                            R22 K61 ["SearchScripts"]
      137 NAMECALL                         R19 R3 K62 ["getText"]
      139 CALL                             R19 3 1
      140 SETTABLEKS                       R19 R18 K53 ["PlaceholderText"]
      142 LOADB                            R19 1
      143 SETTABLEKS                       R19 R18 K54 ["ShowSearchIcon"]
      145 LOADB                            R19 0
      146 SETTABLEKS                       R19 R18 K55 ["ShowSearchButton"]
      148 GETTABLEKS                       R19 R0 K63 ["onSearchRequested"]
      150 SETTABLEKS                       R19 R18 K56 ["OnSearchRequested"]
      152 LOADB                            R19 1
      153 SETTABLEKS                       R19 R18 K57 ["IncrementalTextSearch"]
      155 LOADN                            R19 100
      156 SETTABLEKS                       R19 R18 K58 ["IncrementalTextSearchDelay"]
      158 GETIMPORT                        R19 K37 [UDim2.new]
      160 LOADN                            R20 1
      161 LOADN                            R21 224
      162 LOADN                            R22 0
      163 LOADN                            R23 32
      164 CALL                             R19 4 1
      165 SETTABLEKS                       R19 R18 K4 ["Size"]
      167 CALL                             R16 2 1
      168 SETTABLEKS                       R16 R15 K43 ["Search"]
      170 GETUPVAL                         R17 0
      171 GETTABLEKS                       R16 R17 K3 ["createElement"]
      173 GETUPVAL                         R17 5
      174 DUPTABLE                         R18 K67 [{"LayoutOrder", "Size", "InstanceNames", "Filters", "OnFilterSelected"}]
      175 LOADN                            R19 1
      176 SETTABLEKS                       R19 R18 K47 ["LayoutOrder"]
      178 GETIMPORT                        R19 K69 [UDim2.fromOffset]
      180 LOADN                            R20 32
      181 LOADN                            R21 32
      182 CALL                             R19 2 1
      183 SETTABLEKS                       R19 R18 K4 ["Size"]
      185 GETTABLEKS                       R19 R1 K70 ["instanceNames"]
      187 SETTABLEKS                       R19 R18 K64 ["InstanceNames"]
      189 GETTABLEKS                       R20 R1 K71 ["searchFilters"]
      191 GETTABLEKS                       R19 R20 K72 ["rigFilters"]
      193 SETTABLEKS                       R19 R18 K65 ["Filters"]
      195 GETTABLEKS                       R19 R0 K73 ["onFilterSelected"]
      197 SETTABLEKS                       R19 R18 K66 ["OnFilterSelected"]
      199 CALL                             R16 2 1
      200 SETTABLEKS                       R16 R15 K51 ["FilterMenuButton"]
      202 CALL                             R12 3 1
      203 SETTABLEKS                       R12 R11 K43 ["Search"]
      205 GETUPVAL                         R13 0
      206 GETTABLEKS                       R12 R13 K3 ["createElement"]
      208 GETUPVAL                         R13 1
      209 DUPTABLE                         R14 K75 [{"LayoutOrder", "Size", "Layout", "VerticalAlignment"}]
      210 LOADN                            R15 1
      211 SETTABLEKS                       R15 R14 K47 ["LayoutOrder"]
      213 GETIMPORT                        R15 K37 [UDim2.new]
      215 LOADN                            R16 1
      216 LOADN                            R17 0
      217 LOADN                            R18 0
      218 LOADN                            R19 24
      219 CALL                             R15 4 1
      220 SETTABLEKS                       R15 R14 K4 ["Size"]
      222 GETIMPORT                        R15 K50 [Enum.FillDirection.Horizontal]
      224 SETTABLEKS                       R15 R14 K32 ["Layout"]
      226 GETIMPORT                        R15 K76 [Enum.VerticalAlignment.Center]
      228 SETTABLEKS                       R15 R14 K74 ["VerticalAlignment"]
      230 DUPTABLE                         R15 K79 [{"TagsBar", "ExpandCollapse"}]
      231 GETUPVAL                         R17 0
      232 GETTABLEKS                       R16 R17 K3 ["createElement"]
      234 GETUPVAL                         R17 6
      235 DUPTABLE                         R18 K82 [{"LayoutOrder", "Size", "Filters", "OnFilterClosed", "ClipsDescendants"}]
      236 LOADN                            R19 1
      237 SETTABLEKS                       R19 R18 K47 ["LayoutOrder"]
      239 GETIMPORT                        R19 K8 [UDim2.fromScale]
      241 LOADK                            R20 K83 [0.7]
      242 LOADN                            R21 1
      243 CALL                             R19 2 1
      244 SETTABLEKS                       R19 R18 K4 ["Size"]
      246 GETTABLEKS                       R19 R1 K71 ["searchFilters"]
      248 SETTABLEKS                       R19 R18 K65 ["Filters"]
      250 GETTABLEKS                       R19 R0 K73 ["onFilterSelected"]
      252 SETTABLEKS                       R19 R18 K80 ["OnFilterClosed"]
      254 LOADB                            R19 1
      255 SETTABLEKS                       R19 R18 K81 ["ClipsDescendants"]
      257 CALL                             R16 2 1
      258 SETTABLEKS                       R16 R15 K77 ["TagsBar"]
      260 GETUPVAL                         R17 0
      261 GETTABLEKS                       R16 R17 K3 ["createElement"]
      263 GETUPVAL                         R17 1
      264 DUPTABLE                         R18 K86 [{"LayoutOrder", "Size", "OnClick", "Layout", "HorizontalAlignment"}]
      265 LOADN                            R19 2
      266 SETTABLEKS                       R19 R18 K47 ["LayoutOrder"]
      268 GETIMPORT                        R19 K8 [UDim2.fromScale]
      270 LOADK                            R20 K87 [0.3]
      271 LOADN                            R21 1
      272 CALL                             R19 2 1
      273 SETTABLEKS                       R19 R18 K4 ["Size"]
      275 NEWCLOSURE                       R19 P0
      276 CAPTURE                          VAL R0
      277 SETTABLEKS                       R19 R18 K84 ["OnClick"]
      279 GETIMPORT                        R19 K50 [Enum.FillDirection.Horizontal]
      281 SETTABLEKS                       R19 R18 K32 ["Layout"]
      283 GETIMPORT                        R19 K88 [Enum.HorizontalAlignment.Right]
      285 SETTABLEKS                       R19 R18 K85 ["HorizontalAlignment"]
      287 DUPTABLE                         R19 K90 [{"TextLabel"}]
      288 GETUPVAL                         R21 0
      289 GETTABLEKS                       R20 R21 K3 ["createElement"]
      291 GETUPVAL                         R21 3
      292 DUPTABLE                         R22 K91 [{"Text", "TextXAlignment"}]
      293 LOADK                            R25 K60 ["ScriptPane"]
      294 GETTABLEKS                       R28 R0 K0 ["state"]
      296 GETTABLEKS                       R27 R28 K92 ["expandedTreeView"]
      298 JUMPIFNOT                        R27 ; [+2]
      299 LOADK                            R26 K93 ["CollapseAll"]
      300 JUMP                             ; [+1]
      301 LOADK                            R26 K94 ["ExpandAll"]
      302 NAMECALL                         R23 R3 K62 ["getText"]
      304 CALL                             R23 3 1
      305 SETTABLEKS                       R23 R22 K19 ["Text"]
      307 GETIMPORT                        R23 K95 [Enum.TextXAlignment.Right]
      309 SETTABLEKS                       R23 R22 K20 ["TextXAlignment"]
      311 CALL                             R20 2 1
      312 SETTABLEKS                       R20 R19 K89 ["TextLabel"]
      314 CALL                             R16 3 1
      315 SETTABLEKS                       R16 R15 K78 ["ExpandCollapse"]
      317 CALL                             R12 3 1
      318 SETTABLEKS                       R12 R11 K44 ["Toolbar"]
      320 GETUPVAL                         R13 0
      321 GETTABLEKS                       R12 R13 K3 ["createElement"]
      323 GETUPVAL                         R13 7
      324 DUPTABLE                         R14 K98 [{"LayoutOrder", "Size", "SearchFilters", "ExpandTreeView"}]
      325 LOADN                            R15 2
      326 SETTABLEKS                       R15 R14 K47 ["LayoutOrder"]
      328 GETIMPORT                        R15 K37 [UDim2.new]
      330 LOADN                            R16 1
      331 LOADN                            R17 0
      332 LOADN                            R18 1
      333 LOADN                            R19 200
      334 CALL                             R15 4 1
      335 SETTABLEKS                       R15 R14 K4 ["Size"]
      337 GETTABLEKS                       R15 R1 K71 ["searchFilters"]
      339 SETTABLEKS                       R15 R14 K96 ["SearchFilters"]
      341 GETTABLEKS                       R15 R0 K97 ["ExpandTreeView"]
      343 SETTABLEKS                       R15 R14 K97 ["ExpandTreeView"]
      345 CALL                             R12 2 1
      346 SETTABLEKS                       R12 R11 K45 ["ScriptTree"]
      348 CALL                             R8 3 1
      349 SETTABLEKS                       R8 R7 K10 ["Contents"]
      351 GETUPVAL                         R9 0
      352 GETTABLEKS                       R8 R9 K3 ["createElement"]
      354 GETUPVAL                         R9 1
      355 DUPTABLE                         R10 K101 [{"AnchorPoint", "BackgroundColor", "Size", "Position"}]
      356 GETIMPORT                        R11 K103 [Vector2.new]
      358 LOADN                            R12 0
      359 LOADN                            R13 1
      360 CALL                             R11 2 1
      361 SETTABLEKS                       R11 R10 K99 ["AnchorPoint"]
      363 GETIMPORT                        R11 K105 [Color3.new]
      365 LOADN                            R12 0
      366 LOADN                            R13 0
      367 LOADK                            R14 K106 [0.5]
      368 CALL                             R11 3 1
      369 SETTABLEKS                       R11 R10 K100 ["BackgroundColor"]
      371 GETIMPORT                        R11 K37 [UDim2.new]
      373 LOADN                            R12 1
      374 LOADN                            R13 0
      375 LOADN                            R14 0
      376 LOADN                            R15 48
      377 CALL                             R11 4 1
      378 SETTABLEKS                       R11 R10 K4 ["Size"]
      380 GETIMPORT                        R11 K8 [UDim2.fromScale]
      382 LOADN                            R12 0
      383 LOADN                            R13 1
      384 CALL                             R11 2 1
      385 SETTABLEKS                       R11 R10 K30 ["Position"]
      387 DUPTABLE                         R11 K90 [{"TextLabel"}]
      388 GETUPVAL                         R13 0
      389 GETTABLEKS                       R12 R13 K3 ["createElement"]
      391 GETUPVAL                         R13 3
      392 DUPTABLE                         R14 K107 [{"Text"}]
      393 LOADK                            R15 K11 ["Footer"]
      394 SETTABLEKS                       R15 R14 K19 ["Text"]
      396 CALL                             R12 2 1
      397 SETTABLEKS                       R12 R11 K89 ["TextLabel"]
      399 CALL                             R8 3 1
      400 SETTABLEKS                       R8 R7 K11 ["Footer"]
      402 CALL                             R4 3 -1
      403 RETURN                           R4 -1

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"diagnostics"}]
        1 GETTABLEKS                       R4 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R4 K0 ["diagnostics"]
        5 SETTABLEKS                       R3 R2 K0 ["diagnostics"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Contexts"]
       38 GETTABLEKS                       R7 R8 K14 ["ScriptConversionContext"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R9 R0 K6 ["Packages"]
       45 GETTABLEKS                       R8 R9 K15 ["Dash"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K16 ["join"]
       50 GETTABLEKS                       R9 R7 K17 ["keys"]
       52 GETTABLEKS                       R10 R7 K18 ["map"]
       54 GETTABLEKS                       R11 R7 K19 ["None"]
       56 GETTABLEKS                       R12 R3 K20 ["UI"]
       58 GETTABLEKS                       R13 R12 K21 ["ExpandablePane"]
       60 GETTABLEKS                       R14 R12 K22 ["IconButton"]
       62 GETTABLEKS                       R15 R12 K23 ["Pane"]
       64 GETTABLEKS                       R16 R12 K24 ["SearchBar"]
       66 GETTABLEKS                       R17 R12 K25 ["TextLabel"]
       68 GETTABLEKS                       R18 R12 K26 ["TreeTable"]
       70 GETTABLEKS                       R20 R0 K12 ["Src"]
       72 GETTABLEKS                       R19 R20 K27 ["Actions"]
       74 GETTABLEKS                       R21 R0 K12 ["Src"]
       76 GETTABLEKS                       R20 R21 K28 ["Components"]
       78 GETIMPORT                        R21 K5 [require]
       80 GETTABLEKS                       R22 R20 K29 ["ScriptFilterButton"]
       82 CALL                             R21 1 1
       83 GETIMPORT                        R22 K5 [require]
       85 GETTABLEKS                       R23 R20 K30 ["ScriptPaneTreeTable"]
       87 CALL                             R22 1 1
       88 GETIMPORT                        R23 K5 [require]
       90 GETTABLEKS                       R24 R20 K31 ["TagsBar"]
       92 CALL                             R23 1 1
       93 GETTABLEKS                       R25 R0 K12 ["Src"]
       95 GETTABLEKS                       R24 R25 K32 ["Util"]
       97 GETIMPORT                        R25 K5 [require]
       99 GETTABLEKS                       R27 R24 K33 ["ScriptAnalysis"]
      101 GETTABLEKS                       R26 R27 K34 ["R6Info"]
      103 CALL                             R25 1 1
      104 GETIMPORT                        R26 K5 [require]
      106 GETTABLEKS                       R28 R24 K33 ["ScriptAnalysis"]
      108 GETTABLEKS                       R27 R28 K35 ["Constants"]
      110 CALL                             R26 1 1
      111 GETIMPORT                        R27 K5 [require]
      113 GETTABLEKS                       R28 R24 K36 ["findAllInServices"]
      115 CALL                             R27 1 1
      116 GETIMPORT                        R28 K5 [require]
      118 GETTABLEKS                       R30 R0 K12 ["Src"]
      120 GETTABLEKS                       R29 R30 K37 ["Types"]
      122 CALL                             R28 1 1
      123 GETTABLEKS                       R29 R1 K38 ["PureComponent"]
      125 LOADK                            R31 K39 ["ScriptPane"]
      126 NAMECALL                         R29 R29 K40 ["extend"]
      128 CALL                             R29 2 1
      129 DUPCLOSURE                       R30 K41 [PROTO_3]
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R11
      132 SETTABLEKS                       R30 R29 K42 ["init"]
      134 DUPCLOSURE                       R30 K43 [PROTO_4]
      135 CAPTURE                          VAL R25
      136 CAPTURE                          VAL R9
      137 DUPCLOSURE                       R31 K44 [PROTO_5]
      138 CAPTURE                          VAL R30
      139 CAPTURE                          VAL R8
      140 SETTABLEKS                       R31 R29 K45 ["getDerivedStateFromProps"]
      142 DUPCLOSURE                       R31 K46 [PROTO_7]
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R22
      151 SETTABLEKS                       R31 R29 K47 ["render"]
      153 MOVE                             R31 R5
      154 DUPTABLE                         R32 K51 [{"Analytics", "Localization", "Stylizer"}]
      155 GETTABLEKS                       R33 R4 K48 ["Analytics"]
      157 SETTABLEKS                       R33 R32 K48 ["Analytics"]
      159 GETTABLEKS                       R33 R4 K49 ["Localization"]
      161 SETTABLEKS                       R33 R32 K49 ["Localization"]
      163 GETTABLEKS                       R33 R4 K50 ["Stylizer"]
      165 SETTABLEKS                       R33 R32 K50 ["Stylizer"]
      167 CALL                             R31 1 1
      168 MOVE                             R32 R29
      169 CALL                             R31 1 1
      170 MOVE                             R29 R31
      171 DUPCLOSURE                       R31 K52 [PROTO_8]
      172 GETTABLEKS                       R32 R2 K53 ["connect"]
      174 MOVE                             R33 R31
      175 CALL                             R32 1 1
      176 MOVE                             R33 R29
      177 CALL                             R32 1 1
      178 MOVE                             R29 R32
      179 RETURN                           R29 1
