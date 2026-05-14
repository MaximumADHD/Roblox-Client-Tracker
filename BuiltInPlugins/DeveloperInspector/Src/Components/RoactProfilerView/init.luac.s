PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setProfileSearchTerm"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["Inspector"]
       12 NAMECALL                         R1 R1 K3 ["get"]
       14 CALL                             R1 1 1
       15 NAMECALL                         R2 R1 K4 ["getTargetApi"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["isInstance"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 MOVE                             R5 R0
       25 NAMECALL                         R3 R2 K1 ["setProfileSearchTerm"]
       27 CALL                             R3 2 0
       28 NAMECALL                         R3 R2 K6 ["getProfileData"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Inspector"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R1 R0 K3 ["getTargetApi"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 NAMECALL                         R2 R2 K4 ["getSelectedPath"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["isInstance"]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 JUMPIFNOT                        R3 ; [+5]
       21 JUMPIFNOT                        R2 ; [+4]
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R1 K6 ["openPath"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Inspector"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R1 R0 K3 ["getTargetApi"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["isInstance"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 NAMECALL                         R2 R1 K5 ["clearProfileData"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["props"]
       23 GETTABLEKS                       R2 R2 K6 ["clearTable"]
       25 CALL                             R2 0 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Filter"]
        5 LENGTH                           R2 R0
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+4]
        9 NEWTABLE                         R1 0 0
       11 JUMPIF                           R1 ; [+7]
       12 NEWTABLE                         R1 0 3
       14 LOADK                            R2 K2 ["Consumer"]
       15 LOADK                            R3 K3 ["Provider"]
       16 LOADK                            R4 K4 ["RoduxConnection"]
       17 SETLIST                          R1 R2 3 [1]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["props"]
       22 GETTABLEKS                       R2 R2 K5 ["setProfileFilter"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["props"]
       29 GETTABLEKS                       R2 R2 K6 ["Inspector"]
       31 NAMECALL                         R2 R2 K7 ["get"]
       33 CALL                             R2 1 1
       34 NAMECALL                         R3 R2 K8 ["getTargetApi"]
       36 CALL                             R3 1 1
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K9 ["isInstance"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 1
       42 JUMPIFNOT                        R4 ; [+7]
       43 MOVE                             R6 R1
       44 NAMECALL                         R4 R3 K5 ["setProfileFilter"]
       46 CALL                             R4 2 0
       47 NAMECALL                         R4 R3 K10 ["getProfileData"]
       49 CALL                             R4 1 0
       50 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onSearchTable"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["onViewComponent"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K2 ["onClearTable"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 SETTABLEKS                       R1 R0 K3 ["onToggleFilter"]
       20 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["TableData"]
        4 GETTABLEKS                       R2 R1 K2 ["selectedRow"]
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R4 R1 K4 ["pageIndex"]
       11 SUBK                             R3 R4 K3 [1]
       12 GETTABLEKS                       R4 R1 K5 ["pageSize"]
       14 MUL                              R2 R3 R4
       15 GETTABLEKS                       R4 R1 K2 ["selectedRow"]
       17 SUB                              R3 R4 R2
       18 GETTABLEKS                       R5 R1 K6 ["pageRows"]
       20 GETTABLE                         R4 R5 R3
       21 JUMPIFNOT                        R4 ; [+3]
       22 GETTABLEKS                       R5 R4 K7 ["path"]
       24 JUMPIF                           R5 ; [+1]
       25 LOADNIL                          R5
       26 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 NAMECALL                         R3 R0 K2 ["getSelectedPath"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["createElement"]
       10 GETUPVAL                         R5 1
       11 DUPTABLE                         R6 K5 [{"Layout"}]
       12 GETIMPORT                        R7 K9 [Enum.FillDirection.Horizontal]
       14 SETTABLEKS                       R7 R6 K4 ["Layout"]
       16 DUPTABLE                         R7 K12 [{"Left", "Right"}]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K3 ["createElement"]
       20 GETUPVAL                         R9 1
       21 DUPTABLE                         R10 K15 [{"Size", "LayoutOrder", "Layout"}]
       22 GETIMPORT                        R11 K18 [UDim2.fromScale]
       24 LOADK                            R12 K19 [0.5]
       25 LOADN                            R13 1
       26 CALL                             R11 2 1
       27 SETTABLEKS                       R11 R10 K13 ["Size"]
       29 LOADN                            R11 1
       30 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       32 GETIMPORT                        R11 K21 [Enum.FillDirection.Vertical]
       34 SETTABLEKS                       R11 R10 K4 ["Layout"]
       36 DUPTABLE                         R11 K24 [{"Tools", "Table"}]
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K3 ["createElement"]
       40 GETUPVAL                         R13 1
       41 DUPTABLE                         R14 K27 [{"Padding", "LayoutOrder", "Layout", "HorizontalAlignment", "Size"}]
       42 GETTABLEKS                       R15 R2 K25 ["Padding"]
       44 SETTABLEKS                       R15 R14 K25 ["Padding"]
       46 LOADN                            R15 1
       47 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
       49 GETIMPORT                        R15 K9 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R15 R14 K4 ["Layout"]
       53 GETIMPORT                        R15 K28 [Enum.HorizontalAlignment.Left]
       55 SETTABLEKS                       R15 R14 K26 ["HorizontalAlignment"]
       57 GETIMPORT                        R15 K30 [UDim2.new]
       59 LOADN                            R16 1
       60 LOADN                            R17 0
       61 LOADN                            R18 0
       62 LOADN                            R19 32
       63 CALL                             R15 4 1
       64 SETTABLEKS                       R15 R14 K13 ["Size"]
       66 DUPTABLE                         R15 K34 [{"Search", "Filter", "Clear"}]
       67 GETUPVAL                         R16 0
       68 GETTABLEKS                       R16 R16 K3 ["createElement"]
       70 GETUPVAL                         R17 2
       71 DUPTABLE                         R18 K39 [{"LayoutOrder", "ShowSearchIcon", "ShowSearchButton", "OnTextChanged", "Width"}]
       72 LOADN                            R19 1
       73 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
       75 LOADB                            R19 1
       76 SETTABLEKS                       R19 R18 K35 ["ShowSearchIcon"]
       78 LOADB                            R19 0
       79 SETTABLEKS                       R19 R18 K36 ["ShowSearchButton"]
       81 GETTABLEKS                       R19 R0 K40 ["onSearchTable"]
       83 SETTABLEKS                       R19 R18 K37 ["OnTextChanged"]
       85 LOADN                            R19 44
       86 SETTABLEKS                       R19 R18 K38 ["Width"]
       88 CALL                             R16 2 1
       89 SETTABLEKS                       R16 R15 K31 ["Search"]
       91 GETUPVAL                         R16 0
       92 GETTABLEKS                       R16 R16 K3 ["createElement"]
       94 GETUPVAL                         R17 3
       95 DUPTABLE                         R18 K43 [{"Style", "Size", "LayoutOrder", "OnClick"}]
       96 GETTABLEKS                       R21 R0 K0 ["props"]
       98 GETTABLEKS                       R21 R21 K32 ["Filter"]
      100 LENGTH                           R20 R21
      101 LOADN                            R21 0
      102 JUMPIFNOTLT                      R21 R20 ; [+3]
      104 LOADK                            R19 K44 ["RoundPrimary"]
      105 JUMP                             ; [+1]
      106 LOADK                            R19 K45 ["RoundSubtle"]
      107 SETTABLEKS                       R19 R18 K41 ["Style"]
      109 GETIMPORT                        R19 K30 [UDim2.new]
      111 LOADN                            R20 0
      112 GETTABLEKS                       R21 R2 K46 ["ButtonSize"]
      114 LOADN                            R22 1
      115 LOADN                            R23 0
      116 CALL                             R19 4 1
      117 SETTABLEKS                       R19 R18 K13 ["Size"]
      119 LOADN                            R19 2
      120 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      122 GETTABLEKS                       R19 R0 K47 ["onToggleFilter"]
      124 SETTABLEKS                       R19 R18 K42 ["OnClick"]
      126 DUPTABLE                         R19 K50 [{"Tooltip", "Icon"}]
      127 GETUPVAL                         R20 0
      128 GETTABLEKS                       R20 R20 K3 ["createElement"]
      130 GETUPVAL                         R21 4
      131 DUPTABLE                         R22 K52 [{"Text"}]
      132 LOADK                            R23 K53 ["Exclude higher-order components"]
      133 SETTABLEKS                       R23 R22 K51 ["Text"]
      135 CALL                             R20 2 1
      136 SETTABLEKS                       R20 R19 K48 ["Tooltip"]
      138 GETUPVAL                         R20 0
      139 GETTABLEKS                       R20 R20 K3 ["createElement"]
      141 GETUPVAL                         R21 5
      142 DUPTABLE                         R22 K57 [{"Size", "Position", "AnchorPoint", "Image"}]
      143 GETIMPORT                        R23 K59 [UDim2.fromOffset]
      145 GETTABLEKS                       R24 R2 K60 ["IconSize"]
      147 GETTABLEKS                       R25 R2 K60 ["IconSize"]
      149 CALL                             R23 2 1
      150 SETTABLEKS                       R23 R22 K13 ["Size"]
      152 GETIMPORT                        R23 K18 [UDim2.fromScale]
      154 LOADK                            R24 K19 [0.5]
      155 LOADK                            R25 K19 [0.5]
      156 CALL                             R23 2 1
      157 SETTABLEKS                       R23 R22 K54 ["Position"]
      159 GETIMPORT                        R23 K62 [Vector2.new]
      161 LOADK                            R24 K19 [0.5]
      162 LOADK                            R25 K19 [0.5]
      163 CALL                             R23 2 1
      164 SETTABLEKS                       R23 R22 K55 ["AnchorPoint"]
      166 LOADK                            R23 K63 ["rbxasset://textures/DeveloperInspector/Filter.png"]
      167 SETTABLEKS                       R23 R22 K56 ["Image"]
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K49 ["Icon"]
      172 CALL                             R16 3 1
      173 SETTABLEKS                       R16 R15 K32 ["Filter"]
      175 GETUPVAL                         R16 0
      176 GETTABLEKS                       R16 R16 K3 ["createElement"]
      178 GETUPVAL                         R17 3
      179 DUPTABLE                         R18 K43 [{"Style", "Size", "LayoutOrder", "OnClick"}]
      180 LOADK                            R19 K45 ["RoundSubtle"]
      181 SETTABLEKS                       R19 R18 K41 ["Style"]
      183 GETIMPORT                        R19 K30 [UDim2.new]
      185 LOADN                            R20 0
      186 GETTABLEKS                       R21 R2 K46 ["ButtonSize"]
      188 LOADN                            R22 1
      189 LOADN                            R23 0
      190 CALL                             R19 4 1
      191 SETTABLEKS                       R19 R18 K13 ["Size"]
      193 LOADN                            R19 3
      194 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      196 GETTABLEKS                       R19 R0 K64 ["onClearTable"]
      198 SETTABLEKS                       R19 R18 K42 ["OnClick"]
      200 DUPTABLE                         R19 K50 [{"Tooltip", "Icon"}]
      201 GETUPVAL                         R20 0
      202 GETTABLEKS                       R20 R20 K3 ["createElement"]
      204 GETUPVAL                         R21 4
      205 DUPTABLE                         R22 K52 [{"Text"}]
      206 LOADK                            R23 K65 ["Clear the table"]
      207 SETTABLEKS                       R23 R22 K51 ["Text"]
      209 CALL                             R20 2 1
      210 SETTABLEKS                       R20 R19 K48 ["Tooltip"]
      212 GETUPVAL                         R20 0
      213 GETTABLEKS                       R20 R20 K3 ["createElement"]
      215 GETUPVAL                         R21 5
      216 DUPTABLE                         R22 K57 [{"Size", "Position", "AnchorPoint", "Image"}]
      217 GETIMPORT                        R23 K59 [UDim2.fromOffset]
      219 GETTABLEKS                       R24 R2 K60 ["IconSize"]
      221 GETTABLEKS                       R25 R2 K60 ["IconSize"]
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K13 ["Size"]
      226 GETIMPORT                        R23 K18 [UDim2.fromScale]
      228 LOADK                            R24 K19 [0.5]
      229 LOADK                            R25 K19 [0.5]
      230 CALL                             R23 2 1
      231 SETTABLEKS                       R23 R22 K54 ["Position"]
      233 GETIMPORT                        R23 K62 [Vector2.new]
      235 LOADK                            R24 K19 [0.5]
      236 LOADK                            R25 K19 [0.5]
      237 CALL                             R23 2 1
      238 SETTABLEKS                       R23 R22 K55 ["AnchorPoint"]
      240 LOADK                            R23 K66 ["rbxasset://textures/DeveloperInspector/Bin.png"]
      241 SETTABLEKS                       R23 R22 K56 ["Image"]
      243 CALL                             R20 2 1
      244 SETTABLEKS                       R20 R19 K49 ["Icon"]
      246 CALL                             R16 3 1
      247 SETTABLEKS                       R16 R15 K33 ["Clear"]
      249 CALL                             R12 3 1
      250 SETTABLEKS                       R12 R11 K22 ["Tools"]
      252 GETUPVAL                         R12 0
      253 GETTABLEKS                       R12 R12 K3 ["createElement"]
      255 GETUPVAL                         R13 1
      256 DUPTABLE                         R14 K67 [{"Padding", "LayoutOrder", "Size"}]
      257 GETTABLEKS                       R15 R2 K25 ["Padding"]
      259 SETTABLEKS                       R15 R14 K25 ["Padding"]
      261 LOADN                            R15 2
      262 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      264 GETIMPORT                        R15 K30 [UDim2.new]
      266 LOADN                            R16 1
      267 LOADN                            R17 0
      268 LOADN                            R18 1
      269 LOADN                            R19 224
      270 CALL                             R15 4 1
      271 SETTABLEKS                       R15 R14 K13 ["Size"]
      273 DUPTABLE                         R15 K69 [{"Child"}]
      274 GETUPVAL                         R16 0
      275 GETTABLEKS                       R16 R16 K3 ["createElement"]
      277 GETUPVAL                         R17 6
      278 CALL                             R16 1 1
      279 SETTABLEKS                       R16 R15 K68 ["Child"]
      281 CALL                             R12 3 1
      282 SETTABLEKS                       R12 R11 K23 ["Table"]
      284 CALL                             R8 3 1
      285 SETTABLEKS                       R8 R7 K10 ["Left"]
      287 GETUPVAL                         R8 0
      288 GETTABLEKS                       R8 R8 K3 ["createElement"]
      290 GETUPVAL                         R9 1
      291 DUPTABLE                         R10 K15 [{"Size", "LayoutOrder", "Layout"}]
      292 GETIMPORT                        R11 K18 [UDim2.fromScale]
      294 LOADK                            R12 K19 [0.5]
      295 LOADN                            R13 1
      296 CALL                             R11 2 1
      297 SETTABLEKS                       R11 R10 K13 ["Size"]
      299 LOADN                            R11 2
      300 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      302 GETIMPORT                        R11 K21 [Enum.FillDirection.Vertical]
      304 SETTABLEKS                       R11 R10 K4 ["Layout"]
      306 DUPTABLE                         R11 K24 [{"Tools", "Table"}]
      307 GETUPVAL                         R12 0
      308 GETTABLEKS                       R12 R12 K3 ["createElement"]
      310 GETUPVAL                         R13 1
      311 DUPTABLE                         R14 K27 [{"Padding", "LayoutOrder", "Layout", "HorizontalAlignment", "Size"}]
      312 GETTABLEKS                       R15 R2 K25 ["Padding"]
      314 SETTABLEKS                       R15 R14 K25 ["Padding"]
      316 LOADN                            R15 1
      317 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      319 GETIMPORT                        R15 K9 [Enum.FillDirection.Horizontal]
      321 SETTABLEKS                       R15 R14 K4 ["Layout"]
      323 GETIMPORT                        R15 K70 [Enum.HorizontalAlignment.Right]
      325 SETTABLEKS                       R15 R14 K26 ["HorizontalAlignment"]
      327 GETIMPORT                        R15 K30 [UDim2.new]
      329 LOADN                            R16 1
      330 LOADN                            R17 0
      331 LOADN                            R18 0
      332 LOADN                            R19 32
      333 CALL                             R15 4 1
      334 SETTABLEKS                       R15 R14 K13 ["Size"]
      336 DUPTABLE                         R15 K72 [{"View"}]
      337 GETUPVAL                         R16 0
      338 GETTABLEKS                       R16 R16 K3 ["createElement"]
      340 GETUPVAL                         R17 3
      341 DUPTABLE                         R18 K74 [{"Style", "Text", "Size", "OnClick", "StyleModifier"}]
      342 LOADK                            R19 K75 ["Round"]
      343 SETTABLEKS                       R19 R18 K41 ["Style"]
      345 LOADK                            R19 K76 ["View Component"]
      346 SETTABLEKS                       R19 R18 K51 ["Text"]
      348 GETIMPORT                        R19 K30 [UDim2.new]
      350 LOADN                            R20 0
      351 LOADN                            R21 130
      352 LOADN                            R22 1
      353 LOADN                            R23 0
      354 CALL                             R19 4 1
      355 SETTABLEKS                       R19 R18 K13 ["Size"]
      357 GETTABLEKS                       R19 R0 K77 ["onViewComponent"]
      359 SETTABLEKS                       R19 R18 K42 ["OnClick"]
      361 JUMPIFNOTEQKNIL                  R3 ; [+5]
      363 GETUPVAL                         R19 7
      364 GETTABLEKS                       R19 R19 K78 ["Disabled"]
      366 JUMPIF                           R19 ; [+1]
      367 LOADNIL                          R19
      368 SETTABLEKS                       R19 R18 K73 ["StyleModifier"]
      370 CALL                             R16 2 1
      371 SETTABLEKS                       R16 R15 K71 ["View"]
      373 CALL                             R12 3 1
      374 SETTABLEKS                       R12 R11 K22 ["Tools"]
      376 GETUPVAL                         R12 0
      377 GETTABLEKS                       R12 R12 K3 ["createElement"]
      379 GETUPVAL                         R13 1
      380 DUPTABLE                         R14 K67 [{"Padding", "LayoutOrder", "Size"}]
      381 GETTABLEKS                       R15 R2 K25 ["Padding"]
      383 SETTABLEKS                       R15 R14 K25 ["Padding"]
      385 LOADN                            R15 2
      386 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      388 GETIMPORT                        R15 K30 [UDim2.new]
      390 LOADN                            R16 1
      391 LOADN                            R17 0
      392 LOADN                            R18 1
      393 LOADN                            R19 224
      394 CALL                             R15 4 1
      395 SETTABLEKS                       R15 R14 K13 ["Size"]
      397 DUPTABLE                         R15 K69 [{"Child"}]
      398 GETUPVAL                         R16 0
      399 GETTABLEKS                       R16 R16 K3 ["createElement"]
      401 GETUPVAL                         R17 8
      402 CALL                             R16 1 1
      403 SETTABLEKS                       R16 R15 K68 ["Child"]
      405 CALL                             R12 3 1
      406 SETTABLEKS                       R12 R11 K23 ["Table"]
      408 CALL                             R8 3 1
      409 SETTABLEKS                       R8 R7 K11 ["Right"]
      411 CALL                             R4 3 -1
      412 RETURN                           R4 -1

PROTO_7:
        0 DUPTABLE                         R1 K4 [{"Tabs", "TableData", "SearchTerm", "Filter"}]
        1 GETTABLEKS                       R2 R0 K5 ["Targets"]
        3 GETTABLEKS                       R2 R2 K6 ["tabs"]
        5 SETTABLEKS                       R2 R1 K0 ["Tabs"]
        7 GETTABLEKS                       R2 R0 K7 ["RoactInspector"]
        9 GETTABLEKS                       R2 R2 K8 ["profileComponents"]
       11 SETTABLEKS                       R2 R1 K1 ["TableData"]
       13 GETTABLEKS                       R2 R0 K7 ["RoactInspector"]
       15 GETTABLEKS                       R2 R2 K9 ["profileSearchTerm"]
       17 SETTABLEKS                       R2 R1 K2 ["SearchTerm"]
       19 GETTABLEKS                       R2 R0 K7 ["RoactInspector"]
       21 GETTABLEKS                       R2 R2 K10 ["profileFilter"]
       23 SETTABLEKS                       R2 R1 K3 ["Filter"]
       25 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K3 [{"clearTable", "setProfileSearchTerm", "setProfileFilter"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["clearTable"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setProfileSearchTerm"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["setProfileFilter"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K11 ["InspectorContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["RoactProfilerEventsTable"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Components"]
       54 GETTABLEKS                       R7 R7 K14 ["RoactProfilerComponentsTable"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R8 R0 K5 ["Packages"]
       61 GETTABLEKS                       R8 R8 K15 ["DeveloperTools"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R7 K16 ["RoactInspectorApi"]
       66 GETTABLEKS                       R9 R0 K9 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Actions"]
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R9 K18 ["RoactInspector"]
       74 GETTABLEKS                       R11 R11 K19 ["ClearProfileData"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R9 K18 ["RoactInspector"]
       81 GETTABLEKS                       R12 R12 K20 ["SetProfileSearchTerm"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R9 K18 ["RoactInspector"]
       88 GETTABLEKS                       R13 R13 K21 ["SetProfileFilter"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R3 K22 ["ContextServices"]
       93 GETTABLEKS                       R14 R13 K23 ["withContext"]
       95 GETTABLEKS                       R15 R3 K10 ["Util"]
       97 GETTABLEKS                       R16 R15 K24 ["StyleModifier"]
       99 GETTABLEKS                       R17 R3 K25 ["UI"]
      101 GETTABLEKS                       R18 R17 K26 ["Pane"]
      103 GETTABLEKS                       R19 R17 K27 ["Tooltip"]
      105 GETTABLEKS                       R20 R17 K28 ["Button"]
      107 GETTABLEKS                       R21 R17 K29 ["Image"]
      109 GETTABLEKS                       R22 R17 K30 ["SearchBar"]
      111 GETTABLEKS                       R23 R1 K31 ["PureComponent"]
      113 LOADK                            R25 K32 ["RoactProfilerView"]
      114 NAMECALL                         R23 R23 K33 ["extend"]
      116 CALL                             R23 2 1
      117 DUPCLOSURE                       R24 K34 [PROTO_4]
      118 CAPTURE                          VAL R8
      119 SETTABLEKS                       R24 R23 K35 ["init"]
      121 DUPCLOSURE                       R24 K36 [PROTO_5]
      122 SETTABLEKS                       R24 R23 K37 ["getSelectedPath"]
      124 DUPCLOSURE                       R24 K38 [PROTO_6]
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R22
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R24 R23 K39 ["render"]
      136 MOVE                             R24 R14
      137 DUPTABLE                         R25 K42 [{"Inspector", "Stylizer"}]
      138 SETTABLEKS                       R4 R25 K40 ["Inspector"]
      140 GETTABLEKS                       R26 R13 K41 ["Stylizer"]
      142 SETTABLEKS                       R26 R25 K41 ["Stylizer"]
      144 CALL                             R24 1 1
      145 MOVE                             R25 R23
      146 CALL                             R24 1 1
      147 MOVE                             R23 R24
      148 GETTABLEKS                       R24 R2 K43 ["connect"]
      150 DUPCLOSURE                       R25 K44 [PROTO_7]
      151 DUPCLOSURE                       R26 K45 [PROTO_11]
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 CALL                             R24 2 1
      156 MOVE                             R25 R23
      157 CALL                             R24 1 -1
      158 RETURN                           R24 -1
