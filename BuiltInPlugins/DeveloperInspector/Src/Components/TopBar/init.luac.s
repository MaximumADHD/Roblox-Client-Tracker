PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Inspector"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R1 R0 K3 ["closeTargetApi"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETTABLEKS                       R1 R1 K4 ["closeTarget"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["props"]
       20 GETTABLEKS                       R1 R1 K5 ["IsProfiling"]
       22 JUMPIFNOT                        R1 ; [+4]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K6 ["toggleProfiling"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["IsPicking"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["Inspector"]
       11 NAMECALL                         R1 R1 K3 ["get"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R2 R1 K4 ["getTargetApi"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["isInstance"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R2 K6 ["setPicking"]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["props"]
       30 GETTABLEKS                       R3 R3 K6 ["setPicking"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["IsProfiling"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["Inspector"]
       11 NAMECALL                         R1 R1 K3 ["get"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R2 R1 K4 ["getTargetApi"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["isInstance"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R2 K6 ["setProfiling"]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["props"]
       30 GETTABLEKS                       R3 R3 K6 ["setProfiling"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 0
       34 JUMPIFNOT                        R0 ; [+12]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K0 ["props"]
       38 GETTABLEKS                       R3 R3 K7 ["selectTab"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["props"]
       43 GETTABLEKS                       R5 R5 K8 ["Tabs"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Active"]
        4 JUMPIF                           R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["closeTarget"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Active"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["closeTarget"]
        7 CALL                             R1 0 0
        8 GETTABLEKS                       R1 R0 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["PluginActions"]
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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K9 [{["Size"], ["Style"] = "SubtleBox", ["BorderColor3"], ["BorderSizePixel"] = 1}]
        9 GETIMPORT                        R6 K12 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 GETTABLEKS                       R10 R2 K13 ["HeaderHeight"]
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K3 ["Size"]
       19 GETTABLEKS                       R6 R2 K14 ["HeaderBorderColor"]
       21 SETTABLEKS                       R6 R5 K6 ["BorderColor3"]
       23 DUPTABLE                         R6 K19 [{"Inspect", "Profile", "Tabs", "Right"}]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K2 ["createElement"]
       27 GETUPVAL                         R8 2
       28 DUPTABLE                         R9 K23 [{["Style"], ["Position"], ["Size"], ["LayoutOrder"] = 1, ["OnClick"]}]
       29 GETTABLEKS                       R11 R1 K24 ["IsPicking"]
       31 JUMPIFNOT                        R11 ; [+2]
       32 LOADK                            R10 K25 ["RoundPrimary"]
       33 JUMP                             ; [+1]
       34 LOADK                            R10 K26 ["RoundSubtle"]
       35 SETTABLEKS                       R10 R9 K4 ["Style"]
       37 GETIMPORT                        R10 K28 [UDim2.fromOffset]
       39 GETTABLEKS                       R11 R2 K29 ["Padding"]
       41 LOADN                            R12 0
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K20 ["Position"]
       45 GETIMPORT                        R10 K28 [UDim2.fromOffset]
       47 GETTABLEKS                       R11 R2 K30 ["ButtonSize"]
       49 GETTABLEKS                       R12 R2 K30 ["ButtonSize"]
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K3 ["Size"]
       54 GETTABLEKS                       R10 R0 K31 ["togglePicking"]
       56 SETTABLEKS                       R10 R9 K22 ["OnClick"]
       58 DUPTABLE                         R10 K34 [{"Tooltip", "Icon"}]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K2 ["createElement"]
       62 GETUPVAL                         R12 3
       63 DUPTABLE                         R13 K37 [{["Text"] = "Inspect a UI element"}]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K32 ["Tooltip"]
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K2 ["createElement"]
       70 GETUPVAL                         R12 4
       71 DUPTABLE                         R13 K41 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperInspector/Inspect.png"}]
       72 GETIMPORT                        R14 K28 [UDim2.fromOffset]
       74 GETTABLEKS                       R15 R2 K42 ["IconSize"]
       76 GETTABLEKS                       R16 R2 K42 ["IconSize"]
       78 CALL                             R14 2 1
       79 SETTABLEKS                       R14 R13 K3 ["Size"]
       81 GETIMPORT                        R14 K44 [UDim2.fromScale]
       83 LOADK                            R15 K45 [0.5]
       84 LOADK                            R16 K45 [0.5]
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K20 ["Position"]
       88 GETIMPORT                        R14 K47 [Vector2.new]
       90 LOADK                            R15 K45 [0.5]
       91 LOADK                            R16 K45 [0.5]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K38 ["AnchorPoint"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K33 ["Icon"]
       98 CALL                             R7 3 1
       99 SETTABLEKS                       R7 R6 K15 ["Inspect"]
      101 GETUPVAL                         R7 0
      102 GETTABLEKS                       R7 R7 K2 ["createElement"]
      104 GETUPVAL                         R8 2
      105 DUPTABLE                         R9 K49 [{["Style"], ["Position"], ["Size"], ["LayoutOrder"] = 2, ["OnClick"]}]
      106 GETTABLEKS                       R11 R1 K50 ["IsProfiling"]
      108 JUMPIFNOT                        R11 ; [+2]
      109 LOADK                            R10 K25 ["RoundPrimary"]
      110 JUMP                             ; [+1]
      111 LOADK                            R10 K26 ["RoundSubtle"]
      112 SETTABLEKS                       R10 R9 K4 ["Style"]
      114 GETIMPORT                        R10 K28 [UDim2.fromOffset]
      116 GETTABLEKS                       R12 R2 K30 ["ButtonSize"]
      118 GETTABLEKS                       R14 R2 K29 ["Padding"]
      120 MULK                             R13 R14 K48 [2]
      121 ADD                              R11 R12 R13
      122 LOADN                            R12 0
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K20 ["Position"]
      126 GETIMPORT                        R10 K28 [UDim2.fromOffset]
      128 GETTABLEKS                       R11 R2 K30 ["ButtonSize"]
      130 GETTABLEKS                       R12 R2 K30 ["ButtonSize"]
      132 CALL                             R10 2 1
      133 SETTABLEKS                       R10 R9 K3 ["Size"]
      135 GETTABLEKS                       R10 R0 K51 ["toggleProfiling"]
      137 SETTABLEKS                       R10 R9 K22 ["OnClick"]
      139 DUPTABLE                         R10 K34 [{"Tooltip", "Icon"}]
      140 GETUPVAL                         R11 0
      141 GETTABLEKS                       R11 R11 K2 ["createElement"]
      143 GETUPVAL                         R12 3
      144 DUPTABLE                         R13 K53 [{["Text"] = "Profile a Roact tree (Ctrl+Shift+R)"}]
      145 CALL                             R11 2 1
      146 SETTABLEKS                       R11 R10 K32 ["Tooltip"]
      148 GETUPVAL                         R11 0
      149 GETTABLEKS                       R11 R11 K2 ["createElement"]
      151 GETUPVAL                         R12 4
      152 DUPTABLE                         R13 K55 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperInspector/Record.png"}]
      153 GETIMPORT                        R14 K28 [UDim2.fromOffset]
      155 GETTABLEKS                       R15 R2 K42 ["IconSize"]
      157 GETTABLEKS                       R16 R2 K42 ["IconSize"]
      159 CALL                             R14 2 1
      160 SETTABLEKS                       R14 R13 K3 ["Size"]
      162 GETIMPORT                        R14 K44 [UDim2.fromScale]
      164 LOADK                            R15 K45 [0.5]
      165 LOADK                            R16 K45 [0.5]
      166 CALL                             R14 2 1
      167 SETTABLEKS                       R14 R13 K20 ["Position"]
      169 GETIMPORT                        R14 K47 [Vector2.new]
      171 LOADK                            R15 K45 [0.5]
      172 LOADK                            R16 K45 [0.5]
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K38 ["AnchorPoint"]
      176 CALL                             R11 2 1
      177 SETTABLEKS                       R11 R10 K33 ["Icon"]
      179 CALL                             R7 3 1
      180 SETTABLEKS                       R7 R6 K16 ["Profile"]
      182 GETUPVAL                         R7 0
      183 GETTABLEKS                       R7 R7 K2 ["createElement"]
      185 GETUPVAL                         R8 1
      186 DUPTABLE                         R9 K57 [{["Position"], ["LayoutOrder"] = 3}]
      187 GETIMPORT                        R10 K28 [UDim2.fromOffset]
      189 GETTABLEKS                       R13 R2 K30 ["ButtonSize"]
      191 MULK                             R12 R13 K48 [2]
      192 GETTABLEKS                       R14 R2 K29 ["Padding"]
      194 MULK                             R13 R14 K56 [3]
      195 ADD                              R11 R12 R13
      196 GETTABLEKS                       R12 R2 K29 ["Padding"]
      198 CALL                             R10 2 1
      199 SETTABLEKS                       R10 R9 K20 ["Position"]
      201 DUPTABLE                         R10 K59 [{"Child"}]
      202 GETUPVAL                         R11 0
      203 GETTABLEKS                       R11 R11 K2 ["createElement"]
      205 GETUPVAL                         R12 5
      206 DUPTABLE                         R13 K62 [{"OnTabSelected", "SelectedTab", "Tabs"}]
      207 GETTABLEKS                       R14 R0 K0 ["props"]
      209 GETTABLEKS                       R14 R14 K63 ["selectTab"]
      211 SETTABLEKS                       R14 R13 K60 ["OnTabSelected"]
      213 GETTABLEKS                       R14 R1 K61 ["SelectedTab"]
      215 SETTABLEKS                       R14 R13 K61 ["SelectedTab"]
      217 GETTABLEKS                       R14 R1 K17 ["Tabs"]
      219 SETTABLEKS                       R14 R13 K17 ["Tabs"]
      221 CALL                             R11 2 1
      222 SETTABLEKS                       R11 R10 K58 ["Child"]
      224 CALL                             R7 3 1
      225 SETTABLEKS                       R7 R6 K17 ["Tabs"]
      227 GETUPVAL                         R7 0
      228 GETTABLEKS                       R7 R7 K2 ["createElement"]
      230 GETUPVAL                         R8 1
      231 DUPTABLE                         R9 K67 [{"Layout", "Spacing", "AnchorPoint", "Position", "AutomaticSize"}]
      232 GETIMPORT                        R10 K71 [Enum.FillDirection.Horizontal]
      234 SETTABLEKS                       R10 R9 K64 ["Layout"]
      236 GETTABLEKS                       R10 R2 K29 ["Padding"]
      238 SETTABLEKS                       R10 R9 K65 ["Spacing"]
      240 GETIMPORT                        R10 K47 [Vector2.new]
      242 LOADN                            R11 1
      243 LOADN                            R12 0
      244 CALL                             R10 2 1
      245 SETTABLEKS                       R10 R9 K38 ["AnchorPoint"]
      247 GETIMPORT                        R10 K44 [UDim2.fromScale]
      249 LOADN                            R11 1
      250 LOADN                            R12 0
      251 CALL                             R10 2 1
      252 SETTABLEKS                       R10 R9 K20 ["Position"]
      254 GETIMPORT                        R10 K73 [Enum.AutomaticSize.XY]
      256 SETTABLEKS                       R10 R9 K66 ["AutomaticSize"]
      258 DUPTABLE                         R10 K76 [{"TargetName", "Close"}]
      259 GETUPVAL                         R11 0
      260 GETTABLEKS                       R11 R11 K2 ["createElement"]
      262 GETUPVAL                         R12 6
      263 DUPTABLE                         R13 K78 [{["AutomaticSize"], ["Text"], ["LayoutOrder"] = 1, ["TextXAlignment"]}]
      264 GETIMPORT                        R14 K73 [Enum.AutomaticSize.XY]
      266 SETTABLEKS                       R14 R13 K66 ["AutomaticSize"]
      268 GETTABLEKS                       R14 R1 K79 ["SelectedTarget"]
      270 GETTABLEKS                       R14 R14 K80 ["Name"]
      272 SETTABLEKS                       R14 R13 K35 ["Text"]
      274 GETIMPORT                        R14 K81 [Enum.TextXAlignment.Right]
      276 SETTABLEKS                       R14 R13 K77 ["TextXAlignment"]
      278 CALL                             R11 2 1
      279 SETTABLEKS                       R11 R10 K74 ["TargetName"]
      281 GETUPVAL                         R11 0
      282 GETTABLEKS                       R11 R11 K2 ["createElement"]
      284 GETUPVAL                         R12 2
      285 DUPTABLE                         R13 K83 [{["Style"] = "RoundSubtle", ["Position"], ["Size"], ["AnchorPoint"], ["LayoutOrder"] = 4, ["OnClick"]}]
      286 GETIMPORT                        R14 K44 [UDim2.fromScale]
      288 LOADN                            R15 1
      289 LOADN                            R16 0
      290 CALL                             R14 2 1
      291 SETTABLEKS                       R14 R13 K20 ["Position"]
      293 GETIMPORT                        R14 K28 [UDim2.fromOffset]
      295 GETTABLEKS                       R15 R2 K30 ["ButtonSize"]
      297 GETTABLEKS                       R16 R2 K30 ["ButtonSize"]
      299 CALL                             R14 2 1
      300 SETTABLEKS                       R14 R13 K3 ["Size"]
      302 GETIMPORT                        R14 K47 [Vector2.new]
      304 LOADN                            R15 1
      305 LOADN                            R16 0
      306 CALL                             R14 2 1
      307 SETTABLEKS                       R14 R13 K38 ["AnchorPoint"]
      309 GETTABLEKS                       R14 R0 K84 ["closeTarget"]
      311 SETTABLEKS                       R14 R13 K22 ["OnClick"]
      313 DUPTABLE                         R14 K34 [{"Tooltip", "Icon"}]
      314 GETUPVAL                         R15 0
      315 GETTABLEKS                       R15 R15 K2 ["createElement"]
      317 GETUPVAL                         R16 3
      318 DUPTABLE                         R17 K86 [{["Text"] = "Close this Roact tree"}]
      319 CALL                             R15 2 1
      320 SETTABLEKS                       R15 R14 K32 ["Tooltip"]
      322 GETUPVAL                         R15 0
      323 GETTABLEKS                       R15 R15 K2 ["createElement"]
      325 GETUPVAL                         R16 4
      326 DUPTABLE                         R17 K88 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperInspector/Close.png"}]
      327 GETIMPORT                        R18 K28 [UDim2.fromOffset]
      329 GETTABLEKS                       R19 R2 K42 ["IconSize"]
      331 GETTABLEKS                       R20 R2 K42 ["IconSize"]
      333 CALL                             R18 2 1
      334 SETTABLEKS                       R18 R17 K3 ["Size"]
      336 GETIMPORT                        R18 K44 [UDim2.fromScale]
      338 LOADK                            R19 K45 [0.5]
      339 LOADK                            R20 K45 [0.5]
      340 CALL                             R18 2 1
      341 SETTABLEKS                       R18 R17 K20 ["Position"]
      343 GETIMPORT                        R18 K47 [Vector2.new]
      345 LOADK                            R19 K45 [0.5]
      346 LOADK                            R20 K45 [0.5]
      347 CALL                             R18 2 1
      348 SETTABLEKS                       R18 R17 K38 ["AnchorPoint"]
      350 CALL                             R15 2 1
      351 SETTABLEKS                       R15 R14 K33 ["Icon"]
      353 CALL                             R11 3 1
      354 SETTABLEKS                       R11 R10 K75 ["Close"]
      356 CALL                             R7 3 1
      357 SETTABLEKS                       R7 R6 K18 ["Right"]
      359 CALL                             R3 3 -1
      360 RETURN                           R3 -1

PROTO_8:
        0 DUPTABLE                         R1 K5 [{"Tabs", "SelectedTab", "SelectedTarget", "IsPicking", "IsProfiling"}]
        1 GETTABLEKS                       R2 R0 K6 ["Targets"]
        3 GETTABLEKS                       R2 R2 K7 ["tabs"]
        5 SETTABLEKS                       R2 R1 K0 ["Tabs"]
        7 GETTABLEKS                       R2 R0 K6 ["Targets"]
        9 GETTABLEKS                       R2 R2 K8 ["selectedTab"]
       11 SETTABLEKS                       R2 R1 K1 ["SelectedTab"]
       13 GETTABLEKS                       R2 R0 K6 ["Targets"]
       15 GETTABLEKS                       R2 R2 K9 ["selectedTarget"]
       17 SETTABLEKS                       R2 R1 K2 ["SelectedTarget"]
       19 GETTABLEKS                       R2 R0 K10 ["RoactInspector"]
       21 GETTABLEKS                       R2 R2 K11 ["isPicking"]
       23 SETTABLEKS                       R2 R1 K3 ["IsPicking"]
       25 GETTABLEKS                       R2 R0 K10 ["RoactInspector"]
       27 GETTABLEKS                       R2 R2 K12 ["isProfiling"]
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
       39 GETTABLEKS                       R5 R0 K9 ["Src"]
       41 GETTABLEKS                       R5 R5 K12 ["Actions"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R5 K13 ["CloseTarget"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R5 K14 ["RoactInspector"]
       52 GETTABLEKS                       R8 R8 K15 ["SetPicking"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R9 R5 K14 ["RoactInspector"]
       59 GETTABLEKS                       R9 R9 K16 ["SetProfiling"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R10 R5 K14 ["RoactInspector"]
       66 GETTABLEKS                       R10 R10 K17 ["Reset"]
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
       94 GETTABLEKS                       R21 R0 K5 ["Packages"]
       96 GETTABLEKS                       R21 R21 K28 ["DeveloperTools"]
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
