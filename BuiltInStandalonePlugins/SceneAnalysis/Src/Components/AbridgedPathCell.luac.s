PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLE                         R9 R2 R8
        9 JUMPIF                           R9 ; [+9]
       10 LOADN                            R9 0
       11 SETTABLE                         R9 R2 R8
       12 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       14 MOVE                             R10 R3
       15 MOVE                             R11 R8
       16 GETIMPORT                        R9 K2 [table.insert]
       18 CALL                             R9 2 0
       19 GETTABLE                         R9 R2 R8
       20 ADDK                             R9 R9 K3 [1]
       21 SETTABLE                         R9 R2 R8
       22 FORGLOOP                         R4 2 ; [-15]
       24 NEWTABLE                         R4 0 0
       26 MOVE                             R5 R3
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLE                         R13 R2 R9
       31 LOADN                            R14 1
       32 JUMPIFNOTLT                      R14 R13 ; [+7]
       34 MOVE                             R13 R9
       35 LOADK                            R14 K4 [" (x"]
       36 GETTABLE                         R15 R2 R9
       37 LOADK                            R16 K5 [")"]
       38 CONCAT                           R12 R13 R16
       39 JUMP                             ; [+1]
       40 MOVE                             R12 R9
       41 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       43 MOVE                             R11 R4
       44 GETIMPORT                        R10 K2 [table.insert]
       46 CALL                             R10 2 0
       47 FORGLOOP                         R5 2 ; [-18]
       49 GETIMPORT                        R5 K7 [table.concat]
       51 MOVE                             R6 R4
       52 MOVE                             R7 R1
       53 CALL                             R5 2 -1
       54 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cell"]
        3 GETTABLEKS                       R2 R0 K1 ["d"]
        5 CALL                             R1 1 1
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K3 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+3]
       13 JUMPIFNOTEQKS                    R1 K5 [""] ; [+20]
       15 DUPTABLE                         R2 K9 [{"text", "showTooltip", "tooltipText"}]
       16 ORK                              R4 R1 K5 [""]
       17 FASTCALL1                        TOSTRING R4 ; [+2]
       18 GETIMPORT                        R3 K11 [tostring]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K6 ["text"]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K7 ["showTooltip"]
       26 ORK                              R4 R1 K5 [""]
       27 FASTCALL1                        TOSTRING R4 ; [+2]
       28 GETIMPORT                        R3 K11 [tostring]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K8 ["tooltipText"]
       33 RETURN                           R2 1
       34 GETIMPORT                        R2 K13 [string.split]
       36 MOVE                             R3 R1
       37 LOADK                            R4 K14 [", "]
       38 CALL                             R2 2 1
       39 LENGTH                           R4 R2
       40 LOADN                            R5 1
       41 JUMPIFLT                         R5 R4 ; [+2]
       43 LOADB                            R3 0 +1
       44 LOADB                            R3 1
       45 JUMPIFNOT                        R3 ; [+5]
       46 GETUPVAL                         R4 1
       47 MOVE                             R5 R2
       48 LOADK                            R6 K15 ["\n"]
       49 CALL                             R4 2 1
       50 JUMP                             ; [+1]
       51 MOVE                             R4 R1
       52 LOADNIL                          R5
       53 JUMPIFNOT                        R3 ; [+22]
       54 NEWTABLE                         R6 0 0
       56 MOVE                             R7 R2
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 FORGPREP                         R7
       60 MOVE                             R13 R6
       61 GETUPVAL                         R14 2
       62 MOVE                             R15 R11
       63 CALL                             R14 1 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R12 K18 [table.insert]
       67 CALL                             R12 -1 0
       68 FORGLOOP                         R7 2 ; [-9]
       70 GETUPVAL                         R7 1
       71 MOVE                             R8 R6
       72 LOADK                            R9 K14 [", "]
       73 CALL                             R7 2 1
       74 MOVE                             R5 R7
       75 JUMP                             ; [+4]
       76 GETUPVAL                         R6 2
       77 MOVE                             R7 R1
       78 CALL                             R6 1 1
       79 MOVE                             R5 R6
       80 GETUPVAL                         R6 3
       81 MOVE                             R8 R1
       82 LOADK                            R9 K19 [17.598]
       83 GETUPVAL                         R10 4
       84 GETIMPORT                        R11 K22 [Vector2.new]
       86 LOADN                            R12 16
       87 LOADN                            R13 16
       88 CALL                             R11 2 -1
       89 NAMECALL                         R6 R6 K23 ["GetTextSize"]
       91 CALL                             R6 -1 1
       92 GETTABLEKS                       R7 R6 K24 ["X"]
       94 GETTABLEKS                       R9 R0 K26 ["absoluteWidth"]
       96 SUBK                             R8 R9 K25 [4]
       97 JUMPIFNOTLE                      R7 R8 ; [+9]
       99 DUPTABLE                         R7 K9 [{"text", "showTooltip", "tooltipText"}]
      100 SETTABLEKS                       R1 R7 K6 ["text"]
      102 SETTABLEKS                       R3 R7 K7 ["showTooltip"]
      104 SETTABLEKS                       R4 R7 K8 ["tooltipText"]
      106 RETURN                           R7 1
      107 DUPTABLE                         R7 K9 [{"text", "showTooltip", "tooltipText"}]
      108 SETTABLEKS                       R5 R7 K6 ["text"]
      110 LOADB                            R8 1
      111 SETTABLEKS                       R8 R7 K7 ["showTooltip"]
      113 SETTABLEKS                       R4 R7 K8 ["tooltipText"]
      115 RETURN                           R7 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["showTooltip"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["tooltipText"]
        2 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["displayData"]
        2 GETTABLEKS                       R2 R0 K1 ["Size"]
        4 GETTABLEKS                       R3 R0 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R0 K3 ["col"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["useBinding"]
       11 LOADN                            R6 16
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
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 NAMECALL                         R7 R7 K9 ["map"]
       30 CALL                             R7 2 1
       31 DUPCLOSURE                       R10 K10 [PROTO_2]
       32 NAMECALL                         R8 R7 K9 ["map"]
       34 CALL                             R8 2 1
       35 DUPCLOSURE                       R11 K11 [PROTO_3]
       36 NAMECALL                         R9 R7 K9 ["map"]
       38 CALL                             R9 2 1
       39 DUPCLOSURE                       R12 K12 [PROTO_4]
       40 NAMECALL                         R10 R7 K9 ["map"]
       42 CALL                             R10 2 1
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K4 ["useBinding"]
       46 LOADB                            R12 0
       47 CALL                             R11 1 2
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K4 ["useBinding"]
       51 GETIMPORT                        R14 K15 [Vector2.zero]
       53 CALL                             R13 1 2
       54 GETUPVAL                         R15 0
       55 GETTABLEKS                       R15 R15 K4 ["useBinding"]
       57 GETIMPORT                        R16 K17 [Vector2.new]
       59 LOADN                            R17 0
       60 LOADN                            R18 0
       61 CALL                             R16 2 -1
       62 CALL                             R15 -1 2
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R17 R17 K4 ["useBinding"]
       66 GETIMPORT                        R18 K17 [Vector2.new]
       68 LOADN                            R19 16
       69 LOADN                            R20 16
       70 CALL                             R18 2 -1
       71 CALL                             R17 -1 2
       72 GETUPVAL                         R19 0
       73 GETTABLEKS                       R19 R19 K5 ["joinBindings"]
       75 DUPTABLE                         R20 K21 [{"pos", "tSize", "cSize"}]
       76 SETTABLEKS                       R13 R20 K18 ["pos"]
       78 SETTABLEKS                       R15 R20 K19 ["tSize"]
       80 SETTABLEKS                       R17 R20 K20 ["cSize"]
       82 CALL                             R19 1 1
       83 DUPCLOSURE                       R21 K22 [PROTO_5]
       84 NAMECALL                         R19 R19 K9 ["map"]
       86 CALL                             R19 2 1
       87 GETUPVAL                         R20 0
       88 GETTABLEKS                       R20 R20 K5 ["joinBindings"]
       90 DUPTABLE                         R21 K26 [{"enabled", "hovered", "text"}]
       91 SETTABLEKS                       R9 R21 K23 ["enabled"]
       93 SETTABLEKS                       R11 R21 K24 ["hovered"]
       95 SETTABLEKS                       R10 R21 K25 ["text"]
       97 CALL                             R20 1 1
       98 DUPCLOSURE                       R22 K27 [PROTO_6]
       99 NAMECALL                         R20 R20 K9 ["map"]
      101 CALL                             R20 2 1
      102 GETUPVAL                         R21 0
      103 GETTABLEKS                       R21 R21 K28 ["createElement"]
      105 LOADK                            R22 K29 ["TextLabel"]
      106 NEWTABLE                         R23 16 0
      108 SETTABLEKS                       R2 R23 K1 ["Size"]
      110 SETTABLEKS                       R3 R23 K2 ["LayoutOrder"]
      112 SETTABLEKS                       R8 R23 K30 ["Text"]
      114 GETIMPORT                        R24 K34 [Enum.TextTruncate.AtEnd]
      116 SETTABLEKS                       R24 R23 K32 ["TextTruncate"]
      118 LOADN                            R24 1
      119 SETTABLEKS                       R24 R23 K35 ["BackgroundTransparency"]
      121 GETIMPORT                        R24 K38 [Enum.TextXAlignment.Left]
      123 SETTABLEKS                       R24 R23 K36 ["TextXAlignment"]
      125 GETUPVAL                         R24 0
      126 GETTABLEKS                       R24 R24 K39 ["Tag"]
      128 LOADK                            R25 K40 ["SceneAnalysis-StandardText SceneAnalysis-ListItems"]
      129 SETTABLE                         R25 R23 R24
      130 GETUPVAL                         R24 0
      131 GETTABLEKS                       R24 R24 K41 ["Change"]
      133 GETTABLEKS                       R24 R24 K42 ["AbsoluteSize"]
      135 NEWCLOSURE                       R25 P6
      136 CAPTURE                          VAL R6
      137 SETTABLE                         R25 R23 R24
      138 GETUPVAL                         R24 0
      139 GETTABLEKS                       R24 R24 K43 ["Event"]
      141 GETTABLEKS                       R24 R24 K44 ["MouseEnter"]
      143 NEWCLOSURE                       R25 P7
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R18
      147 SETTABLE                         R25 R23 R24
      148 GETUPVAL                         R24 0
      149 GETTABLEKS                       R24 R24 K43 ["Event"]
      151 GETTABLEKS                       R24 R24 K45 ["MouseMoved"]
      153 NEWCLOSURE                       R25 P8
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R18
      156 SETTABLE                         R25 R23 R24
      157 GETUPVAL                         R24 0
      158 GETTABLEKS                       R24 R24 K43 ["Event"]
      160 GETTABLEKS                       R24 R24 K46 ["MouseLeave"]
      162 NEWCLOSURE                       R25 P9
      163 CAPTURE                          VAL R12
      164 SETTABLE                         R25 R23 R24
      165 LOADB                            R24 1
      166 SETTABLEKS                       R24 R23 K47 ["Active"]
      168 DUPTABLE                         R24 K49 [{"TooltipPortal"}]
      169 GETUPVAL                         R25 0
      170 GETTABLEKS                       R25 R25 K28 ["createElement"]
      172 GETUPVAL                         R26 5
      173 GETTABLEKS                       R26 R26 K50 ["UI"]
      175 GETTABLEKS                       R26 R26 K51 ["ShowOnTop"]
      177 NEWTABLE                         R27 0 0
      179 DUPTABLE                         R28 K53 [{"TooltipFrame"}]
      180 GETUPVAL                         R29 0
      181 GETTABLEKS                       R29 R29 K28 ["createElement"]
      183 LOADK                            R30 K54 ["Frame"]
      184 NEWTABLE                         R31 8 0
      186 GETIMPORT                        R32 K57 [Enum.AutomaticSize.XY]
      188 SETTABLEKS                       R32 R31 K55 ["AutomaticSize"]
      190 SETTABLEKS                       R19 R31 K58 ["Position"]
      192 LOADN                            R32 0
      193 SETTABLEKS                       R32 R31 K59 ["BorderSizePixel"]
      195 LOADN                            R32 100
      196 SETTABLEKS                       R32 R31 K60 ["ZIndex"]
      198 SETTABLEKS                       R20 R31 K61 ["Visible"]
      200 GETUPVAL                         R32 0
      201 GETTABLEKS                       R32 R32 K41 ["Change"]
      203 GETTABLEKS                       R32 R32 K42 ["AbsoluteSize"]
      205 NEWCLOSURE                       R33 P10
      206 CAPTURE                          VAL R16
      207 SETTABLE                         R33 R31 R32
      208 GETUPVAL                         R32 0
      209 GETTABLEKS                       R32 R32 K39 ["Tag"]
      211 LOADK                            R33 K62 ["SceneAnalysis-TooltipFill"]
      212 SETTABLE                         R33 R31 R32
      213 DUPTABLE                         R32 K66 [{"UIStroke", "UICorner", "UIPadding", "TextLabel"}]
      214 GETUPVAL                         R33 0
      215 GETTABLEKS                       R33 R33 K28 ["createElement"]
      217 LOADK                            R34 K63 ["UIStroke"]
      218 DUPTABLE                         R35 K69 [{"Color", "Thickness"}]
      219 GETUPVAL                         R36 6
      220 GETTABLEKS                       R36 R36 K70 ["getTooltipStrokeColor"]
      222 CALL                             R36 0 1
      223 SETTABLEKS                       R36 R35 K67 ["Color"]
      225 LOADK                            R36 K71 [1.5]
      226 SETTABLEKS                       R36 R35 K68 ["Thickness"]
      228 CALL                             R33 2 1
      229 SETTABLEKS                       R33 R32 K63 ["UIStroke"]
      231 GETUPVAL                         R33 0
      232 GETTABLEKS                       R33 R33 K28 ["createElement"]
      234 LOADK                            R34 K64 ["UICorner"]
      235 DUPTABLE                         R35 K73 [{"CornerRadius"}]
      236 GETIMPORT                        R36 K75 [UDim.new]
      238 LOADN                            R37 0
      239 LOADN                            R38 4
      240 CALL                             R36 2 1
      241 SETTABLEKS                       R36 R35 K72 ["CornerRadius"]
      243 CALL                             R33 2 1
      244 SETTABLEKS                       R33 R32 K64 ["UICorner"]
      246 GETUPVAL                         R33 0
      247 GETTABLEKS                       R33 R33 K28 ["createElement"]
      249 LOADK                            R34 K65 ["UIPadding"]
      250 DUPTABLE                         R35 K80 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      251 GETIMPORT                        R36 K75 [UDim.new]
      253 LOADN                            R37 0
      254 LOADN                            R38 10
      255 CALL                             R36 2 1
      256 SETTABLEKS                       R36 R35 K76 ["PaddingLeft"]
      258 GETIMPORT                        R36 K75 [UDim.new]
      260 LOADN                            R37 0
      261 LOADN                            R38 10
      262 CALL                             R36 2 1
      263 SETTABLEKS                       R36 R35 K77 ["PaddingRight"]
      265 GETIMPORT                        R36 K75 [UDim.new]
      267 LOADN                            R37 0
      268 LOADN                            R38 8
      269 CALL                             R36 2 1
      270 SETTABLEKS                       R36 R35 K78 ["PaddingTop"]
      272 GETIMPORT                        R36 K75 [UDim.new]
      274 LOADN                            R37 0
      275 LOADN                            R38 8
      276 CALL                             R36 2 1
      277 SETTABLEKS                       R36 R35 K79 ["PaddingBottom"]
      279 CALL                             R33 2 1
      280 SETTABLEKS                       R33 R32 K65 ["UIPadding"]
      282 GETUPVAL                         R33 0
      283 GETTABLEKS                       R33 R33 K28 ["createElement"]
      285 LOADK                            R34 K29 ["TextLabel"]
      286 NEWTABLE                         R35 8 0
      288 GETIMPORT                        R36 K57 [Enum.AutomaticSize.XY]
      290 SETTABLEKS                       R36 R35 K55 ["AutomaticSize"]
      292 SETTABLEKS                       R10 R35 K30 ["Text"]
      294 LOADK                            R36 K81 [19.598]
      295 SETTABLEKS                       R36 R35 K82 ["TextSize"]
      297 GETIMPORT                        R36 K38 [Enum.TextXAlignment.Left]
      299 SETTABLEKS                       R36 R35 K36 ["TextXAlignment"]
      301 GETIMPORT                        R36 K85 [Enum.TextYAlignment.Top]
      303 SETTABLEKS                       R36 R35 K83 ["TextYAlignment"]
      305 LOADN                            R36 1
      306 SETTABLEKS                       R36 R35 K35 ["BackgroundTransparency"]
      308 GETUPVAL                         R36 0
      309 GETTABLEKS                       R36 R36 K39 ["Tag"]
      311 LOADK                            R37 K86 ["SceneAnalysis-TooltipText"]
      312 SETTABLE                         R37 R35 R36
      313 CALL                             R33 2 1
      314 SETTABLEKS                       R33 R32 K29 ["TextLabel"]
      316 CALL                             R29 3 1
      317 SETTABLEKS                       R29 R28 K52 ["TooltipFrame"]
      319 CALL                             R25 3 1
      320 SETTABLEKS                       R25 R24 K48 ["TooltipPortal"]
      322 CALL                             R21 3 -1
      323 RETURN                           R21 -1

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
       38 GETTABLEKS                       R6 R0 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Util"]
       42 GETTABLEKS                       R6 R6 K17 ["abridgePath"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R4 K18 ["defaultFont"]
       47 DUPCLOSURE                       R7 K19 [PROTO_0]
       48 DUPCLOSURE                       R8 K20 [PROTO_12]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 RETURN                           R8 1
