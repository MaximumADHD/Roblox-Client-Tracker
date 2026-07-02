PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["color"]
        3 GETTABLEKS                       R2 R2 K2 ["R"]
        5 MULK                             R1 R2 K0 [255]
        6 FASTCALL1                        MATH_FLOOR R1 ; [+2]
        7 GETIMPORT                        R0 K5 [math.floor]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["color"]
       13 GETTABLEKS                       R3 R3 K6 ["G"]
       15 MULK                             R2 R3 K0 [255]
       16 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       17 GETIMPORT                        R1 K5 [math.floor]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["color"]
       23 GETTABLEKS                       R4 R4 K7 ["B"]
       25 MULK                             R3 R4 K0 [255]
       26 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       27 GETIMPORT                        R2 K5 [math.floor]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K10 [string.format]
       32 LOADK                            R4 K11 ["#%02X%02X%02X"]
       33 MOVE                             R5 R0
       34 MOVE                             R6 R1
       35 MOVE                             R7 R2
       36 CALL                             R3 4 -1
       37 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["alpha"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["color"]
        9 GETTABLEKS                       R2 R2 K3 ["R"]
       11 MULK                             R1 R2 K1 [255]
       12 FASTCALL1                        MATH_FLOOR R1 ; [+2]
       13 GETIMPORT                        R0 K6 [math.floor]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["color"]
       19 GETTABLEKS                       R3 R3 K7 ["G"]
       21 MULK                             R2 R3 K1 [255]
       22 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       23 GETIMPORT                        R1 K6 [math.floor]
       25 CALL                             R1 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K2 ["color"]
       29 GETTABLEKS                       R4 R4 K8 ["B"]
       31 MULK                             R3 R4 K1 [255]
       32 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       33 GETIMPORT                        R2 K6 [math.floor]
       35 CALL                             R2 1 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K0 ["alpha"]
       39 MULK                             R4 R5 K1 [255]
       40 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       41 GETIMPORT                        R3 K6 [math.floor]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K11 [string.format]
       46 LOADK                            R5 K12 ["#%02X%02X%02X%02X"]
       47 MOVE                             R6 R0
       48 MOVE                             R7 R1
       49 MOVE                             R8 R2
       50 MOVE                             R9 R3
       51 CALL                             R4 5 -1
       52 RETURN                           R4 -1

PROTO_2:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["RGB(%d, %d, %d)"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K5 ["color"]
        6 GETTABLEKS                       R4 R4 K6 ["R"]
        8 MULK                             R3 R4 K4 [255]
        9 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       10 GETIMPORT                        R2 K9 [math.floor]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["color"]
       16 GETTABLEKS                       R5 R5 K10 ["G"]
       18 MULK                             R4 R5 K4 [255]
       19 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       20 GETIMPORT                        R3 K9 [math.floor]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K5 ["color"]
       26 GETTABLEKS                       R6 R6 K11 ["B"]
       28 MULK                             R5 R6 K4 [255]
       29 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       30 GETIMPORT                        R4 K9 [math.floor]
       32 CALL                             R4 1 1
       33 CALL                             R0 4 -1
       34 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["alpha"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K3 [string.format]
        8 LOADK                            R1 K4 ["RGBA(%d, %d, %d, %.2f)"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K6 ["color"]
       12 GETTABLEKS                       R4 R4 K7 ["R"]
       14 MULK                             R3 R4 K5 [255]
       15 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       16 GETIMPORT                        R2 K10 [math.floor]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K6 ["color"]
       22 GETTABLEKS                       R5 R5 K11 ["G"]
       24 MULK                             R4 R5 K5 [255]
       25 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       26 GETIMPORT                        R3 K10 [math.floor]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K6 ["color"]
       32 GETTABLEKS                       R6 R6 K12 ["B"]
       34 MULK                             R5 R6 K5 [255]
       35 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       36 GETIMPORT                        R4 K10 [math.floor]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K0 ["alpha"]
       42 CALL                             R0 5 -1
       43 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["color"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R5 0 4
       21 GETTABLEKS                       R6 R0 K1 ["color"]
       23 GETTABLEKS                       R6 R6 K2 ["R"]
       25 GETTABLEKS                       R7 R0 K1 ["color"]
       27 GETTABLEKS                       R7 R7 K3 ["G"]
       29 GETTABLEKS                       R8 R0 K1 ["color"]
       31 GETTABLEKS                       R8 R8 K4 ["B"]
       33 GETTABLEKS                       R9 R0 K5 ["alpha"]
       35 SETLIST                          R5 R6 4 [1]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       41 NEWCLOSURE                       R5 P2
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R6 0 1
       45 GETTABLEKS                       R7 R0 K1 ["color"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       53 NEWCLOSURE                       R6 P3
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R7 0 4
       57 GETTABLEKS                       R8 R0 K1 ["color"]
       59 GETTABLEKS                       R8 R8 K2 ["R"]
       61 GETTABLEKS                       R9 R0 K1 ["color"]
       63 GETTABLEKS                       R9 R9 K3 ["G"]
       65 GETTABLEKS                       R10 R0 K1 ["color"]
       67 GETTABLEKS                       R10 R10 K4 ["B"]
       69 GETTABLEKS                       R11 R0 K5 ["alpha"]
       71 SETLIST                          R7 R8 4 [1]
       73 CALL                             R5 2 1
       74 GETTABLEKS                       R7 R0 K5 ["alpha"]
       76 JUMPIFNOT                        R7 ; [+4]
       77 GETTABLEKS                       R7 R0 K5 ["alpha"]
       79 SUBRK                            R6 K6 [1] R7
       80 JUMP                             ; [+1]
       81 LOADN                            R6 0
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R7 R7 K7 ["createElement"]
       85 GETUPVAL                         R8 2
       86 DUPTABLE                         R9 K11 [{["tag"] = "row gap-medium auto-y size-full-0", ["LayoutOrder"]}]
       87 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       89 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       91 DUPTABLE                         R10 K14 [{"ColorSwatch", "ColorInfo"}]
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R11 R11 K7 ["createElement"]
       95 GETUPVAL                         R12 2
       96 DUPTABLE                         R13 K19 [{"Size", "backgroundStyle", "cornerRadius", "stroke"}]
       97 GETIMPORT                        R14 K22 [UDim2.fromOffset]
       99 LOADN                            R15 64
      100 LOADN                            R16 64
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K15 ["Size"]
      104 DUPTABLE                         R14 K25 [{"Color3", "Transparency"}]
      105 GETTABLEKS                       R15 R0 K1 ["color"]
      107 SETTABLEKS                       R15 R14 K23 ["Color3"]
      109 SETTABLEKS                       R6 R14 K24 ["Transparency"]
      111 SETTABLEKS                       R14 R13 K16 ["backgroundStyle"]
      113 GETIMPORT                        R14 K28 [UDim.new]
      115 LOADN                            R15 0
      116 LOADN                            R16 8
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K17 ["cornerRadius"]
      120 DUPTABLE                         R14 K31 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      121 GETTABLEKS                       R15 R1 K29 ["Color"]
      123 GETTABLEKS                       R15 R15 K32 ["System"]
      125 GETTABLEKS                       R15 R15 K33 ["Neutral"]
      127 GETTABLEKS                       R15 R15 K23 ["Color3"]
      129 SETTABLEKS                       R15 R14 K29 ["Color"]
      131 GETTABLEKS                       R15 R1 K29 ["Color"]
      133 GETTABLEKS                       R15 R15 K32 ["System"]
      135 GETTABLEKS                       R15 R15 K33 ["Neutral"]
      137 GETTABLEKS                       R15 R15 K24 ["Transparency"]
      139 SETTABLEKS                       R15 R14 K24 ["Transparency"]
      141 SETTABLEKS                       R14 R13 K18 ["stroke"]
      143 CALL                             R11 2 1
      144 SETTABLEKS                       R11 R10 K12 ["ColorSwatch"]
      146 GETUPVAL                         R11 1
      147 GETTABLEKS                       R11 R11 K7 ["createElement"]
      149 GETUPVAL                         R12 2
      150 DUPTABLE                         R13 K36 [{["tag"] = "col gap-xsmall auto-y flex-grow", ["layout"]}]
      151 DUPTABLE                         R14 K39 [{"FillDirection", "HorizontalAlignment"}]
      152 GETIMPORT                        R15 K42 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R15 R14 K37 ["FillDirection"]
      156 GETIMPORT                        R15 K44 [Enum.HorizontalAlignment.Left]
      158 SETTABLEKS                       R15 R14 K38 ["HorizontalAlignment"]
      160 SETTABLEKS                       R14 R13 K35 ["layout"]
      162 DUPTABLE                         R14 K49 [{"HexLabel", "HexAlphaLabel", "RGBLabel", "RGBALabel"}]
      163 GETUPVAL                         R15 1
      164 GETTABLEKS                       R15 R15 K7 ["createElement"]
      166 GETUPVAL                         R16 3
      167 DUPTABLE                         R17 K55 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      168 SETTABLEKS                       R2 R17 K50 ["Text"]
      170 GETTABLEKS                       R18 R1 K56 ["Typography"]
      172 GETTABLEKS                       R18 R18 K57 ["BodyLarge"]
      174 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      176 GETTABLEKS                       R18 R1 K29 ["Color"]
      178 GETTABLEKS                       R18 R18 K58 ["Content"]
      180 GETTABLEKS                       R18 R18 K59 ["Emphasis"]
      182 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      184 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      188 CALL                             R15 2 1
      189 SETTABLEKS                       R15 R14 K45 ["HexLabel"]
      191 JUMPIFNOT                        R3 ; [+30]
      192 GETTABLEKS                       R16 R0 K61 ["showAlpha"]
      194 JUMPIFNOT                        R16 ; [+27]
      195 GETUPVAL                         R15 1
      196 GETTABLEKS                       R15 R15 K7 ["createElement"]
      198 GETUPVAL                         R16 3
      199 DUPTABLE                         R17 K55 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      200 SETTABLEKS                       R3 R17 K50 ["Text"]
      202 GETTABLEKS                       R18 R1 K56 ["Typography"]
      204 GETTABLEKS                       R18 R18 K62 ["CaptionLarge"]
      206 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      208 GETTABLEKS                       R18 R1 K29 ["Color"]
      210 GETTABLEKS                       R18 R18 K58 ["Content"]
      212 GETTABLEKS                       R18 R18 K63 ["Default"]
      214 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      216 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
      218 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      220 CALL                             R15 2 1
      221 JUMP                             ; [+7]
      222 GETUPVAL                         R15 1
      223 GETTABLEKS                       R15 R15 K7 ["createElement"]
      225 GETUPVAL                         R16 1
      226 GETTABLEKS                       R16 R16 K64 ["Fragment"]
      228 CALL                             R15 1 1
      229 SETTABLEKS                       R15 R14 K46 ["HexAlphaLabel"]
      231 GETUPVAL                         R15 1
      232 GETTABLEKS                       R15 R15 K7 ["createElement"]
      234 GETUPVAL                         R16 3
      235 DUPTABLE                         R17 K55 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      236 SETTABLEKS                       R4 R17 K50 ["Text"]
      238 GETTABLEKS                       R18 R1 K56 ["Typography"]
      240 GETTABLEKS                       R18 R18 K62 ["CaptionLarge"]
      242 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      244 GETTABLEKS                       R18 R1 K29 ["Color"]
      246 GETTABLEKS                       R18 R18 K58 ["Content"]
      248 GETTABLEKS                       R18 R18 K63 ["Default"]
      250 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      252 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
      254 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      256 CALL                             R15 2 1
      257 SETTABLEKS                       R15 R14 K47 ["RGBLabel"]
      259 JUMPIFNOT                        R5 ; [+30]
      260 GETTABLEKS                       R16 R0 K61 ["showAlpha"]
      262 JUMPIFNOT                        R16 ; [+27]
      263 GETUPVAL                         R15 1
      264 GETTABLEKS                       R15 R15 K7 ["createElement"]
      266 GETUPVAL                         R16 3
      267 DUPTABLE                         R17 K55 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      268 SETTABLEKS                       R5 R17 K50 ["Text"]
      270 GETTABLEKS                       R18 R1 K56 ["Typography"]
      272 GETTABLEKS                       R18 R18 K62 ["CaptionLarge"]
      274 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      276 GETTABLEKS                       R18 R1 K29 ["Color"]
      278 GETTABLEKS                       R18 R18 K58 ["Content"]
      280 GETTABLEKS                       R18 R18 K63 ["Default"]
      282 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      284 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
      286 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      288 CALL                             R15 2 1
      289 JUMP                             ; [+7]
      290 GETUPVAL                         R15 1
      291 GETTABLEKS                       R15 R15 K7 ["createElement"]
      293 GETUPVAL                         R16 1
      294 GETTABLEKS                       R16 R16 K64 ["Fragment"]
      296 CALL                             R15 1 1
      297 SETTABLEKS                       R15 R14 K48 ["RGBALabel"]
      299 CALL                             R11 3 1
      300 SETTABLEKS                       R11 R10 K13 ["ColorInfo"]
      302 CALL                             R7 3 -1
      303 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 GETTABLEKS                       R3 R1 K1 ["Color"]
        7 GETTABLEKS                       R3 R3 K2 ["Extended"]
        9 GETTABLEKS                       R3 R3 K3 ["Blue"]
       11 GETTABLEKS                       R3 R3 K4 ["Blue_1100"]
       13 GETTABLEKS                       R3 R3 K5 ["Color3"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K0 ["useState"]
       19 LOADN                            R5 1
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K6 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K10 [{["Size"], ["tag"] = "col gap-medium"}]
       26 GETIMPORT                        R9 K13 [UDim2.fromOffset]
       28 LOADN                            R10 300
       29 LOADN                            R11 300
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K7 ["Size"]
       33 DUPTABLE                         R9 K16 [{"PreviewContainer", "Picker"}]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K6 ["createElement"]
       37 GETUPVAL                         R11 3
       38 DUPTABLE                         R12 K21 [{["color"], ["alpha"], ["showAlpha"] = True}]
       39 SETTABLEKS                       R2 R12 K17 ["color"]
       41 SETTABLEKS                       R4 R12 K18 ["alpha"]
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K14 ["PreviewContainer"]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K6 ["createElement"]
       49 GETUPVAL                         R11 4
       50 DUPTABLE                         R12 K26 [{"initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged"}]
       51 SETTABLEKS                       R2 R12 K22 ["initialColor"]
       53 SETTABLEKS                       R4 R12 K23 ["initialAlpha"]
       55 SETTABLEKS                       R3 R12 K24 ["onColorChanged"]
       57 SETTABLEKS                       R5 R12 K25 ["onAlphaChanged"]
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K15 ["Picker"]
       62 CALL                             R6 3 -1
       63 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 GETTABLEKS                       R3 R1 K1 ["Color"]
        7 GETTABLEKS                       R3 R3 K2 ["Extended"]
        9 GETTABLEKS                       R3 R3 K3 ["Blue"]
       11 GETTABLEKS                       R3 R3 K4 ["Blue_1100"]
       13 GETTABLEKS                       R3 R3 K5 ["Color3"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["createElement"]
       19 GETUPVAL                         R5 2
       20 DUPTABLE                         R6 K10 [{["Size"], ["tag"] = "col gap-medium"}]
       21 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       23 LOADN                            R8 300
       24 LOADN                            R9 300
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K7 ["Size"]
       28 DUPTABLE                         R7 K16 [{"PreviewContainer", "Picker"}]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K6 ["createElement"]
       32 GETUPVAL                         R9 3
       33 DUPTABLE                         R10 K20 [{["color"], ["showAlpha"] = False}]
       34 SETTABLEKS                       R2 R10 K17 ["color"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K14 ["PreviewContainer"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K6 ["createElement"]
       42 GETUPVAL                         R9 4
       43 DUPTABLE                         R10 K23 [{"initialColor", "onColorChanged"}]
       44 SETTABLEKS                       R2 R10 K21 ["initialColor"]
       46 SETTABLEKS                       R3 R10 K22 ["onColorChanged"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K15 ["Picker"]
       51 CALL                             R4 3 -1
       52 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["R"]
        3 MULK                             R1 R2 K0 [255]
        4 FASTCALL1                        MATH_FLOOR R1 ; [+2]
        5 GETIMPORT                        R0 K4 [math.floor]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["G"]
       11 MULK                             R2 R3 K0 [255]
       12 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       13 GETIMPORT                        R1 K4 [math.floor]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["B"]
       19 MULK                             R3 R4 K0 [255]
       20 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       21 GETIMPORT                        R2 K4 [math.floor]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [string.format]
       26 LOADK                            R4 K10 ["#%02X%02X%02X"]
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 CALL                             R3 4 -1
       31 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 3
        6 GETUPVAL                         R1 4
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 5
        9 GETUPVAL                         R2 0
       10 NOT                              R1 R2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R1 3
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 4
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 GETTABLEKS                       R3 R1 K1 ["Color"]
        7 GETTABLEKS                       R3 R3 K2 ["Extended"]
        9 GETTABLEKS                       R3 R3 K3 ["Blue"]
       11 GETTABLEKS                       R3 R3 K4 ["Blue_1100"]
       13 GETTABLEKS                       R3 R3 K5 ["Color3"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K0 ["useState"]
       19 LOADN                            R5 1
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K0 ["useState"]
       24 LOADB                            R7 0
       25 CALL                             R6 1 2
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K0 ["useState"]
       29 GETTABLEKS                       R9 R1 K1 ["Color"]
       31 GETTABLEKS                       R9 R9 K2 ["Extended"]
       33 GETTABLEKS                       R9 R9 K3 ["Blue"]
       35 GETTABLEKS                       R9 R9 K4 ["Blue_1100"]
       37 GETTABLEKS                       R9 R9 K5 ["Color3"]
       39 CALL                             R8 1 2
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K0 ["useState"]
       43 LOADN                            R11 1
       44 CALL                             R10 1 2
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R14 0 1
       52 MOVE                             R15 R2
       53 SETLIST                          R14 R15 1 [1]
       55 CALL                             R12 2 1
       56 GETIMPORT                        R13 K8 [require]
       58 GETUPVAL                         R14 2
       59 GETTABLEKS                       R14 R14 K9 ["Components"]
       61 GETTABLEKS                       R14 R14 K10 ["Popover"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K8 [require]
       66 GETUPVAL                         R15 2
       67 GETTABLEKS                       R15 R15 K9 ["Components"]
       69 GETTABLEKS                       R15 R15 K11 ["Interactable"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K8 [require]
       74 GETUPVAL                         R16 2
       75 GETTABLEKS                       R16 R16 K12 ["Enums"]
       77 GETTABLEKS                       R16 R16 K13 ["PopoverSide"]
       79 CALL                             R15 1 1
       80 GETUPVAL                         R16 1
       81 GETTABLEKS                       R16 R16 K14 ["createElement"]
       83 GETUPVAL                         R17 3
       84 DUPTABLE                         R18 K18 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       85 GETIMPORT                        R19 K21 [UDim2.fromOffset]
       87 LOADN                            R20 600
       88 LOADN                            R21 400
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K15 ["Size"]
       92 DUPTABLE                         R19 K23 [{"PopoverContainer"}]
       93 GETUPVAL                         R20 1
       94 GETTABLEKS                       R20 R20 K14 ["createElement"]
       96 GETTABLEKS                       R21 R13 K24 ["Root"]
       98 DUPTABLE                         R22 K26 [{"isOpen"}]
       99 SETTABLEKS                       R6 R22 K25 ["isOpen"]
      101 DUPTABLE                         R23 K29 [{"Anchor", "Content"}]
      102 GETUPVAL                         R24 1
      103 GETTABLEKS                       R24 R24 K14 ["createElement"]
      105 GETTABLEKS                       R25 R13 K27 ["Anchor"]
      107 LOADNIL                          R26
      108 GETUPVAL                         R27 1
      109 GETTABLEKS                       R27 R27 K14 ["createElement"]
      111 GETUPVAL                         R28 3
      112 DUPTABLE                         R29 K31 [{["tag"] = "row gap-medium align-y-center auto-xy"}]
      113 DUPTABLE                         R30 K33 [{"ColorSwatchButton"}]
      114 GETUPVAL                         R31 1
      115 GETTABLEKS                       R31 R31 K14 ["createElement"]
      117 MOVE                             R32 R14
      118 DUPTABLE                         R33 K36 [{"onActivated", "Size", "AutomaticSize"}]
      119 NEWCLOSURE                       R34 P1
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R7
      126 SETTABLEKS                       R34 R33 K34 ["onActivated"]
      128 GETIMPORT                        R34 K38 [UDim2.new]
      130 LOADN                            R35 0
      131 LOADN                            R36 0
      132 LOADN                            R37 0
      133 LOADN                            R38 0
      134 CALL                             R34 4 1
      135 SETTABLEKS                       R34 R33 K15 ["Size"]
      137 GETIMPORT                        R34 K41 [Enum.AutomaticSize.XY]
      139 SETTABLEKS                       R34 R33 K35 ["AutomaticSize"]
      141 DUPTABLE                         R34 K43 [{"ButtonContainer"}]
      142 GETUPVAL                         R35 1
      143 GETTABLEKS                       R35 R35 K14 ["createElement"]
      145 GETUPVAL                         R36 3
      146 DUPTABLE                         R37 K46 [{["tag"] = "row gap-small align-y-center padding-small radius-small stroke-neutral auto-xy", ["backgroundStyle"]}]
      147 GETTABLEKS                       R38 R1 K1 ["Color"]
      149 GETTABLEKS                       R38 R38 K47 ["Surface"]
      151 GETTABLEKS                       R38 R38 K48 ["Surface_100"]
      153 SETTABLEKS                       R38 R37 K45 ["backgroundStyle"]
      155 DUPTABLE                         R38 K51 [{"ColorSwatch", "ColorLabel"}]
      156 GETUPVAL                         R39 1
      157 GETTABLEKS                       R39 R39 K14 ["createElement"]
      159 GETUPVAL                         R40 3
      160 DUPTABLE                         R41 K54 [{"Size", "backgroundStyle", "cornerRadius", "stroke"}]
      161 GETIMPORT                        R42 K21 [UDim2.fromOffset]
      163 LOADN                            R43 24
      164 LOADN                            R44 24
      165 CALL                             R42 2 1
      166 SETTABLEKS                       R42 R41 K15 ["Size"]
      168 DUPTABLE                         R42 K56 [{"Color3", "Transparency"}]
      169 SETTABLEKS                       R2 R42 K5 ["Color3"]
      171 SUBRK                            R43 K57 [1] R4
      172 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      174 SETTABLEKS                       R42 R41 K45 ["backgroundStyle"]
      176 GETIMPORT                        R42 K59 [UDim.new]
      178 LOADN                            R43 0
      179 LOADN                            R44 4
      180 CALL                             R42 2 1
      181 SETTABLEKS                       R42 R41 K52 ["cornerRadius"]
      183 DUPTABLE                         R42 K61 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      184 GETTABLEKS                       R43 R1 K1 ["Color"]
      186 GETTABLEKS                       R43 R43 K62 ["System"]
      188 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      190 GETTABLEKS                       R43 R43 K5 ["Color3"]
      192 SETTABLEKS                       R43 R42 K1 ["Color"]
      194 GETTABLEKS                       R43 R1 K1 ["Color"]
      196 GETTABLEKS                       R43 R43 K62 ["System"]
      198 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      200 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      202 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      204 SETTABLEKS                       R42 R41 K53 ["stroke"]
      206 CALL                             R39 2 1
      207 SETTABLEKS                       R39 R38 K49 ["ColorSwatch"]
      209 GETUPVAL                         R39 1
      210 GETTABLEKS                       R39 R39 K14 ["createElement"]
      212 GETUPVAL                         R40 4
      213 DUPTABLE                         R41 K68 [{["Text"], ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      214 SETTABLEKS                       R12 R41 K64 ["Text"]
      216 GETTABLEKS                       R42 R1 K69 ["Typography"]
      218 GETTABLEKS                       R42 R42 K70 ["BodyMedium"]
      220 SETTABLEKS                       R42 R41 K65 ["fontStyle"]
      222 GETTABLEKS                       R42 R1 K1 ["Color"]
      224 GETTABLEKS                       R42 R42 K28 ["Content"]
      226 GETTABLEKS                       R42 R42 K71 ["Default"]
      228 SETTABLEKS                       R42 R41 K66 ["textStyle"]
      230 CALL                             R39 2 1
      231 SETTABLEKS                       R39 R38 K50 ["ColorLabel"]
      233 CALL                             R35 3 1
      234 SETTABLEKS                       R35 R34 K42 ["ButtonContainer"]
      236 CALL                             R31 3 1
      237 SETTABLEKS                       R31 R30 K32 ["ColorSwatchButton"]
      239 CALL                             R27 3 -1
      240 CALL                             R24 -1 1
      241 SETTABLEKS                       R24 R23 K27 ["Anchor"]
      243 GETUPVAL                         R24 1
      244 GETTABLEKS                       R24 R24 K14 ["createElement"]
      246 GETTABLEKS                       R25 R13 K28 ["Content"]
      248 DUPTABLE                         R26 K76 [{["side"], ["hasArrow"] = True, ["onPressedOutside"]}]
      249 GETTABLEKS                       R27 R15 K77 ["Right"]
      251 SETTABLEKS                       R27 R26 K72 ["side"]
      253 NEWCLOSURE                       R27 P2
      254 CAPTURE                          VAL R7
      255 SETTABLEKS                       R27 R26 K75 ["onPressedOutside"]
      257 GETUPVAL                         R27 1
      258 GETTABLEKS                       R27 R27 K14 ["createElement"]
      260 GETUPVAL                         R28 3
      261 DUPTABLE                         R29 K79 [{["tag"] = "col padding-medium gap-medium", ["Size"]}]
      262 GETIMPORT                        R30 K21 [UDim2.fromOffset]
      264 LOADN                            R31 300
      265 LOADN                            R32 300
      266 CALL                             R30 2 1
      267 SETTABLEKS                       R30 R29 K15 ["Size"]
      269 DUPTABLE                         R30 K82 [{"Picker", "Actions"}]
      270 GETUPVAL                         R31 1
      271 GETTABLEKS                       R31 R31 K14 ["createElement"]
      273 GETUPVAL                         R32 5
      274 DUPTABLE                         R33 K88 [{["initialColor"], ["initialAlpha"], ["onColorChanged"], ["onAlphaChanged"], ["LayoutOrder"] = 1}]
      275 SETTABLEKS                       R2 R33 K83 ["initialColor"]
      277 SETTABLEKS                       R4 R33 K84 ["initialAlpha"]
      279 NEWCLOSURE                       R34 P3
      280 CAPTURE                          VAL R3
      281 SETTABLEKS                       R34 R33 K85 ["onColorChanged"]
      283 NEWCLOSURE                       R34 P4
      284 CAPTURE                          VAL R5
      285 SETTABLEKS                       R34 R33 K86 ["onAlphaChanged"]
      287 CALL                             R31 2 1
      288 SETTABLEKS                       R31 R30 K80 ["Picker"]
      290 GETUPVAL                         R31 1
      291 GETTABLEKS                       R31 R31 K14 ["createElement"]
      293 GETUPVAL                         R32 3
      294 DUPTABLE                         R33 K91 [{["tag"] = "row gap-small auto-y size-full-0 margin-top-medium align-x-right", ["LayoutOrder"] = 2}]
      295 DUPTABLE                         R34 K94 [{"CancelButton", "DoneButton"}]
      296 GETUPVAL                         R35 1
      297 GETTABLEKS                       R35 R35 K14 ["createElement"]
      299 MOVE                             R36 R14
      300 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      301 NEWCLOSURE                       R38 P5
      302 CAPTURE                          VAL R3
      303 CAPTURE                          VAL R8
      304 CAPTURE                          VAL R5
      305 CAPTURE                          VAL R10
      306 CAPTURE                          VAL R7
      307 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      309 GETIMPORT                        R38 K38 [UDim2.new]
      311 LOADN                            R39 0
      312 LOADN                            R40 0
      313 LOADN                            R41 0
      314 LOADN                            R42 0
      315 CALL                             R38 4 1
      316 SETTABLEKS                       R38 R37 K15 ["Size"]
      318 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      320 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      322 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      323 GETUPVAL                         R39 1
      324 GETTABLEKS                       R39 R39 K14 ["createElement"]
      326 GETUPVAL                         R40 3
      327 DUPTABLE                         R41 K96 [{["tag"] = "padding-small radius-small auto-xy", ["backgroundStyle"], ["stroke"]}]
      328 GETTABLEKS                       R42 R1 K1 ["Color"]
      330 GETTABLEKS                       R42 R42 K47 ["Surface"]
      332 GETTABLEKS                       R42 R42 K48 ["Surface_100"]
      334 SETTABLEKS                       R42 R41 K45 ["backgroundStyle"]
      336 DUPTABLE                         R42 K61 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      337 GETTABLEKS                       R43 R1 K1 ["Color"]
      339 GETTABLEKS                       R43 R43 K62 ["System"]
      341 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      343 GETTABLEKS                       R43 R43 K5 ["Color3"]
      345 SETTABLEKS                       R43 R42 K1 ["Color"]
      347 GETTABLEKS                       R43 R1 K1 ["Color"]
      349 GETTABLEKS                       R43 R43 K62 ["System"]
      351 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      353 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      355 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      357 SETTABLEKS                       R42 R41 K53 ["stroke"]
      359 DUPTABLE                         R42 K98 [{"ButtonText"}]
      360 GETUPVAL                         R43 1
      361 GETTABLEKS                       R43 R43 K14 ["createElement"]
      363 GETUPVAL                         R44 4
      364 DUPTABLE                         R45 K100 [{["Text"] = "Cancel", ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      365 GETTABLEKS                       R46 R1 K69 ["Typography"]
      367 GETTABLEKS                       R46 R46 K70 ["BodyMedium"]
      369 SETTABLEKS                       R46 R45 K65 ["fontStyle"]
      371 GETTABLEKS                       R46 R1 K1 ["Color"]
      373 GETTABLEKS                       R46 R46 K28 ["Content"]
      375 GETTABLEKS                       R46 R46 K71 ["Default"]
      377 SETTABLEKS                       R46 R45 K66 ["textStyle"]
      379 CALL                             R43 2 1
      380 SETTABLEKS                       R43 R42 K97 ["ButtonText"]
      382 CALL                             R39 3 1
      383 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      385 CALL                             R35 3 1
      386 SETTABLEKS                       R35 R34 K92 ["CancelButton"]
      388 GETUPVAL                         R35 1
      389 GETTABLEKS                       R35 R35 K14 ["createElement"]
      391 MOVE                             R36 R14
      392 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      393 NEWCLOSURE                       R38 P6
      394 CAPTURE                          VAL R7
      395 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      397 GETIMPORT                        R38 K38 [UDim2.new]
      399 LOADN                            R39 0
      400 LOADN                            R40 0
      401 LOADN                            R41 0
      402 LOADN                            R42 0
      403 CALL                             R38 4 1
      404 SETTABLEKS                       R38 R37 K15 ["Size"]
      406 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      408 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      410 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      411 GETUPVAL                         R39 1
      412 GETTABLEKS                       R39 R39 K14 ["createElement"]
      414 GETUPVAL                         R40 3
      415 DUPTABLE                         R41 K96 [{["tag"] = "padding-small radius-small auto-xy", ["backgroundStyle"], ["stroke"]}]
      416 GETTABLEKS                       R42 R1 K1 ["Color"]
      418 GETTABLEKS                       R42 R42 K47 ["Surface"]
      420 GETTABLEKS                       R42 R42 K48 ["Surface_100"]
      422 SETTABLEKS                       R42 R41 K45 ["backgroundStyle"]
      424 DUPTABLE                         R42 K61 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      425 GETTABLEKS                       R43 R1 K1 ["Color"]
      427 GETTABLEKS                       R43 R43 K62 ["System"]
      429 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      431 GETTABLEKS                       R43 R43 K5 ["Color3"]
      433 SETTABLEKS                       R43 R42 K1 ["Color"]
      435 GETTABLEKS                       R43 R1 K1 ["Color"]
      437 GETTABLEKS                       R43 R43 K62 ["System"]
      439 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      441 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      443 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      445 SETTABLEKS                       R42 R41 K53 ["stroke"]
      447 DUPTABLE                         R42 K98 [{"ButtonText"}]
      448 GETUPVAL                         R43 1
      449 GETTABLEKS                       R43 R43 K14 ["createElement"]
      451 GETUPVAL                         R44 4
      452 DUPTABLE                         R45 K102 [{["Text"] = "Done", ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      453 GETTABLEKS                       R46 R1 K69 ["Typography"]
      455 GETTABLEKS                       R46 R46 K70 ["BodyMedium"]
      457 SETTABLEKS                       R46 R45 K65 ["fontStyle"]
      459 GETTABLEKS                       R46 R1 K1 ["Color"]
      461 GETTABLEKS                       R46 R46 K28 ["Content"]
      463 GETTABLEKS                       R46 R46 K71 ["Default"]
      465 SETTABLEKS                       R46 R45 K66 ["textStyle"]
      467 CALL                             R43 2 1
      468 SETTABLEKS                       R43 R42 K97 ["ButtonText"]
      470 CALL                             R39 3 1
      471 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      473 CALL                             R35 3 1
      474 SETTABLEKS                       R35 R34 K93 ["DoneButton"]
      476 CALL                             R31 3 1
      477 SETTABLEKS                       R31 R30 K81 ["Actions"]
      479 CALL                             R27 3 -1
      480 CALL                             R24 -1 1
      481 SETTABLEKS                       R24 R23 K28 ["Content"]
      483 CALL                             R20 3 1
      484 SETTABLEKS                       R20 R19 K22 ["PopoverContainer"]
      486 CALL                             R16 3 -1
      487 RETURN                           R16 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [BrickColor.new]
        5 LOADK                            R3 K4 ["Bright red"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K5 ["Color"]
        9 CALL                             R1 1 2
       10 NEWTABLE                         R3 0 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K6 ["Brick"]
       15 SETLIST                          R3 R4 1 [1]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K7 ["createElement"]
       20 GETUPVAL                         R5 2
       21 DUPTABLE                         R6 K11 [{["Size"], ["tag"] = "col gap-medium"}]
       22 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       24 LOADN                            R8 300
       25 LOADN                            R9 300
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K8 ["Size"]
       29 DUPTABLE                         R7 K17 [{"PreviewContainer", "Picker"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K7 ["createElement"]
       33 GETUPVAL                         R9 3
       34 DUPTABLE                         R10 K21 [{["color"], ["showAlpha"] = False}]
       35 SETTABLEKS                       R1 R10 K18 ["color"]
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R7 K15 ["PreviewContainer"]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K7 ["createElement"]
       43 GETUPVAL                         R9 4
       44 DUPTABLE                         R10 K26 [{"initialColor", "availableModes", "initialMode", "onColorChanged"}]
       45 SETTABLEKS                       R1 R10 K22 ["initialColor"]
       47 SETTABLEKS                       R3 R10 K23 ["availableModes"]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K6 ["Brick"]
       52 SETTABLEKS                       R11 R10 K24 ["initialMode"]
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R11 R10 K25 ["onColorChanged"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K16 ["Picker"]
       61 CALL                             R4 3 -1
       62 RETURN                           R4 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Submit color:"]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Color"]
        4 GETTABLEKS                       R2 R2 K1 ["Extended"]
        6 GETTABLEKS                       R2 R2 K2 ["Magenta"]
        8 GETTABLEKS                       R2 R2 K3 ["Magenta_700"]
       10 GETTABLEKS                       R2 R2 K4 ["Color3"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["useState"]
       15 DUPTABLE                         R4 K8 [{["H"] = 15}]
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K9 ["isPartialHSV"]
       20 MOVE                             R7 R3
       21 CALL                             R6 1 1
       22 NOT                              R5 R6
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K9 ["isPartialHSV"]
       26 MOVE                             R8 R3
       27 CALL                             R7 1 1
       28 JUMPIFNOT                        R7 ; [+2]
       29 MOVE                             R6 R2
       30 JUMP                             ; [+1]
       31 MOVE                             R6 R3
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K10 ["createElement"]
       35 GETUPVAL                         R8 3
       36 DUPTABLE                         R9 K14 [{["Size"], ["tag"] = "col gap-medium"}]
       37 GETIMPORT                        R10 K17 [UDim2.fromOffset]
       39 LOADN                            R11 300
       40 LOADN                            R12 400
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K11 ["Size"]
       44 DUPTABLE                         R10 K22 [{"Description", "PreviewContainer", "Picker", "SubmitButton"}]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K10 ["createElement"]
       48 GETUPVAL                         R12 4
       49 DUPTABLE                         R13 K31 [{["Text"] = "When only hue is set, S and V show as empty. The submit button stays disabled until a full color is selected.", ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["TextWrapped"] = True, ["tag"] = "auto-y size-full-0"}]
       50 GETTABLEKS                       R14 R1 K32 ["Typography"]
       52 GETTABLEKS                       R14 R14 K33 ["CaptionLarge"]
       54 SETTABLEKS                       R14 R13 K25 ["fontStyle"]
       56 GETTABLEKS                       R14 R1 K0 ["Color"]
       58 GETTABLEKS                       R14 R14 K34 ["Content"]
       60 GETTABLEKS                       R14 R14 K35 ["Default"]
       62 SETTABLEKS                       R14 R13 K26 ["textStyle"]
       64 GETIMPORT                        R14 K38 [Enum.TextXAlignment.Left]
       66 SETTABLEKS                       R14 R13 K27 ["TextXAlignment"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K18 ["Description"]
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K10 ["createElement"]
       74 GETUPVAL                         R12 5
       75 DUPTABLE                         R13 K42 [{["color"], ["showAlpha"] = False}]
       76 SETTABLEKS                       R6 R13 K39 ["color"]
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K19 ["PreviewContainer"]
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R11 R11 K10 ["createElement"]
       84 GETUPVAL                         R12 6
       85 DUPTABLE                         R13 K46 [{"initialColor", "initialMode", "onColorChanged"}]
       86 SETTABLEKS                       R3 R13 K43 ["initialColor"]
       88 GETUPVAL                         R14 7
       89 GETTABLEKS                       R14 R14 K47 ["HSV"]
       91 SETTABLEKS                       R14 R13 K44 ["initialMode"]
       93 SETTABLEKS                       R4 R13 K45 ["onColorChanged"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K20 ["Picker"]
       98 GETUPVAL                         R11 1
       99 GETTABLEKS                       R11 R11 K10 ["createElement"]
      101 GETUPVAL                         R12 8
      102 DUPTABLE                         R13 K53 [{["text"] = "Submit", ["variant"], ["isDisabled"], ["onActivated"]}]
      103 GETUPVAL                         R14 9
      104 GETTABLEKS                       R14 R14 K54 ["Emphasis"]
      106 SETTABLEKS                       R14 R13 K50 ["variant"]
      108 NOT                              R14 R5
      109 SETTABLEKS                       R14 R13 K51 ["isDisabled"]
      111 NEWCLOSURE                       R14 P0
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R14 R13 K52 ["onActivated"]
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K21 ["SubmitButton"]
      118 CALL                             R7 3 -1
      119 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Button"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["ButtonVariant"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["ColorInputMode"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["ColorPicker"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["Text"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K13 ["ColorPicker"]
       62 GETTABLEKS                       R10 R10 K16 ["colorUtils"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Providers"]
       69 GETTABLEKS                       R11 R11 K18 ["Style"]
       71 GETTABLEKS                       R11 R11 K19 ["useTokens"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K20 [PROTO_4]
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R7
       79 DUPTABLE                         R12 K24 [{["summary"] = "ColorPicker", ["stories"], ["controls"]}]
       80 NEWTABLE                         R13 0 5
       82 DUPTABLE                         R14 K28 [{["name"] = "Base", ["story"]}]
       83 DUPCLOSURE                       R15 K29 [PROTO_5]
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R6
       89 SETTABLEKS                       R15 R14 K27 ["story"]
       91 DUPTABLE                         R15 K31 [{["name"] = "Without Alpha", ["story"]}]
       92 DUPCLOSURE                       R16 K32 [PROTO_6]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R16 R15 K27 ["story"]
      100 DUPTABLE                         R16 K34 [{["name"] = "With Popover", ["story"]}]
      101 DUPCLOSURE                       R17 K35 [PROTO_14]
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R17 R16 K27 ["story"]
      110 DUPTABLE                         R17 K37 [{["name"] = "BrickColor Only", ["story"]}]
      111 DUPCLOSURE                       R18 K38 [PROTO_16]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R18 R17 K27 ["story"]
      119 DUPTABLE                         R18 K40 [{["name"] = "Partial HSV (H only)", ["story"]}]
      120 DUPCLOSURE                       R19 K41 [PROTO_18]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R19 R18 K27 ["story"]
      133 SETLIST                          R13 R14 5 [1]
      135 SETTABLEKS                       R13 R12 K22 ["stories"]
      137 NEWTABLE                         R13 0 0
      139 SETTABLEKS                       R13 R12 K23 ["controls"]
      141 RETURN                           R12 1
