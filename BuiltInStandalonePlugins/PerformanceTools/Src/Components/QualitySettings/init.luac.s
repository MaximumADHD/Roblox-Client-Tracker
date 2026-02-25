PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Value"]
        6 GETTABLEKS                       R7 R0 K0 ["Value"]
        8 JUMPIFNOTLE                      R7 R6 ; [+2]
       10 RETURN                           R4 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADN                            R1 1
       14 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R2 0
        1 GETIMPORT                        R4 K1 [settings]
        3 CALL                             R4 0 1
        4 GETTABLEKS                       R3 R4 K2 ["Rendering"]
        6 GETTABLEKS                       R4 R1 K3 ["IsEditMode"]
        8 JUMPIFNOT                        R4 ; [+38]
        9 GETTABLEKS                       R4 R3 K4 ["EditQualityLevel"]
       11 GETIMPORT                        R5 K8 [Enum.QualityLevel.Automatic]
       13 JUMPIFNOTEQ                      R4 R5 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R3 K4 ["EditQualityLevel"]
       18 GETUPVAL                         R5 0
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETTABLEKS                       R10 R9 K9 ["Value"]
       24 GETTABLEKS                       R11 R4 K9 ["Value"]
       26 JUMPIFNOTLE                      R11 R10 ; [+3]
       28 MOVE                             R2 R8
       29 JUMP                             ; [+3]
       30 FORGLOOP                         R5 2 ; [-9]
       32 LOADN                            R2 1
       33 ADD                              R5 R2 R0
       34 LOADN                            R6 1
       35 GETUPVAL                         R8 0
       36 LENGTH                           R7 R8
       37 FASTCALL                         MATH_CLAMP ; [+2]
       38 GETIMPORT                        R4 K12 [math.clamp]
       40 CALL                             R4 3 1
       41 MOVE                             R2 R4
       42 GETUPVAL                         R5 0
       43 GETTABLE                         R4 R5 R2
       44 SETTABLEKS                       R4 R3 K4 ["EditQualityLevel"]
       46 RETURN                           R0 0
       47 GETTABLEKS                       R4 R3 K6 ["QualityLevel"]
       49 GETIMPORT                        R5 K8 [Enum.QualityLevel.Automatic]
       51 JUMPIFNOTEQ                      R4 R5 ; [+2]
       53 RETURN                           R0 0
       54 GETTABLEKS                       R4 R3 K6 ["QualityLevel"]
       56 GETUPVAL                         R5 0
       57 LOADNIL                          R6
       58 LOADNIL                          R7
       59 FORGPREP                         R5
       60 GETTABLEKS                       R10 R9 K9 ["Value"]
       62 GETTABLEKS                       R11 R4 K9 ["Value"]
       64 JUMPIFNOTLE                      R11 R10 ; [+3]
       66 MOVE                             R2 R8
       67 JUMP                             ; [+3]
       68 FORGLOOP                         R5 2 ; [-9]
       70 LOADN                            R2 1
       71 ADD                              R5 R2 R0
       72 LOADN                            R6 1
       73 GETUPVAL                         R8 0
       74 LENGTH                           R7 R8
       75 FASTCALL                         MATH_CLAMP ; [+2]
       76 GETIMPORT                        R4 K12 [math.clamp]
       78 CALL                             R4 3 1
       79 MOVE                             R2 R4
       80 GETUPVAL                         R5 0
       81 GETTABLE                         R4 R5 R2
       82 SETTABLEKS                       R4 R3 K6 ["QualityLevel"]
       84 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["createElement"]
        3 LOADK                            R6 K1 ["Frame"]
        4 NEWTABLE                         R7 4 0
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K2 ["Tag"]
        9 SETTABLE                         R2 R7 R8
       10 GETIMPORT                        R8 K5 [UDim2.new]
       12 LOADN                            R9 0
       13 LOADN                            R10 16
       14 LOADN                            R11 0
       15 LOADN                            R12 16
       16 CALL                             R8 4 1
       17 SETTABLEKS                       R8 R7 K6 ["Size"]
       19 GETIMPORT                        R8 K5 [UDim2.new]
       21 LOADN                            R9 0
       22 LOADN                            R11 18
       23 MUL                              R10 R11 R1
       24 LOADN                            R11 0
       25 LOADN                            R12 0
       26 CALL                             R8 4 1
       27 SETTABLEKS                       R8 R7 K7 ["Position"]
       29 DUPTABLE                         R8 K9 [{"UICorner"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K0 ["createElement"]
       33 LOADK                            R10 K8 ["UICorner"]
       34 DUPTABLE                         R11 K11 [{"CornerRadius"}]
       35 GETIMPORT                        R12 K13 [UDim.new]
       37 LOADN                            R13 0
       38 LOADN                            R14 4
       39 CALL                             R12 2 1
       40 SETTABLEKS                       R12 R11 K10 ["CornerRadius"]
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K8 ["UICorner"]
       45 CALL                             R5 3 1
       46 FASTCALL2                        TABLE_INSERT R0 R5 ; [+4]
       48 MOVE                             R4 R0
       49 GETIMPORT                        R3 K16 [table.insert]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 0
        3 GETUPVAL                         R8 0
        4 LENGTH                           R7 R8
        5 SUBK                             R4 R7 K0 [1]
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 JUMPIFNOT                        R0 ; [+14]
        9 JUMPIFNOTLT                      R6 R1 ; [+7]
       11 GETUPVAL                         R7 1
       12 MOVE                             R8 R3
       13 MOVE                             R9 R6
       14 LOADK                            R10 K1 ["QualityBarFullSquare"]
       15 CALL                             R7 3 0
       16 JUMP                             ; [+20]
       17 GETUPVAL                         R7 1
       18 MOVE                             R8 R3
       19 MOVE                             R9 R6
       20 LOADK                            R10 K2 ["QualityBarEmptySquare"]
       21 CALL                             R7 3 0
       22 JUMP                             ; [+14]
       23 JUMPIFNOTLT                      R6 R1 ; [+8]
       25 JUMPIFNOT                        R2 ; [+6]
       26 GETUPVAL                         R7 1
       27 MOVE                             R8 R3
       28 MOVE                             R9 R6
       29 LOADK                            R10 K2 ["QualityBarEmptySquare"]
       30 CALL                             R7 3 0
       31 JUMP                             ; [+5]
       32 GETUPVAL                         R7 1
       33 MOVE                             R8 R3
       34 MOVE                             R9 R6
       35 LOADK                            R10 K3 ["QualityBarDisabledSquare"]
       36 CALL                             R7 3 0
       37 FORNLOOP                         R4
       38 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K2 ["Rendering"]
        5 GETTABLEKS                       R2 R0 K3 ["IsEditMode"]
        7 JUMPIFNOT                        R2 ; [+18]
        8 GETTABLEKS                       R2 R1 K4 ["EditQualityLevel"]
       10 GETIMPORT                        R3 K8 [Enum.QualityLevel.Automatic]
       12 JUMPIFNOTEQ                      R2 R3 ; [+5]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K4 ["EditQualityLevel"]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R1 K4 ["EditQualityLevel"]
       20 SETUPVAL                         R2 0
       21 GETIMPORT                        R2 K8 [Enum.QualityLevel.Automatic]
       23 SETTABLEKS                       R2 R1 K4 ["EditQualityLevel"]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R2 R1 K6 ["QualityLevel"]
       28 GETIMPORT                        R3 K8 [Enum.QualityLevel.Automatic]
       30 JUMPIFNOTEQ                      R2 R3 ; [+5]
       32 GETUPVAL                         R2 1
       33 SETTABLEKS                       R2 R1 K6 ["QualityLevel"]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R2 R1 K6 ["QualityLevel"]
       38 SETUPVAL                         R2 1
       39 GETIMPORT                        R2 K8 [Enum.QualityLevel.Automatic]
       41 SETTABLEKS                       R2 R1 K6 ["QualityLevel"]
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R4 K2 [Vector2.new]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 255
        2 GETUPVAL                         R2 1
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 GETUPVAL                         R2 1
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R3 K3 [settings]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R2 R3 K4 ["Rendering"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 LOADB                            R5 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K5 ["useContext"]
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K6 ["Context"]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R7 R6 K7 ["useTooltip"]
       23 LOADK                            R10 K8 ["SceneBudgetThermometer"]
       24 LOADK                            R11 K9 ["GraphicsQuality"]
       25 NAMECALL                         R8 R1 K10 ["getText"]
       27 CALL                             R8 3 1
       28 LOADK                            R11 K11 ["SceneMonitor"]
       29 LOADK                            R12 K12 ["GraphicsQualityDescription"]
       30 NAMECALL                         R9 R1 K10 ["getText"]
       32 CALL                             R9 3 -1
       33 CALL                             R7 -1 3
       34 GETTABLEKS                       R10 R0 K13 ["IsEditMode"]
       36 JUMPIFNOT                        R10 ; [+17]
       37 GETTABLEKS                       R10 R2 K14 ["EditQualityLevel"]
       39 GETIMPORT                        R11 K18 [Enum.QualityLevel.Automatic]
       41 JUMPIFNOTEQ                      R10 R11 ; [+8]
       43 LOADB                            R4 0
       44 GETUPVAL                         R10 3
       45 GETUPVAL                         R12 3
       46 LENGTH                           R11 R12
       47 GETTABLE                         R3 R10 R11
       48 LOADB                            R5 0
       49 JUMP                             ; [+19]
       50 LOADB                            R4 1
       51 GETTABLEKS                       R3 R2 K14 ["EditQualityLevel"]
       53 JUMP                             ; [+15]
       54 GETTABLEKS                       R10 R2 K16 ["QualityLevel"]
       56 GETIMPORT                        R11 K18 [Enum.QualityLevel.Automatic]
       58 JUMPIFNOTEQ                      R10 R11 ; [+7]
       60 LOADB                            R4 0
       61 GETUPVAL                         R10 3
       62 GETTABLEKS                       R11 R0 K19 ["AutomaticGraphicsQuality"]
       64 GETTABLE                         R3 R10 R11
       65 JUMP                             ; [+3]
       66 LOADB                            R4 1
       67 GETTABLEKS                       R3 R2 K16 ["QualityLevel"]
       69 MOVE                             R11 R3
       70 GETUPVAL                         R12 3
       71 LOADNIL                          R13
       72 LOADNIL                          R14
       73 FORGPREP                         R12
       74 GETTABLEKS                       R17 R16 K20 ["Value"]
       76 GETTABLEKS                       R18 R11 K20 ["Value"]
       78 JUMPIFNOTLE                      R18 R17 ; [+3]
       80 MOVE                             R10 R15
       81 JUMP                             ; [+3]
       82 FORGLOOP                         R12 2 ; [-9]
       84 LOADN                            R10 1
       85 GETUPVAL                         R11 4
       86 MOVE                             R12 R4
       87 MOVE                             R13 R10
       88 MOVE                             R14 R5
       89 CALL                             R11 3 1
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R12 R13 K21 ["createElement"]
       93 LOADK                            R13 K22 ["Frame"]
       94 DUPTABLE                         R14 K27 [{"Size", "Position", "BackgroundColor3", "BackgroundTransparency"}]
       95 GETIMPORT                        R15 K30 [UDim2.new]
       97 LOADN                            R16 0
       98 GETUPVAL                         R17 5
       99 LOADN                            R18 0
      100 LOADN                            R19 16
      101 CALL                             R15 4 1
      102 SETTABLEKS                       R15 R14 K23 ["Size"]
      104 GETIMPORT                        R15 K30 [UDim2.new]
      106 LOADN                            R16 0
      107 LOADN                            R17 16
      108 LOADN                            R18 0
      109 LOADN                            R19 0
      110 CALL                             R15 4 1
      111 SETTABLEKS                       R15 R14 K24 ["Position"]
      113 GETIMPORT                        R15 K32 [Color3.new]
      115 LOADK                            R16 K33 [0.5]
      116 LOADK                            R17 K33 [0.5]
      117 LOADK                            R18 K33 [0.5]
      118 CALL                             R15 3 1
      119 SETTABLEKS                       R15 R14 K25 ["BackgroundColor3"]
      121 LOADN                            R15 1
      122 SETTABLEKS                       R15 R14 K26 ["BackgroundTransparency"]
      124 MOVE                             R15 R11
      125 CALL                             R12 3 1
      126 GETUPVAL                         R14 1
      127 GETTABLEKS                       R13 R14 K21 ["createElement"]
      129 LOADK                            R14 K22 ["Frame"]
      130 NEWTABLE                         R15 8 0
      132 GETIMPORT                        R16 K36 [Enum.AutomaticSize.Y]
      134 SETTABLEKS                       R16 R15 K34 ["AutomaticSize"]
      136 GETIMPORT                        R16 K30 [UDim2.new]
      138 LOADN                            R17 1
      139 LOADN                            R18 0
      140 LOADN                            R19 0
      141 LOADN                            R20 0
      142 CALL                             R16 4 1
      143 SETTABLEKS                       R16 R15 K23 ["Size"]
      145 LOADN                            R16 1
      146 SETTABLEKS                       R16 R15 K26 ["BackgroundTransparency"]
      148 GETTABLEKS                       R16 R0 K37 ["LayoutOrder"]
      150 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      152 GETUPVAL                         R17 1
      153 GETTABLEKS                       R16 R17 K38 ["Tag"]
      155 LOADK                            R17 K39 ["Component-QualitySettings"]
      156 SETTABLE                         R17 R15 R16
      157 GETUPVAL                         R18 1
      158 GETTABLEKS                       R17 R18 K40 ["Event"]
      160 GETTABLEKS                       R16 R17 K41 ["MouseEnter"]
      162 SETTABLE                         R7 R15 R16
      163 GETUPVAL                         R18 1
      164 GETTABLEKS                       R17 R18 K40 ["Event"]
      166 GETTABLEKS                       R16 R17 K42 ["MouseLeave"]
      168 SETTABLE                         R8 R15 R16
      169 GETUPVAL                         R18 1
      170 GETTABLEKS                       R17 R18 K40 ["Event"]
      172 GETTABLEKS                       R16 R17 K43 ["MouseMoved"]
      174 NEWCLOSURE                       R17 P0
      175 CAPTURE                          VAL R9
      176 SETTABLE                         R17 R15 R16
      177 DUPTABLE                         R16 K48 [{"Layout", "GraphicsLevelFrame", "AutoLabel", "ToggleAutomaticButton"}]
      178 GETUPVAL                         R18 1
      179 GETTABLEKS                       R17 R18 K21 ["createElement"]
      181 LOADK                            R18 K49 ["UIListLayout"]
      182 DUPTABLE                         R19 K55 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      183 GETIMPORT                        R20 K57 [UDim.new]
      185 LOADN                            R21 0
      186 LOADN                            R22 10
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K50 ["Padding"]
      190 GETIMPORT                        R20 K59 [Enum.FillDirection.Horizontal]
      192 SETTABLEKS                       R20 R19 K51 ["FillDirection"]
      194 GETIMPORT                        R20 K61 [Enum.HorizontalAlignment.Left]
      196 SETTABLEKS                       R20 R19 K52 ["HorizontalAlignment"]
      198 GETIMPORT                        R20 K63 [Enum.VerticalAlignment.Center]
      200 SETTABLEKS                       R20 R19 K53 ["VerticalAlignment"]
      202 GETIMPORT                        R20 K64 [Enum.SortOrder.LayoutOrder]
      204 SETTABLEKS                       R20 R19 K54 ["SortOrder"]
      206 CALL                             R17 2 1
      207 SETTABLEKS                       R17 R16 K44 ["Layout"]
      209 GETUPVAL                         R18 1
      210 GETTABLEKS                       R17 R18 K21 ["createElement"]
      212 LOADK                            R18 K22 ["Frame"]
      213 NEWTABLE                         R19 4 0
      215 GETUPVAL                         R21 1
      216 GETTABLEKS                       R20 R21 K38 ["Tag"]
      218 LOADK                            R21 K65 ["X-Fit"]
      219 SETTABLE                         R21 R19 R20
      220 LOADN                            R20 1
      221 SETTABLEKS                       R20 R19 K26 ["BackgroundTransparency"]
      223 LOADN                            R20 1
      224 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      226 DUPTABLE                         R20 K68 [{"Label", "ControlFrame"}]
      227 GETUPVAL                         R22 1
      228 GETTABLEKS                       R21 R22 K21 ["createElement"]
      230 LOADK                            R22 K69 ["TextLabel"]
      231 NEWTABLE                         R23 4 0
      233 GETUPVAL                         R25 1
      234 GETTABLEKS                       R24 R25 K38 ["Tag"]
      236 LOADK                            R25 K70 ["X-Fit Heading"]
      237 SETTABLE                         R25 R23 R24
      238 LOADK                            R26 K8 ["SceneBudgetThermometer"]
      239 LOADK                            R27 K9 ["GraphicsQuality"]
      240 NAMECALL                         R24 R1 K10 ["getText"]
      242 CALL                             R24 3 1
      243 SETTABLEKS                       R24 R23 K71 ["Text"]
      245 LOADB                            R24 1
      246 SETTABLEKS                       R24 R23 K72 ["TextWrapped"]
      248 CALL                             R21 2 1
      249 SETTABLEKS                       R21 R20 K66 ["Label"]
      251 GETUPVAL                         R22 1
      252 GETTABLEKS                       R21 R22 K21 ["createElement"]
      254 LOADK                            R22 K22 ["Frame"]
      255 NEWTABLE                         R23 4 0
      257 GETUPVAL                         R25 1
      258 GETTABLEKS                       R24 R25 K38 ["Tag"]
      260 LOADK                            R25 K65 ["X-Fit"]
      261 SETTABLE                         R25 R23 R24
      262 GETIMPORT                        R24 K30 [UDim2.new]
      264 LOADN                            R25 0
      265 LOADN                            R26 150
      266 LOADN                            R27 0
      267 LOADN                            R28 0
      268 CALL                             R24 4 1
      269 SETTABLEKS                       R24 R23 K24 ["Position"]
      271 LOADN                            R24 1
      272 SETTABLEKS                       R24 R23 K26 ["BackgroundTransparency"]
      274 DUPTABLE                         R24 K76 [{"LeftArrow", "Bars", "RightArrow"}]
      275 GETUPVAL                         R26 1
      276 GETTABLEKS                       R25 R26 K21 ["createElement"]
      278 LOADK                            R26 K77 ["ImageButton"]
      279 NEWTABLE                         R27 8 0
      281 LOADN                            R28 1
      282 SETTABLEKS                       R28 R27 K26 ["BackgroundTransparency"]
      284 GETUPVAL                         R29 1
      285 GETTABLEKS                       R28 R29 K38 ["Tag"]
      287 JUMPIFNOT                        R4 ; [+2]
      288 LOADK                            R29 K73 ["LeftArrow"]
      289 JUMP                             ; [+1]
      290 LOADK                            R29 K78 [""]
      291 SETTABLE                         R29 R27 R28
      292 GETIMPORT                        R28 K80 [Vector2.new]
      294 LOADN                            R29 0
      295 LOADN                            R30 0
      296 CALL                             R28 2 1
      297 SETTABLEKS                       R28 R27 K81 ["AnchorPoint"]
      299 GETIMPORT                        R28 K30 [UDim2.new]
      301 LOADN                            R29 0
      302 LOADN                            R30 16
      303 LOADN                            R31 0
      304 LOADN                            R32 16
      305 CALL                             R28 4 1
      306 SETTABLEKS                       R28 R27 K23 ["Size"]
      308 GETIMPORT                        R28 K30 [UDim2.new]
      310 LOADN                            R29 0
      311 LOADN                            R30 0
      312 LOADN                            R31 0
      313 LOADN                            R32 0
      314 CALL                             R28 4 1
      315 SETTABLEKS                       R28 R27 K24 ["Position"]
      317 GETUPVAL                         R30 1
      318 GETTABLEKS                       R29 R30 K40 ["Event"]
      320 GETTABLEKS                       R28 R29 K82 ["Activated"]
      322 NEWCLOSURE                       R29 P1
      323 CAPTURE                          UPVAL U6
      324 CAPTURE                          VAL R0
      325 SETTABLE                         R29 R27 R28
      326 CALL                             R25 2 1
      327 SETTABLEKS                       R25 R24 K73 ["LeftArrow"]
      329 SETTABLEKS                       R12 R24 K74 ["Bars"]
      331 GETUPVAL                         R26 1
      332 GETTABLEKS                       R25 R26 K21 ["createElement"]
      334 LOADK                            R26 K77 ["ImageButton"]
      335 NEWTABLE                         R27 8 0
      337 LOADN                            R28 1
      338 SETTABLEKS                       R28 R27 K26 ["BackgroundTransparency"]
      340 GETUPVAL                         R29 1
      341 GETTABLEKS                       R28 R29 K38 ["Tag"]
      343 JUMPIFNOT                        R4 ; [+2]
      344 LOADK                            R29 K75 ["RightArrow"]
      345 JUMP                             ; [+1]
      346 LOADK                            R29 K78 [""]
      347 SETTABLE                         R29 R27 R28
      348 GETIMPORT                        R28 K80 [Vector2.new]
      350 LOADN                            R29 0
      351 LOADN                            R30 0
      352 CALL                             R28 2 1
      353 SETTABLEKS                       R28 R27 K81 ["AnchorPoint"]
      355 GETIMPORT                        R28 K30 [UDim2.new]
      357 LOADN                            R29 0
      358 LOADN                            R30 16
      359 LOADN                            R31 0
      360 LOADN                            R32 16
      361 CALL                             R28 4 1
      362 SETTABLEKS                       R28 R27 K23 ["Size"]
      364 GETIMPORT                        R28 K30 [UDim2.new]
      366 LOADN                            R29 0
      367 GETUPVAL                         R31 5
      368 ADDK                             R30 R31 K83 [16]
      369 LOADN                            R31 0
      370 LOADN                            R32 0
      371 CALL                             R28 4 1
      372 SETTABLEKS                       R28 R27 K24 ["Position"]
      374 GETUPVAL                         R30 1
      375 GETTABLEKS                       R29 R30 K40 ["Event"]
      377 GETTABLEKS                       R28 R29 K82 ["Activated"]
      379 NEWCLOSURE                       R29 P2
      380 CAPTURE                          UPVAL U6
      381 CAPTURE                          VAL R0
      382 SETTABLE                         R29 R27 R28
      383 CALL                             R25 2 1
      384 SETTABLEKS                       R25 R24 K75 ["RightArrow"]
      386 CALL                             R21 3 1
      387 SETTABLEKS                       R21 R20 K67 ["ControlFrame"]
      389 CALL                             R17 3 1
      390 SETTABLEKS                       R17 R16 K45 ["GraphicsLevelFrame"]
      392 GETUPVAL                         R18 1
      393 GETTABLEKS                       R17 R18 K21 ["createElement"]
      395 LOADK                            R18 K69 ["TextLabel"]
      396 NEWTABLE                         R19 4 0
      398 GETUPVAL                         R21 1
      399 GETTABLEKS                       R20 R21 K38 ["Tag"]
      401 LOADK                            R21 K70 ["X-Fit Heading"]
      402 SETTABLE                         R21 R19 R20
      403 LOADK                            R22 K11 ["SceneMonitor"]
      404 LOADK                            R23 K84 ["Auto"]
      405 NAMECALL                         R20 R1 K10 ["getText"]
      407 CALL                             R20 3 1
      408 SETTABLEKS                       R20 R19 K71 ["Text"]
      410 LOADN                            R20 2
      411 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      413 CALL                             R17 2 1
      414 SETTABLEKS                       R17 R16 K46 ["AutoLabel"]
      416 GETUPVAL                         R18 1
      417 GETTABLEKS                       R17 R18 K21 ["createElement"]
      419 GETUPVAL                         R18 7
      420 DUPTABLE                         R19 K87 [{"LayoutOrder", "Selected", "OnClick"}]
      421 LOADN                            R20 3
      422 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      424 NOT                              R20 R4
      425 SETTABLEKS                       R20 R19 K85 ["Selected"]
      427 NEWCLOSURE                       R20 P3
      428 CAPTURE                          UPVAL U8
      429 CAPTURE                          VAL R0
      430 SETTABLEKS                       R20 R19 K86 ["OnClick"]
      432 CALL                             R17 2 1
      433 SETTABLEKS                       R17 R16 K47 ["ToggleAutomaticButton"]
      435 CALL                             R13 3 -1
      436 RETURN                           R13 -1

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
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R5 R2 K10 ["UI"]
       25 GETTABLEKS                       R4 R5 K11 ["ToggleButton"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R9 R0 K12 ["Src"]
       31 GETTABLEKS                       R8 R9 K13 ["Components"]
       33 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       35 GETTABLEKS                       R6 R7 K15 ["TooltipContext"]
       37 CALL                             R5 1 1
       38 NEWTABLE                         R6 0 10
       40 GETIMPORT                        R7 K19 [Enum.QualityLevel.Level01]
       42 GETIMPORT                        R8 K21 [Enum.QualityLevel.Level04]
       44 GETIMPORT                        R9 K23 [Enum.QualityLevel.Level06]
       46 GETIMPORT                        R10 K25 [Enum.QualityLevel.Level08]
       48 GETIMPORT                        R11 K27 [Enum.QualityLevel.Level10]
       50 GETIMPORT                        R12 K29 [Enum.QualityLevel.Level12]
       52 GETIMPORT                        R13 K31 [Enum.QualityLevel.Level14]
       54 GETIMPORT                        R14 K33 [Enum.QualityLevel.Level16]
       56 GETIMPORT                        R15 K35 [Enum.QualityLevel.Level18]
       58 GETIMPORT                        R16 K37 [Enum.QualityLevel.Level21]
       60 SETLIST                          R6 R7 10 [1]
       62 LENGTH                           R8 R6
       63 MULK                             R7 R8 K38 [18]
       64 GETIMPORT                        R8 K37 [Enum.QualityLevel.Level21]
       66 GETIMPORT                        R9 K37 [Enum.QualityLevel.Level21]
       68 DUPCLOSURE                       R10 K39 [PROTO_0]
       69 CAPTURE                          VAL R6
       70 DUPCLOSURE                       R11 K40 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 DUPCLOSURE                       R12 K41 [PROTO_2]
       73 CAPTURE                          VAL R1
       74 DUPCLOSURE                       R13 K42 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R12
       77 NEWCLOSURE                       R14 P4
       78 CAPTURE                          REF R8
       79 CAPTURE                          REF R9
       80 DUPCLOSURE                       R15 K43 [PROTO_9]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R14
       90 CLOSEUPVALS                      R8
       91 RETURN                           R15 1
