PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnToggle"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnToggle"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnToggleAdornment"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnToggleAdornment"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETTABLEKS                       R1 R1 K2 ["Item"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onToggle"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onToggleAdornment"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["createRef"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K3 ["toggleRef"]
       14 GETIMPORT                        R1 K6 [TweenInfo.new]
       16 LOADK                            R2 K7 [0.1]
       17 GETIMPORT                        R3 K11 [Enum.EasingStyle.Linear]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K12 ["tweenInfo"]
       22 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R5 R1 K1 ["weight"]
        7 JUMPIFNOT                        R5 ; [+26]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R6 R1 K1 ["weight"]
       11 CALL                             R5 1 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 LOADK                            R4 K2 ["nan"]
       14 JUMP                             ; [+20]
       15 GETIMPORT                        R4 K5 [string.format]
       17 LOADK                            R5 K6 ["%d%%"]
       18 GETTABLEKS                       R10 R1 K1 ["weight"]
       20 LOADN                            R11 0
       21 LOADN                            R12 1
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R9 K11 [math.clamp]
       25 CALL                             R9 3 1
       26 MULK                             R8 R9 K8 [100]
       27 ADDK                             R7 R8 K7 [0.5]
       28 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       29 GETIMPORT                        R6 K13 [math.floor]
       31 CALL                             R6 1 1
       32 CALL                             R4 2 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R4
       35 GETTABLEKS                       R6 R2 K14 ["Adornments"]
       37 JUMPIFNOT                        R6 ; [+8]
       38 GETTABLEKS                       R6 R2 K14 ["Adornments"]
       40 GETTABLEKS                       R7 R2 K15 ["GetItemId"]
       42 MOVE                             R8 R1
       43 CALL                             R7 1 1
       44 GETTABLE                         R5 R6 R7
       45 JUMPIF                           R5 ; [+2]
       46 NEWTABLE                         R5 0 0
       48 RETURN                           R3 3

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R5 R4 K2 ["Item"]
        6 GETTABLEKS                       R6 R1 K2 ["Item"]
        8 GETTABLEKS                       R7 R4 K3 ["StyleModifier"]
       10 GETTABLEKS                       R8 R1 K3 ["StyleModifier"]
       12 JUMPIFNOTEQ                      R7 R8 ; [+11]
       14 GETTABLEKS                       R7 R4 K4 ["Expanded"]
       16 GETTABLEKS                       R8 R1 K4 ["Expanded"]
       18 JUMPIFNOTEQ                      R7 R8 ; [+5]
       20 JUMPIFNOT                        R5 ; [+1]
       21 JUMPIFNOT                        R6 ; [+2]
       22 JUMPIF                           R5 ; [+3]
       23 JUMPIFNOT                        R6 ; [+2]
       24 LOADB                            R7 1
       25 RETURN                           R7 1
       26 JUMPIFNOT                        R5 ; [+1]
       27 JUMPIF                           R6 ; [+2]
       28 LOADB                            R7 0
       29 RETURN                           R7 1
       30 GETTABLEKS                       R7 R5 K5 ["weight"]
       32 GETTABLEKS                       R8 R6 K5 ["weight"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+7]
       36 GETTABLEKS                       R7 R5 K6 ["id"]
       38 GETTABLEKS                       R8 R6 K6 ["id"]
       40 JUMPIFEQ                         R7 R8 ; [+3]
       42 LOADB                            R7 1
       43 RETURN                           R7 1
       44 GETTABLEKS                       R7 R4 K7 ["Adornments"]
       46 GETTABLEKS                       R8 R1 K7 ["Adornments"]
       48 JUMPIFEQ                         R7 R8 ; [+3]
       50 LOADB                            R7 1
       51 RETURN                           R7 1
       52 GETTABLEKS                       R7 R5 K0 ["state"]
       54 JUMPIFNOT                        R7 ; [+32]
       55 GETTABLEKS                       R7 R5 K0 ["state"]
       57 GETTABLEKS                       R7 R7 K8 ["timePositionNormalized"]
       59 JUMPIFNOT                        R7 ; [+27]
       60 GETTABLEKS                       R7 R5 K0 ["state"]
       62 GETTABLEKS                       R7 R7 K9 ["length"]
       64 JUMPIFNOT                        R7 ; [+22]
       65 GETTABLEKS                       R7 R5 K0 ["state"]
       67 GETTABLEKS                       R7 R7 K8 ["timePositionNormalized"]
       69 GETTABLEKS                       R8 R6 K0 ["state"]
       71 GETTABLEKS                       R8 R8 K8 ["timePositionNormalized"]
       73 JUMPIFNOTEQ                      R7 R8 ; [+11]
       75 GETTABLEKS                       R7 R5 K0 ["state"]
       77 GETTABLEKS                       R7 R7 K9 ["length"]
       79 GETTABLEKS                       R8 R6 K0 ["state"]
       81 GETTABLEKS                       R8 R8 K9 ["length"]
       83 JUMPIFEQ                         R7 R8 ; [+3]
       85 LOADB                            R7 1
       86 RETURN                           R7 1
       87 LOADB                            R7 0
       88 RETURN                           R7 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Index"]
        4 GETTABLEKS                       R3 R1 K2 ["Item"]
        6 GETTABLEKS                       R5 R1 K4 ["Depth"]
        8 ORK                              R4 R5 K3 [0]
        9 GETTABLEKS                       R5 R1 K5 ["Children"]
       11 JUMPIFNOT                        R5 ; [+8]
       12 GETTABLEKS                       R7 R1 K5 ["Children"]
       14 LENGTH                           R6 R7
       15 LOADN                            R7 0
       16 JUMPIFLT                         R7 R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 GETTABLEKS                       R6 R1 K6 ["Expanded"]
       22 GETTABLEKS                       R7 R1 K7 ["BeforeIndentItem"]
       24 GETTABLEKS                       R8 R1 K8 ["ExpandableRoot"]
       26 GETIMPORT                        R9 K11 [UDim2.new]
       28 LOADN                            R10 1
       29 LOADN                            R11 0
       30 LOADN                            R12 0
       31 LOADN                            R13 24
       32 CALL                             R9 4 1
       33 GETTABLEKS                       R10 R1 K12 ["Position"]
       35 MOVE                             R13 R3
       36 NAMECALL                         R11 R0 K13 ["getContents"]
       38 CALL                             R11 2 3
       39 JUMPIFNOTEQKN                    R4 K3 [0] ; [+12]
       41 GETTABLEKS                       R14 R3 K14 ["lod"]
       43 JUMPIFNOT                        R14 ; [+8]
       44 GETIMPORT                        R14 K17 [string.format]
       46 LOADK                            R15 K18 ["%s (LOD: %d)"]
       47 MOVE                             R16 R11
       48 GETTABLEKS                       R17 R3 K14 ["lod"]
       50 CALL                             R14 3 1
       51 MOVE                             R11 R14
       52 LOADNIL                          R14
       53 LOADNIL                          R15
       54 GETTABLEKS                       R16 R13 K19 ["index"]
       56 JUMPIFNOT                        R16 ; [+13]
       57 GETTABLEKS                       R16 R13 K20 ["enabled"]
       59 JUMPIFNOT                        R16 ; [+10]
       60 LOADK                            R14 K21 ["AdornmentOn"]
       61 LOADK                            R16 K22 ["AdornmentDot"]
       62 GETTABLEKS                       R18 R13 K19 ["index"]
       64 FASTCALL1                        TOSTRING R18 ; [+2]
       65 GETIMPORT                        R17 K24 [tostring]
       67 CALL                             R17 1 1
       68 CONCAT                           R15 R16 R17
       69 JUMP                             ; [+2]
       70 LOADK                            R14 K25 ["AdornmentOff"]
       71 LOADK                            R15 K26 ["AdornmentDotOff"]
       72 LOADB                            R16 1
       73 JUMPIFNOTEQKN                    R4 K3 [0] ; [+2]
       75 MOVE                             R16 R8
       76 JUMPIF                           R8 ; [+2]
       77 LOADN                            R18 1
       78 JUMP                             ; [+1]
       79 LOADN                            R18 0
       80 SUB                              R17 R4 R18
       81 GETUPVAL                         R19 0
       82 LOADK                            R21 K27 ["Indent"]
       83 NAMECALL                         R19 R19 K28 ["GetAttribute"]
       85 CALL                             R19 2 1
       86 MUL                              R18 R17 R19
       87 GETIMPORT                        R19 K11 [UDim2.new]
       89 LOADN                            R20 0
       90 LOADN                            R21 40
       91 LOADN                            R22 1
       92 LOADN                            R23 0
       93 CALL                             R19 4 1
       94 GETIMPORT                        R20 K11 [UDim2.new]
       96 LOADN                            R21 0
       97 LOADN                            R22 100
       98 LOADN                            R23 1
       99 LOADN                            R24 0
      100 CALL                             R20 4 1
      101 GETTABLEKS                       R21 R3 K29 ["state"]
      103 JUMPIFNOT                        R21 ; [+9]
      104 GETTABLEKS                       R21 R3 K29 ["state"]
      106 GETTABLEKS                       R21 R21 K30 ["timePositionNormalized"]
      108 JUMPIFNOT                        R21 ; [+4]
      109 GETTABLEKS                       R21 R3 K29 ["state"]
      111 GETTABLEKS                       R21 R21 K31 ["length"]
      113 GETTABLEKS                       R22 R3 K32 ["weight"]
      115 JUMPIF                           R22 ; [+2]
      116 LOADN                            R22 1
      117 JUMP                             ; [+5]
      118 GETUPVAL                         R23 1
      119 MOVE                             R24 R22
      120 CALL                             R23 1 1
      121 JUMPIFNOT                        R23 ; [+1]
      122 LOADN                            R22 0
      123 GETUPVAL                         R23 2
      124 NAMECALL                         R23 R23 K33 ["IsServer"]
      126 CALL                             R23 1 1
      127 GETUPVAL                         R24 0
      128 LOADK                            R26 K34 ["IconSize"]
      129 NAMECALL                         R24 R24 K28 ["GetAttribute"]
      131 CALL                             R24 2 1
      132 GETTABLEKS                       R31 R24 K39 ["X"]
      134 GETTABLEKS                       R31 R31 K40 ["Offset"]
      136 MULK                             R30 R31 K38 [3]
      137 ADD                              R29 R18 R30
      138 ADDK                             R28 R29 K37 [10]
      139 JUMPIFEQKN                       R4 K3 [0] ; [+3]
      141 LOADN                            R29 150
      142 JUMP                             ; [+1]
      143 LOADN                            R29 0
      144 ADD                              R27 R28 R29
      145 ADDK                             R26 R27 K36 [15]
      146 ADDK                             R25 R26 K35 [20]
      147 GETIMPORT                        R26 K11 [UDim2.new]
      149 LOADN                            R27 1
      150 MINUS                            R28 R25
      151 LOADN                            R29 1
      152 LOADN                            R30 0
      153 CALL                             R26 4 1
      154 LOADNIL                          R27
      155 LOADNIL                          R28
      156 LOADNIL                          R29
      157 LOADNIL                          R30
      158 JUMPIFNOTEQKN                    R4 K3 [0] ; [+7]
      160 JUMPIFNOT                        R23 ; [+2]
      161 LOADK                            R27 K41 ["Server"]
      162 JUMP                             ; [+1]
      163 LOADK                            R27 K42 ["Client"]
      164 LOADK                            R30 K43 ["RigName"]
      165 JUMP                             ; [+19]
      166 GETTABLEKS                       R31 R1 K44 ["Selected"]
      168 JUMPIFNOT                        R31 ; [+5]
      169 GETUPVAL                         R31 3
      170 LOADK                            R32 K45 ["ActiveLayer"]
      171 CALL                             R31 1 1
      172 MOVE                             R28 R31
      173 JUMP                             ; [+11]
      174 GETUPVAL                         R31 3
      175 LOADK                            R32 K46 ["InactiveLayer"]
      176 CALL                             R31 1 1
      177 GETUPVAL                         R33 3
      178 LOADK                            R34 K45 ["ActiveLayer"]
      179 CALL                             R33 1 1
      180 MOVE                             R34 R22
      181 NAMECALL                         R31 R31 K47 ["Lerp"]
      183 CALL                             R31 3 1
      184 MOVE                             R28 R31
      185 GETUPVAL                         R31 3
      186 LOADK                            R32 K48 ["InactiveTimeBar"]
      187 CALL                             R31 1 1
      188 GETUPVAL                         R33 3
      189 LOADK                            R34 K49 ["ActiveTimeBar"]
      190 CALL                             R33 1 1
      191 MOVE                             R34 R22
      192 NAMECALL                         R31 R31 K47 ["Lerp"]
      194 CALL                             R31 3 1
      195 MOVE                             R29 R31
      196 ORK                              R32 R27 K50 [""]
      197 LOADK                            R33 K51 [" LayerIcon "]
      198 GETTABLEKS                       R35 R3 K52 ["className"]
      200 ORK                              R34 R35 K50 [""]
      201 CONCAT                           R31 R32 R34
      202 GETUPVAL                         R32 4
      203 GETTABLEKS                       R32 R32 K53 ["createElement"]
      205 GETUPVAL                         R33 5
      206 GETUPVAL                         R34 6
      207 NEWTABLE                         R35 4 0
      209 JUMPIFNOT                        R7 ; [+2]
      210 LOADN                            R36 2
      211 JUMP                             ; [+1]
      212 MOVE                             R36 R2
      213 SETTABLEKS                       R36 R35 K54 ["LayoutOrder"]
      215 SETTABLEKS                       R9 R35 K55 ["Size"]
      217 SETTABLEKS                       R10 R35 K12 ["Position"]
      219 GETUPVAL                         R36 4
      220 GETTABLEKS                       R36 R36 K56 ["Tag"]
      222 GETUPVAL                         R37 7
      223 LOADK                            R38 K57 ["LayerTreeRow X-RowS X-Middle"]
      224 GETTABLEKS                       R40 R1 K44 ["Selected"]
      226 JUMPIFNOT                        R40 ; [+2]
      227 LOADK                            R39 K44 ["Selected"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R39
      230 CALL                             R37 2 1
      231 SETTABLE                         R37 R35 R36
      232 GETTABLEKS                       R36 R1 K58 ["WrapperProps"]
      234 CALL                             R34 2 1
      235 DUPTABLE                         R35 K66 [{"Spacer", "Toggle", "LeftIcon", "LayerName", "Weight", "Timestamp", "Adornment"}]
      236 GETUPVAL                         R36 4
      237 GETTABLEKS                       R36 R36 K53 ["createElement"]
      239 GETUPVAL                         R37 5
      240 DUPTABLE                         R38 K68 [{["LayoutOrder"] = 2, ["Size"]}]
      241 GETIMPORT                        R39 K11 [UDim2.new]
      243 LOADN                            R40 0
      244 MOVE                             R41 R18
      245 LOADN                            R42 0
      246 LOADN                            R43 0
      247 CALL                             R39 4 1
      248 SETTABLEKS                       R39 R38 K55 ["Size"]
      250 CALL                             R36 2 1
      251 SETTABLEKS                       R36 R35 K59 ["Spacer"]
      253 GETUPVAL                         R36 4
      254 GETTABLEKS                       R36 R36 K53 ["createElement"]
      256 GETUPVAL                         R37 5
      257 DUPTABLE                         R38 K70 [{["LayoutOrder"] = 4}]
      258 DUPTABLE                         R39 K72 [{"ToggleButton"}]
      259 JUMPIFNOT                        R16 ; [+27]
      260 JUMPIFNOT                        R5 ; [+26]
      261 GETUPVAL                         R40 4
      262 GETTABLEKS                       R40 R40 K53 ["createElement"]
      264 LOADK                            R41 K73 ["ImageButton"]
      265 NEWTABLE                         R42 2 0
      267 GETUPVAL                         R43 0
      268 JUMPIFNOT                        R6 ; [+2]
      269 LOADK                            R45 K74 ["ExpandedOffset"]
      270 JUMP                             ; [+1]
      271 LOADK                            R45 K75 ["CollapsedOffset"]
      272 NAMECALL                         R43 R43 K28 ["GetAttribute"]
      274 CALL                             R43 2 1
      275 SETTABLEKS                       R43 R42 K76 ["ImageRectOffset"]
      277 GETUPVAL                         R43 4
      278 GETTABLEKS                       R43 R43 K77 ["Event"]
      280 GETTABLEKS                       R43 R43 K78 ["Activated"]
      282 GETTABLEKS                       R44 R0 K79 ["onToggle"]
      284 SETTABLE                         R44 R42 R43
      285 CALL                             R40 2 1
      286 JUMP                             ; [+1]
      287 LOADNIL                          R40
      288 SETTABLEKS                       R40 R39 K71 ["ToggleButton"]
      290 CALL                             R36 3 1
      291 SETTABLEKS                       R36 R35 K60 ["Toggle"]
      293 GETUPVAL                         R36 4
      294 GETTABLEKS                       R36 R36 K53 ["createElement"]
      296 GETUPVAL                         R37 8
      297 NEWTABLE                         R38 4 0
      299 LOADN                            R39 6
      300 SETTABLEKS                       R39 R38 K54 ["LayoutOrder"]
      302 SETTABLEKS                       R28 R38 K80 ["ImageColor3"]
      304 GETUPVAL                         R39 4
      305 GETTABLEKS                       R39 R39 K56 ["Tag"]
      307 SETTABLE                         R31 R38 R39
      308 CALL                             R36 2 1
      309 SETTABLEKS                       R36 R35 K61 ["LeftIcon"]
      311 GETUPVAL                         R36 4
      312 GETTABLEKS                       R36 R36 K53 ["createElement"]
      314 GETUPVAL                         R37 9
      315 NEWTABLE                         R38 8 0
      317 LOADN                            R39 7
      318 SETTABLEKS                       R39 R38 K54 ["LayoutOrder"]
      320 SETTABLEKS                       R11 R38 K81 ["Text"]
      322 SETTABLEKS                       R28 R38 K82 ["TextColor"]
      324 SETTABLEKS                       R26 R38 K55 ["Size"]
      326 GETUPVAL                         R39 4
      327 GETTABLEKS                       R39 R39 K56 ["Tag"]
      329 GETUPVAL                         R40 7
      330 LOADK                            R41 K83 ["Name"]
      331 MOVE                             R42 R27
      332 MOVE                             R43 R30
      333 CALL                             R40 3 1
      334 SETTABLE                         R40 R38 R39
      335 CALL                             R36 2 1
      336 SETTABLEKS                       R36 R35 K62 ["LayerName"]
      338 JUMPIFEQKN                       R4 K3 [0] ; [+28]
      340 JUMPIFNOT                        R12 ; [+17]
      341 GETUPVAL                         R36 4
      342 GETTABLEKS                       R36 R36 K53 ["createElement"]
      344 GETUPVAL                         R37 9
      345 DUPTABLE                         R38 K86 [{["TextColor"], ["LayoutOrder"] = 8, ["Text"], ["Size"], ["TextXAlignment"]}]
      346 SETTABLEKS                       R28 R38 K82 ["TextColor"]
      348 SETTABLEKS                       R12 R38 K81 ["Text"]
      350 SETTABLEKS                       R19 R38 K55 ["Size"]
      352 GETIMPORT                        R39 K89 [Enum.TextXAlignment.Right]
      354 SETTABLEKS                       R39 R38 K85 ["TextXAlignment"]
      356 CALL                             R36 2 1
      357 JUMP                             ; [+10]
      358 GETUPVAL                         R36 4
      359 GETTABLEKS                       R36 R36 K53 ["createElement"]
      361 GETUPVAL                         R37 5
      362 DUPTABLE                         R38 K90 [{["Size"], ["LayoutOrder"] = 8}]
      363 SETTABLEKS                       R19 R38 K55 ["Size"]
      365 CALL                             R36 2 1
      366 JUMP                             ; [+1]
      367 LOADNIL                          R36
      368 SETTABLEKS                       R36 R35 K63 ["Weight"]
      370 JUMPIFEQKN                       R4 K3 [0] ; [+36]
      372 JUMPIFNOT                        R21 ; [+25]
      373 GETUPVAL                         R36 4
      374 GETTABLEKS                       R36 R36 K53 ["createElement"]
      376 GETUPVAL                         R37 10
      377 DUPTABLE                         R38 K95 [{["Size"], ["LayoutOrder"] = 9, ["TimePercentage"], ["Length"], ["TextColor"], ["BarColor"]}]
      378 SETTABLEKS                       R20 R38 K55 ["Size"]
      380 GETTABLEKS                       R39 R3 K29 ["state"]
      382 GETTABLEKS                       R39 R39 K30 ["timePositionNormalized"]
      384 SETTABLEKS                       R39 R38 K92 ["TimePercentage"]
      386 GETTABLEKS                       R39 R3 K29 ["state"]
      388 GETTABLEKS                       R39 R39 K31 ["length"]
      390 SETTABLEKS                       R39 R38 K93 ["Length"]
      392 SETTABLEKS                       R28 R38 K82 ["TextColor"]
      394 SETTABLEKS                       R29 R38 K94 ["BarColor"]
      396 CALL                             R36 2 1
      397 JUMP                             ; [+10]
      398 GETUPVAL                         R36 4
      399 GETTABLEKS                       R36 R36 K53 ["createElement"]
      401 GETUPVAL                         R37 5
      402 DUPTABLE                         R38 K96 [{["Size"], ["LayoutOrder"] = 9}]
      403 SETTABLEKS                       R20 R38 K55 ["Size"]
      405 CALL                             R36 2 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R36
      408 SETTABLEKS                       R36 R35 K64 ["Timestamp"]
      410 JUMPIFEQKN                       R4 K3 [0] ; [+70]
      412 GETUPVAL                         R36 4
      413 GETTABLEKS                       R36 R36 K53 ["createElement"]
      415 GETUPVAL                         R37 5
      416 NEWTABLE                         R38 4 0
      418 LOADN                            R39 10
      419 SETTABLEKS                       R39 R38 K54 ["LayoutOrder"]
      421 GETTABLEKS                       R39 R0 K97 ["onToggleAdornment"]
      423 SETTABLEKS                       R39 R38 K98 ["OnPress"]
      425 GETUPVAL                         R39 4
      426 GETTABLEKS                       R39 R39 K56 ["Tag"]
      428 LOADK                            R40 K99 ["X-RowS X-Middle"]
      429 SETTABLE                         R40 R38 R39
      430 DUPTABLE                         R39 K102 [{"EyeIcon", "Dot"}]
      431 GETUPVAL                         R40 4
      432 GETTABLEKS                       R40 R40 K53 ["createElement"]
      434 LOADK                            R41 K73 ["ImageButton"]
      435 NEWTABLE                         R42 4 0
      437 LOADN                            R43 1
      438 SETTABLEKS                       R43 R42 K54 ["LayoutOrder"]
      440 GETUPVAL                         R43 4
      441 GETTABLEKS                       R43 R43 K77 ["Event"]
      443 GETTABLEKS                       R43 R43 K78 ["Activated"]
      445 GETTABLEKS                       R44 R0 K97 ["onToggleAdornment"]
      447 SETTABLE                         R44 R42 R43
      448 GETUPVAL                         R43 4
      449 GETTABLEKS                       R43 R43 K56 ["Tag"]
      451 SETTABLE                         R14 R42 R43
      452 CALL                             R40 2 1
      453 SETTABLEKS                       R40 R39 K100 ["EyeIcon"]
      455 GETUPVAL                         R40 4
      456 GETTABLEKS                       R40 R40 K53 ["createElement"]
      458 LOADK                            R41 K73 ["ImageButton"]
      459 NEWTABLE                         R42 4 0
      461 LOADN                            R43 2
      462 SETTABLEKS                       R43 R42 K54 ["LayoutOrder"]
      464 GETUPVAL                         R43 4
      465 GETTABLEKS                       R43 R43 K77 ["Event"]
      467 GETTABLEKS                       R43 R43 K78 ["Activated"]
      469 GETTABLEKS                       R44 R0 K97 ["onToggleAdornment"]
      471 SETTABLE                         R44 R42 R43
      472 GETUPVAL                         R43 4
      473 GETTABLEKS                       R43 R43 K56 ["Tag"]
      475 SETTABLE                         R15 R42 R43
      476 CALL                             R40 2 1
      477 SETTABLEKS                       R40 R39 K101 ["Dot"]
      479 CALL                             R36 3 1
      480 JUMP                             ; [+1]
      481 LOADNIL                          R36
      482 SETTABLEKS                       R36 R35 K65 ["Adornment"]
      484 CALL                             R32 3 -1
      485 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["CompositorDebugger"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K14 ["assign"]
       36 GETTABLEKS                       R6 R3 K15 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K16 ["withContext"]
       40 GETTABLEKS                       R8 R6 K17 ["Analytics"]
       42 GETTABLEKS                       R9 R6 K18 ["Localization"]
       44 GETTABLEKS                       R10 R3 K19 ["Styling"]
       46 GETTABLEKS                       R11 R10 K20 ["joinTags"]
       48 GETTABLEKS                       R12 R3 K21 ["UI"]
       50 GETTABLEKS                       R13 R12 K22 ["Image"]
       52 GETTABLEKS                       R14 R12 K23 ["Pane"]
       54 GETTABLEKS                       R15 R12 K24 ["TextLabel"]
       56 GETTABLEKS                       R16 R3 K25 ["Wrappers"]
       58 GETTABLEKS                       R17 R16 K26 ["withControl"]
       60 GETTABLEKS                       R18 R1 K27 ["Src"]
       62 GETTABLEKS                       R18 R18 K28 ["Util"]
       64 GETIMPORT                        R19 K9 [require]
       66 GETTABLEKS                       R20 R18 K29 ["getSafeName"]
       68 CALL                             R19 1 1
       69 GETIMPORT                        R20 K9 [require]
       71 GETTABLEKS                       R21 R18 K30 ["getThemeToken"]
       73 CALL                             R20 1 1
       74 GETIMPORT                        R21 K9 [require]
       76 GETTABLEKS                       R22 R18 K31 ["isNan"]
       78 CALL                             R21 1 1
       79 GETIMPORT                        R22 K9 [require]
       81 GETIMPORT                        R23 K5 [script]
       83 GETTABLEKS                       R23 R23 K32 ["Timestamp"]
       85 CALL                             R22 1 1
       86 GETIMPORT                        R23 K9 [require]
       88 GETIMPORT                        R24 K5 [script]
       90 GETTABLEKS                       R24 R24 K33 ["styles"]
       92 CALL                             R23 1 1
       93 GETIMPORT                        R24 K9 [require]
       95 GETTABLEKS                       R25 R1 K27 ["Src"]
       97 GETTABLEKS                       R25 R25 K34 ["Types"]
       99 CALL                             R24 1 1
      100 DUPTABLE                         R25 K40 [{["Tree"] = 250, ["Weight"] = 40, ["Timestamp"] = 100}]
      101 GETTABLEKS                       R26 R4 K41 ["Component"]
      103 LOADK                            R28 K42 ["LayerTreeRow"]
      104 NAMECALL                         R26 R26 K43 ["extend"]
      106 CALL                             R26 2 1
      107 DUPCLOSURE                       R27 K44 [PROTO_2]
      108 CAPTURE                          VAL R4
      109 SETTABLEKS                       R27 R26 K45 ["init"]
      111 DUPCLOSURE                       R27 K46 [PROTO_3]
      112 CAPTURE                          VAL R19
      113 CAPTURE                          VAL R21
      114 SETTABLEKS                       R27 R26 K47 ["getContents"]
      116 DUPCLOSURE                       R27 K48 [PROTO_4]
      117 SETTABLEKS                       R27 R26 K49 ["shouldComponentUpdate"]
      119 DUPCLOSURE                       R27 K50 [PROTO_5]
      120 CAPTURE                          VAL R23
      121 CAPTURE                          VAL R21
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R22
      131 SETTABLEKS                       R27 R26 K51 ["render"]
      133 DUPTABLE                         R27 K54 [{["ExpandableRoot"] = True}]
      134 SETTABLEKS                       R27 R26 K55 ["defaultProps"]
      136 MOVE                             R27 R7
      137 DUPTABLE                         R28 K56 [{"Analytics", "Localization"}]
      138 SETTABLEKS                       R8 R28 K17 ["Analytics"]
      140 SETTABLEKS                       R9 R28 K18 ["Localization"]
      142 CALL                             R27 1 1
      143 MOVE                             R28 R26
      144 CALL                             R27 1 1
      145 MOVE                             R26 R27
      146 MOVE                             R27 R17
      147 MOVE                             R28 R26
      148 CALL                             R27 1 -1
      149 RETURN                           R27 -1
