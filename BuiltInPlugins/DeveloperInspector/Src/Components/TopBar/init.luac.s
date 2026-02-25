PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Inspector"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R1 R0 K3 ["closeTargetApi"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["props"]
       14 GETTABLEKS                       R1 R2 K4 ["closeTarget"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["props"]
       20 GETTABLEKS                       R1 R2 K5 ["IsProfiling"]
       22 JUMPIFNOT                        R1 ; [+4]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K6 ["toggleProfiling"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["IsPicking"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K2 ["Inspector"]
       11 NAMECALL                         R1 R1 K3 ["get"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R2 R1 K4 ["getTargetApi"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K5 ["isInstance"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R2 K6 ["setPicking"]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K0 ["props"]
       30 GETTABLEKS                       R3 R4 K6 ["setPicking"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["IsProfiling"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K2 ["Inspector"]
       11 NAMECALL                         R1 R1 K3 ["get"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R2 R1 K4 ["getTargetApi"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K5 ["isInstance"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R2 K6 ["setProfiling"]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K0 ["props"]
       30 GETTABLEKS                       R3 R4 K6 ["setProfiling"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 0
       34 JUMPIFNOT                        R0 ; [+12]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K0 ["props"]
       38 GETTABLEKS                       R3 R4 K7 ["selectTab"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K0 ["props"]
       43 GETTABLEKS                       R5 R6 K8 ["Tabs"]
       45 GETTABLEN                        R4 R5 2
       46 CALL                             R3 1 0
       47 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["closeTarget"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["togglePicking"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K2 ["toggleProfiling"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Active"]
        4 JUMPIF                           R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["closeTarget"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["PluginActions"]
        4 LOADK                            R4 K2 ["ToggleProfileRoact"]
        5 NAMECALL                         R2 R1 K3 ["get"]
        7 CALL                             R2 2 1
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K4 ["Enabled"]
       11 GETTABLEKS                       R3 R2 K5 ["Triggered"]
       13 GETTABLEKS                       R5 R0 K6 ["toggleProfiling"]
       15 NAMECALL                         R3 R3 K7 ["Connect"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R0 K8 ["toggleProfileConnection"]
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Active"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["closeTarget"]
        7 CALL                             R1 0 0
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["PluginActions"]
       12 LOADK                            R4 K4 ["ToggleProfileRoact"]
       13 NAMECALL                         R2 R1 K5 ["get"]
       15 CALL                             R2 2 1
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K6 ["Enabled"]
       19 GETTABLEKS                       R3 R0 K7 ["toggleProfileConnection"]
       21 NAMECALL                         R3 R3 K8 ["Disconnect"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K7 [{"Size", "Style", "BorderColor3", "BorderSizePixel"}]
        9 GETIMPORT                        R6 K10 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 GETTABLEKS                       R10 R2 K11 ["HeaderHeight"]
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K3 ["Size"]
       19 LOADK                            R6 K12 ["SubtleBox"]
       20 SETTABLEKS                       R6 R5 K4 ["Style"]
       22 GETTABLEKS                       R6 R2 K13 ["HeaderBorderColor"]
       24 SETTABLEKS                       R6 R5 K5 ["BorderColor3"]
       26 LOADN                            R6 1
       27 SETTABLEKS                       R6 R5 K6 ["BorderSizePixel"]
       29 DUPTABLE                         R6 K18 [{"Inspect", "Profile", "Tabs", "Right"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K2 ["createElement"]
       33 GETUPVAL                         R8 2
       34 DUPTABLE                         R9 K22 [{"Style", "Position", "Size", "LayoutOrder", "OnClick"}]
       35 GETTABLEKS                       R11 R1 K23 ["IsPicking"]
       37 JUMPIFNOT                        R11 ; [+2]
       38 LOADK                            R10 K24 ["RoundPrimary"]
       39 JUMP                             ; [+1]
       40 LOADK                            R10 K25 ["RoundSubtle"]
       41 SETTABLEKS                       R10 R9 K4 ["Style"]
       43 GETIMPORT                        R10 K27 [UDim2.fromOffset]
       45 GETTABLEKS                       R11 R2 K28 ["Padding"]
       47 LOADN                            R12 0
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K19 ["Position"]
       51 GETIMPORT                        R10 K27 [UDim2.fromOffset]
       53 GETTABLEKS                       R11 R2 K29 ["ButtonSize"]
       55 GETTABLEKS                       R12 R2 K29 ["ButtonSize"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K3 ["Size"]
       60 LOADN                            R10 1
       61 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       63 GETTABLEKS                       R10 R0 K30 ["togglePicking"]
       65 SETTABLEKS                       R10 R9 K21 ["OnClick"]
       67 DUPTABLE                         R10 K33 [{"Tooltip", "Icon"}]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R11 R12 K2 ["createElement"]
       71 GETUPVAL                         R12 3
       72 DUPTABLE                         R13 K35 [{"Text"}]
       73 LOADK                            R14 K36 ["Inspect a UI element"]
       74 SETTABLEKS                       R14 R13 K34 ["Text"]
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K31 ["Tooltip"]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K2 ["createElement"]
       82 GETUPVAL                         R12 4
       83 DUPTABLE                         R13 K39 [{"Size", "Position", "AnchorPoint", "Image"}]
       84 GETIMPORT                        R14 K27 [UDim2.fromOffset]
       86 GETTABLEKS                       R15 R2 K40 ["IconSize"]
       88 GETTABLEKS                       R16 R2 K40 ["IconSize"]
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K3 ["Size"]
       93 GETIMPORT                        R14 K42 [UDim2.fromScale]
       95 LOADK                            R15 K43 [0.5]
       96 LOADK                            R16 K43 [0.5]
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K19 ["Position"]
      100 GETIMPORT                        R14 K45 [Vector2.new]
      102 LOADK                            R15 K43 [0.5]
      103 LOADK                            R16 K43 [0.5]
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K37 ["AnchorPoint"]
      107 LOADK                            R14 K46 ["rbxasset://textures/DeveloperInspector/Inspect.png"]
      108 SETTABLEKS                       R14 R13 K38 ["Image"]
      110 CALL                             R11 2 1
      111 SETTABLEKS                       R11 R10 K32 ["Icon"]
      113 CALL                             R7 3 1
      114 SETTABLEKS                       R7 R6 K14 ["Inspect"]
      116 GETUPVAL                         R8 0
      117 GETTABLEKS                       R7 R8 K2 ["createElement"]
      119 GETUPVAL                         R8 2
      120 DUPTABLE                         R9 K22 [{"Style", "Position", "Size", "LayoutOrder", "OnClick"}]
      121 GETTABLEKS                       R11 R1 K47 ["IsProfiling"]
      123 JUMPIFNOT                        R11 ; [+2]
      124 LOADK                            R10 K24 ["RoundPrimary"]
      125 JUMP                             ; [+1]
      126 LOADK                            R10 K25 ["RoundSubtle"]
      127 SETTABLEKS                       R10 R9 K4 ["Style"]
      129 GETIMPORT                        R10 K27 [UDim2.fromOffset]
      131 GETTABLEKS                       R12 R2 K29 ["ButtonSize"]
      133 GETTABLEKS                       R14 R2 K28 ["Padding"]
      135 MULK                             R13 R14 K48 [2]
      136 ADD                              R11 R12 R13
      137 LOADN                            R12 0
      138 CALL                             R10 2 1
      139 SETTABLEKS                       R10 R9 K19 ["Position"]
      141 GETIMPORT                        R10 K27 [UDim2.fromOffset]
      143 GETTABLEKS                       R11 R2 K29 ["ButtonSize"]
      145 GETTABLEKS                       R12 R2 K29 ["ButtonSize"]
      147 CALL                             R10 2 1
      148 SETTABLEKS                       R10 R9 K3 ["Size"]
      150 LOADN                            R10 2
      151 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      153 GETTABLEKS                       R10 R0 K49 ["toggleProfiling"]
      155 SETTABLEKS                       R10 R9 K21 ["OnClick"]
      157 DUPTABLE                         R10 K33 [{"Tooltip", "Icon"}]
      158 GETUPVAL                         R12 0
      159 GETTABLEKS                       R11 R12 K2 ["createElement"]
      161 GETUPVAL                         R12 3
      162 DUPTABLE                         R13 K35 [{"Text"}]
      163 LOADK                            R14 K50 ["Profile a Roact tree (Ctrl+Shift+R)"]
      164 SETTABLEKS                       R14 R13 K34 ["Text"]
      166 CALL                             R11 2 1
      167 SETTABLEKS                       R11 R10 K31 ["Tooltip"]
      169 GETUPVAL                         R12 0
      170 GETTABLEKS                       R11 R12 K2 ["createElement"]
      172 GETUPVAL                         R12 4
      173 DUPTABLE                         R13 K39 [{"Size", "Position", "AnchorPoint", "Image"}]
      174 GETIMPORT                        R14 K27 [UDim2.fromOffset]
      176 GETTABLEKS                       R15 R2 K40 ["IconSize"]
      178 GETTABLEKS                       R16 R2 K40 ["IconSize"]
      180 CALL                             R14 2 1
      181 SETTABLEKS                       R14 R13 K3 ["Size"]
      183 GETIMPORT                        R14 K42 [UDim2.fromScale]
      185 LOADK                            R15 K43 [0.5]
      186 LOADK                            R16 K43 [0.5]
      187 CALL                             R14 2 1
      188 SETTABLEKS                       R14 R13 K19 ["Position"]
      190 GETIMPORT                        R14 K45 [Vector2.new]
      192 LOADK                            R15 K43 [0.5]
      193 LOADK                            R16 K43 [0.5]
      194 CALL                             R14 2 1
      195 SETTABLEKS                       R14 R13 K37 ["AnchorPoint"]
      197 LOADK                            R14 K51 ["rbxasset://textures/DeveloperInspector/Record.png"]
      198 SETTABLEKS                       R14 R13 K38 ["Image"]
      200 CALL                             R11 2 1
      201 SETTABLEKS                       R11 R10 K32 ["Icon"]
      203 CALL                             R7 3 1
      204 SETTABLEKS                       R7 R6 K15 ["Profile"]
      206 GETUPVAL                         R8 0
      207 GETTABLEKS                       R7 R8 K2 ["createElement"]
      209 GETUPVAL                         R8 1
      210 DUPTABLE                         R9 K52 [{"Position", "LayoutOrder"}]
      211 GETIMPORT                        R10 K27 [UDim2.fromOffset]
      213 GETTABLEKS                       R13 R2 K29 ["ButtonSize"]
      215 MULK                             R12 R13 K48 [2]
      216 GETTABLEKS                       R14 R2 K28 ["Padding"]
      218 MULK                             R13 R14 K53 [3]
      219 ADD                              R11 R12 R13
      220 GETTABLEKS                       R12 R2 K28 ["Padding"]
      222 CALL                             R10 2 1
      223 SETTABLEKS                       R10 R9 K19 ["Position"]
      225 LOADN                            R10 3
      226 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      228 DUPTABLE                         R10 K55 [{"Child"}]
      229 GETUPVAL                         R12 0
      230 GETTABLEKS                       R11 R12 K2 ["createElement"]
      232 GETUPVAL                         R12 5
      233 DUPTABLE                         R13 K58 [{"OnTabSelected", "SelectedTab", "Tabs"}]
      234 GETTABLEKS                       R15 R0 K0 ["props"]
      236 GETTABLEKS                       R14 R15 K59 ["selectTab"]
      238 SETTABLEKS                       R14 R13 K56 ["OnTabSelected"]
      240 GETTABLEKS                       R14 R1 K57 ["SelectedTab"]
      242 SETTABLEKS                       R14 R13 K57 ["SelectedTab"]
      244 GETTABLEKS                       R14 R1 K16 ["Tabs"]
      246 SETTABLEKS                       R14 R13 K16 ["Tabs"]
      248 CALL                             R11 2 1
      249 SETTABLEKS                       R11 R10 K54 ["Child"]
      251 CALL                             R7 3 1
      252 SETTABLEKS                       R7 R6 K16 ["Tabs"]
      254 GETUPVAL                         R8 0
      255 GETTABLEKS                       R7 R8 K2 ["createElement"]
      257 GETUPVAL                         R8 1
      258 DUPTABLE                         R9 K63 [{"Layout", "Spacing", "AnchorPoint", "Position", "AutomaticSize"}]
      259 GETIMPORT                        R10 K67 [Enum.FillDirection.Horizontal]
      261 SETTABLEKS                       R10 R9 K60 ["Layout"]
      263 GETTABLEKS                       R10 R2 K28 ["Padding"]
      265 SETTABLEKS                       R10 R9 K61 ["Spacing"]
      267 GETIMPORT                        R10 K45 [Vector2.new]
      269 LOADN                            R11 1
      270 LOADN                            R12 0
      271 CALL                             R10 2 1
      272 SETTABLEKS                       R10 R9 K37 ["AnchorPoint"]
      274 GETIMPORT                        R10 K42 [UDim2.fromScale]
      276 LOADN                            R11 1
      277 LOADN                            R12 0
      278 CALL                             R10 2 1
      279 SETTABLEKS                       R10 R9 K19 ["Position"]
      281 GETIMPORT                        R10 K69 [Enum.AutomaticSize.XY]
      283 SETTABLEKS                       R10 R9 K62 ["AutomaticSize"]
      285 DUPTABLE                         R10 K72 [{"TargetName", "Close"}]
      286 GETUPVAL                         R12 0
      287 GETTABLEKS                       R11 R12 K2 ["createElement"]
      289 GETUPVAL                         R12 6
      290 DUPTABLE                         R13 K74 [{"AutomaticSize", "Text", "LayoutOrder", "TextXAlignment"}]
      291 GETIMPORT                        R14 K69 [Enum.AutomaticSize.XY]
      293 SETTABLEKS                       R14 R13 K62 ["AutomaticSize"]
      295 GETTABLEKS                       R15 R1 K75 ["SelectedTarget"]
      297 GETTABLEKS                       R14 R15 K76 ["Name"]
      299 SETTABLEKS                       R14 R13 K34 ["Text"]
      301 LOADN                            R14 1
      302 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      304 GETIMPORT                        R14 K77 [Enum.TextXAlignment.Right]
      306 SETTABLEKS                       R14 R13 K73 ["TextXAlignment"]
      308 CALL                             R11 2 1
      309 SETTABLEKS                       R11 R10 K70 ["TargetName"]
      311 GETUPVAL                         R12 0
      312 GETTABLEKS                       R11 R12 K2 ["createElement"]
      314 GETUPVAL                         R12 2
      315 DUPTABLE                         R13 K78 [{"Style", "Position", "Size", "AnchorPoint", "LayoutOrder", "OnClick"}]
      316 LOADK                            R14 K25 ["RoundSubtle"]
      317 SETTABLEKS                       R14 R13 K4 ["Style"]
      319 GETIMPORT                        R14 K42 [UDim2.fromScale]
      321 LOADN                            R15 1
      322 LOADN                            R16 0
      323 CALL                             R14 2 1
      324 SETTABLEKS                       R14 R13 K19 ["Position"]
      326 GETIMPORT                        R14 K27 [UDim2.fromOffset]
      328 GETTABLEKS                       R15 R2 K29 ["ButtonSize"]
      330 GETTABLEKS                       R16 R2 K29 ["ButtonSize"]
      332 CALL                             R14 2 1
      333 SETTABLEKS                       R14 R13 K3 ["Size"]
      335 GETIMPORT                        R14 K45 [Vector2.new]
      337 LOADN                            R15 1
      338 LOADN                            R16 0
      339 CALL                             R14 2 1
      340 SETTABLEKS                       R14 R13 K37 ["AnchorPoint"]
      342 LOADN                            R14 4
      343 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      345 GETTABLEKS                       R14 R0 K79 ["closeTarget"]
      347 SETTABLEKS                       R14 R13 K21 ["OnClick"]
      349 DUPTABLE                         R14 K33 [{"Tooltip", "Icon"}]
      350 GETUPVAL                         R16 0
      351 GETTABLEKS                       R15 R16 K2 ["createElement"]
      353 GETUPVAL                         R16 3
      354 DUPTABLE                         R17 K35 [{"Text"}]
      355 LOADK                            R18 K80 ["Close this Roact tree"]
      356 SETTABLEKS                       R18 R17 K34 ["Text"]
      358 CALL                             R15 2 1
      359 SETTABLEKS                       R15 R14 K31 ["Tooltip"]
      361 GETUPVAL                         R16 0
      362 GETTABLEKS                       R15 R16 K2 ["createElement"]
      364 GETUPVAL                         R16 4
      365 DUPTABLE                         R17 K39 [{"Size", "Position", "AnchorPoint", "Image"}]
      366 GETIMPORT                        R18 K27 [UDim2.fromOffset]
      368 GETTABLEKS                       R19 R2 K40 ["IconSize"]
      370 GETTABLEKS                       R20 R2 K40 ["IconSize"]
      372 CALL                             R18 2 1
      373 SETTABLEKS                       R18 R17 K3 ["Size"]
      375 GETIMPORT                        R18 K42 [UDim2.fromScale]
      377 LOADK                            R19 K43 [0.5]
      378 LOADK                            R20 K43 [0.5]
      379 CALL                             R18 2 1
      380 SETTABLEKS                       R18 R17 K19 ["Position"]
      382 GETIMPORT                        R18 K45 [Vector2.new]
      384 LOADK                            R19 K43 [0.5]
      385 LOADK                            R20 K43 [0.5]
      386 CALL                             R18 2 1
      387 SETTABLEKS                       R18 R17 K37 ["AnchorPoint"]
      389 LOADK                            R18 K81 ["rbxasset://textures/DeveloperInspector/Close.png"]
      390 SETTABLEKS                       R18 R17 K38 ["Image"]
      392 CALL                             R15 2 1
      393 SETTABLEKS                       R15 R14 K32 ["Icon"]
      395 CALL                             R11 3 1
      396 SETTABLEKS                       R11 R10 K71 ["Close"]
      398 CALL                             R7 3 1
      399 SETTABLEKS                       R7 R6 K17 ["Right"]
      401 CALL                             R3 3 -1
      402 RETURN                           R3 -1

PROTO_8:
        0 DUPTABLE                         R1 K5 [{"Tabs", "SelectedTab", "SelectedTarget", "IsPicking", "IsProfiling"}]
        1 GETTABLEKS                       R3 R0 K6 ["Targets"]
        3 GETTABLEKS                       R2 R3 K7 ["tabs"]
        5 SETTABLEKS                       R2 R1 K0 ["Tabs"]
        7 GETTABLEKS                       R3 R0 K6 ["Targets"]
        9 GETTABLEKS                       R2 R3 K8 ["selectedTab"]
       11 SETTABLEKS                       R2 R1 K1 ["SelectedTab"]
       13 GETTABLEKS                       R3 R0 K6 ["Targets"]
       15 GETTABLEKS                       R2 R3 K9 ["selectedTarget"]
       17 SETTABLEKS                       R2 R1 K2 ["SelectedTarget"]
       19 GETTABLEKS                       R3 R0 K10 ["RoactInspector"]
       21 GETTABLEKS                       R2 R3 K11 ["isPicking"]
       23 SETTABLEKS                       R2 R1 K3 ["IsPicking"]
       25 GETTABLEKS                       R3 R0 K10 ["RoactInspector"]
       27 GETTABLEKS                       R2 R3 K12 ["isProfiling"]
       29 SETTABLEKS                       R2 R1 K4 ["IsProfiling"]
       31 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K4 [{"selectTab", "setPicking", "setProfiling", "closeTarget"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["selectTab"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setPicking"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["setProfiling"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 SETTABLEKS                       R2 R1 K3 ["closeTarget"]
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K11 ["InspectorContext"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R5 R6 K12 ["Actions"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R5 K13 ["CloseTarget"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R9 R5 K14 ["RoactInspector"]
       52 GETTABLEKS                       R8 R9 K15 ["SetPicking"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R10 R5 K14 ["RoactInspector"]
       59 GETTABLEKS                       R9 R10 K16 ["SetProfiling"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R11 R5 K14 ["RoactInspector"]
       66 GETTABLEKS                       R10 R11 K17 ["Reset"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K4 [require]
       71 GETTABLEKS                       R11 R5 K18 ["SetTab"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R3 K19 ["ContextServices"]
       76 GETTABLEKS                       R12 R11 K20 ["withContext"]
       78 GETTABLEKS                       R13 R3 K21 ["UI"]
       80 GETTABLEKS                       R14 R13 K22 ["Pane"]
       82 GETTABLEKS                       R15 R13 K23 ["Tabs"]
       84 GETTABLEKS                       R16 R13 K24 ["Tooltip"]
       86 GETTABLEKS                       R17 R13 K25 ["Button"]
       88 GETTABLEKS                       R18 R13 K26 ["Image"]
       90 GETTABLEKS                       R19 R13 K27 ["TextLabel"]
       92 GETIMPORT                        R20 K4 [require]
       94 GETTABLEKS                       R22 R0 K5 ["Packages"]
       96 GETTABLEKS                       R21 R22 K28 ["DeveloperTools"]
       98 CALL                             R20 1 1
       99 GETTABLEKS                       R21 R20 K29 ["RoactInspectorApi"]
      101 GETTABLEKS                       R22 R1 K30 ["PureComponent"]
      103 LOADK                            R24 K31 ["TopBar"]
      104 NAMECALL                         R22 R22 K32 ["extend"]
      106 CALL                             R22 2 1
      107 DUPCLOSURE                       R23 K33 [PROTO_3]
      108 CAPTURE                          VAL R21
      109 SETTABLEKS                       R23 R22 K34 ["init"]
      111 DUPCLOSURE                       R23 K35 [PROTO_4]
      112 SETTABLEKS                       R23 R22 K36 ["didUpdate"]
      114 DUPCLOSURE                       R23 K37 [PROTO_5]
      115 SETTABLEKS                       R23 R22 K38 ["didMount"]
      117 DUPCLOSURE                       R23 K39 [PROTO_6]
      118 SETTABLEKS                       R23 R22 K40 ["willUnmount"]
      120 DUPCLOSURE                       R23 K41 [PROTO_7]
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R19
      128 SETTABLEKS                       R23 R22 K42 ["render"]
      130 MOVE                             R23 R12
      131 DUPTABLE                         R24 K46 [{"PluginActions", "Stylizer", "Inspector"}]
      132 GETTABLEKS                       R25 R11 K43 ["PluginActions"]
      134 SETTABLEKS                       R25 R24 K43 ["PluginActions"]
      136 GETTABLEKS                       R25 R11 K44 ["Stylizer"]
      138 SETTABLEKS                       R25 R24 K44 ["Stylizer"]
      140 SETTABLEKS                       R4 R24 K45 ["Inspector"]
      142 CALL                             R23 1 1
      143 MOVE                             R24 R22
      144 CALL                             R23 1 1
      145 MOVE                             R22 R23
      146 GETTABLEKS                       R23 R2 K47 ["connect"]
      148 DUPCLOSURE                       R24 K48 [PROTO_8]
      149 DUPCLOSURE                       R25 K49 [PROTO_13]
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R9
      155 CALL                             R23 2 1
      156 MOVE                             R24 R22
      157 CALL                             R23 1 -1
      158 RETURN                           R23 -1
