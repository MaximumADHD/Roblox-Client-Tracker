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
       21 DUPTABLE                         R10 K16 [{["Size"], ["LayoutOrder"] = 1, ["Layout"]}]
       22 GETIMPORT                        R11 K19 [UDim2.fromScale]
       24 LOADK                            R12 K20 [0.5]
       25 LOADN                            R13 1
       26 CALL                             R11 2 1
       27 SETTABLEKS                       R11 R10 K13 ["Size"]
       29 GETIMPORT                        R11 K22 [Enum.FillDirection.Vertical]
       31 SETTABLEKS                       R11 R10 K4 ["Layout"]
       33 DUPTABLE                         R11 K25 [{"Tools", "Table"}]
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K3 ["createElement"]
       37 GETUPVAL                         R13 1
       38 DUPTABLE                         R14 K28 [{["Padding"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"], ["Size"]}]
       39 GETTABLEKS                       R15 R2 K26 ["Padding"]
       41 SETTABLEKS                       R15 R14 K26 ["Padding"]
       43 GETIMPORT                        R15 K9 [Enum.FillDirection.Horizontal]
       45 SETTABLEKS                       R15 R14 K4 ["Layout"]
       47 GETIMPORT                        R15 K29 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R15 R14 K27 ["HorizontalAlignment"]
       51 GETIMPORT                        R15 K31 [UDim2.new]
       53 LOADN                            R16 1
       54 LOADN                            R17 0
       55 LOADN                            R18 0
       56 LOADN                            R19 32
       57 CALL                             R15 4 1
       58 SETTABLEKS                       R15 R14 K13 ["Size"]
       60 DUPTABLE                         R15 K35 [{"Search", "Filter", "Clear"}]
       61 GETUPVAL                         R16 0
       62 GETTABLEKS                       R16 R16 K3 ["createElement"]
       64 GETUPVAL                         R17 2
       65 DUPTABLE                         R18 K43 [{["LayoutOrder"] = 1, ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["OnTextChanged"], ["Width"] = 300}]
       66 GETTABLEKS                       R19 R0 K44 ["onSearchTable"]
       68 SETTABLEKS                       R19 R18 K40 ["OnTextChanged"]
       70 CALL                             R16 2 1
       71 SETTABLEKS                       R16 R15 K32 ["Search"]
       73 GETUPVAL                         R16 0
       74 GETTABLEKS                       R16 R16 K3 ["createElement"]
       76 GETUPVAL                         R17 3
       77 DUPTABLE                         R18 K48 [{["Style"], ["Size"], ["LayoutOrder"] = 2, ["OnClick"]}]
       78 GETTABLEKS                       R21 R0 K0 ["props"]
       80 GETTABLEKS                       R21 R21 K33 ["Filter"]
       82 LENGTH                           R20 R21
       83 LOADN                            R21 0
       84 JUMPIFNOTLT                      R21 R20 ; [+3]
       86 LOADK                            R19 K49 ["RoundPrimary"]
       87 JUMP                             ; [+1]
       88 LOADK                            R19 K50 ["RoundSubtle"]
       89 SETTABLEKS                       R19 R18 K45 ["Style"]
       91 GETIMPORT                        R19 K31 [UDim2.new]
       93 LOADN                            R20 0
       94 GETTABLEKS                       R21 R2 K51 ["ButtonSize"]
       96 LOADN                            R22 1
       97 LOADN                            R23 0
       98 CALL                             R19 4 1
       99 SETTABLEKS                       R19 R18 K13 ["Size"]
      101 GETTABLEKS                       R19 R0 K52 ["onToggleFilter"]
      103 SETTABLEKS                       R19 R18 K47 ["OnClick"]
      105 DUPTABLE                         R19 K55 [{"Tooltip", "Icon"}]
      106 GETUPVAL                         R20 0
      107 GETTABLEKS                       R20 R20 K3 ["createElement"]
      109 GETUPVAL                         R21 4
      110 DUPTABLE                         R22 K58 [{["Text"] = "Exclude higher-order components"}]
      111 CALL                             R20 2 1
      112 SETTABLEKS                       R20 R19 K53 ["Tooltip"]
      114 GETUPVAL                         R20 0
      115 GETTABLEKS                       R20 R20 K3 ["createElement"]
      117 GETUPVAL                         R21 5
      118 DUPTABLE                         R22 K63 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperInspector/Filter.png"}]
      119 GETIMPORT                        R23 K65 [UDim2.fromOffset]
      121 GETTABLEKS                       R24 R2 K66 ["IconSize"]
      123 GETTABLEKS                       R25 R2 K66 ["IconSize"]
      125 CALL                             R23 2 1
      126 SETTABLEKS                       R23 R22 K13 ["Size"]
      128 GETIMPORT                        R23 K19 [UDim2.fromScale]
      130 LOADK                            R24 K20 [0.5]
      131 LOADK                            R25 K20 [0.5]
      132 CALL                             R23 2 1
      133 SETTABLEKS                       R23 R22 K59 ["Position"]
      135 GETIMPORT                        R23 K68 [Vector2.new]
      137 LOADK                            R24 K20 [0.5]
      138 LOADK                            R25 K20 [0.5]
      139 CALL                             R23 2 1
      140 SETTABLEKS                       R23 R22 K60 ["AnchorPoint"]
      142 CALL                             R20 2 1
      143 SETTABLEKS                       R20 R19 K54 ["Icon"]
      145 CALL                             R16 3 1
      146 SETTABLEKS                       R16 R15 K33 ["Filter"]
      148 GETUPVAL                         R16 0
      149 GETTABLEKS                       R16 R16 K3 ["createElement"]
      151 GETUPVAL                         R17 3
      152 DUPTABLE                         R18 K70 [{["Style"] = "RoundSubtle", ["Size"], ["LayoutOrder"] = 3, ["OnClick"]}]
      153 GETIMPORT                        R19 K31 [UDim2.new]
      155 LOADN                            R20 0
      156 GETTABLEKS                       R21 R2 K51 ["ButtonSize"]
      158 LOADN                            R22 1
      159 LOADN                            R23 0
      160 CALL                             R19 4 1
      161 SETTABLEKS                       R19 R18 K13 ["Size"]
      163 GETTABLEKS                       R19 R0 K71 ["onClearTable"]
      165 SETTABLEKS                       R19 R18 K47 ["OnClick"]
      167 DUPTABLE                         R19 K55 [{"Tooltip", "Icon"}]
      168 GETUPVAL                         R20 0
      169 GETTABLEKS                       R20 R20 K3 ["createElement"]
      171 GETUPVAL                         R21 4
      172 DUPTABLE                         R22 K73 [{["Text"] = "Clear the table"}]
      173 CALL                             R20 2 1
      174 SETTABLEKS                       R20 R19 K53 ["Tooltip"]
      176 GETUPVAL                         R20 0
      177 GETTABLEKS                       R20 R20 K3 ["createElement"]
      179 GETUPVAL                         R21 5
      180 DUPTABLE                         R22 K75 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperInspector/Bin.png"}]
      181 GETIMPORT                        R23 K65 [UDim2.fromOffset]
      183 GETTABLEKS                       R24 R2 K66 ["IconSize"]
      185 GETTABLEKS                       R25 R2 K66 ["IconSize"]
      187 CALL                             R23 2 1
      188 SETTABLEKS                       R23 R22 K13 ["Size"]
      190 GETIMPORT                        R23 K19 [UDim2.fromScale]
      192 LOADK                            R24 K20 [0.5]
      193 LOADK                            R25 K20 [0.5]
      194 CALL                             R23 2 1
      195 SETTABLEKS                       R23 R22 K59 ["Position"]
      197 GETIMPORT                        R23 K68 [Vector2.new]
      199 LOADK                            R24 K20 [0.5]
      200 LOADK                            R25 K20 [0.5]
      201 CALL                             R23 2 1
      202 SETTABLEKS                       R23 R22 K60 ["AnchorPoint"]
      204 CALL                             R20 2 1
      205 SETTABLEKS                       R20 R19 K54 ["Icon"]
      207 CALL                             R16 3 1
      208 SETTABLEKS                       R16 R15 K34 ["Clear"]
      210 CALL                             R12 3 1
      211 SETTABLEKS                       R12 R11 K23 ["Tools"]
      213 GETUPVAL                         R12 0
      214 GETTABLEKS                       R12 R12 K3 ["createElement"]
      216 GETUPVAL                         R13 1
      217 DUPTABLE                         R14 K76 [{["Padding"], ["LayoutOrder"] = 2, ["Size"]}]
      218 GETTABLEKS                       R15 R2 K26 ["Padding"]
      220 SETTABLEKS                       R15 R14 K26 ["Padding"]
      222 GETIMPORT                        R15 K31 [UDim2.new]
      224 LOADN                            R16 1
      225 LOADN                            R17 0
      226 LOADN                            R18 1
      227 LOADN                            R19 -32
      228 CALL                             R15 4 1
      229 SETTABLEKS                       R15 R14 K13 ["Size"]
      231 DUPTABLE                         R15 K78 [{"Child"}]
      232 GETUPVAL                         R16 0
      233 GETTABLEKS                       R16 R16 K3 ["createElement"]
      235 GETUPVAL                         R17 6
      236 CALL                             R16 1 1
      237 SETTABLEKS                       R16 R15 K77 ["Child"]
      239 CALL                             R12 3 1
      240 SETTABLEKS                       R12 R11 K24 ["Table"]
      242 CALL                             R8 3 1
      243 SETTABLEKS                       R8 R7 K10 ["Left"]
      245 GETUPVAL                         R8 0
      246 GETTABLEKS                       R8 R8 K3 ["createElement"]
      248 GETUPVAL                         R9 1
      249 DUPTABLE                         R10 K79 [{["Size"], ["LayoutOrder"] = 2, ["Layout"]}]
      250 GETIMPORT                        R11 K19 [UDim2.fromScale]
      252 LOADK                            R12 K20 [0.5]
      253 LOADN                            R13 1
      254 CALL                             R11 2 1
      255 SETTABLEKS                       R11 R10 K13 ["Size"]
      257 GETIMPORT                        R11 K22 [Enum.FillDirection.Vertical]
      259 SETTABLEKS                       R11 R10 K4 ["Layout"]
      261 DUPTABLE                         R11 K25 [{"Tools", "Table"}]
      262 GETUPVAL                         R12 0
      263 GETTABLEKS                       R12 R12 K3 ["createElement"]
      265 GETUPVAL                         R13 1
      266 DUPTABLE                         R14 K28 [{["Padding"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"], ["Size"]}]
      267 GETTABLEKS                       R15 R2 K26 ["Padding"]
      269 SETTABLEKS                       R15 R14 K26 ["Padding"]
      271 GETIMPORT                        R15 K9 [Enum.FillDirection.Horizontal]
      273 SETTABLEKS                       R15 R14 K4 ["Layout"]
      275 GETIMPORT                        R15 K80 [Enum.HorizontalAlignment.Right]
      277 SETTABLEKS                       R15 R14 K27 ["HorizontalAlignment"]
      279 GETIMPORT                        R15 K31 [UDim2.new]
      281 LOADN                            R16 1
      282 LOADN                            R17 0
      283 LOADN                            R18 0
      284 LOADN                            R19 32
      285 CALL                             R15 4 1
      286 SETTABLEKS                       R15 R14 K13 ["Size"]
      288 DUPTABLE                         R15 K82 [{"View"}]
      289 GETUPVAL                         R16 0
      290 GETTABLEKS                       R16 R16 K3 ["createElement"]
      292 GETUPVAL                         R17 3
      293 DUPTABLE                         R18 K86 [{["Style"] = "Round", ["Text"] = "View Component", ["Size"], ["OnClick"], ["StyleModifier"]}]
      294 GETIMPORT                        R19 K31 [UDim2.new]
      296 LOADN                            R20 0
      297 LOADN                            R21 130
      298 LOADN                            R22 1
      299 LOADN                            R23 0
      300 CALL                             R19 4 1
      301 SETTABLEKS                       R19 R18 K13 ["Size"]
      303 GETTABLEKS                       R19 R0 K87 ["onViewComponent"]
      305 SETTABLEKS                       R19 R18 K47 ["OnClick"]
      307 JUMPIFNOTEQKNIL                  R3 ; [+5]
      309 GETUPVAL                         R19 7
      310 GETTABLEKS                       R19 R19 K88 ["Disabled"]
      312 JUMPIF                           R19 ; [+1]
      313 LOADNIL                          R19
      314 SETTABLEKS                       R19 R18 K85 ["StyleModifier"]
      316 CALL                             R16 2 1
      317 SETTABLEKS                       R16 R15 K81 ["View"]
      319 CALL                             R12 3 1
      320 SETTABLEKS                       R12 R11 K23 ["Tools"]
      322 GETUPVAL                         R12 0
      323 GETTABLEKS                       R12 R12 K3 ["createElement"]
      325 GETUPVAL                         R13 1
      326 DUPTABLE                         R14 K76 [{["Padding"], ["LayoutOrder"] = 2, ["Size"]}]
      327 GETTABLEKS                       R15 R2 K26 ["Padding"]
      329 SETTABLEKS                       R15 R14 K26 ["Padding"]
      331 GETIMPORT                        R15 K31 [UDim2.new]
      333 LOADN                            R16 1
      334 LOADN                            R17 0
      335 LOADN                            R18 1
      336 LOADN                            R19 -32
      337 CALL                             R15 4 1
      338 SETTABLEKS                       R15 R14 K13 ["Size"]
      340 DUPTABLE                         R15 K78 [{"Child"}]
      341 GETUPVAL                         R16 0
      342 GETTABLEKS                       R16 R16 K3 ["createElement"]
      344 GETUPVAL                         R17 8
      345 CALL                             R16 1 1
      346 SETTABLEKS                       R16 R15 K77 ["Child"]
      348 CALL                             R12 3 1
      349 SETTABLEKS                       R12 R11 K24 ["Table"]
      351 CALL                             R8 3 1
      352 SETTABLEKS                       R8 R7 K11 ["Right"]
      354 CALL                             R4 3 -1
      355 RETURN                           R4 -1

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
