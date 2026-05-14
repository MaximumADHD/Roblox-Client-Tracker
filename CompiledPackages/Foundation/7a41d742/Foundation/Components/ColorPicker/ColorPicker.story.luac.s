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
       79 SUBRK                            R6 R6 K7 ["createElement"]
       80 JUMP                             ; [+1]
       81 LOADN                            R6 0
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R7 R7 K7 ["createElement"]
       85 GETUPVAL                         R8 2
       86 DUPTABLE                         R9 K10 [{"tag", "LayoutOrder"}]
       87 LOADK                            R10 K11 ["row gap-medium auto-y size-full-0"]
       88 SETTABLEKS                       R10 R9 K8 ["tag"]
       90 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       92 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       94 DUPTABLE                         R10 K14 [{"ColorSwatch", "ColorInfo"}]
       95 GETUPVAL                         R11 1
       96 GETTABLEKS                       R11 R11 K7 ["createElement"]
       98 GETUPVAL                         R12 2
       99 DUPTABLE                         R13 K19 [{"Size", "backgroundStyle", "cornerRadius", "stroke"}]
      100 GETIMPORT                        R14 K22 [UDim2.fromOffset]
      102 LOADN                            R15 64
      103 LOADN                            R16 64
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K15 ["Size"]
      107 DUPTABLE                         R14 K25 [{"Color3", "Transparency"}]
      108 GETTABLEKS                       R15 R0 K1 ["color"]
      110 SETTABLEKS                       R15 R14 K23 ["Color3"]
      112 SETTABLEKS                       R6 R14 K24 ["Transparency"]
      114 SETTABLEKS                       R14 R13 K16 ["backgroundStyle"]
      116 GETIMPORT                        R14 K28 [UDim.new]
      118 LOADN                            R15 0
      119 LOADN                            R16 8
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K17 ["cornerRadius"]
      123 DUPTABLE                         R14 K31 [{"Color", "Transparency", "Thickness"}]
      124 GETTABLEKS                       R15 R1 K29 ["Color"]
      126 GETTABLEKS                       R15 R15 K32 ["System"]
      128 GETTABLEKS                       R15 R15 K33 ["Neutral"]
      130 GETTABLEKS                       R15 R15 K23 ["Color3"]
      132 SETTABLEKS                       R15 R14 K29 ["Color"]
      134 GETTABLEKS                       R15 R1 K29 ["Color"]
      136 GETTABLEKS                       R15 R15 K32 ["System"]
      138 GETTABLEKS                       R15 R15 K33 ["Neutral"]
      140 GETTABLEKS                       R15 R15 K24 ["Transparency"]
      142 SETTABLEKS                       R15 R14 K24 ["Transparency"]
      144 LOADN                            R15 1
      145 SETTABLEKS                       R15 R14 K30 ["Thickness"]
      147 SETTABLEKS                       R14 R13 K18 ["stroke"]
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K12 ["ColorSwatch"]
      152 GETUPVAL                         R11 1
      153 GETTABLEKS                       R11 R11 K7 ["createElement"]
      155 GETUPVAL                         R12 2
      156 DUPTABLE                         R13 K35 [{"tag", "layout"}]
      157 LOADK                            R14 K36 ["col gap-xsmall auto-y flex-grow"]
      158 SETTABLEKS                       R14 R13 K8 ["tag"]
      160 DUPTABLE                         R14 K39 [{"FillDirection", "HorizontalAlignment"}]
      161 GETIMPORT                        R15 K42 [Enum.FillDirection.Vertical]
      163 SETTABLEKS                       R15 R14 K37 ["FillDirection"]
      165 GETIMPORT                        R15 K44 [Enum.HorizontalAlignment.Left]
      167 SETTABLEKS                       R15 R14 K38 ["HorizontalAlignment"]
      169 SETTABLEKS                       R14 R13 K34 ["layout"]
      171 DUPTABLE                         R14 K49 [{"HexLabel", "HexAlphaLabel", "RGBLabel", "RGBALabel"}]
      172 GETUPVAL                         R15 1
      173 GETTABLEKS                       R15 R15 K7 ["createElement"]
      175 GETUPVAL                         R16 3
      176 DUPTABLE                         R17 K54 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      177 SETTABLEKS                       R2 R17 K50 ["Text"]
      179 GETTABLEKS                       R18 R1 K55 ["Typography"]
      181 GETTABLEKS                       R18 R18 K56 ["BodyLarge"]
      183 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      185 GETTABLEKS                       R18 R1 K29 ["Color"]
      187 GETTABLEKS                       R18 R18 K57 ["Content"]
      189 GETTABLEKS                       R18 R18 K58 ["Emphasis"]
      191 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      193 GETIMPORT                        R18 K59 [Enum.TextXAlignment.Left]
      195 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      197 LOADK                            R18 K60 ["auto-y size-full-0"]
      198 SETTABLEKS                       R18 R17 K8 ["tag"]
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K45 ["HexLabel"]
      203 JUMPIFNOT                        R3 ; [+33]
      204 GETTABLEKS                       R16 R0 K61 ["showAlpha"]
      206 JUMPIFNOT                        R16 ; [+30]
      207 GETUPVAL                         R15 1
      208 GETTABLEKS                       R15 R15 K7 ["createElement"]
      210 GETUPVAL                         R16 3
      211 DUPTABLE                         R17 K54 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      212 SETTABLEKS                       R3 R17 K50 ["Text"]
      214 GETTABLEKS                       R18 R1 K55 ["Typography"]
      216 GETTABLEKS                       R18 R18 K62 ["CaptionLarge"]
      218 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      220 GETTABLEKS                       R18 R1 K29 ["Color"]
      222 GETTABLEKS                       R18 R18 K57 ["Content"]
      224 GETTABLEKS                       R18 R18 K63 ["Default"]
      226 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      228 GETIMPORT                        R18 K59 [Enum.TextXAlignment.Left]
      230 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      232 LOADK                            R18 K60 ["auto-y size-full-0"]
      233 SETTABLEKS                       R18 R17 K8 ["tag"]
      235 CALL                             R15 2 1
      236 JUMP                             ; [+7]
      237 GETUPVAL                         R15 1
      238 GETTABLEKS                       R15 R15 K7 ["createElement"]
      240 GETUPVAL                         R16 1
      241 GETTABLEKS                       R16 R16 K64 ["Fragment"]
      243 CALL                             R15 1 1
      244 SETTABLEKS                       R15 R14 K46 ["HexAlphaLabel"]
      246 GETUPVAL                         R15 1
      247 GETTABLEKS                       R15 R15 K7 ["createElement"]
      249 GETUPVAL                         R16 3
      250 DUPTABLE                         R17 K54 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      251 SETTABLEKS                       R4 R17 K50 ["Text"]
      253 GETTABLEKS                       R18 R1 K55 ["Typography"]
      255 GETTABLEKS                       R18 R18 K62 ["CaptionLarge"]
      257 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      259 GETTABLEKS                       R18 R1 K29 ["Color"]
      261 GETTABLEKS                       R18 R18 K57 ["Content"]
      263 GETTABLEKS                       R18 R18 K63 ["Default"]
      265 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      267 GETIMPORT                        R18 K59 [Enum.TextXAlignment.Left]
      269 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      271 LOADK                            R18 K60 ["auto-y size-full-0"]
      272 SETTABLEKS                       R18 R17 K8 ["tag"]
      274 CALL                             R15 2 1
      275 SETTABLEKS                       R15 R14 K47 ["RGBLabel"]
      277 JUMPIFNOT                        R5 ; [+33]
      278 GETTABLEKS                       R16 R0 K61 ["showAlpha"]
      280 JUMPIFNOT                        R16 ; [+30]
      281 GETUPVAL                         R15 1
      282 GETTABLEKS                       R15 R15 K7 ["createElement"]
      284 GETUPVAL                         R16 3
      285 DUPTABLE                         R17 K54 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      286 SETTABLEKS                       R5 R17 K50 ["Text"]
      288 GETTABLEKS                       R18 R1 K55 ["Typography"]
      290 GETTABLEKS                       R18 R18 K62 ["CaptionLarge"]
      292 SETTABLEKS                       R18 R17 K51 ["fontStyle"]
      294 GETTABLEKS                       R18 R1 K29 ["Color"]
      296 GETTABLEKS                       R18 R18 K57 ["Content"]
      298 GETTABLEKS                       R18 R18 K63 ["Default"]
      300 SETTABLEKS                       R18 R17 K52 ["textStyle"]
      302 GETIMPORT                        R18 K59 [Enum.TextXAlignment.Left]
      304 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      306 LOADK                            R18 K60 ["auto-y size-full-0"]
      307 SETTABLEKS                       R18 R17 K8 ["tag"]
      309 CALL                             R15 2 1
      310 JUMP                             ; [+7]
      311 GETUPVAL                         R15 1
      312 GETTABLEKS                       R15 R15 K7 ["createElement"]
      314 GETUPVAL                         R16 1
      315 GETTABLEKS                       R16 R16 K64 ["Fragment"]
      317 CALL                             R15 1 1
      318 SETTABLEKS                       R15 R14 K48 ["RGBALabel"]
      320 CALL                             R11 3 1
      321 SETTABLEKS                       R11 R10 K13 ["ColorInfo"]
      323 CALL                             R7 3 -1
      324 RETURN                           R7 -1

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
       25 DUPTABLE                         R8 K9 [{"Size", "tag"}]
       26 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       28 LOADN                            R10 44
       29 LOADN                            R11 44
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K7 ["Size"]
       33 LOADK                            R9 K13 ["col gap-medium"]
       34 SETTABLEKS                       R9 R8 K8 ["tag"]
       36 DUPTABLE                         R9 K16 [{"PreviewContainer", "Picker"}]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K6 ["createElement"]
       40 GETUPVAL                         R11 3
       41 DUPTABLE                         R12 K20 [{"color", "alpha", "showAlpha"}]
       42 SETTABLEKS                       R2 R12 K17 ["color"]
       44 SETTABLEKS                       R4 R12 K18 ["alpha"]
       46 LOADB                            R13 1
       47 SETTABLEKS                       R13 R12 K19 ["showAlpha"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K14 ["PreviewContainer"]
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K6 ["createElement"]
       55 GETUPVAL                         R11 4
       56 DUPTABLE                         R12 K25 [{"initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged"}]
       57 SETTABLEKS                       R2 R12 K21 ["initialColor"]
       59 SETTABLEKS                       R4 R12 K22 ["initialAlpha"]
       61 SETTABLEKS                       R3 R12 K23 ["onColorChanged"]
       63 SETTABLEKS                       R5 R12 K24 ["onAlphaChanged"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K15 ["Picker"]
       68 CALL                             R6 3 -1
       69 RETURN                           R6 -1

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
       20 DUPTABLE                         R6 K9 [{"Size", "tag"}]
       21 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       23 LOADN                            R8 44
       24 LOADN                            R9 44
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K7 ["Size"]
       28 LOADK                            R7 K13 ["col gap-medium"]
       29 SETTABLEKS                       R7 R6 K8 ["tag"]
       31 DUPTABLE                         R7 K16 [{"PreviewContainer", "Picker"}]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K6 ["createElement"]
       35 GETUPVAL                         R9 3
       36 DUPTABLE                         R10 K19 [{"color", "showAlpha"}]
       37 SETTABLEKS                       R2 R10 K17 ["color"]
       39 LOADB                            R11 0
       40 SETTABLEKS                       R11 R10 K18 ["showAlpha"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K14 ["PreviewContainer"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K6 ["createElement"]
       48 GETUPVAL                         R9 4
       49 DUPTABLE                         R10 K22 [{"initialColor", "onColorChanged"}]
       50 SETTABLEKS                       R2 R10 K20 ["initialColor"]
       52 SETTABLEKS                       R3 R10 K21 ["onColorChanged"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K15 ["Picker"]
       57 CALL                             R4 3 -1
       58 RETURN                           R4 -1

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
       84 DUPTABLE                         R18 K17 [{"Size", "tag"}]
       85 GETIMPORT                        R19 K20 [UDim2.fromOffset]
       87 LOADN                            R20 88
       88 LOADN                            R21 144
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K15 ["Size"]
       92 LOADK                            R19 K21 ["row align-x-center align-y-center"]
       93 SETTABLEKS                       R19 R18 K16 ["tag"]
       95 DUPTABLE                         R19 K23 [{"PopoverContainer"}]
       96 GETUPVAL                         R20 1
       97 GETTABLEKS                       R20 R20 K14 ["createElement"]
       99 GETTABLEKS                       R21 R13 K24 ["Root"]
      101 DUPTABLE                         R22 K26 [{"isOpen"}]
      102 SETTABLEKS                       R6 R22 K25 ["isOpen"]
      104 DUPTABLE                         R23 K29 [{"Anchor", "Content"}]
      105 GETUPVAL                         R24 1
      106 GETTABLEKS                       R24 R24 K14 ["createElement"]
      108 GETTABLEKS                       R25 R13 K27 ["Anchor"]
      110 LOADNIL                          R26
      111 GETUPVAL                         R27 1
      112 GETTABLEKS                       R27 R27 K14 ["createElement"]
      114 GETUPVAL                         R28 3
      115 DUPTABLE                         R29 K30 [{"tag"}]
      116 LOADK                            R30 K31 ["row gap-medium align-y-center auto-xy"]
      117 SETTABLEKS                       R30 R29 K16 ["tag"]
      119 DUPTABLE                         R30 K33 [{"ColorSwatchButton"}]
      120 GETUPVAL                         R31 1
      121 GETTABLEKS                       R31 R31 K14 ["createElement"]
      123 MOVE                             R32 R14
      124 DUPTABLE                         R33 K36 [{"onActivated", "Size", "AutomaticSize"}]
      125 NEWCLOSURE                       R34 P1
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R7
      132 SETTABLEKS                       R34 R33 K34 ["onActivated"]
      134 GETIMPORT                        R34 K38 [UDim2.new]
      136 LOADN                            R35 0
      137 LOADN                            R36 0
      138 LOADN                            R37 0
      139 LOADN                            R38 0
      140 CALL                             R34 4 1
      141 SETTABLEKS                       R34 R33 K15 ["Size"]
      143 GETIMPORT                        R34 K41 [Enum.AutomaticSize.XY]
      145 SETTABLEKS                       R34 R33 K35 ["AutomaticSize"]
      147 DUPTABLE                         R34 K43 [{"ButtonContainer"}]
      148 GETUPVAL                         R35 1
      149 GETTABLEKS                       R35 R35 K14 ["createElement"]
      151 GETUPVAL                         R36 3
      152 DUPTABLE                         R37 K45 [{"tag", "backgroundStyle"}]
      153 LOADK                            R38 K46 ["row gap-small align-y-center padding-small radius-small stroke-neutral auto-xy"]
      154 SETTABLEKS                       R38 R37 K16 ["tag"]
      156 GETTABLEKS                       R38 R1 K1 ["Color"]
      158 GETTABLEKS                       R38 R38 K47 ["Surface"]
      160 GETTABLEKS                       R38 R38 K48 ["Surface_100"]
      162 SETTABLEKS                       R38 R37 K44 ["backgroundStyle"]
      164 DUPTABLE                         R38 K51 [{"ColorSwatch", "ColorLabel"}]
      165 GETUPVAL                         R39 1
      166 GETTABLEKS                       R39 R39 K14 ["createElement"]
      168 GETUPVAL                         R40 3
      169 DUPTABLE                         R41 K54 [{"Size", "backgroundStyle", "cornerRadius", "stroke"}]
      170 GETIMPORT                        R42 K20 [UDim2.fromOffset]
      172 LOADN                            R43 24
      173 LOADN                            R44 24
      174 CALL                             R42 2 1
      175 SETTABLEKS                       R42 R41 K15 ["Size"]
      177 DUPTABLE                         R42 K56 [{"Color3", "Transparency"}]
      178 SETTABLEKS                       R2 R42 K5 ["Color3"]
      180 SUBRK                            R43 R57 K4 ["Blue_1100"]
      181 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      183 SETTABLEKS                       R42 R41 K44 ["backgroundStyle"]
      185 GETIMPORT                        R42 K59 [UDim.new]
      187 LOADN                            R43 0
      188 LOADN                            R44 4
      189 CALL                             R42 2 1
      190 SETTABLEKS                       R42 R41 K52 ["cornerRadius"]
      192 DUPTABLE                         R42 K61 [{"Color", "Transparency", "Thickness"}]
      193 GETTABLEKS                       R43 R1 K1 ["Color"]
      195 GETTABLEKS                       R43 R43 K62 ["System"]
      197 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      199 GETTABLEKS                       R43 R43 K5 ["Color3"]
      201 SETTABLEKS                       R43 R42 K1 ["Color"]
      203 GETTABLEKS                       R43 R1 K1 ["Color"]
      205 GETTABLEKS                       R43 R43 K62 ["System"]
      207 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      209 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      211 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      213 LOADN                            R43 1
      214 SETTABLEKS                       R43 R42 K60 ["Thickness"]
      216 SETTABLEKS                       R42 R41 K53 ["stroke"]
      218 CALL                             R39 2 1
      219 SETTABLEKS                       R39 R38 K49 ["ColorSwatch"]
      221 GETUPVAL                         R39 1
      222 GETTABLEKS                       R39 R39 K14 ["createElement"]
      224 GETUPVAL                         R40 4
      225 DUPTABLE                         R41 K67 [{"Text", "fontStyle", "textStyle", "tag"}]
      226 SETTABLEKS                       R12 R41 K64 ["Text"]
      228 GETTABLEKS                       R42 R1 K68 ["Typography"]
      230 GETTABLEKS                       R42 R42 K69 ["BodyMedium"]
      232 SETTABLEKS                       R42 R41 K65 ["fontStyle"]
      234 GETTABLEKS                       R42 R1 K1 ["Color"]
      236 GETTABLEKS                       R42 R42 K28 ["Content"]
      238 GETTABLEKS                       R42 R42 K70 ["Default"]
      240 SETTABLEKS                       R42 R41 K66 ["textStyle"]
      242 LOADK                            R42 K71 ["auto-xy"]
      243 SETTABLEKS                       R42 R41 K16 ["tag"]
      245 CALL                             R39 2 1
      246 SETTABLEKS                       R39 R38 K50 ["ColorLabel"]
      248 CALL                             R35 3 1
      249 SETTABLEKS                       R35 R34 K42 ["ButtonContainer"]
      251 CALL                             R31 3 1
      252 SETTABLEKS                       R31 R30 K32 ["ColorSwatchButton"]
      254 CALL                             R27 3 -1
      255 CALL                             R24 -1 1
      256 SETTABLEKS                       R24 R23 K27 ["Anchor"]
      258 GETUPVAL                         R24 1
      259 GETTABLEKS                       R24 R24 K14 ["createElement"]
      261 GETTABLEKS                       R25 R13 K28 ["Content"]
      263 DUPTABLE                         R26 K75 [{"side", "hasArrow", "onPressedOutside"}]
      264 GETTABLEKS                       R27 R15 K76 ["Right"]
      266 SETTABLEKS                       R27 R26 K72 ["side"]
      268 LOADB                            R27 1
      269 SETTABLEKS                       R27 R26 K73 ["hasArrow"]
      271 NEWCLOSURE                       R27 P2
      272 CAPTURE                          VAL R7
      273 SETTABLEKS                       R27 R26 K74 ["onPressedOutside"]
      275 GETUPVAL                         R27 1
      276 GETTABLEKS                       R27 R27 K14 ["createElement"]
      278 GETUPVAL                         R28 3
      279 DUPTABLE                         R29 K77 [{"tag", "Size"}]
      280 LOADK                            R30 K78 ["col padding-medium gap-medium"]
      281 SETTABLEKS                       R30 R29 K16 ["tag"]
      283 GETIMPORT                        R30 K20 [UDim2.fromOffset]
      285 LOADN                            R31 44
      286 LOADN                            R32 44
      287 CALL                             R30 2 1
      288 SETTABLEKS                       R30 R29 K15 ["Size"]
      290 DUPTABLE                         R30 K81 [{"Picker", "Actions"}]
      291 GETUPVAL                         R31 1
      292 GETTABLEKS                       R31 R31 K14 ["createElement"]
      294 GETUPVAL                         R32 5
      295 DUPTABLE                         R33 K87 [{"initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged", "LayoutOrder"}]
      296 SETTABLEKS                       R2 R33 K82 ["initialColor"]
      298 SETTABLEKS                       R4 R33 K83 ["initialAlpha"]
      300 NEWCLOSURE                       R34 P3
      301 CAPTURE                          VAL R3
      302 SETTABLEKS                       R34 R33 K84 ["onColorChanged"]
      304 NEWCLOSURE                       R34 P4
      305 CAPTURE                          VAL R5
      306 SETTABLEKS                       R34 R33 K85 ["onAlphaChanged"]
      308 LOADN                            R34 1
      309 SETTABLEKS                       R34 R33 K86 ["LayoutOrder"]
      311 CALL                             R31 2 1
      312 SETTABLEKS                       R31 R30 K79 ["Picker"]
      314 GETUPVAL                         R31 1
      315 GETTABLEKS                       R31 R31 K14 ["createElement"]
      317 GETUPVAL                         R32 3
      318 DUPTABLE                         R33 K88 [{"tag", "LayoutOrder"}]
      319 LOADK                            R34 K89 ["row gap-small auto-y size-full-0 margin-top-medium align-x-right"]
      320 SETTABLEKS                       R34 R33 K16 ["tag"]
      322 LOADN                            R34 2
      323 SETTABLEKS                       R34 R33 K86 ["LayoutOrder"]
      325 DUPTABLE                         R34 K92 [{"CancelButton", "DoneButton"}]
      326 GETUPVAL                         R35 1
      327 GETTABLEKS                       R35 R35 K14 ["createElement"]
      329 MOVE                             R36 R14
      330 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      331 NEWCLOSURE                       R38 P5
      332 CAPTURE                          VAL R3
      333 CAPTURE                          VAL R8
      334 CAPTURE                          VAL R5
      335 CAPTURE                          VAL R10
      336 CAPTURE                          VAL R7
      337 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      339 GETIMPORT                        R38 K38 [UDim2.new]
      341 LOADN                            R39 0
      342 LOADN                            R40 0
      343 LOADN                            R41 0
      344 LOADN                            R42 0
      345 CALL                             R38 4 1
      346 SETTABLEKS                       R38 R37 K15 ["Size"]
      348 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      350 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      352 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      353 GETUPVAL                         R39 1
      354 GETTABLEKS                       R39 R39 K14 ["createElement"]
      356 GETUPVAL                         R40 3
      357 DUPTABLE                         R41 K93 [{"tag", "backgroundStyle", "stroke"}]
      358 LOADK                            R42 K94 ["padding-small radius-small auto-xy"]
      359 SETTABLEKS                       R42 R41 K16 ["tag"]
      361 GETTABLEKS                       R42 R1 K1 ["Color"]
      363 GETTABLEKS                       R42 R42 K47 ["Surface"]
      365 GETTABLEKS                       R42 R42 K48 ["Surface_100"]
      367 SETTABLEKS                       R42 R41 K44 ["backgroundStyle"]
      369 DUPTABLE                         R42 K61 [{"Color", "Transparency", "Thickness"}]
      370 GETTABLEKS                       R43 R1 K1 ["Color"]
      372 GETTABLEKS                       R43 R43 K62 ["System"]
      374 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      376 GETTABLEKS                       R43 R43 K5 ["Color3"]
      378 SETTABLEKS                       R43 R42 K1 ["Color"]
      380 GETTABLEKS                       R43 R1 K1 ["Color"]
      382 GETTABLEKS                       R43 R43 K62 ["System"]
      384 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      386 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      388 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      390 LOADN                            R43 1
      391 SETTABLEKS                       R43 R42 K60 ["Thickness"]
      393 SETTABLEKS                       R42 R41 K53 ["stroke"]
      395 DUPTABLE                         R42 K96 [{"ButtonText"}]
      396 GETUPVAL                         R43 1
      397 GETTABLEKS                       R43 R43 K14 ["createElement"]
      399 GETUPVAL                         R44 4
      400 DUPTABLE                         R45 K67 [{"Text", "fontStyle", "textStyle", "tag"}]
      401 LOADK                            R46 K97 ["Cancel"]
      402 SETTABLEKS                       R46 R45 K64 ["Text"]
      404 GETTABLEKS                       R46 R1 K68 ["Typography"]
      406 GETTABLEKS                       R46 R46 K69 ["BodyMedium"]
      408 SETTABLEKS                       R46 R45 K65 ["fontStyle"]
      410 GETTABLEKS                       R46 R1 K1 ["Color"]
      412 GETTABLEKS                       R46 R46 K28 ["Content"]
      414 GETTABLEKS                       R46 R46 K70 ["Default"]
      416 SETTABLEKS                       R46 R45 K66 ["textStyle"]
      418 LOADK                            R46 K71 ["auto-xy"]
      419 SETTABLEKS                       R46 R45 K16 ["tag"]
      421 CALL                             R43 2 1
      422 SETTABLEKS                       R43 R42 K95 ["ButtonText"]
      424 CALL                             R39 3 1
      425 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      427 CALL                             R35 3 1
      428 SETTABLEKS                       R35 R34 K90 ["CancelButton"]
      430 GETUPVAL                         R35 1
      431 GETTABLEKS                       R35 R35 K14 ["createElement"]
      433 MOVE                             R36 R14
      434 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      435 NEWCLOSURE                       R38 P6
      436 CAPTURE                          VAL R7
      437 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      439 GETIMPORT                        R38 K38 [UDim2.new]
      441 LOADN                            R39 0
      442 LOADN                            R40 0
      443 LOADN                            R41 0
      444 LOADN                            R42 0
      445 CALL                             R38 4 1
      446 SETTABLEKS                       R38 R37 K15 ["Size"]
      448 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      450 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      452 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      453 GETUPVAL                         R39 1
      454 GETTABLEKS                       R39 R39 K14 ["createElement"]
      456 GETUPVAL                         R40 3
      457 DUPTABLE                         R41 K93 [{"tag", "backgroundStyle", "stroke"}]
      458 LOADK                            R42 K94 ["padding-small radius-small auto-xy"]
      459 SETTABLEKS                       R42 R41 K16 ["tag"]
      461 GETTABLEKS                       R42 R1 K1 ["Color"]
      463 GETTABLEKS                       R42 R42 K47 ["Surface"]
      465 GETTABLEKS                       R42 R42 K48 ["Surface_100"]
      467 SETTABLEKS                       R42 R41 K44 ["backgroundStyle"]
      469 DUPTABLE                         R42 K61 [{"Color", "Transparency", "Thickness"}]
      470 GETTABLEKS                       R43 R1 K1 ["Color"]
      472 GETTABLEKS                       R43 R43 K62 ["System"]
      474 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      476 GETTABLEKS                       R43 R43 K5 ["Color3"]
      478 SETTABLEKS                       R43 R42 K1 ["Color"]
      480 GETTABLEKS                       R43 R1 K1 ["Color"]
      482 GETTABLEKS                       R43 R43 K62 ["System"]
      484 GETTABLEKS                       R43 R43 K63 ["Neutral"]
      486 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      488 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      490 LOADN                            R43 1
      491 SETTABLEKS                       R43 R42 K60 ["Thickness"]
      493 SETTABLEKS                       R42 R41 K53 ["stroke"]
      495 DUPTABLE                         R42 K96 [{"ButtonText"}]
      496 GETUPVAL                         R43 1
      497 GETTABLEKS                       R43 R43 K14 ["createElement"]
      499 GETUPVAL                         R44 4
      500 DUPTABLE                         R45 K67 [{"Text", "fontStyle", "textStyle", "tag"}]
      501 LOADK                            R46 K98 ["Done"]
      502 SETTABLEKS                       R46 R45 K64 ["Text"]
      504 GETTABLEKS                       R46 R1 K68 ["Typography"]
      506 GETTABLEKS                       R46 R46 K69 ["BodyMedium"]
      508 SETTABLEKS                       R46 R45 K65 ["fontStyle"]
      510 GETTABLEKS                       R46 R1 K1 ["Color"]
      512 GETTABLEKS                       R46 R46 K28 ["Content"]
      514 GETTABLEKS                       R46 R46 K70 ["Default"]
      516 SETTABLEKS                       R46 R45 K66 ["textStyle"]
      518 LOADK                            R46 K71 ["auto-xy"]
      519 SETTABLEKS                       R46 R45 K16 ["tag"]
      521 CALL                             R43 2 1
      522 SETTABLEKS                       R43 R42 K95 ["ButtonText"]
      524 CALL                             R39 3 1
      525 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      527 CALL                             R35 3 1
      528 SETTABLEKS                       R35 R34 K91 ["DoneButton"]
      530 CALL                             R31 3 1
      531 SETTABLEKS                       R31 R30 K80 ["Actions"]
      533 CALL                             R27 3 -1
      534 CALL                             R24 -1 1
      535 SETTABLEKS                       R24 R23 K28 ["Content"]
      537 CALL                             R20 3 1
      538 SETTABLEKS                       R20 R19 K22 ["PopoverContainer"]
      540 CALL                             R16 3 -1
      541 RETURN                           R16 -1

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
       21 DUPTABLE                         R6 K10 [{"Size", "tag"}]
       22 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       24 LOADN                            R8 44
       25 LOADN                            R9 44
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K8 ["Size"]
       29 LOADK                            R7 K14 ["col gap-medium"]
       30 SETTABLEKS                       R7 R6 K9 ["tag"]
       32 DUPTABLE                         R7 K17 [{"PreviewContainer", "Picker"}]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K7 ["createElement"]
       36 GETUPVAL                         R9 3
       37 DUPTABLE                         R10 K20 [{"color", "showAlpha"}]
       38 SETTABLEKS                       R1 R10 K18 ["color"]
       40 LOADB                            R11 0
       41 SETTABLEKS                       R11 R10 K19 ["showAlpha"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K15 ["PreviewContainer"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K7 ["createElement"]
       49 GETUPVAL                         R9 4
       50 DUPTABLE                         R10 K25 [{"initialColor", "availableModes", "initialMode", "onColorChanged"}]
       51 SETTABLEKS                       R1 R10 K21 ["initialColor"]
       53 SETTABLEKS                       R3 R10 K22 ["availableModes"]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R11 R11 K6 ["Brick"]
       58 SETTABLEKS                       R11 R10 K23 ["initialMode"]
       60 NEWCLOSURE                       R11 P0
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R11 R10 K24 ["onColorChanged"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K16 ["Picker"]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["ColorInputMode"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["ColorPicker"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["Style"]
       48 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K17 [PROTO_4]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 DUPTABLE                         R9 K21 [{"summary", "stories", "controls"}]
       57 LOADK                            R10 K11 ["ColorPicker"]
       58 SETTABLEKS                       R10 R9 K18 ["summary"]
       60 NEWTABLE                         R10 0 4
       62 DUPTABLE                         R11 K24 [{"name", "story"}]
       63 LOADK                            R12 K25 ["Base"]
       64 SETTABLEKS                       R12 R11 K22 ["name"]
       66 DUPCLOSURE                       R12 K26 [PROTO_5]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R12 R11 K23 ["story"]
       74 DUPTABLE                         R12 K24 [{"name", "story"}]
       75 LOADK                            R13 K27 ["Without Alpha"]
       76 SETTABLEKS                       R13 R12 K22 ["name"]
       78 DUPCLOSURE                       R13 K28 [PROTO_6]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R13 R12 K23 ["story"]
       86 DUPTABLE                         R13 K24 [{"name", "story"}]
       87 LOADK                            R14 K29 ["With Popover"]
       88 SETTABLEKS                       R14 R13 K22 ["name"]
       90 DUPCLOSURE                       R14 K30 [PROTO_14]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R4
       97 SETTABLEKS                       R14 R13 K23 ["story"]
       99 DUPTABLE                         R14 K24 [{"name", "story"}]
      100 LOADK                            R15 K31 ["BrickColor Only"]
      101 SETTABLEKS                       R15 R14 K22 ["name"]
      103 DUPCLOSURE                       R15 K32 [PROTO_16]
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R4
      109 SETTABLEKS                       R15 R14 K23 ["story"]
      111 SETLIST                          R10 R11 4 [1]
      113 SETTABLEKS                       R10 R9 K19 ["stories"]
      115 NEWTABLE                         R10 0 0
      117 SETTABLEKS                       R10 R9 K20 ["controls"]
      119 RETURN                           R9 1
