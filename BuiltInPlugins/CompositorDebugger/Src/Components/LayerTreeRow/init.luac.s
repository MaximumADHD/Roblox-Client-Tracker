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
       90 GETUPVAL                         R21 1
       91 GETTABLEKS                       R21 R21 K29 ["Weight"]
       93 LOADN                            R22 1
       94 LOADN                            R23 0
       95 CALL                             R19 4 1
       96 GETIMPORT                        R20 K11 [UDim2.new]
       98 LOADN                            R21 0
       99 GETUPVAL                         R22 1
      100 GETTABLEKS                       R22 R22 K30 ["Timestamp"]
      102 LOADN                            R23 1
      103 LOADN                            R24 0
      104 CALL                             R20 4 1
      105 GETTABLEKS                       R21 R3 K31 ["state"]
      107 JUMPIFNOT                        R21 ; [+9]
      108 GETTABLEKS                       R21 R3 K31 ["state"]
      110 GETTABLEKS                       R21 R21 K32 ["timePositionNormalized"]
      112 JUMPIFNOT                        R21 ; [+4]
      113 GETTABLEKS                       R21 R3 K31 ["state"]
      115 GETTABLEKS                       R21 R21 K33 ["length"]
      117 GETTABLEKS                       R22 R3 K34 ["weight"]
      119 JUMPIF                           R22 ; [+2]
      120 LOADN                            R22 1
      121 JUMP                             ; [+5]
      122 GETUPVAL                         R23 2
      123 MOVE                             R24 R22
      124 CALL                             R23 1 1
      125 JUMPIFNOT                        R23 ; [+1]
      126 LOADN                            R22 0
      127 GETUPVAL                         R23 3
      128 NAMECALL                         R23 R23 K35 ["IsServer"]
      130 CALL                             R23 1 1
      131 GETUPVAL                         R24 0
      132 LOADK                            R26 K36 ["IconSize"]
      133 NAMECALL                         R24 R24 K28 ["GetAttribute"]
      135 CALL                             R24 2 1
      136 GETTABLEKS                       R31 R24 K41 ["X"]
      138 GETTABLEKS                       R31 R31 K42 ["Offset"]
      140 MULK                             R30 R31 K40 [3]
      141 ADD                              R29 R18 R30
      142 ADDK                             R28 R29 K39 [10]
      143 JUMPIFEQKN                       R4 K3 [0] ; [+10]
      145 GETUPVAL                         R31 1
      146 GETTABLEKS                       R31 R31 K29 ["Weight"]
      148 GETUPVAL                         R32 1
      149 GETTABLEKS                       R32 R32 K30 ["Timestamp"]
      151 ADD                              R30 R31 R32
      152 ADDK                             R29 R30 K39 [10]
      153 JUMP                             ; [+1]
      154 LOADN                            R29 0
      155 ADD                              R27 R28 R29
      156 ADDK                             R26 R27 K38 [15]
      157 ADDK                             R25 R26 K37 [20]
      158 GETIMPORT                        R26 K11 [UDim2.new]
      160 LOADN                            R27 1
      161 MINUS                            R28 R25
      162 LOADN                            R29 1
      163 LOADN                            R30 0
      164 CALL                             R26 4 1
      165 LOADNIL                          R27
      166 LOADNIL                          R28
      167 LOADNIL                          R29
      168 LOADNIL                          R30
      169 JUMPIFNOTEQKN                    R4 K3 [0] ; [+7]
      171 JUMPIFNOT                        R23 ; [+2]
      172 LOADK                            R27 K43 ["Server"]
      173 JUMP                             ; [+1]
      174 LOADK                            R27 K44 ["Client"]
      175 LOADK                            R30 K45 ["RigName"]
      176 JUMP                             ; [+19]
      177 GETTABLEKS                       R31 R1 K46 ["Selected"]
      179 JUMPIFNOT                        R31 ; [+5]
      180 GETUPVAL                         R31 4
      181 LOADK                            R32 K47 ["ActiveLayer"]
      182 CALL                             R31 1 1
      183 MOVE                             R28 R31
      184 JUMP                             ; [+11]
      185 GETUPVAL                         R31 4
      186 LOADK                            R32 K48 ["InactiveLayer"]
      187 CALL                             R31 1 1
      188 GETUPVAL                         R33 4
      189 LOADK                            R34 K47 ["ActiveLayer"]
      190 CALL                             R33 1 1
      191 MOVE                             R34 R22
      192 NAMECALL                         R31 R31 K49 ["Lerp"]
      194 CALL                             R31 3 1
      195 MOVE                             R28 R31
      196 GETUPVAL                         R31 4
      197 LOADK                            R32 K50 ["InactiveTimeBar"]
      198 CALL                             R31 1 1
      199 GETUPVAL                         R33 4
      200 LOADK                            R34 K51 ["ActiveTimeBar"]
      201 CALL                             R33 1 1
      202 MOVE                             R34 R22
      203 NAMECALL                         R31 R31 K49 ["Lerp"]
      205 CALL                             R31 3 1
      206 MOVE                             R29 R31
      207 ORK                              R32 R27 K52 [""]
      208 LOADK                            R33 K53 [" LayerIcon "]
      209 GETTABLEKS                       R35 R3 K54 ["className"]
      211 ORK                              R34 R35 K52 [""]
      212 CONCAT                           R31 R32 R34
      213 GETUPVAL                         R32 5
      214 GETTABLEKS                       R32 R32 K55 ["createElement"]
      216 GETUPVAL                         R33 6
      217 GETUPVAL                         R34 7
      218 NEWTABLE                         R35 4 0
      220 JUMPIFNOT                        R7 ; [+2]
      221 LOADN                            R36 2
      222 JUMP                             ; [+1]
      223 MOVE                             R36 R2
      224 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
      226 SETTABLEKS                       R9 R35 K57 ["Size"]
      228 SETTABLEKS                       R10 R35 K12 ["Position"]
      230 GETUPVAL                         R36 5
      231 GETTABLEKS                       R36 R36 K58 ["Tag"]
      233 GETUPVAL                         R37 8
      234 LOADK                            R38 K59 ["LayerTreeRow X-RowS X-Middle"]
      235 GETTABLEKS                       R40 R1 K46 ["Selected"]
      237 JUMPIFNOT                        R40 ; [+2]
      238 LOADK                            R39 K46 ["Selected"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R39
      241 CALL                             R37 2 1
      242 SETTABLE                         R37 R35 R36
      243 GETTABLEKS                       R36 R1 K60 ["WrapperProps"]
      245 CALL                             R34 2 1
      246 DUPTABLE                         R35 K66 [{"Spacer", "Toggle", "LeftIcon", "LayerName", "Weight", "Timestamp", "Adornment"}]
      247 GETUPVAL                         R36 5
      248 GETTABLEKS                       R36 R36 K55 ["createElement"]
      250 GETUPVAL                         R37 6
      251 DUPTABLE                         R38 K67 [{"LayoutOrder", "Size"}]
      252 LOADN                            R39 2
      253 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      255 GETIMPORT                        R39 K11 [UDim2.new]
      257 LOADN                            R40 0
      258 MOVE                             R41 R18
      259 LOADN                            R42 0
      260 LOADN                            R43 0
      261 CALL                             R39 4 1
      262 SETTABLEKS                       R39 R38 K57 ["Size"]
      264 CALL                             R36 2 1
      265 SETTABLEKS                       R36 R35 K61 ["Spacer"]
      267 GETUPVAL                         R36 5
      268 GETTABLEKS                       R36 R36 K55 ["createElement"]
      270 GETUPVAL                         R37 6
      271 DUPTABLE                         R38 K68 [{"LayoutOrder"}]
      272 LOADN                            R39 4
      273 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      275 DUPTABLE                         R39 K70 [{"ToggleButton"}]
      276 JUMPIFNOT                        R16 ; [+27]
      277 JUMPIFNOT                        R5 ; [+26]
      278 GETUPVAL                         R40 5
      279 GETTABLEKS                       R40 R40 K55 ["createElement"]
      281 LOADK                            R41 K71 ["ImageButton"]
      282 NEWTABLE                         R42 2 0
      284 GETUPVAL                         R43 0
      285 JUMPIFNOT                        R6 ; [+2]
      286 LOADK                            R45 K72 ["ExpandedOffset"]
      287 JUMP                             ; [+1]
      288 LOADK                            R45 K73 ["CollapsedOffset"]
      289 NAMECALL                         R43 R43 K28 ["GetAttribute"]
      291 CALL                             R43 2 1
      292 SETTABLEKS                       R43 R42 K74 ["ImageRectOffset"]
      294 GETUPVAL                         R43 5
      295 GETTABLEKS                       R43 R43 K75 ["Event"]
      297 GETTABLEKS                       R43 R43 K76 ["Activated"]
      299 GETTABLEKS                       R44 R0 K77 ["onToggle"]
      301 SETTABLE                         R44 R42 R43
      302 CALL                             R40 2 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R40
      305 SETTABLEKS                       R40 R39 K69 ["ToggleButton"]
      307 CALL                             R36 3 1
      308 SETTABLEKS                       R36 R35 K62 ["Toggle"]
      310 GETUPVAL                         R36 5
      311 GETTABLEKS                       R36 R36 K55 ["createElement"]
      313 GETUPVAL                         R37 9
      314 NEWTABLE                         R38 4 0
      316 LOADN                            R39 6
      317 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      319 SETTABLEKS                       R28 R38 K78 ["ImageColor3"]
      321 GETUPVAL                         R39 5
      322 GETTABLEKS                       R39 R39 K58 ["Tag"]
      324 SETTABLE                         R31 R38 R39
      325 CALL                             R36 2 1
      326 SETTABLEKS                       R36 R35 K63 ["LeftIcon"]
      328 GETUPVAL                         R36 5
      329 GETTABLEKS                       R36 R36 K55 ["createElement"]
      331 GETUPVAL                         R37 10
      332 NEWTABLE                         R38 8 0
      334 LOADN                            R39 7
      335 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      337 SETTABLEKS                       R11 R38 K79 ["Text"]
      339 SETTABLEKS                       R28 R38 K80 ["TextColor"]
      341 SETTABLEKS                       R26 R38 K57 ["Size"]
      343 GETUPVAL                         R39 5
      344 GETTABLEKS                       R39 R39 K58 ["Tag"]
      346 GETUPVAL                         R40 8
      347 LOADK                            R41 K81 ["Name"]
      348 MOVE                             R42 R27
      349 MOVE                             R43 R30
      350 CALL                             R40 3 1
      351 SETTABLE                         R40 R38 R39
      352 CALL                             R36 2 1
      353 SETTABLEKS                       R36 R35 K64 ["LayerName"]
      355 JUMPIFEQKN                       R4 K3 [0] ; [+34]
      357 JUMPIFNOT                        R12 ; [+20]
      358 GETUPVAL                         R36 5
      359 GETTABLEKS                       R36 R36 K55 ["createElement"]
      361 GETUPVAL                         R37 10
      362 DUPTABLE                         R38 K83 [{"TextColor", "LayoutOrder", "Text", "Size", "TextXAlignment"}]
      363 SETTABLEKS                       R28 R38 K80 ["TextColor"]
      365 LOADN                            R39 8
      366 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      368 SETTABLEKS                       R12 R38 K79 ["Text"]
      370 SETTABLEKS                       R19 R38 K57 ["Size"]
      372 GETIMPORT                        R39 K86 [Enum.TextXAlignment.Right]
      374 SETTABLEKS                       R39 R38 K82 ["TextXAlignment"]
      376 CALL                             R36 2 1
      377 JUMP                             ; [+13]
      378 GETUPVAL                         R36 5
      379 GETTABLEKS                       R36 R36 K55 ["createElement"]
      381 GETUPVAL                         R37 6
      382 DUPTABLE                         R38 K87 [{"Size", "LayoutOrder"}]
      383 SETTABLEKS                       R19 R38 K57 ["Size"]
      385 LOADN                            R39 8
      386 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      388 CALL                             R36 2 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R36
      391 SETTABLEKS                       R36 R35 K29 ["Weight"]
      393 JUMPIFEQKN                       R4 K3 [0] ; [+42]
      395 JUMPIFNOT                        R21 ; [+28]
      396 GETUPVAL                         R36 5
      397 GETTABLEKS                       R36 R36 K55 ["createElement"]
      399 GETUPVAL                         R37 11
      400 DUPTABLE                         R38 K91 [{"Size", "LayoutOrder", "TimePercentage", "Length", "TextColor", "BarColor"}]
      401 SETTABLEKS                       R20 R38 K57 ["Size"]
      403 LOADN                            R39 9
      404 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      406 GETTABLEKS                       R39 R3 K31 ["state"]
      408 GETTABLEKS                       R39 R39 K32 ["timePositionNormalized"]
      410 SETTABLEKS                       R39 R38 K88 ["TimePercentage"]
      412 GETTABLEKS                       R39 R3 K31 ["state"]
      414 GETTABLEKS                       R39 R39 K33 ["length"]
      416 SETTABLEKS                       R39 R38 K89 ["Length"]
      418 SETTABLEKS                       R28 R38 K80 ["TextColor"]
      420 SETTABLEKS                       R29 R38 K90 ["BarColor"]
      422 CALL                             R36 2 1
      423 JUMP                             ; [+13]
      424 GETUPVAL                         R36 5
      425 GETTABLEKS                       R36 R36 K55 ["createElement"]
      427 GETUPVAL                         R37 6
      428 DUPTABLE                         R38 K87 [{"Size", "LayoutOrder"}]
      429 SETTABLEKS                       R20 R38 K57 ["Size"]
      431 LOADN                            R39 9
      432 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      434 CALL                             R36 2 1
      435 JUMP                             ; [+1]
      436 LOADNIL                          R36
      437 SETTABLEKS                       R36 R35 K30 ["Timestamp"]
      439 JUMPIFEQKN                       R4 K3 [0] ; [+70]
      441 GETUPVAL                         R36 5
      442 GETTABLEKS                       R36 R36 K55 ["createElement"]
      444 GETUPVAL                         R37 6
      445 NEWTABLE                         R38 4 0
      447 LOADN                            R39 10
      448 SETTABLEKS                       R39 R38 K56 ["LayoutOrder"]
      450 GETTABLEKS                       R39 R0 K92 ["onToggleAdornment"]
      452 SETTABLEKS                       R39 R38 K93 ["OnPress"]
      454 GETUPVAL                         R39 5
      455 GETTABLEKS                       R39 R39 K58 ["Tag"]
      457 LOADK                            R40 K94 ["X-RowS X-Middle"]
      458 SETTABLE                         R40 R38 R39
      459 DUPTABLE                         R39 K97 [{"EyeIcon", "Dot"}]
      460 GETUPVAL                         R40 5
      461 GETTABLEKS                       R40 R40 K55 ["createElement"]
      463 LOADK                            R41 K71 ["ImageButton"]
      464 NEWTABLE                         R42 4 0
      466 LOADN                            R43 1
      467 SETTABLEKS                       R43 R42 K56 ["LayoutOrder"]
      469 GETUPVAL                         R43 5
      470 GETTABLEKS                       R43 R43 K75 ["Event"]
      472 GETTABLEKS                       R43 R43 K76 ["Activated"]
      474 GETTABLEKS                       R44 R0 K92 ["onToggleAdornment"]
      476 SETTABLE                         R44 R42 R43
      477 GETUPVAL                         R43 5
      478 GETTABLEKS                       R43 R43 K58 ["Tag"]
      480 SETTABLE                         R14 R42 R43
      481 CALL                             R40 2 1
      482 SETTABLEKS                       R40 R39 K95 ["EyeIcon"]
      484 GETUPVAL                         R40 5
      485 GETTABLEKS                       R40 R40 K55 ["createElement"]
      487 LOADK                            R41 K71 ["ImageButton"]
      488 NEWTABLE                         R42 4 0
      490 LOADN                            R43 2
      491 SETTABLEKS                       R43 R42 K56 ["LayoutOrder"]
      493 GETUPVAL                         R43 5
      494 GETTABLEKS                       R43 R43 K75 ["Event"]
      496 GETTABLEKS                       R43 R43 K76 ["Activated"]
      498 GETTABLEKS                       R44 R0 K92 ["onToggleAdornment"]
      500 SETTABLE                         R44 R42 R43
      501 GETUPVAL                         R43 5
      502 GETTABLEKS                       R43 R43 K58 ["Tag"]
      504 SETTABLE                         R15 R42 R43
      505 CALL                             R40 2 1
      506 SETTABLEKS                       R40 R39 K96 ["Dot"]
      508 CALL                             R36 3 1
      509 JUMP                             ; [+1]
      510 LOADNIL                          R36
      511 SETTABLEKS                       R36 R35 K65 ["Adornment"]
      513 CALL                             R32 3 -1
      514 RETURN                           R32 -1

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
      100 DUPTABLE                         R25 K37 [{"Tree", "Weight", "Timestamp"}]
      101 LOADN                            R26 250
      102 SETTABLEKS                       R26 R25 K35 ["Tree"]
      104 LOADN                            R26 40
      105 SETTABLEKS                       R26 R25 K36 ["Weight"]
      107 LOADN                            R26 100
      108 SETTABLEKS                       R26 R25 K32 ["Timestamp"]
      110 GETTABLEKS                       R26 R4 K38 ["Component"]
      112 LOADK                            R28 K39 ["LayerTreeRow"]
      113 NAMECALL                         R26 R26 K40 ["extend"]
      115 CALL                             R26 2 1
      116 DUPCLOSURE                       R27 K41 [PROTO_2]
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R27 R26 K42 ["init"]
      120 DUPCLOSURE                       R27 K43 [PROTO_3]
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R21
      123 SETTABLEKS                       R27 R26 K44 ["getContents"]
      125 DUPCLOSURE                       R27 K45 [PROTO_4]
      126 SETTABLEKS                       R27 R26 K46 ["shouldComponentUpdate"]
      128 DUPCLOSURE                       R27 K47 [PROTO_5]
      129 CAPTURE                          VAL R23
      130 CAPTURE                          VAL R25
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R22
      141 SETTABLEKS                       R27 R26 K48 ["render"]
      143 DUPTABLE                         R27 K50 [{"ExpandableRoot"}]
      144 LOADB                            R28 1
      145 SETTABLEKS                       R28 R27 K49 ["ExpandableRoot"]
      147 SETTABLEKS                       R27 R26 K51 ["defaultProps"]
      149 MOVE                             R27 R7
      150 DUPTABLE                         R28 K52 [{"Analytics", "Localization"}]
      151 SETTABLEKS                       R8 R28 K17 ["Analytics"]
      153 SETTABLEKS                       R9 R28 K18 ["Localization"]
      155 CALL                             R27 1 1
      156 MOVE                             R28 R26
      157 CALL                             R27 1 1
      158 MOVE                             R26 R27
      159 MOVE                             R27 R17
      160 MOVE                             R28 R26
      161 CALL                             R27 1 -1
      162 RETURN                           R27 -1
