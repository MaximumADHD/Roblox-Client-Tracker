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
        0 GETTABLEN                        R3 R0 1
        1 GETTABLEKS                       R3 R3 K0 ["BodyText"]
        3 GETTABLEN                        R4 R0 1
        4 GETTABLEKS                       R4 R4 K1 ["TitleText"]
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
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
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
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K1 ["createElement"]
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
       58 GETUPVAL                         R1 0
       59 GETTABLEKS                       R1 R1 K1 ["createElement"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["useState"]
        4 LOADN                            R3 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
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
       40 JUMP                             ; [+8]
       41 LOADK                            R8 K10 ["Component-MeasurementBarFillHigh"]
       42 JUMP                             ; [+6]
       43 LOADK                            R8 K11 ["Component-MeasurementBarFillMedium"]
       44 JUMP                             ; [+4]
       45 JUMPIFNOT                        R9 ; [+2]
       46 LOADK                            R8 K10 ["Component-MeasurementBarFillHigh"]
       47 JUMP                             ; [+1]
       48 LOADK                            R8 K9 ["Component-MeasurementBarFillLow"]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K12 ["createElement"]
       52 LOADK                            R10 K13 ["Frame"]
       53 NEWTABLE                         R11 8 0
       55 GETIMPORT                        R12 K16 [UDim2.new]
       57 LOADN                            R13 0
       58 LOADN                            R14 0
       59 LOADN                            R15 0
       60 LOADN                            R16 0
       61 CALL                             R12 4 1
       62 SETTABLEKS                       R12 R11 K17 ["Position"]
       64 GETIMPORT                        R12 K16 [UDim2.new]
       66 LOADN                            R13 1
       67 LOADN                            R14 0
       68 LOADN                            R15 1
       69 LOADN                            R16 0
       70 CALL                             R12 4 1
       71 SETTABLEKS                       R12 R11 K18 ["Size"]
       73 LOADN                            R12 0
       74 SETTABLEKS                       R12 R11 K19 ["BorderSizePixel"]
       76 LOADN                            R12 0
       77 SETTABLEKS                       R12 R11 K20 ["BackgroundTransparency"]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K21 ["Tag"]
       82 SETTABLE                         R8 R11 R12
       83 DUPTABLE                         R12 K24 [{"gradient", "UICorner"}]
       84 GETUPVAL                         R13 1
       85 MOVE                             R14 R7
       86 CALL                             R13 1 1
       87 SETTABLEKS                       R13 R12 K22 ["gradient"]
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K12 ["createElement"]
       92 LOADK                            R14 K23 ["UICorner"]
       93 DUPTABLE                         R15 K26 [{"CornerRadius"}]
       94 GETIMPORT                        R16 K28 [UDim.new]
       96 LOADK                            R17 K7 [0.5]
       97 LOADN                            R18 0
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K25 ["CornerRadius"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K23 ["UICorner"]
      104 CALL                             R9 3 1
      105 MOVE                             R1 R9
      106 MOVE                             R9 R6
      107 MOVE                             R10 R7
      108 CALL                             R9 1 0
      109 NEWTABLE                         R9 0 0
      111 GETTABLEKS                       R10 R0 K29 ["PipCount"]
      113 JUMPIFEQKNIL                     R10 ; [+36]
      115 LOADN                            R12 1
      116 GETTABLEKS                       R10 R0 K29 ["PipCount"]
      118 LOADN                            R11 1
      119 FORNPREP                         R10
      120 MOVE                             R14 R9
      121 GETUPVAL                         R15 0
      122 GETTABLEKS                       R15 R15 K12 ["createElement"]
      124 LOADK                            R16 K13 ["Frame"]
      125 NEWTABLE                         R17 2 0
      127 GETIMPORT                        R18 K16 [UDim2.new]
      129 MULK                             R20 R12 K30 [1]
      130 GETTABLEKS                       R21 R0 K29 ["PipCount"]
      132 DIV                              R19 R20 R21
      133 LOADN                            R20 0
      134 LOADN                            R21 0
      135 LOADN                            R22 0
      136 CALL                             R18 4 1
      137 SETTABLEKS                       R18 R17 K17 ["Position"]
      139 GETUPVAL                         R18 0
      140 GETTABLEKS                       R18 R18 K21 ["Tag"]
      142 LOADK                            R19 K31 ["Component-MeasuringBarPip"]
      143 SETTABLE                         R19 R17 R18
      144 CALL                             R15 2 -1
      145 FASTCALL                         TABLE_INSERT ; [+2]
      146 GETIMPORT                        R13 K34 [table.insert]
      148 CALL                             R13 -1 0
      149 FORNLOOP                         R10
      150 GETTABLEKS                       R10 R0 K35 ["Pips"]
      152 JUMPIFEQKNIL                     R10 ; [+34]
      154 GETTABLEKS                       R10 R0 K35 ["Pips"]
      156 LOADNIL                          R11
      157 LOADNIL                          R12
      158 FORGPREP                         R10
      159 MOVE                             R16 R9
      160 GETUPVAL                         R17 0
      161 GETTABLEKS                       R17 R17 K12 ["createElement"]
      163 LOADK                            R18 K13 ["Frame"]
      164 NEWTABLE                         R19 2 0
      166 GETIMPORT                        R20 K16 [UDim2.new]
      168 MOVE                             R21 R14
      169 LOADN                            R22 0
      170 LOADN                            R23 0
      171 LOADN                            R24 0
      172 CALL                             R20 4 1
      173 SETTABLEKS                       R20 R19 K17 ["Position"]
      175 GETUPVAL                         R20 0
      176 GETTABLEKS                       R20 R20 K21 ["Tag"]
      178 LOADK                            R21 K31 ["Component-MeasuringBarPip"]
      179 SETTABLE                         R21 R19 R20
      180 CALL                             R17 2 -1
      181 FASTCALL                         TABLE_INSERT ; [+2]
      182 GETIMPORT                        R15 K34 [table.insert]
      184 CALL                             R15 -1 0
      185 FORGLOOP                         R10 2 ; [-27]
      187 GETTABLEKS                       R11 R0 K36 ["ThresholdTooltips"]
      189 JUMPIFNOT                        R11 ; [+9]
      190 GETUPVAL                         R10 2
      191 GETTABLEKS                       R11 R0 K36 ["ThresholdTooltips"]
      193 MOVE                             R12 R2
      194 GETTABLEKS                       R14 R0 K38 ["ThresholdExtraInfo"]
      196 ORK                              R13 R14 K37 [""]
      197 CALL                             R10 3 1
      198 JUMPIF                           R10 ; [+6]
      199 NEWTABLE                         R10 0 2
      201 LOADK                            R11 K37 [""]
      202 LOADK                            R12 K37 [""]
      203 SETLIST                          R10 R11 2 [1]
      205 GETUPVAL                         R11 0
      206 GETTABLEKS                       R11 R11 K39 ["useContext"]
      208 GETUPVAL                         R12 3
      209 GETTABLEKS                       R12 R12 K40 ["Context"]
      211 CALL                             R11 1 1
      212 GETTABLEKS                       R12 R11 K41 ["useTooltip"]
      214 GETTABLEN                        R13 R10 1
      215 GETTABLEN                        R14 R10 2
      216 CALL                             R12 2 3
      217 LOADB                            R15 0
      218 GETTABLEKS                       R16 R0 K2 ["FillAmount"]
      220 JUMPIFEQKNIL                     R16 ; [+20]
      222 LOADK                            R16 K42 [0.01]
      223 JUMPIFNOTLT                      R16 R2 ; [+17]
      225 GETTABLEKS                       R18 R0 K2 ["FillAmount"]
      227 SUB                              R17 R2 R18
      228 FASTCALL1                        MATH_ABS R17 ; [+2]
      229 GETIMPORT                        R16 K44 [math.abs]
      231 CALL                             R16 1 1
      232 LOADK                            R17 K42 [0.01]
      233 JUMPIFNOTLT                      R17 R16 ; [+7]
      235 GETTABLEKS                       R16 R0 K2 ["FillAmount"]
      237 LOADN                            R17 1
      238 JUMPIFNOTLT                      R16 R17 ; [+2]
      240 LOADB                            R15 1
      241 GETUPVAL                         R16 0
      242 GETTABLEKS                       R16 R16 K12 ["createElement"]
      244 LOADK                            R17 K13 ["Frame"]
      245 NEWTABLE                         R18 8 0
      247 GETIMPORT                        R19 K48 [Enum.AutomaticSize.Y]
      249 SETTABLEKS                       R19 R18 K46 ["AutomaticSize"]
      251 GETIMPORT                        R19 K50 [UDim2.fromScale]
      253 LOADN                            R20 1
      254 LOADN                            R21 0
      255 CALL                             R19 2 1
      256 SETTABLEKS                       R19 R18 K18 ["Size"]
      258 LOADN                            R19 1
      259 SETTABLEKS                       R19 R18 K20 ["BackgroundTransparency"]
      261 GETTABLEKS                       R19 R0 K51 ["LayoutOrder"]
      263 SETTABLEKS                       R19 R18 K51 ["LayoutOrder"]
      265 GETUPVAL                         R19 0
      266 GETTABLEKS                       R19 R19 K21 ["Tag"]
      268 LOADK                            R20 K52 ["Component-MeasuringBar"]
      269 SETTABLE                         R20 R18 R19
      270 DUPTABLE                         R19 K55 [{"MainLabel", "BarContainer"}]
      271 GETUPVAL                         R20 0
      272 GETTABLEKS                       R20 R20 K12 ["createElement"]
      274 LOADK                            R21 K56 ["TextLabel"]
      275 NEWTABLE                         R22 8 0
      277 GETTABLEKS                       R23 R0 K57 ["MainText"]
      279 SETTABLEKS                       R23 R22 K58 ["Text"]
      281 LOADN                            R23 1
      282 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
      284 GETUPVAL                         R23 0
      285 GETTABLEKS                       R23 R23 K21 ["Tag"]
      287 GETTABLEKS                       R25 R0 K59 ["IsChildRenderBar"]
      289 JUMPIFNOT                        R25 ; [+2]
      290 LOADK                            R24 K60 ["ChildRenderBar"]
      291 JUMP                             ; [+1]
      292 LOADK                            R24 K61 ["MainRenderBar"]
      293 SETTABLE                         R24 R22 R23
      294 GETIMPORT                        R23 K64 [Enum.Font.BuilderSans]
      296 SETTABLEKS                       R23 R22 K62 ["Font"]
      298 GETIMPORT                        R23 K67 [Enum.TextXAlignment.Left]
      300 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      302 GETIMPORT                        R23 K70 [Enum.TextYAlignment.Bottom]
      304 SETTABLEKS                       R23 R22 K68 ["TextYAlignment"]
      306 GETIMPORT                        R23 K16 [UDim2.new]
      308 LOADN                            R24 1
      309 LOADN                            R25 0
      310 LOADN                            R26 0
      311 LOADN                            R27 17
      312 CALL                             R23 4 1
      313 SETTABLEKS                       R23 R22 K18 ["Size"]
      315 LOADN                            R23 1
      316 SETTABLEKS                       R23 R22 K51 ["LayoutOrder"]
      318 CALL                             R20 2 1
      319 SETTABLEKS                       R20 R19 K53 ["MainLabel"]
      321 GETUPVAL                         R20 0
      322 GETTABLEKS                       R20 R20 K12 ["createElement"]
      324 LOADK                            R21 K13 ["Frame"]
      325 NEWTABLE                         R22 8 0
      327 GETIMPORT                        R23 K48 [Enum.AutomaticSize.Y]
      329 SETTABLEKS                       R23 R22 K46 ["AutomaticSize"]
      331 GETIMPORT                        R23 K50 [UDim2.fromScale]
      333 LOADN                            R24 1
      334 LOADN                            R25 0
      335 CALL                             R23 2 1
      336 SETTABLEKS                       R23 R22 K18 ["Size"]
      338 GETIMPORT                        R23 K72 [UDim2.fromOffset]
      340 LOADN                            R24 0
      341 LOADN                            R25 24
      342 CALL                             R23 2 1
      343 SETTABLEKS                       R23 R22 K17 ["Position"]
      345 LOADN                            R23 1
      346 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
      348 LOADN                            R23 2
      349 SETTABLEKS                       R23 R22 K51 ["LayoutOrder"]
      351 GETUPVAL                         R23 0
      352 GETTABLEKS                       R23 R23 K21 ["Tag"]
      354 LOADK                            R24 K52 ["Component-MeasuringBar"]
      355 SETTABLE                         R24 R22 R23
      356 NEWTABLE                         R23 4 1
      358 GETUPVAL                         R25 0
      359 GETTABLEKS                       R25 R25 K12 ["createElement"]
      361 LOADK                            R26 K73 ["UIListLayout"]
      362 DUPTABLE                         R27 K78 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      363 GETIMPORT                        R28 K80 [Enum.FillDirection.Horizontal]
      365 SETTABLEKS                       R28 R27 K74 ["FillDirection"]
      367 GETIMPORT                        R28 K81 [Enum.HorizontalAlignment.Left]
      369 SETTABLEKS                       R28 R27 K75 ["HorizontalAlignment"]
      371 GETIMPORT                        R28 K83 [Enum.VerticalAlignment.Center]
      373 SETTABLEKS                       R28 R27 K76 ["VerticalAlignment"]
      375 GETIMPORT                        R28 K84 [Enum.SortOrder.LayoutOrder]
      377 SETTABLEKS                       R28 R27 K77 ["SortOrder"]
      379 CALL                             R25 2 1
      380 SETTABLEKS                       R25 R23 K85 ["Layout"]
      382 GETUPVAL                         R25 0
      383 GETTABLEKS                       R25 R25 K12 ["createElement"]
      385 LOADK                            R26 K13 ["Frame"]
      386 NEWTABLE                         R27 8 0
      388 GETIMPORT                        R28 K16 [UDim2.new]
      390 LOADN                            R29 1
      391 LOADN                            R30 -80
      392 LOADN                            R31 0
      393 LOADN                            R32 10
      394 CALL                             R28 4 1
      395 SETTABLEKS                       R28 R27 K18 ["Size"]
      397 LOADN                            R28 1
      398 SETTABLEKS                       R28 R27 K51 ["LayoutOrder"]
      400 LOADN                            R28 0
      401 SETTABLEKS                       R28 R27 K19 ["BorderSizePixel"]
      403 GETUPVAL                         R28 0
      404 GETTABLEKS                       R28 R28 K21 ["Tag"]
      406 LOADK                            R29 K86 ["Component-MeasuringBarBackground"]
      407 SETTABLE                         R29 R27 R28
      408 GETUPVAL                         R28 0
      409 GETTABLEKS                       R28 R28 K87 ["Event"]
      411 GETTABLEKS                       R28 R28 K88 ["MouseEnter"]
      413 SETTABLE                         R12 R27 R28
      414 GETUPVAL                         R28 0
      415 GETTABLEKS                       R28 R28 K87 ["Event"]
      417 GETTABLEKS                       R28 R28 K89 ["MouseLeave"]
      419 SETTABLE                         R13 R27 R28
      420 GETUPVAL                         R28 0
      421 GETTABLEKS                       R28 R28 K87 ["Event"]
      423 GETTABLEKS                       R28 R28 K90 ["MouseMoved"]
      425 NEWCLOSURE                       R29 P1
      426 CAPTURE                          VAL R14
      427 SETTABLE                         R29 R27 R28
      428 DUPTABLE                         R28 K93 [{"FillObject", "MaxPip", "Pips", "UICorner"}]
      429 SETTABLEKS                       R1 R28 K91 ["FillObject"]
      431 MOVE                             R29 R15
      432 JUMPIFNOT                        R29 ; [+27]
      433 GETUPVAL                         R29 0
      434 GETTABLEKS                       R29 R29 K12 ["createElement"]
      436 LOADK                            R30 K13 ["Frame"]
      437 DUPTABLE                         R31 K95 [{["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      438 GETIMPORT                        R32 K16 [UDim2.new]
      440 MOVE                             R33 R2
      441 LOADN                            R34 0
      442 LOADN                            R35 0
      443 LOADN                            R36 0
      444 CALL                             R32 4 1
      445 SETTABLEKS                       R32 R31 K17 ["Position"]
      447 GETIMPORT                        R32 K16 [UDim2.new]
      449 LOADN                            R33 0
      450 LOADN                            R34 2
      451 LOADN                            R35 1
      452 LOADN                            R36 0
      453 CALL                             R32 4 1
      454 SETTABLEKS                       R32 R31 K18 ["Size"]
      456 GETUPVAL                         R32 4
      457 SETTABLEKS                       R32 R31 K94 ["BackgroundColor3"]
      459 CALL                             R29 2 1
      460 SETTABLEKS                       R29 R28 K92 ["MaxPip"]
      462 GETUPVAL                         R29 0
      463 GETTABLEKS                       R29 R29 K12 ["createElement"]
      465 LOADK                            R30 K13 ["Frame"]
      466 DUPTABLE                         R31 K96 [{["Size"], ["BackgroundTransparency"] = 1}]
      467 GETIMPORT                        R32 K16 [UDim2.new]
      469 LOADN                            R33 1
      470 LOADN                            R34 0
      471 LOADN                            R35 1
      472 LOADN                            R36 0
      473 CALL                             R32 4 1
      474 SETTABLEKS                       R32 R31 K18 ["Size"]
      476 MOVE                             R32 R9
      477 CALL                             R29 3 1
      478 SETTABLEKS                       R29 R28 K35 ["Pips"]
      480 GETUPVAL                         R29 0
      481 GETTABLEKS                       R29 R29 K12 ["createElement"]
      483 LOADK                            R30 K23 ["UICorner"]
      484 DUPTABLE                         R31 K26 [{"CornerRadius"}]
      485 GETIMPORT                        R32 K28 [UDim.new]
      487 LOADK                            R33 K7 [0.5]
      488 LOADN                            R34 0
      489 CALL                             R32 2 1
      490 SETTABLEKS                       R32 R31 K25 ["CornerRadius"]
      492 CALL                             R29 2 1
      493 SETTABLEKS                       R29 R28 K23 ["UICorner"]
      495 CALL                             R25 3 1
      496 SETTABLEKS                       R25 R23 K97 ["LabelBackground"]
      498 GETUPVAL                         R24 0
      499 GETTABLEKS                       R24 R24 K12 ["createElement"]
      501 LOADK                            R25 K13 ["Frame"]
      502 DUPTABLE                         R26 K99 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 2}]
      503 GETIMPORT                        R27 K16 [UDim2.new]
      505 LOADN                            R28 0
      506 LOADN                            R29 6
      507 LOADN                            R30 0
      508 LOADN                            R31 0
      509 CALL                             R27 4 1
      510 SETTABLEKS                       R27 R26 K18 ["Size"]
      512 CALL                             R24 2 1
      513 SETLIST                          R23 R24 1 [1]
      515 GETUPVAL                         R25 0
      516 GETTABLEKS                       R25 R25 K12 ["createElement"]
      518 LOADK                            R26 K56 ["TextLabel"]
      519 DUPTABLE                         R27 K103 [{["Text"], ["TextSize"] = 14, ["LayoutOrder"] = 3}]
      520 GETTABLEKS                       R28 R0 K58 ["Text"]
      522 SETTABLEKS                       R28 R27 K58 ["Text"]
      524 CALL                             R25 2 1
      525 SETTABLEKS                       R25 R23 K104 ["Label"]
      527 CALL                             R20 3 1
      528 SETTABLEKS                       R20 R19 K54 ["BarContainer"]
      530 CALL                             R16 3 -1
      531 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["TooltipContext"]
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
