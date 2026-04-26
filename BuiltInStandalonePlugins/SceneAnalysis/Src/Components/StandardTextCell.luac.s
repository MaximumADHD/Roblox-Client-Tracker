PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["cell"]
        3 GETTABLEKS                       R2 R0 K1 ["d"]
        5 CALL                             R1 1 1
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K3 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+3]
       13 JUMPIFNOTEQKS                    R1 K5 [""] ; [+13]
       15 DUPTABLE                         R2 K8 [{"text", "showTooltip"}]
       16 ORK                              R4 R1 K5 [""]
       17 FASTCALL1                        TOSTRING R4 ; [+2]
       18 GETIMPORT                        R3 K10 [tostring]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K6 ["text"]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K7 ["showTooltip"]
       26 RETURN                           R2 1
       27 GETUPVAL                         R2 1
       28 MOVE                             R4 R1
       29 LOADK                            R5 K11 [17.598]
       30 GETUPVAL                         R6 2
       31 GETIMPORT                        R7 K14 [Vector2.new]
       33 LOADN                            R8 16
       34 LOADN                            R9 16
       35 CALL                             R7 2 -1
       36 NAMECALL                         R2 R2 K15 ["GetTextSize"]
       38 CALL                             R2 -1 1
       39 GETTABLEKS                       R3 R2 K16 ["X"]
       41 GETTABLEKS                       R5 R0 K18 ["absoluteWidth"]
       43 SUBK                             R4 R5 K17 [4]
       44 JUMPIFNOTLE                      R3 R4 ; [+8]
       46 DUPTABLE                         R3 K8 [{"text", "showTooltip"}]
       47 SETTABLEKS                       R1 R3 K6 ["text"]
       49 LOADB                            R4 0
       50 SETTABLEKS                       R4 R3 K7 ["showTooltip"]
       52 RETURN                           R3 1
       53 DUPTABLE                         R3 K8 [{"text", "showTooltip"}]
       54 SETTABLEKS                       R1 R3 K6 ["text"]
       56 LOADB                            R4 1
       57 SETTABLEKS                       R4 R3 K7 ["showTooltip"]
       59 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["showTooltip"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["pos"]
        2 GETTABLEKS                       R2 R3 K2 ["X"]
        4 ADDK                             R1 R2 K0 [15]
        5 GETTABLEKS                       R4 R0 K1 ["pos"]
        7 GETTABLEKS                       R3 R4 K3 ["Y"]
        9 ADDK                             R2 R3 K0 [15]
       10 GETTABLEKS                       R5 R0 K4 ["tSize"]
       12 GETTABLEKS                       R4 R5 K2 ["X"]
       14 ADD                              R3 R1 R4
       15 GETTABLEKS                       R5 R0 K5 ["cSize"]
       17 GETTABLEKS                       R4 R5 K2 ["X"]
       19 JUMPIFNOTLT                      R4 R3 ; [+11]
       21 GETTABLEKS                       R5 R0 K1 ["pos"]
       23 GETTABLEKS                       R4 R5 K2 ["X"]
       25 GETTABLEKS                       R6 R0 K4 ["tSize"]
       27 GETTABLEKS                       R5 R6 K2 ["X"]
       29 SUB                              R3 R4 R5
       30 SUBK                             R1 R3 K0 [15]
       31 GETTABLEKS                       R5 R0 K4 ["tSize"]
       33 GETTABLEKS                       R4 R5 K3 ["Y"]
       35 ADD                              R3 R2 R4
       36 GETTABLEKS                       R5 R0 K5 ["cSize"]
       38 GETTABLEKS                       R4 R5 K3 ["Y"]
       40 JUMPIFNOTLT                      R4 R3 ; [+11]
       42 GETTABLEKS                       R5 R0 K1 ["pos"]
       44 GETTABLEKS                       R4 R5 K3 ["Y"]
       46 GETTABLEKS                       R6 R0 K4 ["tSize"]
       48 GETTABLEKS                       R5 R6 K3 ["Y"]
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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
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
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["useBinding"]
       11 LOADN                            R6 16
       12 CALL                             R5 1 2
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K5 ["joinBindings"]
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
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R10 R11 K4 ["useBinding"]
       40 LOADB                            R11 0
       41 CALL                             R10 1 2
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R12 R13 K4 ["useBinding"]
       45 GETIMPORT                        R13 K14 [Vector2.zero]
       47 CALL                             R12 1 2
       48 GETUPVAL                         R15 0
       49 GETTABLEKS                       R14 R15 K4 ["useBinding"]
       51 GETIMPORT                        R15 K16 [Vector2.new]
       53 LOADN                            R16 0
       54 LOADN                            R17 0
       55 CALL                             R15 2 -1
       56 CALL                             R14 -1 2
       57 GETUPVAL                         R17 0
       58 GETTABLEKS                       R16 R17 K4 ["useBinding"]
       60 GETIMPORT                        R17 K16 [Vector2.new]
       62 LOADN                            R18 16
       63 LOADN                            R19 16
       64 CALL                             R17 2 -1
       65 CALL                             R16 -1 2
       66 GETUPVAL                         R19 0
       67 GETTABLEKS                       R18 R19 K5 ["joinBindings"]
       69 DUPTABLE                         R19 K20 [{"pos", "tSize", "cSize"}]
       70 SETTABLEKS                       R12 R19 K17 ["pos"]
       72 SETTABLEKS                       R14 R19 K18 ["tSize"]
       74 SETTABLEKS                       R16 R19 K19 ["cSize"]
       76 CALL                             R18 1 1
       77 DUPCLOSURE                       R20 K21 [PROTO_3]
       78 NAMECALL                         R18 R18 K9 ["map"]
       80 CALL                             R18 2 1
       81 GETUPVAL                         R20 0
       82 GETTABLEKS                       R19 R20 K5 ["joinBindings"]
       84 DUPTABLE                         R20 K25 [{"enabled", "hovered", "text"}]
       85 SETTABLEKS                       R9 R20 K22 ["enabled"]
       87 SETTABLEKS                       R10 R20 K23 ["hovered"]
       89 SETTABLEKS                       R8 R20 K24 ["text"]
       91 CALL                             R19 1 1
       92 DUPCLOSURE                       R21 K26 [PROTO_4]
       93 NAMECALL                         R19 R19 K9 ["map"]
       95 CALL                             R19 2 1
       96 GETUPVAL                         R21 0
       97 GETTABLEKS                       R20 R21 K27 ["createElement"]
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
      119 GETUPVAL                         R24 0
      120 GETTABLEKS                       R23 R24 K38 ["Tag"]
      122 LOADK                            R24 K39 ["SceneAnalysis-StandardText SceneAnalysis-ListItems"]
      123 SETTABLE                         R24 R22 R23
      124 GETUPVAL                         R25 0
      125 GETTABLEKS                       R24 R25 K40 ["Change"]
      127 GETTABLEKS                       R23 R24 K41 ["AbsoluteSize"]
      129 NEWCLOSURE                       R24 P5
      130 CAPTURE                          VAL R6
      131 SETTABLE                         R24 R22 R23
      132 GETUPVAL                         R25 0
      133 GETTABLEKS                       R24 R25 K42 ["Event"]
      135 GETTABLEKS                       R23 R24 K43 ["MouseEnter"]
      137 NEWCLOSURE                       R24 P6
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R17
      141 SETTABLE                         R24 R22 R23
      142 GETUPVAL                         R25 0
      143 GETTABLEKS                       R24 R25 K42 ["Event"]
      145 GETTABLEKS                       R23 R24 K44 ["MouseMoved"]
      147 NEWCLOSURE                       R24 P7
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R17
      150 SETTABLE                         R24 R22 R23
      151 GETUPVAL                         R25 0
      152 GETTABLEKS                       R24 R25 K42 ["Event"]
      154 GETTABLEKS                       R23 R24 K45 ["MouseLeave"]
      156 NEWCLOSURE                       R24 P8
      157 CAPTURE                          VAL R11
      158 SETTABLE                         R24 R22 R23
      159 LOADB                            R23 1
      160 SETTABLEKS                       R23 R22 K46 ["Active"]
      162 DUPTABLE                         R23 K48 [{"TooltipPortal"}]
      163 GETUPVAL                         R25 0
      164 GETTABLEKS                       R24 R25 K27 ["createElement"]
      166 GETUPVAL                         R27 3
      167 GETTABLEKS                       R26 R27 K49 ["UI"]
      169 GETTABLEKS                       R25 R26 K50 ["ShowOnTop"]
      171 NEWTABLE                         R26 0 0
      173 DUPTABLE                         R27 K52 [{"TooltipFrame"}]
      174 GETUPVAL                         R29 0
      175 GETTABLEKS                       R28 R29 K27 ["createElement"]
      177 LOADK                            R29 K53 ["Frame"]
      178 NEWTABLE                         R30 8 0
      180 GETIMPORT                        R31 K56 [Enum.AutomaticSize.XY]
      182 SETTABLEKS                       R31 R30 K54 ["AutomaticSize"]
      184 SETTABLEKS                       R18 R30 K57 ["Position"]
      186 LOADN                            R31 0
      187 SETTABLEKS                       R31 R30 K58 ["BorderSizePixel"]
      189 LOADN                            R31 100
      190 SETTABLEKS                       R31 R30 K59 ["ZIndex"]
      192 SETTABLEKS                       R19 R30 K60 ["Visible"]
      194 GETUPVAL                         R33 0
      195 GETTABLEKS                       R32 R33 K40 ["Change"]
      197 GETTABLEKS                       R31 R32 K41 ["AbsoluteSize"]
      199 NEWCLOSURE                       R32 P9
      200 CAPTURE                          VAL R15
      201 SETTABLE                         R32 R30 R31
      202 GETUPVAL                         R32 0
      203 GETTABLEKS                       R31 R32 K38 ["Tag"]
      205 LOADK                            R32 K61 ["SceneAnalysis-TooltipFill"]
      206 SETTABLE                         R32 R30 R31
      207 DUPTABLE                         R31 K65 [{"UIStroke", "UICorner", "UIPadding", "TextLabel"}]
      208 GETUPVAL                         R33 0
      209 GETTABLEKS                       R32 R33 K27 ["createElement"]
      211 LOADK                            R33 K62 ["UIStroke"]
      212 DUPTABLE                         R34 K68 [{"Color", "Thickness"}]
      213 GETUPVAL                         R36 4
      214 GETTABLEKS                       R35 R36 K69 ["getTooltipStrokeColor"]
      216 CALL                             R35 0 1
      217 SETTABLEKS                       R35 R34 K66 ["Color"]
      219 LOADK                            R35 K70 [1.5]
      220 SETTABLEKS                       R35 R34 K67 ["Thickness"]
      222 CALL                             R32 2 1
      223 SETTABLEKS                       R32 R31 K62 ["UIStroke"]
      225 GETUPVAL                         R33 0
      226 GETTABLEKS                       R32 R33 K27 ["createElement"]
      228 LOADK                            R33 K63 ["UICorner"]
      229 DUPTABLE                         R34 K72 [{"CornerRadius"}]
      230 GETIMPORT                        R35 K74 [UDim.new]
      232 LOADN                            R36 0
      233 LOADN                            R37 4
      234 CALL                             R35 2 1
      235 SETTABLEKS                       R35 R34 K71 ["CornerRadius"]
      237 CALL                             R32 2 1
      238 SETTABLEKS                       R32 R31 K63 ["UICorner"]
      240 GETUPVAL                         R33 0
      241 GETTABLEKS                       R32 R33 K27 ["createElement"]
      243 LOADK                            R33 K64 ["UIPadding"]
      244 DUPTABLE                         R34 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      245 GETIMPORT                        R35 K74 [UDim.new]
      247 LOADN                            R36 0
      248 LOADN                            R37 10
      249 CALL                             R35 2 1
      250 SETTABLEKS                       R35 R34 K75 ["PaddingLeft"]
      252 GETIMPORT                        R35 K74 [UDim.new]
      254 LOADN                            R36 0
      255 LOADN                            R37 10
      256 CALL                             R35 2 1
      257 SETTABLEKS                       R35 R34 K76 ["PaddingRight"]
      259 GETIMPORT                        R35 K74 [UDim.new]
      261 LOADN                            R36 0
      262 LOADN                            R37 8
      263 CALL                             R35 2 1
      264 SETTABLEKS                       R35 R34 K77 ["PaddingTop"]
      266 GETIMPORT                        R35 K74 [UDim.new]
      268 LOADN                            R36 0
      269 LOADN                            R37 8
      270 CALL                             R35 2 1
      271 SETTABLEKS                       R35 R34 K78 ["PaddingBottom"]
      273 CALL                             R32 2 1
      274 SETTABLEKS                       R32 R31 K64 ["UIPadding"]
      276 GETUPVAL                         R33 0
      277 GETTABLEKS                       R32 R33 K27 ["createElement"]
      279 LOADK                            R33 K28 ["TextLabel"]
      280 NEWTABLE                         R34 8 0
      282 GETIMPORT                        R35 K56 [Enum.AutomaticSize.XY]
      284 SETTABLEKS                       R35 R34 K54 ["AutomaticSize"]
      286 SETTABLEKS                       R8 R34 K29 ["Text"]
      288 LOADK                            R35 K80 [19.598]
      289 SETTABLEKS                       R35 R34 K81 ["TextSize"]
      291 GETIMPORT                        R35 K37 [Enum.TextXAlignment.Left]
      293 SETTABLEKS                       R35 R34 K35 ["TextXAlignment"]
      295 GETIMPORT                        R35 K84 [Enum.TextYAlignment.Top]
      297 SETTABLEKS                       R35 R34 K82 ["TextYAlignment"]
      299 LOADN                            R35 1
      300 SETTABLEKS                       R35 R34 K34 ["BackgroundTransparency"]
      302 GETUPVAL                         R36 0
      303 GETTABLEKS                       R35 R36 K38 ["Tag"]
      305 LOADK                            R36 K85 ["SceneAnalysis-TooltipText"]
      306 SETTABLE                         R36 R34 R35
      307 CALL                             R32 2 1
      308 SETTABLEKS                       R32 R31 K28 ["TextLabel"]
      310 CALL                             R28 3 1
      311 SETTABLEKS                       R28 R27 K51 ["TooltipFrame"]
      313 CALL                             R24 3 1
      314 SETTABLEKS                       R24 R23 K47 ["TooltipPortal"]
      316 CALL                             R20 3 -1
      317 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
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
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["TextService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K13 ["Src"]
       31 GETTABLEKS                       R6 R7 K14 ["Resources"]
       33 GETTABLEKS                       R5 R6 K15 ["StyleConstants"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K16 ["defaultFont"]
       38 DUPCLOSURE                       R6 K17 [PROTO_10]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
