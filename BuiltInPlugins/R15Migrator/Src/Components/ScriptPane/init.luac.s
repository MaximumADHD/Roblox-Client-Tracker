PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"expanded"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["expanded"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["expanded"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchFilters"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["searchFilters"]
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
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["RigType"]
        4 GETTABLEKS                       R2 R0 K0 ["Data"]
        6 GETTABLEKS                       R2 R2 K2 ["InstanceName"]
        8 GETUPVAL                         R3 0
        9 DUPTABLE                         R5 K4 [{"searchFilters"}]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K5 ["state"]
       14 GETTABLEKS                       R7 R7 K3 ["searchFilters"]
       16 DUPTABLE                         R8 K7 [{"rigFilters"}]
       17 GETUPVAL                         R9 1
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K5 ["state"]
       21 GETTABLEKS                       R10 R10 K3 ["searchFilters"]
       23 GETTABLEKS                       R10 R10 K6 ["rigFilters"]
       25 NEWTABLE                         R11 1 0
       27 GETUPVAL                         R12 1
       28 GETUPVAL                         R14 0
       29 GETTABLEKS                       R14 R14 K5 ["state"]
       31 GETTABLEKS                       R14 R14 K3 ["searchFilters"]
       33 GETTABLEKS                       R14 R14 K6 ["rigFilters"]
       35 GETTABLE                         R13 R14 R1
       36 NEWTABLE                         R14 1 0
       38 GETUPVAL                         R18 0
       39 GETTABLEKS                       R18 R18 K5 ["state"]
       41 GETTABLEKS                       R18 R18 K3 ["searchFilters"]
       43 GETTABLEKS                       R18 R18 K6 ["rigFilters"]
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
        0 DUPTABLE                         R1 K6 [{[1] = True, ["searchFilters"], ["expandedTreeView"] = False, ["_Ref"]}]
        1 DUPTABLE                         R2 K10 [{["scriptName"] = , ["rigFilters"]}]
        2 DUPTABLE                         R3 K13 [{"R6", "R15"}]
        3 NEWTABLE                         R4 0 0
        5 SETTABLEKS                       R4 R3 K11 ["R6"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K12 ["R15"]
       11 SETTABLEKS                       R3 R2 K9 ["rigFilters"]
       13 SETTABLEKS                       R2 R1 K2 ["searchFilters"]
       15 DUPTABLE                         R2 K15 [{["diagnostics"] = }]
       16 SETTABLEKS                       R2 R1 K5 ["_Ref"]
       18 SETTABLEKS                       R1 R0 K16 ["state"]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K17 ["expandedChanged"]
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R1 R0 K18 ["onSearchRequested"]
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K19 ["onFilterSelected"]
       36 GETIMPORT                        R1 K22 [Instance.new]
       38 LOADK                            R2 K23 ["BindableEvent"]
       39 CALL                             R1 1 1
       40 SETTABLEKS                       R1 R0 K24 ["ExpandTreeView"]
       42 RETURN                           R0 0

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
       13 GETUPVAL                         R13 0
       14 GETTABLEKS                       R13 R13 K2 ["AnimationKey"]
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
        2 GETTABLEKS                       R3 R1 K1 ["_Ref"]
        4 GETTABLEKS                       R3 R3 K0 ["diagnostics"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["expandedTreeView"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["ExpandTreeView"]
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
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K5 [{"Size"}]
       13 GETIMPORT                        R7 K8 [UDim2.fromScale]
       15 LOADN                            R8 1
       16 LOADN                            R9 1
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K4 ["Size"]
       20 DUPTABLE                         R7 K12 [{"ExpandablePane", "Contents", "Footer"}]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K3 ["createElement"]
       24 GETUPVAL                         R9 2
       25 DUPTABLE                         R10 K17 [{"Expanded", "HeaderComponent", "HeaderComponentProps", "OnExpandedChanged"}]
       26 GETTABLEKS                       R11 R0 K0 ["state"]
       28 GETTABLEKS                       R11 R11 K18 ["expanded"]
       30 SETTABLEKS                       R11 R10 K13 ["Expanded"]
       32 GETUPVAL                         R11 3
       33 SETTABLEKS                       R11 R10 K14 ["HeaderComponent"]
       35 DUPTABLE                         R11 K23 [{["Text"] = "Scripts", ["TextXAlignment"], ["TextYAlignment"]}]
       36 GETIMPORT                        R12 K26 [Enum.TextXAlignment.Left]
       38 SETTABLEKS                       R12 R11 K21 ["TextXAlignment"]
       40 GETIMPORT                        R12 K28 [Enum.TextYAlignment.Center]
       42 SETTABLEKS                       R12 R11 K22 ["TextYAlignment"]
       44 SETTABLEKS                       R11 R10 K15 ["HeaderComponentProps"]
       46 GETTABLEKS                       R11 R0 K29 ["expandedChanged"]
       48 SETTABLEKS                       R11 R10 K16 ["OnExpandedChanged"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K9 ["ExpandablePane"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K3 ["createElement"]
       56 GETUPVAL                         R9 1
       57 DUPTABLE                         R10 K36 [{["Position"], ["Size"], ["Visible"], ["Layout"], ["Padding"], ["Spacing"] = 5}]
       58 GETIMPORT                        R11 K38 [UDim2.new]
       60 LOADN                            R12 0
       61 LOADN                            R13 0
       62 LOADN                            R14 0
       63 LOADN                            R15 32
       64 CALL                             R11 4 1
       65 SETTABLEKS                       R11 R10 K30 ["Position"]
       67 GETIMPORT                        R11 K38 [UDim2.new]
       69 LOADN                            R12 1
       70 LOADN                            R13 0
       71 LOADN                            R14 1
       72 LOADN                            R15 -80
       73 CALL                             R11 4 1
       74 SETTABLEKS                       R11 R10 K4 ["Size"]
       76 GETTABLEKS                       R11 R0 K0 ["state"]
       78 GETTABLEKS                       R11 R11 K18 ["expanded"]
       80 SETTABLEKS                       R11 R10 K31 ["Visible"]
       82 GETIMPORT                        R11 K41 [Enum.FillDirection.Vertical]
       84 SETTABLEKS                       R11 R10 K32 ["Layout"]
       86 DUPTABLE                         R11 K43 [{["Left"] = 5, ["Right"] = 5}]
       87 SETTABLEKS                       R11 R10 K33 ["Padding"]
       89 DUPTABLE                         R11 K47 [{"Search", "Toolbar", "ScriptTree"}]
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K3 ["createElement"]
       93 GETUPVAL                         R13 1
       94 DUPTABLE                         R14 K50 [{["LayoutOrder"] = 0, ["Size"], ["Layout"], ["Padding"] = 5}]
       95 GETIMPORT                        R15 K38 [UDim2.new]
       97 LOADN                            R16 1
       98 LOADN                            R17 0
       99 LOADN                            R18 0
      100 LOADN                            R19 32
      101 CALL                             R15 4 1
      102 SETTABLEKS                       R15 R14 K4 ["Size"]
      104 GETIMPORT                        R15 K52 [Enum.FillDirection.Horizontal]
      106 SETTABLEKS                       R15 R14 K32 ["Layout"]
      108 DUPTABLE                         R15 K54 [{"Search", "FilterMenuButton"}]
      109 GETUPVAL                         R16 0
      110 GETTABLEKS                       R16 R16 K3 ["createElement"]
      112 GETUPVAL                         R17 4
      113 DUPTABLE                         R18 K64 [{["LayoutOrder"] = 0, ["PlaceholderText"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["OnSearchRequested"], ["IncrementalTextSearch"] = True, ["IncrementalTextSearchDelay"] = 100, ["Size"]}]
      114 LOADK                            R21 K65 ["ScriptPane"]
      115 LOADK                            R22 K66 ["SearchScripts"]
      116 NAMECALL                         R19 R3 K67 ["getText"]
      118 CALL                             R19 3 1
      119 SETTABLEKS                       R19 R18 K55 ["PlaceholderText"]
      121 GETTABLEKS                       R19 R0 K68 ["onSearchRequested"]
      123 SETTABLEKS                       R19 R18 K60 ["OnSearchRequested"]
      125 GETIMPORT                        R19 K38 [UDim2.new]
      127 LOADN                            R20 1
      128 LOADN                            R21 -32
      129 LOADN                            R22 0
      130 LOADN                            R23 32
      131 CALL                             R19 4 1
      132 SETTABLEKS                       R19 R18 K4 ["Size"]
      134 CALL                             R16 2 1
      135 SETTABLEKS                       R16 R15 K44 ["Search"]
      137 GETUPVAL                         R16 0
      138 GETTABLEKS                       R16 R16 K3 ["createElement"]
      140 GETUPVAL                         R17 5
      141 DUPTABLE                         R18 K73 [{["LayoutOrder"] = 1, ["Size"], ["InstanceNames"], ["Filters"], ["OnFilterSelected"]}]
      142 GETIMPORT                        R19 K75 [UDim2.fromOffset]
      144 LOADN                            R20 32
      145 LOADN                            R21 32
      146 CALL                             R19 2 1
      147 SETTABLEKS                       R19 R18 K4 ["Size"]
      149 GETTABLEKS                       R19 R1 K76 ["instanceNames"]
      151 SETTABLEKS                       R19 R18 K70 ["InstanceNames"]
      153 GETTABLEKS                       R19 R1 K77 ["searchFilters"]
      155 GETTABLEKS                       R19 R19 K78 ["rigFilters"]
      157 SETTABLEKS                       R19 R18 K71 ["Filters"]
      159 GETTABLEKS                       R19 R0 K79 ["onFilterSelected"]
      161 SETTABLEKS                       R19 R18 K72 ["OnFilterSelected"]
      163 CALL                             R16 2 1
      164 SETTABLEKS                       R16 R15 K53 ["FilterMenuButton"]
      166 CALL                             R12 3 1
      167 SETTABLEKS                       R12 R11 K44 ["Search"]
      169 GETUPVAL                         R12 0
      170 GETTABLEKS                       R12 R12 K3 ["createElement"]
      172 GETUPVAL                         R13 1
      173 DUPTABLE                         R14 K81 [{["LayoutOrder"] = 1, ["Size"], ["Layout"], ["VerticalAlignment"]}]
      174 GETIMPORT                        R15 K38 [UDim2.new]
      176 LOADN                            R16 1
      177 LOADN                            R17 0
      178 LOADN                            R18 0
      179 LOADN                            R19 24
      180 CALL                             R15 4 1
      181 SETTABLEKS                       R15 R14 K4 ["Size"]
      183 GETIMPORT                        R15 K52 [Enum.FillDirection.Horizontal]
      185 SETTABLEKS                       R15 R14 K32 ["Layout"]
      187 GETIMPORT                        R15 K82 [Enum.VerticalAlignment.Center]
      189 SETTABLEKS                       R15 R14 K80 ["VerticalAlignment"]
      191 DUPTABLE                         R15 K85 [{"TagsBar", "ExpandCollapse"}]
      192 GETUPVAL                         R16 0
      193 GETTABLEKS                       R16 R16 K3 ["createElement"]
      195 GETUPVAL                         R17 6
      196 DUPTABLE                         R18 K88 [{["LayoutOrder"] = 1, ["Size"], ["Filters"], ["OnFilterClosed"], ["ClipsDescendants"] = True}]
      197 GETIMPORT                        R19 K8 [UDim2.fromScale]
      199 LOADK                            R20 K89 [0.7]
      200 LOADN                            R21 1
      201 CALL                             R19 2 1
      202 SETTABLEKS                       R19 R18 K4 ["Size"]
      204 GETTABLEKS                       R19 R1 K77 ["searchFilters"]
      206 SETTABLEKS                       R19 R18 K71 ["Filters"]
      208 GETTABLEKS                       R19 R0 K79 ["onFilterSelected"]
      210 SETTABLEKS                       R19 R18 K86 ["OnFilterClosed"]
      212 CALL                             R16 2 1
      213 SETTABLEKS                       R16 R15 K83 ["TagsBar"]
      215 GETUPVAL                         R16 0
      216 GETTABLEKS                       R16 R16 K3 ["createElement"]
      218 GETUPVAL                         R17 1
      219 DUPTABLE                         R18 K93 [{["LayoutOrder"] = 2, ["Size"], ["OnClick"], ["Layout"], ["HorizontalAlignment"]}]
      220 GETIMPORT                        R19 K8 [UDim2.fromScale]
      222 LOADK                            R20 K94 [0.3]
      223 LOADN                            R21 1
      224 CALL                             R19 2 1
      225 SETTABLEKS                       R19 R18 K4 ["Size"]
      227 NEWCLOSURE                       R19 P0
      228 CAPTURE                          VAL R0
      229 SETTABLEKS                       R19 R18 K91 ["OnClick"]
      231 GETIMPORT                        R19 K52 [Enum.FillDirection.Horizontal]
      233 SETTABLEKS                       R19 R18 K32 ["Layout"]
      235 GETIMPORT                        R19 K95 [Enum.HorizontalAlignment.Right]
      237 SETTABLEKS                       R19 R18 K92 ["HorizontalAlignment"]
      239 DUPTABLE                         R19 K97 [{"TextLabel"}]
      240 GETUPVAL                         R20 0
      241 GETTABLEKS                       R20 R20 K3 ["createElement"]
      243 GETUPVAL                         R21 3
      244 DUPTABLE                         R22 K98 [{"Text", "TextXAlignment"}]
      245 LOADK                            R25 K65 ["ScriptPane"]
      246 GETTABLEKS                       R27 R0 K0 ["state"]
      248 GETTABLEKS                       R27 R27 K99 ["expandedTreeView"]
      250 JUMPIFNOT                        R27 ; [+2]
      251 LOADK                            R26 K100 ["CollapseAll"]
      252 JUMP                             ; [+1]
      253 LOADK                            R26 K101 ["ExpandAll"]
      254 NAMECALL                         R23 R3 K67 ["getText"]
      256 CALL                             R23 3 1
      257 SETTABLEKS                       R23 R22 K19 ["Text"]
      259 GETIMPORT                        R23 K102 [Enum.TextXAlignment.Right]
      261 SETTABLEKS                       R23 R22 K21 ["TextXAlignment"]
      263 CALL                             R20 2 1
      264 SETTABLEKS                       R20 R19 K96 ["TextLabel"]
      266 CALL                             R16 3 1
      267 SETTABLEKS                       R16 R15 K84 ["ExpandCollapse"]
      269 CALL                             R12 3 1
      270 SETTABLEKS                       R12 R11 K45 ["Toolbar"]
      272 GETUPVAL                         R12 0
      273 GETTABLEKS                       R12 R12 K3 ["createElement"]
      275 GETUPVAL                         R13 7
      276 DUPTABLE                         R14 K105 [{["LayoutOrder"] = 2, ["Size"], ["SearchFilters"], ["ExpandTreeView"]}]
      277 GETIMPORT                        R15 K38 [UDim2.new]
      279 LOADN                            R16 1
      280 LOADN                            R17 0
      281 LOADN                            R18 1
      282 LOADN                            R19 -56
      283 CALL                             R15 4 1
      284 SETTABLEKS                       R15 R14 K4 ["Size"]
      286 GETTABLEKS                       R15 R1 K77 ["searchFilters"]
      288 SETTABLEKS                       R15 R14 K103 ["SearchFilters"]
      290 GETTABLEKS                       R15 R0 K104 ["ExpandTreeView"]
      292 SETTABLEKS                       R15 R14 K104 ["ExpandTreeView"]
      294 CALL                             R12 2 1
      295 SETTABLEKS                       R12 R11 K46 ["ScriptTree"]
      297 CALL                             R8 3 1
      298 SETTABLEKS                       R8 R7 K10 ["Contents"]
      300 GETUPVAL                         R8 0
      301 GETTABLEKS                       R8 R8 K3 ["createElement"]
      303 GETUPVAL                         R9 1
      304 DUPTABLE                         R10 K108 [{"AnchorPoint", "BackgroundColor", "Size", "Position"}]
      305 GETIMPORT                        R11 K110 [Vector2.new]
      307 LOADN                            R12 0
      308 LOADN                            R13 1
      309 CALL                             R11 2 1
      310 SETTABLEKS                       R11 R10 K106 ["AnchorPoint"]
      312 GETIMPORT                        R11 K112 [Color3.new]
      314 LOADN                            R12 0
      315 LOADN                            R13 0
      316 LOADK                            R14 K113 [0.5]
      317 CALL                             R11 3 1
      318 SETTABLEKS                       R11 R10 K107 ["BackgroundColor"]
      320 GETIMPORT                        R11 K38 [UDim2.new]
      322 LOADN                            R12 1
      323 LOADN                            R13 0
      324 LOADN                            R14 0
      325 LOADN                            R15 48
      326 CALL                             R11 4 1
      327 SETTABLEKS                       R11 R10 K4 ["Size"]
      329 GETIMPORT                        R11 K8 [UDim2.fromScale]
      331 LOADN                            R12 0
      332 LOADN                            R13 1
      333 CALL                             R11 2 1
      334 SETTABLEKS                       R11 R10 K30 ["Position"]
      336 DUPTABLE                         R11 K97 [{"TextLabel"}]
      337 GETUPVAL                         R12 0
      338 GETTABLEKS                       R12 R12 K3 ["createElement"]
      340 GETUPVAL                         R13 3
      341 DUPTABLE                         R14 K114 [{["Text"] = "Footer"}]
      342 CALL                             R12 2 1
      343 SETTABLEKS                       R12 R11 K96 ["TextLabel"]
      345 CALL                             R8 3 1
      346 SETTABLEKS                       R8 R7 K11 ["Footer"]
      348 CALL                             R4 3 -1
      349 RETURN                           R4 -1

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"diagnostics"}]
        1 GETTABLEKS                       R3 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["diagnostics"]
        5 SETTABLEKS                       R3 R2 K0 ["diagnostics"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Contexts"]
       38 GETTABLEKS                       R7 R7 K14 ["ScriptConversionContext"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Packages"]
       45 GETTABLEKS                       R8 R8 K15 ["Dash"]
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
       70 GETTABLEKS                       R19 R0 K12 ["Src"]
       72 GETTABLEKS                       R19 R19 K27 ["Actions"]
       74 GETTABLEKS                       R20 R0 K12 ["Src"]
       76 GETTABLEKS                       R20 R20 K28 ["Components"]
       78 GETIMPORT                        R21 K5 [require]
       80 GETTABLEKS                       R22 R20 K29 ["ScriptFilterButton"]
       82 CALL                             R21 1 1
       83 GETIMPORT                        R22 K5 [require]
       85 GETTABLEKS                       R23 R20 K30 ["ScriptPaneTreeTable"]
       87 CALL                             R22 1 1
       88 GETIMPORT                        R23 K5 [require]
       90 GETTABLEKS                       R24 R20 K31 ["TagsBar"]
       92 CALL                             R23 1 1
       93 GETTABLEKS                       R24 R0 K12 ["Src"]
       95 GETTABLEKS                       R24 R24 K32 ["Util"]
       97 GETIMPORT                        R25 K5 [require]
       99 GETTABLEKS                       R26 R24 K33 ["ScriptAnalysis"]
      101 GETTABLEKS                       R26 R26 K34 ["R6Info"]
      103 CALL                             R25 1 1
      104 GETIMPORT                        R26 K5 [require]
      106 GETTABLEKS                       R27 R24 K33 ["ScriptAnalysis"]
      108 GETTABLEKS                       R27 R27 K35 ["Constants"]
      110 CALL                             R26 1 1
      111 GETIMPORT                        R27 K5 [require]
      113 GETTABLEKS                       R28 R24 K36 ["findAllInServices"]
      115 CALL                             R27 1 1
      116 GETIMPORT                        R28 K5 [require]
      118 GETTABLEKS                       R29 R0 K12 ["Src"]
      120 GETTABLEKS                       R29 R29 K37 ["Types"]
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
