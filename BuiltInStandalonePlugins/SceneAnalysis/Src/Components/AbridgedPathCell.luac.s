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
       45 GETIMPORT                        R4 K17 [table.concat]
       47 MOVE                             R5 R2
       48 LOADK                            R6 K18 ["\n"]
       49 CALL                             R4 2 1
       50 NEWTABLE                         R5 0 0
       52 GETIMPORT                        R6 K20 [ipairs]
       54 MOVE                             R7 R2
       55 CALL                             R6 1 3
       56 FORGPREP_INEXT                   R6
       57 MOVE                             R12 R5
       58 GETUPVAL                         R13 1
       59 MOVE                             R14 R10
       60 CALL                             R13 1 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R11 K22 [table.insert]
       64 CALL                             R11 -1 0
       65 FORGLOOP                         R6 2 [inext] ; [-9]
       67 GETIMPORT                        R6 K17 [table.concat]
       69 MOVE                             R7 R5
       70 LOADK                            R8 K14 [", "]
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 2
       73 MOVE                             R9 R1
       74 LOADK                            R10 K23 [17.598]
       75 GETUPVAL                         R11 3
       76 GETIMPORT                        R12 K26 [Vector2.new]
       78 LOADN                            R13 16
       79 LOADN                            R14 16
       80 CALL                             R12 2 -1
       81 NAMECALL                         R7 R7 K27 ["GetTextSize"]
       83 CALL                             R7 -1 1
       84 GETTABLEKS                       R8 R7 K28 ["X"]
       86 GETTABLEKS                       R10 R0 K30 ["absoluteWidth"]
       88 SUBK                             R9 R10 K29 [4]
       89 JUMPIFNOTLE                      R8 R9 ; [+9]
       91 DUPTABLE                         R8 K9 [{"text", "showTooltip", "tooltipText"}]
       92 SETTABLEKS                       R1 R8 K6 ["text"]
       94 SETTABLEKS                       R3 R8 K7 ["showTooltip"]
       96 SETTABLEKS                       R4 R8 K8 ["tooltipText"]
       98 RETURN                           R8 1
       99 DUPTABLE                         R8 K9 [{"text", "showTooltip", "tooltipText"}]
      100 SETTABLEKS                       R6 R8 K6 ["text"]
      102 LOADB                            R9 1
      103 SETTABLEKS                       R9 R8 K7 ["showTooltip"]
      105 SETTABLEKS                       R4 R8 K8 ["tooltipText"]
      107 RETURN                           R8 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["showTooltip"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["tooltipText"]
        2 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
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
       26 CAPTURE                          UPVAL U3
       27 NAMECALL                         R7 R7 K9 ["map"]
       29 CALL                             R7 2 1
       30 DUPCLOSURE                       R10 K10 [PROTO_1]
       31 NAMECALL                         R8 R7 K9 ["map"]
       33 CALL                             R8 2 1
       34 DUPCLOSURE                       R11 K11 [PROTO_2]
       35 NAMECALL                         R9 R7 K9 ["map"]
       37 CALL                             R9 2 1
       38 DUPCLOSURE                       R12 K12 [PROTO_3]
       39 NAMECALL                         R10 R7 K9 ["map"]
       41 CALL                             R10 2 1
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R11 R12 K4 ["useBinding"]
       45 LOADB                            R12 0
       46 CALL                             R11 1 2
       47 GETUPVAL                         R14 0
       48 GETTABLEKS                       R13 R14 K4 ["useBinding"]
       50 GETIMPORT                        R14 K15 [Vector2.zero]
       52 CALL                             R13 1 2
       53 GETUPVAL                         R16 0
       54 GETTABLEKS                       R15 R16 K4 ["useBinding"]
       56 GETIMPORT                        R16 K17 [Vector2.new]
       58 LOADN                            R17 0
       59 LOADN                            R18 0
       60 CALL                             R16 2 -1
       61 CALL                             R15 -1 2
       62 GETUPVAL                         R18 0
       63 GETTABLEKS                       R17 R18 K4 ["useBinding"]
       65 GETIMPORT                        R18 K17 [Vector2.new]
       67 LOADN                            R19 16
       68 LOADN                            R20 16
       69 CALL                             R18 2 -1
       70 CALL                             R17 -1 2
       71 GETUPVAL                         R20 0
       72 GETTABLEKS                       R19 R20 K5 ["joinBindings"]
       74 DUPTABLE                         R20 K21 [{"pos", "tSize", "cSize"}]
       75 SETTABLEKS                       R13 R20 K18 ["pos"]
       77 SETTABLEKS                       R15 R20 K19 ["tSize"]
       79 SETTABLEKS                       R17 R20 K20 ["cSize"]
       81 CALL                             R19 1 1
       82 DUPCLOSURE                       R21 K22 [PROTO_4]
       83 NAMECALL                         R19 R19 K9 ["map"]
       85 CALL                             R19 2 1
       86 GETUPVAL                         R21 0
       87 GETTABLEKS                       R20 R21 K5 ["joinBindings"]
       89 DUPTABLE                         R21 K26 [{"enabled", "hovered", "text"}]
       90 SETTABLEKS                       R9 R21 K23 ["enabled"]
       92 SETTABLEKS                       R11 R21 K24 ["hovered"]
       94 SETTABLEKS                       R10 R21 K25 ["text"]
       96 CALL                             R20 1 1
       97 DUPCLOSURE                       R22 K27 [PROTO_5]
       98 NAMECALL                         R20 R20 K9 ["map"]
      100 CALL                             R20 2 1
      101 GETUPVAL                         R22 0
      102 GETTABLEKS                       R21 R22 K28 ["createElement"]
      104 LOADK                            R22 K29 ["TextLabel"]
      105 NEWTABLE                         R23 16 0
      107 SETTABLEKS                       R2 R23 K1 ["Size"]
      109 SETTABLEKS                       R3 R23 K2 ["LayoutOrder"]
      111 SETTABLEKS                       R8 R23 K30 ["Text"]
      113 GETIMPORT                        R24 K34 [Enum.TextTruncate.AtEnd]
      115 SETTABLEKS                       R24 R23 K32 ["TextTruncate"]
      117 LOADN                            R24 1
      118 SETTABLEKS                       R24 R23 K35 ["BackgroundTransparency"]
      120 GETIMPORT                        R24 K38 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R24 R23 K36 ["TextXAlignment"]
      124 GETUPVAL                         R25 0
      125 GETTABLEKS                       R24 R25 K39 ["Tag"]
      127 LOADK                            R25 K40 ["SceneAnalysis-StandardText SceneAnalysis-ListItems"]
      128 SETTABLE                         R25 R23 R24
      129 GETUPVAL                         R26 0
      130 GETTABLEKS                       R25 R26 K41 ["Change"]
      132 GETTABLEKS                       R24 R25 K42 ["AbsoluteSize"]
      134 NEWCLOSURE                       R25 P6
      135 CAPTURE                          VAL R6
      136 SETTABLE                         R25 R23 R24
      137 GETUPVAL                         R26 0
      138 GETTABLEKS                       R25 R26 K43 ["Event"]
      140 GETTABLEKS                       R24 R25 K44 ["MouseEnter"]
      142 NEWCLOSURE                       R25 P7
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R18
      146 SETTABLE                         R25 R23 R24
      147 GETUPVAL                         R26 0
      148 GETTABLEKS                       R25 R26 K43 ["Event"]
      150 GETTABLEKS                       R24 R25 K45 ["MouseMoved"]
      152 NEWCLOSURE                       R25 P8
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R18
      155 SETTABLE                         R25 R23 R24
      156 GETUPVAL                         R26 0
      157 GETTABLEKS                       R25 R26 K43 ["Event"]
      159 GETTABLEKS                       R24 R25 K46 ["MouseLeave"]
      161 NEWCLOSURE                       R25 P9
      162 CAPTURE                          VAL R12
      163 SETTABLE                         R25 R23 R24
      164 LOADB                            R24 1
      165 SETTABLEKS                       R24 R23 K47 ["Active"]
      167 DUPTABLE                         R24 K49 [{"TooltipPortal"}]
      168 GETUPVAL                         R26 0
      169 GETTABLEKS                       R25 R26 K28 ["createElement"]
      171 GETUPVAL                         R28 4
      172 GETTABLEKS                       R27 R28 K50 ["UI"]
      174 GETTABLEKS                       R26 R27 K51 ["ShowOnTop"]
      176 NEWTABLE                         R27 0 0
      178 DUPTABLE                         R28 K53 [{"TooltipFrame"}]
      179 GETUPVAL                         R30 0
      180 GETTABLEKS                       R29 R30 K28 ["createElement"]
      182 LOADK                            R30 K54 ["Frame"]
      183 NEWTABLE                         R31 8 0
      185 GETIMPORT                        R32 K57 [Enum.AutomaticSize.XY]
      187 SETTABLEKS                       R32 R31 K55 ["AutomaticSize"]
      189 SETTABLEKS                       R19 R31 K58 ["Position"]
      191 LOADN                            R32 0
      192 SETTABLEKS                       R32 R31 K59 ["BorderSizePixel"]
      194 LOADN                            R32 100
      195 SETTABLEKS                       R32 R31 K60 ["ZIndex"]
      197 SETTABLEKS                       R20 R31 K61 ["Visible"]
      199 GETUPVAL                         R34 0
      200 GETTABLEKS                       R33 R34 K41 ["Change"]
      202 GETTABLEKS                       R32 R33 K42 ["AbsoluteSize"]
      204 NEWCLOSURE                       R33 P10
      205 CAPTURE                          VAL R16
      206 SETTABLE                         R33 R31 R32
      207 GETUPVAL                         R33 0
      208 GETTABLEKS                       R32 R33 K39 ["Tag"]
      210 LOADK                            R33 K62 ["SceneAnalysis-TooltipFill"]
      211 SETTABLE                         R33 R31 R32
      212 DUPTABLE                         R32 K66 [{"UIStroke", "UICorner", "UIPadding", "TextLabel"}]
      213 GETUPVAL                         R34 0
      214 GETTABLEKS                       R33 R34 K28 ["createElement"]
      216 LOADK                            R34 K63 ["UIStroke"]
      217 DUPTABLE                         R35 K69 [{"Color", "Thickness"}]
      218 GETUPVAL                         R37 5
      219 GETTABLEKS                       R36 R37 K70 ["getTooltipStrokeColor"]
      221 CALL                             R36 0 1
      222 SETTABLEKS                       R36 R35 K67 ["Color"]
      224 LOADK                            R36 K71 [1.5]
      225 SETTABLEKS                       R36 R35 K68 ["Thickness"]
      227 CALL                             R33 2 1
      228 SETTABLEKS                       R33 R32 K63 ["UIStroke"]
      230 GETUPVAL                         R34 0
      231 GETTABLEKS                       R33 R34 K28 ["createElement"]
      233 LOADK                            R34 K64 ["UICorner"]
      234 DUPTABLE                         R35 K73 [{"CornerRadius"}]
      235 GETIMPORT                        R36 K75 [UDim.new]
      237 LOADN                            R37 0
      238 LOADN                            R38 4
      239 CALL                             R36 2 1
      240 SETTABLEKS                       R36 R35 K72 ["CornerRadius"]
      242 CALL                             R33 2 1
      243 SETTABLEKS                       R33 R32 K64 ["UICorner"]
      245 GETUPVAL                         R34 0
      246 GETTABLEKS                       R33 R34 K28 ["createElement"]
      248 LOADK                            R34 K65 ["UIPadding"]
      249 DUPTABLE                         R35 K80 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      250 GETIMPORT                        R36 K75 [UDim.new]
      252 LOADN                            R37 0
      253 LOADN                            R38 10
      254 CALL                             R36 2 1
      255 SETTABLEKS                       R36 R35 K76 ["PaddingLeft"]
      257 GETIMPORT                        R36 K75 [UDim.new]
      259 LOADN                            R37 0
      260 LOADN                            R38 10
      261 CALL                             R36 2 1
      262 SETTABLEKS                       R36 R35 K77 ["PaddingRight"]
      264 GETIMPORT                        R36 K75 [UDim.new]
      266 LOADN                            R37 0
      267 LOADN                            R38 8
      268 CALL                             R36 2 1
      269 SETTABLEKS                       R36 R35 K78 ["PaddingTop"]
      271 GETIMPORT                        R36 K75 [UDim.new]
      273 LOADN                            R37 0
      274 LOADN                            R38 8
      275 CALL                             R36 2 1
      276 SETTABLEKS                       R36 R35 K79 ["PaddingBottom"]
      278 CALL                             R33 2 1
      279 SETTABLEKS                       R33 R32 K65 ["UIPadding"]
      281 GETUPVAL                         R34 0
      282 GETTABLEKS                       R33 R34 K28 ["createElement"]
      284 LOADK                            R34 K29 ["TextLabel"]
      285 NEWTABLE                         R35 8 0
      287 GETIMPORT                        R36 K57 [Enum.AutomaticSize.XY]
      289 SETTABLEKS                       R36 R35 K55 ["AutomaticSize"]
      291 SETTABLEKS                       R10 R35 K30 ["Text"]
      293 LOADK                            R36 K81 [19.598]
      294 SETTABLEKS                       R36 R35 K82 ["TextSize"]
      296 GETIMPORT                        R36 K38 [Enum.TextXAlignment.Left]
      298 SETTABLEKS                       R36 R35 K36 ["TextXAlignment"]
      300 GETIMPORT                        R36 K85 [Enum.TextYAlignment.Top]
      302 SETTABLEKS                       R36 R35 K83 ["TextYAlignment"]
      304 LOADN                            R36 1
      305 SETTABLEKS                       R36 R35 K35 ["BackgroundTransparency"]
      307 GETUPVAL                         R37 0
      308 GETTABLEKS                       R36 R37 K39 ["Tag"]
      310 LOADK                            R37 K86 ["SceneAnalysis-TooltipText"]
      311 SETTABLE                         R37 R35 R36
      312 CALL                             R33 2 1
      313 SETTABLEKS                       R33 R32 K29 ["TextLabel"]
      315 CALL                             R29 3 1
      316 SETTABLEKS                       R29 R28 K52 ["TooltipFrame"]
      318 CALL                             R25 3 1
      319 SETTABLEKS                       R25 R24 K48 ["TooltipPortal"]
      321 CALL                             R21 3 -1
      322 RETURN                           R21 -1

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
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Src"]
       40 GETTABLEKS                       R7 R8 K16 ["Util"]
       42 GETTABLEKS                       R6 R7 K17 ["abridgePath"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R4 K18 ["defaultFont"]
       47 DUPCLOSURE                       R7 K19 [PROTO_11]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 RETURN                           R7 1
