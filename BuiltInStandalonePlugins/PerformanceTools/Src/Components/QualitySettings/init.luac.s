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
        1 GETIMPORT                        R3 K1 [settings]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R3 R3 K2 ["Rendering"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 LOADK                            R6 K1 ["Frame"]
        4 NEWTABLE                         R7 4 0
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K2 ["Tag"]
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
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K0 ["createElement"]
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
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Rendering"]
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
        1 LOADN                            R1 -1
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K3 [settings]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R2 R2 K4 ["Rendering"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 LOADB                            R5 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["useContext"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K6 ["Context"]
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
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K21 ["createElement"]
       93 LOADK                            R13 K22 ["Frame"]
       94 DUPTABLE                         R14 K28 [{["Size"], ["Position"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1}]
       95 GETIMPORT                        R15 K31 [UDim2.new]
       97 LOADN                            R16 0
       98 GETUPVAL                         R17 5
       99 LOADN                            R18 0
      100 LOADN                            R19 16
      101 CALL                             R15 4 1
      102 SETTABLEKS                       R15 R14 K23 ["Size"]
      104 GETIMPORT                        R15 K31 [UDim2.new]
      106 LOADN                            R16 0
      107 LOADN                            R17 16
      108 LOADN                            R18 0
      109 LOADN                            R19 0
      110 CALL                             R15 4 1
      111 SETTABLEKS                       R15 R14 K24 ["Position"]
      113 GETIMPORT                        R15 K33 [Color3.new]
      115 LOADK                            R16 K34 [0.5]
      116 LOADK                            R17 K34 [0.5]
      117 LOADK                            R18 K34 [0.5]
      118 CALL                             R15 3 1
      119 SETTABLEKS                       R15 R14 K25 ["BackgroundColor3"]
      121 MOVE                             R15 R11
      122 CALL                             R12 3 1
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R13 R13 K21 ["createElement"]
      126 LOADK                            R14 K22 ["Frame"]
      127 NEWTABLE                         R15 8 0
      129 GETIMPORT                        R16 K37 [Enum.AutomaticSize.Y]
      131 SETTABLEKS                       R16 R15 K35 ["AutomaticSize"]
      133 GETIMPORT                        R16 K31 [UDim2.new]
      135 LOADN                            R17 1
      136 LOADN                            R18 0
      137 LOADN                            R19 0
      138 LOADN                            R20 0
      139 CALL                             R16 4 1
      140 SETTABLEKS                       R16 R15 K23 ["Size"]
      142 LOADN                            R16 1
      143 SETTABLEKS                       R16 R15 K26 ["BackgroundTransparency"]
      145 GETTABLEKS                       R16 R0 K38 ["LayoutOrder"]
      147 SETTABLEKS                       R16 R15 K38 ["LayoutOrder"]
      149 GETUPVAL                         R16 1
      150 GETTABLEKS                       R16 R16 K39 ["Tag"]
      152 LOADK                            R17 K40 ["Component-QualitySettings"]
      153 SETTABLE                         R17 R15 R16
      154 GETUPVAL                         R16 1
      155 GETTABLEKS                       R16 R16 K41 ["Event"]
      157 GETTABLEKS                       R16 R16 K42 ["MouseEnter"]
      159 SETTABLE                         R7 R15 R16
      160 GETUPVAL                         R16 1
      161 GETTABLEKS                       R16 R16 K41 ["Event"]
      163 GETTABLEKS                       R16 R16 K43 ["MouseLeave"]
      165 SETTABLE                         R8 R15 R16
      166 GETUPVAL                         R16 1
      167 GETTABLEKS                       R16 R16 K41 ["Event"]
      169 GETTABLEKS                       R16 R16 K44 ["MouseMoved"]
      171 NEWCLOSURE                       R17 P0
      172 CAPTURE                          VAL R9
      173 SETTABLE                         R17 R15 R16
      174 DUPTABLE                         R16 K49 [{"Layout", "GraphicsLevelFrame", "AutoLabel", "ToggleAutomaticButton"}]
      175 GETUPVAL                         R17 1
      176 GETTABLEKS                       R17 R17 K21 ["createElement"]
      178 LOADK                            R18 K50 ["UIListLayout"]
      179 DUPTABLE                         R19 K56 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      180 GETIMPORT                        R20 K58 [UDim.new]
      182 LOADN                            R21 0
      183 LOADN                            R22 10
      184 CALL                             R20 2 1
      185 SETTABLEKS                       R20 R19 K51 ["Padding"]
      187 GETIMPORT                        R20 K60 [Enum.FillDirection.Horizontal]
      189 SETTABLEKS                       R20 R19 K52 ["FillDirection"]
      191 GETIMPORT                        R20 K62 [Enum.HorizontalAlignment.Left]
      193 SETTABLEKS                       R20 R19 K53 ["HorizontalAlignment"]
      195 GETIMPORT                        R20 K64 [Enum.VerticalAlignment.Center]
      197 SETTABLEKS                       R20 R19 K54 ["VerticalAlignment"]
      199 GETIMPORT                        R20 K65 [Enum.SortOrder.LayoutOrder]
      201 SETTABLEKS                       R20 R19 K55 ["SortOrder"]
      203 CALL                             R17 2 1
      204 SETTABLEKS                       R17 R16 K45 ["Layout"]
      206 GETUPVAL                         R17 1
      207 GETTABLEKS                       R17 R17 K21 ["createElement"]
      209 LOADK                            R18 K22 ["Frame"]
      210 NEWTABLE                         R19 4 0
      212 GETUPVAL                         R20 1
      213 GETTABLEKS                       R20 R20 K39 ["Tag"]
      215 LOADK                            R21 K66 ["X-Fit"]
      216 SETTABLE                         R21 R19 R20
      217 LOADN                            R20 1
      218 SETTABLEKS                       R20 R19 K26 ["BackgroundTransparency"]
      220 LOADN                            R20 1
      221 SETTABLEKS                       R20 R19 K38 ["LayoutOrder"]
      223 DUPTABLE                         R20 K69 [{"Label", "ControlFrame"}]
      224 GETUPVAL                         R21 1
      225 GETTABLEKS                       R21 R21 K21 ["createElement"]
      227 LOADK                            R22 K70 ["TextLabel"]
      228 NEWTABLE                         R23 4 0
      230 GETUPVAL                         R24 1
      231 GETTABLEKS                       R24 R24 K39 ["Tag"]
      233 LOADK                            R25 K71 ["X-Fit Heading"]
      234 SETTABLE                         R25 R23 R24
      235 LOADK                            R26 K8 ["SceneBudgetThermometer"]
      236 LOADK                            R27 K9 ["GraphicsQuality"]
      237 NAMECALL                         R24 R1 K10 ["getText"]
      239 CALL                             R24 3 1
      240 SETTABLEKS                       R24 R23 K72 ["Text"]
      242 LOADB                            R24 1
      243 SETTABLEKS                       R24 R23 K73 ["TextWrapped"]
      245 CALL                             R21 2 1
      246 SETTABLEKS                       R21 R20 K67 ["Label"]
      248 GETUPVAL                         R21 1
      249 GETTABLEKS                       R21 R21 K21 ["createElement"]
      251 LOADK                            R22 K22 ["Frame"]
      252 NEWTABLE                         R23 4 0
      254 GETUPVAL                         R24 1
      255 GETTABLEKS                       R24 R24 K39 ["Tag"]
      257 LOADK                            R25 K66 ["X-Fit"]
      258 SETTABLE                         R25 R23 R24
      259 GETIMPORT                        R24 K31 [UDim2.new]
      261 LOADN                            R25 0
      262 LOADN                            R26 150
      263 LOADN                            R27 0
      264 LOADN                            R28 0
      265 CALL                             R24 4 1
      266 SETTABLEKS                       R24 R23 K24 ["Position"]
      268 LOADN                            R24 1
      269 SETTABLEKS                       R24 R23 K26 ["BackgroundTransparency"]
      271 DUPTABLE                         R24 K77 [{"LeftArrow", "Bars", "RightArrow"}]
      272 GETUPVAL                         R25 1
      273 GETTABLEKS                       R25 R25 K21 ["createElement"]
      275 LOADK                            R26 K78 ["ImageButton"]
      276 NEWTABLE                         R27 8 0
      278 LOADN                            R28 1
      279 SETTABLEKS                       R28 R27 K26 ["BackgroundTransparency"]
      281 GETUPVAL                         R28 1
      282 GETTABLEKS                       R28 R28 K39 ["Tag"]
      284 JUMPIFNOT                        R4 ; [+2]
      285 LOADK                            R29 K74 ["LeftArrow"]
      286 JUMP                             ; [+1]
      287 LOADK                            R29 K79 [""]
      288 SETTABLE                         R29 R27 R28
      289 GETIMPORT                        R28 K81 [Vector2.new]
      291 LOADN                            R29 0
      292 LOADN                            R30 0
      293 CALL                             R28 2 1
      294 SETTABLEKS                       R28 R27 K82 ["AnchorPoint"]
      296 GETIMPORT                        R28 K31 [UDim2.new]
      298 LOADN                            R29 0
      299 LOADN                            R30 16
      300 LOADN                            R31 0
      301 LOADN                            R32 16
      302 CALL                             R28 4 1
      303 SETTABLEKS                       R28 R27 K23 ["Size"]
      305 GETIMPORT                        R28 K31 [UDim2.new]
      307 LOADN                            R29 0
      308 LOADN                            R30 0
      309 LOADN                            R31 0
      310 LOADN                            R32 0
      311 CALL                             R28 4 1
      312 SETTABLEKS                       R28 R27 K24 ["Position"]
      314 GETUPVAL                         R28 1
      315 GETTABLEKS                       R28 R28 K41 ["Event"]
      317 GETTABLEKS                       R28 R28 K83 ["Activated"]
      319 NEWCLOSURE                       R29 P1
      320 CAPTURE                          UPVAL U6
      321 CAPTURE                          VAL R0
      322 SETTABLE                         R29 R27 R28
      323 CALL                             R25 2 1
      324 SETTABLEKS                       R25 R24 K74 ["LeftArrow"]
      326 SETTABLEKS                       R12 R24 K75 ["Bars"]
      328 GETUPVAL                         R25 1
      329 GETTABLEKS                       R25 R25 K21 ["createElement"]
      331 LOADK                            R26 K78 ["ImageButton"]
      332 NEWTABLE                         R27 8 0
      334 LOADN                            R28 1
      335 SETTABLEKS                       R28 R27 K26 ["BackgroundTransparency"]
      337 GETUPVAL                         R28 1
      338 GETTABLEKS                       R28 R28 K39 ["Tag"]
      340 JUMPIFNOT                        R4 ; [+2]
      341 LOADK                            R29 K76 ["RightArrow"]
      342 JUMP                             ; [+1]
      343 LOADK                            R29 K79 [""]
      344 SETTABLE                         R29 R27 R28
      345 GETIMPORT                        R28 K81 [Vector2.new]
      347 LOADN                            R29 0
      348 LOADN                            R30 0
      349 CALL                             R28 2 1
      350 SETTABLEKS                       R28 R27 K82 ["AnchorPoint"]
      352 GETIMPORT                        R28 K31 [UDim2.new]
      354 LOADN                            R29 0
      355 LOADN                            R30 16
      356 LOADN                            R31 0
      357 LOADN                            R32 16
      358 CALL                             R28 4 1
      359 SETTABLEKS                       R28 R27 K23 ["Size"]
      361 GETIMPORT                        R28 K31 [UDim2.new]
      363 LOADN                            R29 0
      364 GETUPVAL                         R31 5
      365 ADDK                             R30 R31 K84 [16]
      366 LOADN                            R31 0
      367 LOADN                            R32 0
      368 CALL                             R28 4 1
      369 SETTABLEKS                       R28 R27 K24 ["Position"]
      371 GETUPVAL                         R28 1
      372 GETTABLEKS                       R28 R28 K41 ["Event"]
      374 GETTABLEKS                       R28 R28 K83 ["Activated"]
      376 NEWCLOSURE                       R29 P2
      377 CAPTURE                          UPVAL U6
      378 CAPTURE                          VAL R0
      379 SETTABLE                         R29 R27 R28
      380 CALL                             R25 2 1
      381 SETTABLEKS                       R25 R24 K76 ["RightArrow"]
      383 CALL                             R21 3 1
      384 SETTABLEKS                       R21 R20 K68 ["ControlFrame"]
      386 CALL                             R17 3 1
      387 SETTABLEKS                       R17 R16 K46 ["GraphicsLevelFrame"]
      389 GETUPVAL                         R17 1
      390 GETTABLEKS                       R17 R17 K21 ["createElement"]
      392 LOADK                            R18 K70 ["TextLabel"]
      393 NEWTABLE                         R19 4 0
      395 GETUPVAL                         R20 1
      396 GETTABLEKS                       R20 R20 K39 ["Tag"]
      398 LOADK                            R21 K71 ["X-Fit Heading"]
      399 SETTABLE                         R21 R19 R20
      400 LOADK                            R22 K11 ["SceneMonitor"]
      401 LOADK                            R23 K85 ["Auto"]
      402 NAMECALL                         R20 R1 K10 ["getText"]
      404 CALL                             R20 3 1
      405 SETTABLEKS                       R20 R19 K72 ["Text"]
      407 LOADN                            R20 2
      408 SETTABLEKS                       R20 R19 K38 ["LayoutOrder"]
      410 CALL                             R17 2 1
      411 SETTABLEKS                       R17 R16 K47 ["AutoLabel"]
      413 GETUPVAL                         R17 1
      414 GETTABLEKS                       R17 R17 K21 ["createElement"]
      416 GETUPVAL                         R18 7
      417 DUPTABLE                         R19 K89 [{["LayoutOrder"] = 3, ["Selected"], ["OnClick"]}]
      418 NOT                              R20 R4
      419 SETTABLEKS                       R20 R19 K87 ["Selected"]
      421 NEWCLOSURE                       R20 P3
      422 CAPTURE                          UPVAL U8
      423 CAPTURE                          VAL R0
      424 SETTABLEKS                       R20 R19 K88 ["OnClick"]
      426 CALL                             R17 2 1
      427 SETTABLEKS                       R17 R16 K48 ["ToggleAutomaticButton"]
      429 CALL                             R13 3 -1
      430 RETURN                           R13 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R2 K10 ["UI"]
       25 GETTABLEKS                       R4 R4 K11 ["ToggleButton"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       35 GETTABLEKS                       R6 R6 K15 ["TooltipContext"]
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
