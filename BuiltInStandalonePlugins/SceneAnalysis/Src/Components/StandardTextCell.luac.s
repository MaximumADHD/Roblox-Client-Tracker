PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cell"]
        3 GETTABLEKS                       R2 R0 K1 ["d"]
        5 CALL                             R1 1 1
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K3 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+3]
       13 JUMPIFNOTEQKS                    R1 K5 [""] ; [+10]
       15 DUPTABLE                         R2 K9 [{["text"], ["showTooltip"] = False}]
       16 ORK                              R4 R1 K5 [""]
       17 FASTCALL1                        TOSTRING R4 ; [+2]
       18 GETIMPORT                        R3 K11 [tostring]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K6 ["text"]
       23 RETURN                           R2 1
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R1
       26 LOADK                            R5 K12 [17.598]
       27 GETUPVAL                         R6 2
       28 GETIMPORT                        R7 K15 [Vector2.new]
       30 LOADN                            R8 10000
       31 LOADN                            R9 10000
       32 CALL                             R7 2 -1
       33 NAMECALL                         R2 R2 K16 ["GetTextSize"]
       35 CALL                             R2 -1 1
       36 GETTABLEKS                       R3 R2 K17 ["X"]
       38 GETTABLEKS                       R5 R0 K19 ["absoluteWidth"]
       40 SUBK                             R4 R5 K18 [4]
       41 JUMPIFNOTLE                      R3 R4 ; [+5]
       43 DUPTABLE                         R3 K9 [{["text"], ["showTooltip"] = False}]
       44 SETTABLEKS                       R1 R3 K6 ["text"]
       46 RETURN                           R3 1
       47 DUPTABLE                         R3 K21 [{["text"], ["showTooltip"] = True}]
       48 SETTABLEKS                       R1 R3 K6 ["text"]
       50 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["showTooltip"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["pos"]
        2 GETTABLEKS                       R2 R2 K2 ["X"]
        4 ADDK                             R1 R2 K0 [15]
        5 GETTABLEKS                       R3 R0 K1 ["pos"]
        7 GETTABLEKS                       R3 R3 K3 ["Y"]
        9 ADDK                             R2 R3 K0 [15]
       10 GETTABLEKS                       R4 R0 K4 ["tSize"]
       12 GETTABLEKS                       R4 R4 K2 ["X"]
       14 ADD                              R3 R1 R4
       15 GETTABLEKS                       R4 R0 K5 ["cSize"]
       17 GETTABLEKS                       R4 R4 K2 ["X"]
       19 JUMPIFNOTLT                      R4 R3 ; [+11]
       21 GETTABLEKS                       R4 R0 K1 ["pos"]
       23 GETTABLEKS                       R4 R4 K2 ["X"]
       25 GETTABLEKS                       R5 R0 K4 ["tSize"]
       27 GETTABLEKS                       R5 R5 K2 ["X"]
       29 SUB                              R3 R4 R5
       30 SUBK                             R1 R3 K0 [15]
       31 GETTABLEKS                       R4 R0 K4 ["tSize"]
       33 GETTABLEKS                       R4 R4 K3 ["Y"]
       35 ADD                              R3 R2 R4
       36 GETTABLEKS                       R4 R0 K5 ["cSize"]
       38 GETTABLEKS                       R4 R4 K3 ["Y"]
       40 JUMPIFNOTLT                      R4 R3 ; [+11]
       42 GETTABLEKS                       R4 R0 K1 ["pos"]
       44 GETTABLEKS                       R4 R4 K3 ["Y"]
       46 GETTABLEKS                       R5 R0 K4 ["tSize"]
       48 GETTABLEKS                       R5 R5 K3 ["Y"]
       50 SUB                              R3 R4 R5
       51 SUBK                             R2 R3 K0 [15]
       52 LOADN                            R4 0
       53 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       55 MOVE                             R5 R1
       56 GETIMPORT                        R3 K8 [math.max]
       58 CALL                             R3 2 1
       59 MOVE                             R1 R3
       60 LOADN                            R4 0
       61 FASTCALL2                        MATH_MAX R4 R2 ; [+4]
       63 MOVE                             R5 R2
       64 GETIMPORT                        R3 K8 [math.max]
       66 CALL                             R3 2 1
       67 MOVE                             R2 R3
       68 GETIMPORT                        R3 K11 [UDim2.fromOffset]
       70 MOVE                             R4 R1
       71 MOVE                             R5 R2
       72 CALL                             R3 2 -1
       73 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R1 R0 K1 ["hovered"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETTABLEKS                       R1 R0 K2 ["text"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETTABLEKS                       R2 R0 K2 ["text"]
       11 JUMPIFNOTEQKS                    R2 K3 [""] ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 GETIMPORT                        R4 K2 [Vector2.new]
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 CALL                             R4 2 -1
        9 CALL                             R3 -1 0
       10 LOADK                            R5 K3 ["LayerCollector"]
       11 NAMECALL                         R3 R0 K4 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+4]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R5 R3 K5 ["AbsoluteSize"]
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R4 K2 [Vector2.new]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 -1
        6 CALL                             R3 -1 0
        7 LOADK                            R5 K3 ["LayerCollector"]
        8 NAMECALL                         R3 R0 K4 ["FindFirstAncestorWhichIsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R5 R3 K5 ["AbsoluteSize"]
       15 CALL                             R4 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["displayData"]
        2 GETTABLEKS                       R2 R0 K1 ["Size"]
        4 GETTABLEKS                       R3 R0 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R0 K3 ["col"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["useBinding"]
       11 LOADN                            R6 10000
       12 CALL                             R5 1 2
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K5 ["joinBindings"]
       16 DUPTABLE                         R8 K8 [{"d", "absoluteWidth"}]
       17 SETTABLEKS                       R1 R8 K6 ["d"]
       19 SETTABLEKS                       R5 R8 K7 ["absoluteWidth"]
       21 CALL                             R7 1 1
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R7 R7 K9 ["map"]
       28 CALL                             R7 2 1
       29 DUPCLOSURE                       R10 K10 [PROTO_1]
       30 NAMECALL                         R8 R7 K9 ["map"]
       32 CALL                             R8 2 1
       33 DUPCLOSURE                       R11 K11 [PROTO_2]
       34 NAMECALL                         R9 R7 K9 ["map"]
       36 CALL                             R9 2 1
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K4 ["useBinding"]
       40 LOADB                            R11 0
       41 CALL                             R10 1 2
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K4 ["useBinding"]
       45 GETIMPORT                        R13 K14 [Vector2.zero]
       47 CALL                             R12 1 2
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K4 ["useBinding"]
       51 GETIMPORT                        R15 K16 [Vector2.new]
       53 LOADN                            R16 0
       54 LOADN                            R17 0
       55 CALL                             R15 2 -1
       56 CALL                             R14 -1 2
       57 GETUPVAL                         R16 0
       58 GETTABLEKS                       R16 R16 K4 ["useBinding"]
       60 GETIMPORT                        R17 K16 [Vector2.new]
       62 LOADN                            R18 10000
       63 LOADN                            R19 10000
       64 CALL                             R17 2 -1
       65 CALL                             R16 -1 2
       66 GETUPVAL                         R18 0
       67 GETTABLEKS                       R18 R18 K5 ["joinBindings"]
       69 DUPTABLE                         R19 K20 [{"pos", "tSize", "cSize"}]
       70 SETTABLEKS                       R12 R19 K17 ["pos"]
       72 SETTABLEKS                       R14 R19 K18 ["tSize"]
       74 SETTABLEKS                       R16 R19 K19 ["cSize"]
       76 CALL                             R18 1 1
       77 DUPCLOSURE                       R20 K21 [PROTO_3]
       78 NAMECALL                         R18 R18 K9 ["map"]
       80 CALL                             R18 2 1
       81 GETUPVAL                         R19 0
       82 GETTABLEKS                       R19 R19 K5 ["joinBindings"]
       84 DUPTABLE                         R20 K25 [{"enabled", "hovered", "text"}]
       85 SETTABLEKS                       R9 R20 K22 ["enabled"]
       87 SETTABLEKS                       R10 R20 K23 ["hovered"]
       89 SETTABLEKS                       R8 R20 K24 ["text"]
       91 CALL                             R19 1 1
       92 DUPCLOSURE                       R21 K26 [PROTO_4]
       93 NAMECALL                         R19 R19 K9 ["map"]
       95 CALL                             R19 2 1
       96 GETUPVAL                         R20 0
       97 GETTABLEKS                       R20 R20 K27 ["createElement"]
       99 LOADK                            R21 K28 ["TextLabel"]
      100 NEWTABLE                         R22 16 0
      102 SETTABLEKS                       R2 R22 K1 ["Size"]
      104 SETTABLEKS                       R3 R22 K2 ["LayoutOrder"]
      106 SETTABLEKS                       R8 R22 K29 ["Text"]
      108 GETIMPORT                        R23 K33 [Enum.TextTruncate.AtEnd]
      110 SETTABLEKS                       R23 R22 K31 ["TextTruncate"]
      112 LOADN                            R23 1
      113 SETTABLEKS                       R23 R22 K34 ["BackgroundTransparency"]
      115 GETIMPORT                        R23 K37 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R23 R22 K35 ["TextXAlignment"]
      119 GETUPVAL                         R23 0
      120 GETTABLEKS                       R23 R23 K38 ["Tag"]
      122 LOADK                            R24 K39 ["SceneAnalysis-StandardText SceneAnalysis-ListItems"]
      123 SETTABLE                         R24 R22 R23
      124 GETUPVAL                         R23 0
      125 GETTABLEKS                       R23 R23 K40 ["Change"]
      127 GETTABLEKS                       R23 R23 K41 ["AbsoluteSize"]
      129 NEWCLOSURE                       R24 P5
      130 CAPTURE                          VAL R6
      131 SETTABLE                         R24 R22 R23
      132 GETUPVAL                         R23 0
      133 GETTABLEKS                       R23 R23 K42 ["Event"]
      135 GETTABLEKS                       R23 R23 K43 ["MouseEnter"]
      137 NEWCLOSURE                       R24 P6
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R17
      141 SETTABLE                         R24 R22 R23
      142 GETUPVAL                         R23 0
      143 GETTABLEKS                       R23 R23 K42 ["Event"]
      145 GETTABLEKS                       R23 R23 K44 ["MouseMoved"]
      147 NEWCLOSURE                       R24 P7
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R17
      150 SETTABLE                         R24 R22 R23
      151 GETUPVAL                         R23 0
      152 GETTABLEKS                       R23 R23 K42 ["Event"]
      154 GETTABLEKS                       R23 R23 K45 ["MouseLeave"]
      156 NEWCLOSURE                       R24 P8
      157 CAPTURE                          VAL R11
      158 SETTABLE                         R24 R22 R23
      159 GETUPVAL                         R24 3
      160 JUMPIFNOT                        R24 ; [+2]
      161 LOADNIL                          R23
      162 JUMP                             ; [+1]
      163 LOADB                            R23 1
      164 SETTABLEKS                       R23 R22 K46 ["Active"]
      166 DUPTABLE                         R23 K48 [{"TooltipPortal"}]
      167 GETUPVAL                         R24 0
      168 GETTABLEKS                       R24 R24 K27 ["createElement"]
      170 GETUPVAL                         R25 4
      171 GETTABLEKS                       R25 R25 K49 ["UI"]
      173 GETTABLEKS                       R25 R25 K50 ["ShowOnTop"]
      175 NEWTABLE                         R26 0 0
      177 DUPTABLE                         R27 K52 [{"TooltipFrame"}]
      178 GETUPVAL                         R28 0
      179 GETTABLEKS                       R28 R28 K27 ["createElement"]
      181 LOADK                            R29 K53 ["Frame"]
      182 NEWTABLE                         R30 8 0
      184 GETIMPORT                        R31 K56 [Enum.AutomaticSize.XY]
      186 SETTABLEKS                       R31 R30 K54 ["AutomaticSize"]
      188 SETTABLEKS                       R18 R30 K57 ["Position"]
      190 LOADN                            R31 0
      191 SETTABLEKS                       R31 R30 K58 ["BorderSizePixel"]
      193 LOADN                            R31 100
      194 SETTABLEKS                       R31 R30 K59 ["ZIndex"]
      196 SETTABLEKS                       R19 R30 K60 ["Visible"]
      198 GETUPVAL                         R31 0
      199 GETTABLEKS                       R31 R31 K40 ["Change"]
      201 GETTABLEKS                       R31 R31 K41 ["AbsoluteSize"]
      203 NEWCLOSURE                       R32 P9
      204 CAPTURE                          VAL R15
      205 SETTABLE                         R32 R30 R31
      206 GETUPVAL                         R31 0
      207 GETTABLEKS                       R31 R31 K38 ["Tag"]
      209 LOADK                            R32 K61 ["SceneAnalysis-TooltipFill"]
      210 SETTABLE                         R32 R30 R31
      211 DUPTABLE                         R31 K65 [{"UIStroke", "UICorner", "UIPadding", "TextLabel"}]
      212 GETUPVAL                         R32 0
      213 GETTABLEKS                       R32 R32 K27 ["createElement"]
      215 LOADK                            R33 K62 ["UIStroke"]
      216 DUPTABLE                         R34 K69 [{["Color"], ["Thickness"] = 1.5}]
      217 GETUPVAL                         R35 5
      218 GETTABLEKS                       R35 R35 K70 ["getTooltipStrokeColor"]
      220 CALL                             R35 0 1
      221 SETTABLEKS                       R35 R34 K66 ["Color"]
      223 CALL                             R32 2 1
      224 SETTABLEKS                       R32 R31 K62 ["UIStroke"]
      226 GETUPVAL                         R32 0
      227 GETTABLEKS                       R32 R32 K27 ["createElement"]
      229 LOADK                            R33 K63 ["UICorner"]
      230 DUPTABLE                         R34 K72 [{"CornerRadius"}]
      231 GETIMPORT                        R35 K74 [UDim.new]
      233 LOADN                            R36 0
      234 LOADN                            R37 4
      235 CALL                             R35 2 1
      236 SETTABLEKS                       R35 R34 K71 ["CornerRadius"]
      238 CALL                             R32 2 1
      239 SETTABLEKS                       R32 R31 K63 ["UICorner"]
      241 GETUPVAL                         R32 0
      242 GETTABLEKS                       R32 R32 K27 ["createElement"]
      244 LOADK                            R33 K64 ["UIPadding"]
      245 DUPTABLE                         R34 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      246 GETIMPORT                        R35 K74 [UDim.new]
      248 LOADN                            R36 0
      249 LOADN                            R37 10
      250 CALL                             R35 2 1
      251 SETTABLEKS                       R35 R34 K75 ["PaddingLeft"]
      253 GETIMPORT                        R35 K74 [UDim.new]
      255 LOADN                            R36 0
      256 LOADN                            R37 10
      257 CALL                             R35 2 1
      258 SETTABLEKS                       R35 R34 K76 ["PaddingRight"]
      260 GETIMPORT                        R35 K74 [UDim.new]
      262 LOADN                            R36 0
      263 LOADN                            R37 8
      264 CALL                             R35 2 1
      265 SETTABLEKS                       R35 R34 K77 ["PaddingTop"]
      267 GETIMPORT                        R35 K74 [UDim.new]
      269 LOADN                            R36 0
      270 LOADN                            R37 8
      271 CALL                             R35 2 1
      272 SETTABLEKS                       R35 R34 K78 ["PaddingBottom"]
      274 CALL                             R32 2 1
      275 SETTABLEKS                       R32 R31 K64 ["UIPadding"]
      277 GETUPVAL                         R32 0
      278 GETTABLEKS                       R32 R32 K27 ["createElement"]
      280 LOADK                            R33 K28 ["TextLabel"]
      281 NEWTABLE                         R34 8 0
      283 GETIMPORT                        R35 K56 [Enum.AutomaticSize.XY]
      285 SETTABLEKS                       R35 R34 K54 ["AutomaticSize"]
      287 SETTABLEKS                       R8 R34 K29 ["Text"]
      289 LOADK                            R35 K80 [19.598]
      290 SETTABLEKS                       R35 R34 K81 ["TextSize"]
      292 GETIMPORT                        R35 K37 [Enum.TextXAlignment.Left]
      294 SETTABLEKS                       R35 R34 K35 ["TextXAlignment"]
      296 GETIMPORT                        R35 K84 [Enum.TextYAlignment.Top]
      298 SETTABLEKS                       R35 R34 K82 ["TextYAlignment"]
      300 LOADN                            R35 1
      301 SETTABLEKS                       R35 R34 K34 ["BackgroundTransparency"]
      303 GETUPVAL                         R35 0
      304 GETTABLEKS                       R35 R35 K38 ["Tag"]
      306 LOADK                            R36 K85 ["SceneAnalysis-TooltipText"]
      307 SETTABLE                         R36 R34 R35
      308 CALL                             R32 2 1
      309 SETTABLEKS                       R32 R31 K28 ["TextLabel"]
      311 CALL                             R28 3 1
      312 SETTABLEKS                       R28 R27 K51 ["TooltipFrame"]
      314 CALL                             R24 3 1
      315 SETTABLEKS                       R24 R23 K47 ["TooltipPortal"]
      317 CALL                             R20 3 -1
      318 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
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
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["TextService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Resources"]
       33 GETTABLEKS                       R5 R5 K15 ["StyleConstants"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Bin"]
       40 GETTABLEKS                       R6 R6 K17 ["Common"]
       42 GETTABLEKS                       R6 R6 K18 ["defineLuaFlags"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R5 K19 ["getFFlagSceneManagerRemoveActive"]
       47 CALL                             R6 0 1
       48 GETTABLEKS                       R7 R4 K20 ["defaultFont"]
       50 DUPCLOSURE                       R8 K21 [PROTO_10]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 RETURN                           R8 1
