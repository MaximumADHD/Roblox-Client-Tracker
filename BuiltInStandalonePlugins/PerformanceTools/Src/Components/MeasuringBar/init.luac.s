PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["FlipColors"]
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["FlipColors"]
        5 JUMP                             ; [+1]
        6 LOADB                            R2 0
        7 LOADK                            R3 K1 [0.5]
        8 JUMPIFNOTLT                      R3 R1 ; [+11]
       10 LOADK                            R3 K2 [0.95]
       11 JUMPIFNOTLT                      R3 R1 ; [+6]
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADK                            R3 K3 ["Component-MeasurementBarFillLow"]
       15 RETURN                           R3 1
       16 LOADK                            R3 K4 ["Component-MeasurementBarFillHigh"]
       17 RETURN                           R3 1
       18 LOADK                            R3 K5 ["Component-MeasurementBarFillMedium"]
       19 RETURN                           R3 1
       20 JUMPIFNOT                        R2 ; [+2]
       21 LOADK                            R3 K4 ["Component-MeasurementBarFillHigh"]
       22 RETURN                           R3 1
       23 LOADK                            R3 K3 ["Component-MeasurementBarFillLow"]
       24 RETURN                           R3 1

PROTO_1:
        0 GETTABLEN                        R4 R0 1
        1 GETTABLEKS                       R3 R4 K0 ["BodyText"]
        3 GETTABLEN                        R5 R0 1
        4 GETTABLEKS                       R4 R5 K1 ["TitleText"]
        6 MOVE                             R5 R0
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 GETTABLEKS                       R10 R9 K2 ["Threshold"]
       12 JUMPIFLT                         R1 R10 ; [+7]
       14 GETTABLEKS                       R3 R9 K0 ["BodyText"]
       16 GETTABLEKS                       R4 R9 K1 ["TitleText"]
       18 FORGLOOP                         R5 2 ; [-9]
       20 NEWTABLE                         R5 0 2
       22 MOVE                             R6 R4
       23 MOVE                             R8 R3
       24 LOADK                            R9 K3 ["<br/>"]
       25 MOVE                             R10 R2
       26 CONCAT                           R7 R8 R10
       27 SETLIST                          R5 R6 2 [1]
       29 RETURN                           R5 1

PROTO_2:
        0 LOADK                            R1 K0 [0.0001]
        1 JUMPIFNOTLE                      R0 R1 ; [+27]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["createElement"]
        6 LOADK                            R2 K2 ["UIGradient"]
        7 DUPTABLE                         R3 K4 [{"Transparency"}]
        8 GETIMPORT                        R4 K7 [NumberSequence.new]
       10 NEWTABLE                         R5 0 2
       12 GETIMPORT                        R6 K9 [NumberSequenceKeypoint.new]
       14 LOADN                            R7 0
       15 LOADN                            R8 1
       16 CALL                             R6 2 1
       17 GETIMPORT                        R7 K9 [NumberSequenceKeypoint.new]
       19 LOADN                            R8 1
       20 LOADN                            R9 1
       21 CALL                             R7 2 -1
       22 SETLIST                          R5 R6 -1 [1]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K3 ["Transparency"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1
       29 LOADN                            R1 1
       30 JUMPIFNOTLE                      R1 R0 ; [+27]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K1 ["createElement"]
       35 LOADK                            R2 K2 ["UIGradient"]
       36 DUPTABLE                         R3 K4 [{"Transparency"}]
       37 GETIMPORT                        R4 K7 [NumberSequence.new]
       39 NEWTABLE                         R5 0 2
       41 GETIMPORT                        R6 K9 [NumberSequenceKeypoint.new]
       43 LOADN                            R7 0
       44 LOADN                            R8 0
       45 CALL                             R6 2 1
       46 GETIMPORT                        R7 K9 [NumberSequenceKeypoint.new]
       48 LOADN                            R8 1
       49 LOADN                            R9 0
       50 CALL                             R7 2 -1
       51 SETLIST                          R5 R6 -1 [1]
       53 CALL                             R4 1 1
       54 SETTABLEKS                       R4 R3 K3 ["Transparency"]
       56 CALL                             R1 2 -1
       57 RETURN                           R1 -1
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R1 R2 K1 ["createElement"]
       61 LOADK                            R2 K2 ["UIGradient"]
       62 DUPTABLE                         R3 K4 [{"Transparency"}]
       63 GETIMPORT                        R4 K7 [NumberSequence.new]
       65 NEWTABLE                         R5 0 4
       67 GETIMPORT                        R6 K9 [NumberSequenceKeypoint.new]
       69 LOADN                            R7 0
       70 LOADN                            R8 0
       71 CALL                             R6 2 1
       72 GETIMPORT                        R7 K9 [NumberSequenceKeypoint.new]
       74 SUBK                             R9 R0 K0 [0.0001]
       75 LOADN                            R10 0
       76 LOADN                            R11 1
       77 FASTCALL                         MATH_CLAMP ; [+2]
       78 GETIMPORT                        R8 K12 [math.clamp]
       80 CALL                             R8 3 1
       81 LOADN                            R9 0
       82 CALL                             R7 2 1
       83 GETIMPORT                        R8 K9 [NumberSequenceKeypoint.new]
       85 MOVE                             R9 R0
       86 LOADN                            R10 1
       87 CALL                             R8 2 1
       88 GETIMPORT                        R9 K9 [NumberSequenceKeypoint.new]
       90 LOADN                            R10 1
       91 LOADN                            R11 1
       92 CALL                             R9 2 -1
       93 SETLIST                          R5 R6 -1 [1]
       95 CALL                             R4 1 1
       96 SETTABLEKS                       R4 R3 K3 ["Transparency"]
       98 CALL                             R1 2 -1
       99 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTLT                      R1 R0 ; [+10]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K1 [tick]
        6 CALL                             R2 0 -1
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 JUMPIFNOTEQ                      R0 R1 ; [+15]
       15 GETIMPORT                        R2 K1 [tick]
       17 CALL                             R2 0 1
       18 GETUPVAL                         R3 3
       19 SUB                              R1 R2 R3
       20 LOADK                            R2 K2 [0.2]
       21 JUMPIFNOTLT                      R2 R1 ; [+7]
       23 GETUPVAL                         R1 1
       24 GETIMPORT                        R2 K1 [tick]
       26 CALL                             R2 0 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K1 [tick]
       31 CALL                             R2 0 1
       32 GETUPVAL                         R3 3
       33 SUB                              R1 R2 R3
       34 LOADN                            R2 3
       35 JUMPIFNOTLT                      R2 R1 ; [+9]
       37 GETUPVAL                         R1 1
       38 GETIMPORT                        R2 K1 [tick]
       40 CALL                             R2 0 -1
       41 CALL                             R1 -1 0
       42 GETUPVAL                         R1 2
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R4 K2 [Vector2.new]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["useState"]
        4 LOADN                            R3 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["useState"]
        9 LOADN                            R5 0
       10 CALL                             R4 1 2
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R5
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 GETTABLEKS                       R9 R0 K2 ["FillAmount"]
       18 ORK                              R8 R9 K1 [0]
       19 LOADN                            R9 0
       20 LOADN                            R10 1
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R7 K5 [math.clamp]
       24 CALL                             R7 3 1
       25 GETTABLEKS                       R10 R0 K6 ["FlipColors"]
       27 JUMPIFNOT                        R10 ; [+3]
       28 GETTABLEKS                       R9 R0 K6 ["FlipColors"]
       30 JUMP                             ; [+1]
       31 LOADB                            R9 0
       32 LOADK                            R10 K7 [0.5]
       33 JUMPIFNOTLT                      R10 R7 ; [+11]
       35 LOADK                            R10 K8 [0.95]
       36 JUMPIFNOTLT                      R10 R7 ; [+6]
       38 JUMPIFNOT                        R9 ; [+2]
       39 LOADK                            R8 K9 ["Component-MeasurementBarFillLow"]
       40 JUMP                             ; [+9]
       41 LOADK                            R8 K10 ["Component-MeasurementBarFillHigh"]
       42 JUMP                             ; [+7]
       43 LOADK                            R8 K11 ["Component-MeasurementBarFillMedium"]
       44 JUMP                             ; [+5]
       45 JUMPIFNOT                        R9 ; [+2]
       46 LOADK                            R8 K10 ["Component-MeasurementBarFillHigh"]
       47 JUMP                             ; [+2]
       48 LOADK                            R8 K9 ["Component-MeasurementBarFillLow"]
       49 JUMP                             ; [0]
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R9 R10 K12 ["createElement"]
       53 LOADK                            R10 K13 ["Frame"]
       54 NEWTABLE                         R11 8 0
       56 GETIMPORT                        R12 K16 [UDim2.new]
       58 LOADN                            R13 0
       59 LOADN                            R14 0
       60 LOADN                            R15 0
       61 LOADN                            R16 0
       62 CALL                             R12 4 1
       63 SETTABLEKS                       R12 R11 K17 ["Position"]
       65 GETIMPORT                        R12 K16 [UDim2.new]
       67 LOADN                            R13 1
       68 LOADN                            R14 0
       69 LOADN                            R15 1
       70 LOADN                            R16 0
       71 CALL                             R12 4 1
       72 SETTABLEKS                       R12 R11 K18 ["Size"]
       74 LOADN                            R12 0
       75 SETTABLEKS                       R12 R11 K19 ["BorderSizePixel"]
       77 LOADN                            R12 0
       78 SETTABLEKS                       R12 R11 K20 ["BackgroundTransparency"]
       80 GETUPVAL                         R13 0
       81 GETTABLEKS                       R12 R13 K21 ["Tag"]
       83 SETTABLE                         R8 R11 R12
       84 DUPTABLE                         R12 K24 [{"gradient", "UICorner"}]
       85 GETUPVAL                         R13 1
       86 MOVE                             R14 R7
       87 CALL                             R13 1 1
       88 SETTABLEKS                       R13 R12 K22 ["gradient"]
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R13 R14 K12 ["createElement"]
       93 LOADK                            R14 K23 ["UICorner"]
       94 DUPTABLE                         R15 K26 [{"CornerRadius"}]
       95 GETIMPORT                        R16 K28 [UDim.new]
       97 LOADK                            R17 K7 [0.5]
       98 LOADN                            R18 0
       99 CALL                             R16 2 1
      100 SETTABLEKS                       R16 R15 K25 ["CornerRadius"]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K23 ["UICorner"]
      105 CALL                             R9 3 1
      106 MOVE                             R1 R9
      107 MOVE                             R9 R6
      108 MOVE                             R10 R7
      109 CALL                             R9 1 0
      110 NEWTABLE                         R9 0 0
      112 GETTABLEKS                       R10 R0 K29 ["PipCount"]
      114 JUMPIFEQKNIL                     R10 ; [+36]
      116 LOADN                            R12 1
      117 GETTABLEKS                       R10 R0 K29 ["PipCount"]
      119 LOADN                            R11 1
      120 FORNPREP                         R10
      121 MOVE                             R14 R9
      122 GETUPVAL                         R16 0
      123 GETTABLEKS                       R15 R16 K12 ["createElement"]
      125 LOADK                            R16 K13 ["Frame"]
      126 NEWTABLE                         R17 2 0
      128 GETIMPORT                        R18 K16 [UDim2.new]
      130 MULK                             R20 R12 K30 [1]
      131 GETTABLEKS                       R21 R0 K29 ["PipCount"]
      133 DIV                              R19 R20 R21
      134 LOADN                            R20 0
      135 LOADN                            R21 0
      136 LOADN                            R22 0
      137 CALL                             R18 4 1
      138 SETTABLEKS                       R18 R17 K17 ["Position"]
      140 GETUPVAL                         R19 0
      141 GETTABLEKS                       R18 R19 K21 ["Tag"]
      143 LOADK                            R19 K31 ["Component-MeasuringBarPip"]
      144 SETTABLE                         R19 R17 R18
      145 CALL                             R15 2 -1
      146 FASTCALL                         TABLE_INSERT ; [+2]
      147 GETIMPORT                        R13 K34 [table.insert]
      149 CALL                             R13 -1 0
      150 FORNLOOP                         R10
      151 GETTABLEKS                       R10 R0 K35 ["Pips"]
      153 JUMPIFEQKNIL                     R10 ; [+34]
      155 GETTABLEKS                       R10 R0 K35 ["Pips"]
      157 LOADNIL                          R11
      158 LOADNIL                          R12
      159 FORGPREP                         R10
      160 MOVE                             R16 R9
      161 GETUPVAL                         R18 0
      162 GETTABLEKS                       R17 R18 K12 ["createElement"]
      164 LOADK                            R18 K13 ["Frame"]
      165 NEWTABLE                         R19 2 0
      167 GETIMPORT                        R20 K16 [UDim2.new]
      169 MOVE                             R21 R14
      170 LOADN                            R22 0
      171 LOADN                            R23 0
      172 LOADN                            R24 0
      173 CALL                             R20 4 1
      174 SETTABLEKS                       R20 R19 K17 ["Position"]
      176 GETUPVAL                         R21 0
      177 GETTABLEKS                       R20 R21 K21 ["Tag"]
      179 LOADK                            R21 K31 ["Component-MeasuringBarPip"]
      180 SETTABLE                         R21 R19 R20
      181 CALL                             R17 2 -1
      182 FASTCALL                         TABLE_INSERT ; [+2]
      183 GETIMPORT                        R15 K34 [table.insert]
      185 CALL                             R15 -1 0
      186 FORGLOOP                         R10 2 ; [-27]
      188 GETTABLEKS                       R11 R0 K36 ["ThresholdTooltips"]
      190 JUMPIFNOT                        R11 ; [+9]
      191 GETUPVAL                         R10 2
      192 GETTABLEKS                       R11 R0 K36 ["ThresholdTooltips"]
      194 MOVE                             R12 R2
      195 GETTABLEKS                       R14 R0 K38 ["ThresholdExtraInfo"]
      197 ORK                              R13 R14 K37 [""]
      198 CALL                             R10 3 1
      199 JUMPIF                           R10 ; [+6]
      200 NEWTABLE                         R10 0 2
      202 LOADK                            R11 K37 [""]
      203 LOADK                            R12 K37 [""]
      204 SETLIST                          R10 R11 2 [1]
      206 GETUPVAL                         R12 0
      207 GETTABLEKS                       R11 R12 K39 ["useContext"]
      209 GETUPVAL                         R13 3
      210 GETTABLEKS                       R12 R13 K40 ["Context"]
      212 CALL                             R11 1 1
      213 GETTABLEKS                       R12 R11 K41 ["useTooltip"]
      215 GETTABLEN                        R13 R10 1
      216 GETTABLEN                        R14 R10 2
      217 CALL                             R12 2 3
      218 LOADB                            R15 0
      219 GETTABLEKS                       R16 R0 K2 ["FillAmount"]
      221 JUMPIFEQKNIL                     R16 ; [+20]
      223 LOADK                            R16 K42 [0.01]
      224 JUMPIFNOTLT                      R16 R2 ; [+17]
      226 GETTABLEKS                       R18 R0 K2 ["FillAmount"]
      228 SUB                              R17 R2 R18
      229 FASTCALL1                        MATH_ABS R17 ; [+2]
      230 GETIMPORT                        R16 K44 [math.abs]
      232 CALL                             R16 1 1
      233 LOADK                            R17 K42 [0.01]
      234 JUMPIFNOTLT                      R17 R16 ; [+7]
      236 GETTABLEKS                       R16 R0 K2 ["FillAmount"]
      238 LOADN                            R17 1
      239 JUMPIFNOTLT                      R16 R17 ; [+2]
      241 LOADB                            R15 1
      242 GETUPVAL                         R17 0
      243 GETTABLEKS                       R16 R17 K12 ["createElement"]
      245 LOADK                            R17 K13 ["Frame"]
      246 NEWTABLE                         R18 8 0
      248 GETIMPORT                        R19 K48 [Enum.AutomaticSize.Y]
      250 SETTABLEKS                       R19 R18 K46 ["AutomaticSize"]
      252 GETIMPORT                        R19 K50 [UDim2.fromScale]
      254 LOADN                            R20 1
      255 LOADN                            R21 0
      256 CALL                             R19 2 1
      257 SETTABLEKS                       R19 R18 K18 ["Size"]
      259 LOADN                            R19 1
      260 SETTABLEKS                       R19 R18 K20 ["BackgroundTransparency"]
      262 GETTABLEKS                       R19 R0 K51 ["LayoutOrder"]
      264 SETTABLEKS                       R19 R18 K51 ["LayoutOrder"]
      266 GETUPVAL                         R20 0
      267 GETTABLEKS                       R19 R20 K21 ["Tag"]
      269 LOADK                            R20 K52 ["Component-MeasuringBar"]
      270 SETTABLE                         R20 R18 R19
      271 DUPTABLE                         R19 K55 [{"MainLabel", "BarContainer"}]
      272 GETUPVAL                         R21 0
      273 GETTABLEKS                       R20 R21 K12 ["createElement"]
      275 LOADK                            R21 K56 ["TextLabel"]
      276 NEWTABLE                         R22 8 0
      278 GETTABLEKS                       R23 R0 K57 ["MainText"]
      280 SETTABLEKS                       R23 R22 K58 ["Text"]
      282 LOADN                            R23 1
      283 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
      285 GETUPVAL                         R24 0
      286 GETTABLEKS                       R23 R24 K21 ["Tag"]
      288 GETTABLEKS                       R25 R0 K59 ["IsChildRenderBar"]
      290 JUMPIFNOT                        R25 ; [+2]
      291 LOADK                            R24 K60 ["ChildRenderBar"]
      292 JUMP                             ; [+1]
      293 LOADK                            R24 K61 ["MainRenderBar"]
      294 SETTABLE                         R24 R22 R23
      295 GETIMPORT                        R23 K64 [Enum.Font.BuilderSans]
      297 SETTABLEKS                       R23 R22 K62 ["Font"]
      299 GETIMPORT                        R23 K67 [Enum.TextXAlignment.Left]
      301 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      303 GETIMPORT                        R23 K70 [Enum.TextYAlignment.Bottom]
      305 SETTABLEKS                       R23 R22 K68 ["TextYAlignment"]
      307 GETIMPORT                        R23 K16 [UDim2.new]
      309 LOADN                            R24 1
      310 LOADN                            R25 0
      311 LOADN                            R26 0
      312 LOADN                            R27 17
      313 CALL                             R23 4 1
      314 SETTABLEKS                       R23 R22 K18 ["Size"]
      316 LOADN                            R23 1
      317 SETTABLEKS                       R23 R22 K51 ["LayoutOrder"]
      319 CALL                             R20 2 1
      320 SETTABLEKS                       R20 R19 K53 ["MainLabel"]
      322 GETUPVAL                         R21 0
      323 GETTABLEKS                       R20 R21 K12 ["createElement"]
      325 LOADK                            R21 K13 ["Frame"]
      326 NEWTABLE                         R22 8 0
      328 GETIMPORT                        R23 K48 [Enum.AutomaticSize.Y]
      330 SETTABLEKS                       R23 R22 K46 ["AutomaticSize"]
      332 GETIMPORT                        R23 K50 [UDim2.fromScale]
      334 LOADN                            R24 1
      335 LOADN                            R25 0
      336 CALL                             R23 2 1
      337 SETTABLEKS                       R23 R22 K18 ["Size"]
      339 GETIMPORT                        R23 K72 [UDim2.fromOffset]
      341 LOADN                            R24 0
      342 LOADN                            R25 24
      343 CALL                             R23 2 1
      344 SETTABLEKS                       R23 R22 K17 ["Position"]
      346 LOADN                            R23 1
      347 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
      349 LOADN                            R23 2
      350 SETTABLEKS                       R23 R22 K51 ["LayoutOrder"]
      352 GETUPVAL                         R24 0
      353 GETTABLEKS                       R23 R24 K21 ["Tag"]
      355 LOADK                            R24 K52 ["Component-MeasuringBar"]
      356 SETTABLE                         R24 R22 R23
      357 NEWTABLE                         R23 4 1
      359 GETUPVAL                         R26 0
      360 GETTABLEKS                       R25 R26 K12 ["createElement"]
      362 LOADK                            R26 K73 ["UIListLayout"]
      363 DUPTABLE                         R27 K78 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      364 GETIMPORT                        R28 K80 [Enum.FillDirection.Horizontal]
      366 SETTABLEKS                       R28 R27 K74 ["FillDirection"]
      368 GETIMPORT                        R28 K81 [Enum.HorizontalAlignment.Left]
      370 SETTABLEKS                       R28 R27 K75 ["HorizontalAlignment"]
      372 GETIMPORT                        R28 K83 [Enum.VerticalAlignment.Center]
      374 SETTABLEKS                       R28 R27 K76 ["VerticalAlignment"]
      376 GETIMPORT                        R28 K84 [Enum.SortOrder.LayoutOrder]
      378 SETTABLEKS                       R28 R27 K77 ["SortOrder"]
      380 CALL                             R25 2 1
      381 SETTABLEKS                       R25 R23 K85 ["Layout"]
      383 GETUPVAL                         R26 0
      384 GETTABLEKS                       R25 R26 K12 ["createElement"]
      386 LOADK                            R26 K13 ["Frame"]
      387 NEWTABLE                         R27 8 0
      389 GETIMPORT                        R28 K16 [UDim2.new]
      391 LOADN                            R29 1
      392 LOADN                            R30 176
      393 LOADN                            R31 0
      394 LOADN                            R32 10
      395 CALL                             R28 4 1
      396 SETTABLEKS                       R28 R27 K18 ["Size"]
      398 LOADN                            R28 1
      399 SETTABLEKS                       R28 R27 K51 ["LayoutOrder"]
      401 LOADN                            R28 0
      402 SETTABLEKS                       R28 R27 K19 ["BorderSizePixel"]
      404 GETUPVAL                         R29 0
      405 GETTABLEKS                       R28 R29 K21 ["Tag"]
      407 LOADK                            R29 K86 ["Component-MeasuringBarBackground"]
      408 SETTABLE                         R29 R27 R28
      409 GETUPVAL                         R30 0
      410 GETTABLEKS                       R29 R30 K87 ["Event"]
      412 GETTABLEKS                       R28 R29 K88 ["MouseEnter"]
      414 SETTABLE                         R12 R27 R28
      415 GETUPVAL                         R30 0
      416 GETTABLEKS                       R29 R30 K87 ["Event"]
      418 GETTABLEKS                       R28 R29 K89 ["MouseLeave"]
      420 SETTABLE                         R13 R27 R28
      421 GETUPVAL                         R30 0
      422 GETTABLEKS                       R29 R30 K87 ["Event"]
      424 GETTABLEKS                       R28 R29 K90 ["MouseMoved"]
      426 NEWCLOSURE                       R29 P1
      427 CAPTURE                          VAL R14
      428 SETTABLE                         R29 R27 R28
      429 DUPTABLE                         R28 K93 [{"FillObject", "MaxPip", "Pips", "UICorner"}]
      430 SETTABLEKS                       R1 R28 K91 ["FillObject"]
      432 MOVE                             R29 R15
      433 JUMPIFNOT                        R29 ; [+30]
      434 GETUPVAL                         R30 0
      435 GETTABLEKS                       R29 R30 K12 ["createElement"]
      437 LOADK                            R30 K13 ["Frame"]
      438 DUPTABLE                         R31 K95 [{"Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
      439 GETIMPORT                        R32 K16 [UDim2.new]
      441 MOVE                             R33 R2
      442 LOADN                            R34 0
      443 LOADN                            R35 0
      444 LOADN                            R36 0
      445 CALL                             R32 4 1
      446 SETTABLEKS                       R32 R31 K17 ["Position"]
      448 GETIMPORT                        R32 K16 [UDim2.new]
      450 LOADN                            R33 0
      451 LOADN                            R34 2
      452 LOADN                            R35 1
      453 LOADN                            R36 0
      454 CALL                             R32 4 1
      455 SETTABLEKS                       R32 R31 K18 ["Size"]
      457 GETUPVAL                         R32 4
      458 SETTABLEKS                       R32 R31 K94 ["BackgroundColor3"]
      460 LOADN                            R32 0
      461 SETTABLEKS                       R32 R31 K19 ["BorderSizePixel"]
      463 CALL                             R29 2 1
      464 SETTABLEKS                       R29 R28 K92 ["MaxPip"]
      466 GETUPVAL                         R30 0
      467 GETTABLEKS                       R29 R30 K12 ["createElement"]
      469 LOADK                            R30 K13 ["Frame"]
      470 DUPTABLE                         R31 K96 [{"Size", "BackgroundTransparency"}]
      471 GETIMPORT                        R32 K16 [UDim2.new]
      473 LOADN                            R33 1
      474 LOADN                            R34 0
      475 LOADN                            R35 1
      476 LOADN                            R36 0
      477 CALL                             R32 4 1
      478 SETTABLEKS                       R32 R31 K18 ["Size"]
      480 LOADN                            R32 1
      481 SETTABLEKS                       R32 R31 K20 ["BackgroundTransparency"]
      483 MOVE                             R32 R9
      484 CALL                             R29 3 1
      485 SETTABLEKS                       R29 R28 K35 ["Pips"]
      487 GETUPVAL                         R30 0
      488 GETTABLEKS                       R29 R30 K12 ["createElement"]
      490 LOADK                            R30 K23 ["UICorner"]
      491 DUPTABLE                         R31 K26 [{"CornerRadius"}]
      492 GETIMPORT                        R32 K28 [UDim.new]
      494 LOADK                            R33 K7 [0.5]
      495 LOADN                            R34 0
      496 CALL                             R32 2 1
      497 SETTABLEKS                       R32 R31 K25 ["CornerRadius"]
      499 CALL                             R29 2 1
      500 SETTABLEKS                       R29 R28 K23 ["UICorner"]
      502 CALL                             R25 3 1
      503 SETTABLEKS                       R25 R23 K97 ["LabelBackground"]
      505 GETUPVAL                         R25 0
      506 GETTABLEKS                       R24 R25 K12 ["createElement"]
      508 LOADK                            R25 K13 ["Frame"]
      509 DUPTABLE                         R26 K98 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      510 LOADN                            R27 1
      511 SETTABLEKS                       R27 R26 K20 ["BackgroundTransparency"]
      513 GETIMPORT                        R27 K16 [UDim2.new]
      515 LOADN                            R28 0
      516 LOADN                            R29 6
      517 LOADN                            R30 0
      518 LOADN                            R31 0
      519 CALL                             R27 4 1
      520 SETTABLEKS                       R27 R26 K18 ["Size"]
      522 LOADN                            R27 2
      523 SETTABLEKS                       R27 R26 K51 ["LayoutOrder"]
      525 CALL                             R24 2 1
      526 SETLIST                          R23 R24 1 [1]
      528 GETUPVAL                         R26 0
      529 GETTABLEKS                       R25 R26 K12 ["createElement"]
      531 LOADK                            R26 K56 ["TextLabel"]
      532 DUPTABLE                         R27 K100 [{"Text", "TextSize", "LayoutOrder"}]
      533 GETTABLEKS                       R28 R0 K58 ["Text"]
      535 SETTABLEKS                       R28 R27 K58 ["Text"]
      537 LOADN                            R28 14
      538 SETTABLEKS                       R28 R27 K99 ["TextSize"]
      540 LOADN                            R28 3
      541 SETTABLEKS                       R28 R27 K51 ["LayoutOrder"]
      543 CALL                             R25 2 1
      544 SETTABLEKS                       R25 R23 K101 ["Label"]
      546 CALL                             R20 3 1
      547 SETTABLEKS                       R20 R19 K54 ["BarContainer"]
      549 CALL                             R16 3 -1
      550 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Components"]
       20 GETTABLEKS                       R4 R5 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K11 ["TooltipContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K14 [Color3.new]
       27 LOADN                            R4 1
       28 LOADN                            R5 1
       29 LOADN                            R6 1
       30 CALL                             R3 3 1
       31 DUPCLOSURE                       R4 K15 [PROTO_0]
       32 DUPCLOSURE                       R5 K16 [PROTO_1]
       33 DUPCLOSURE                       R6 K17 [PROTO_2]
       34 CAPTURE                          VAL R1
       35 DUPCLOSURE                       R7 K18 [PROTO_5]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 RETURN                           R7 1
