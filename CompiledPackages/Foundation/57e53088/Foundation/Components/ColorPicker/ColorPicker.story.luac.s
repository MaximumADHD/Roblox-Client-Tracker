PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K1 ["color"]
        3 GETTABLEKS                       R2 R3 K2 ["R"]
        5 MULK                             R1 R2 K0 [255]
        6 FASTCALL1                        MATH_FLOOR R1 ; [+2]
        7 GETIMPORT                        R0 K5 [math.floor]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["color"]
       13 GETTABLEKS                       R3 R4 K6 ["G"]
       15 MULK                             R2 R3 K0 [255]
       16 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       17 GETIMPORT                        R1 K5 [math.floor]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K1 ["color"]
       23 GETTABLEKS                       R4 R5 K7 ["B"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["alpha"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["color"]
        9 GETTABLEKS                       R2 R3 K3 ["R"]
       11 MULK                             R1 R2 K1 [255]
       12 FASTCALL1                        MATH_FLOOR R1 ; [+2]
       13 GETIMPORT                        R0 K6 [math.floor]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K2 ["color"]
       19 GETTABLEKS                       R3 R4 K7 ["G"]
       21 MULK                             R2 R3 K1 [255]
       22 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       23 GETIMPORT                        R1 K6 [math.floor]
       25 CALL                             R1 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K2 ["color"]
       29 GETTABLEKS                       R4 R5 K8 ["B"]
       31 MULK                             R3 R4 K1 [255]
       32 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       33 GETIMPORT                        R2 K6 [math.floor]
       35 CALL                             R2 1 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K0 ["alpha"]
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
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K5 ["color"]
        6 GETTABLEKS                       R4 R5 K6 ["R"]
        8 MULK                             R3 R4 K4 [255]
        9 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       10 GETIMPORT                        R2 K9 [math.floor]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K5 ["color"]
       16 GETTABLEKS                       R5 R6 K10 ["G"]
       18 MULK                             R4 R5 K4 [255]
       19 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       20 GETIMPORT                        R3 K9 [math.floor]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K5 ["color"]
       26 GETTABLEKS                       R6 R7 K11 ["B"]
       28 MULK                             R5 R6 K4 [255]
       29 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       30 GETIMPORT                        R4 K9 [math.floor]
       32 CALL                             R4 1 1
       33 CALL                             R0 4 -1
       34 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["alpha"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K3 [string.format]
        8 LOADK                            R1 K4 ["RGBA(%d, %d, %d, %.2f)"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K6 ["color"]
       12 GETTABLEKS                       R4 R5 K7 ["R"]
       14 MULK                             R3 R4 K5 [255]
       15 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       16 GETIMPORT                        R2 K10 [math.floor]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K6 ["color"]
       22 GETTABLEKS                       R5 R6 K11 ["G"]
       24 MULK                             R4 R5 K5 [255]
       25 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       26 GETIMPORT                        R3 K10 [math.floor]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K6 ["color"]
       32 GETTABLEKS                       R6 R7 K12 ["B"]
       34 MULK                             R5 R6 K5 [255]
       35 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       36 GETIMPORT                        R4 K10 [math.floor]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K0 ["alpha"]
       42 CALL                             R0 5 -1
       43 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["color"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K0 ["useMemo"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R5 0 4
       21 GETTABLEKS                       R7 R0 K1 ["color"]
       23 GETTABLEKS                       R6 R7 K2 ["R"]
       25 GETTABLEKS                       R8 R0 K1 ["color"]
       27 GETTABLEKS                       R7 R8 K3 ["G"]
       29 GETTABLEKS                       R9 R0 K1 ["color"]
       31 GETTABLEKS                       R8 R9 K4 ["B"]
       33 GETTABLEKS                       R9 R0 K5 ["alpha"]
       35 SETLIST                          R5 R6 4 [1]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K0 ["useMemo"]
       41 NEWCLOSURE                       R5 P2
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R6 0 1
       45 GETTABLEKS                       R7 R0 K1 ["color"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R5 R6 K0 ["useMemo"]
       53 NEWCLOSURE                       R6 P3
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R7 0 4
       57 GETTABLEKS                       R9 R0 K1 ["color"]
       59 GETTABLEKS                       R8 R9 K2 ["R"]
       61 GETTABLEKS                       R10 R0 K1 ["color"]
       63 GETTABLEKS                       R9 R10 K3 ["G"]
       65 GETTABLEKS                       R11 R0 K1 ["color"]
       67 GETTABLEKS                       R10 R11 K4 ["B"]
       69 GETTABLEKS                       R11 R0 K5 ["alpha"]
       71 SETLIST                          R7 R8 4 [1]
       73 CALL                             R5 2 1
       74 GETTABLEKS                       R7 R0 K5 ["alpha"]
       76 JUMPIFNOT                        R7 ; [+4]
       77 GETTABLEKS                       R7 R0 K5 ["alpha"]
       79 SUBRK                            R6 R6 K7 ["createElement"]
       80 JUMP                             ; [+1]
       81 LOADN                            R6 0
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R7 R8 K7 ["createElement"]
       85 GETUPVAL                         R8 2
       86 DUPTABLE                         R9 K10 [{"tag", "LayoutOrder"}]
       87 LOADK                            R10 K11 ["row gap-medium auto-y size-full-0"]
       88 SETTABLEKS                       R10 R9 K8 ["tag"]
       90 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       92 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       94 DUPTABLE                         R10 K14 [{"ColorSwatch", "ColorInfo"}]
       95 GETUPVAL                         R12 1
       96 GETTABLEKS                       R11 R12 K7 ["createElement"]
       98 GETUPVAL                         R12 2
       99 DUPTABLE                         R13 K17 [{"Size", "tag", "stroke"}]
      100 GETIMPORT                        R14 K20 [UDim2.fromOffset]
      102 LOADN                            R15 64
      103 LOADN                            R16 64
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K15 ["Size"]
      107 LOADK                            R14 K21 ["radius-medium"]
      108 SETTABLEKS                       R14 R13 K8 ["tag"]
      110 DUPTABLE                         R14 K25 [{"Color", "Transparency", "Thickness"}]
      111 GETTABLEKS                       R18 R1 K22 ["Color"]
      113 GETTABLEKS                       R17 R18 K26 ["System"]
      115 GETTABLEKS                       R16 R17 K27 ["Neutral"]
      117 GETTABLEKS                       R15 R16 K28 ["Color3"]
      119 SETTABLEKS                       R15 R14 K22 ["Color"]
      121 GETTABLEKS                       R18 R1 K22 ["Color"]
      123 GETTABLEKS                       R17 R18 K26 ["System"]
      125 GETTABLEKS                       R16 R17 K27 ["Neutral"]
      127 GETTABLEKS                       R15 R16 K23 ["Transparency"]
      129 SETTABLEKS                       R15 R14 K23 ["Transparency"]
      131 LOADN                            R15 1
      132 SETTABLEKS                       R15 R14 K24 ["Thickness"]
      134 SETTABLEKS                       R14 R13 K16 ["stroke"]
      136 DUPTABLE                         R14 K31 [{"Checkerboard", "ColorOverlay"}]
      137 GETUPVAL                         R16 1
      138 GETTABLEKS                       R15 R16 K7 ["createElement"]
      140 GETUPVAL                         R16 3
      141 DUPTABLE                         R17 K36 [{"Image", "ScaleType", "TileSize", "tag", "ZIndex"}]
      142 LOADK                            R18 K37 ["component_assets/checkerboard_12"]
      143 SETTABLEKS                       R18 R17 K32 ["Image"]
      145 GETIMPORT                        R18 K40 [Enum.ScaleType.Tile]
      147 SETTABLEKS                       R18 R17 K33 ["ScaleType"]
      149 GETIMPORT                        R18 K20 [UDim2.fromOffset]
      151 LOADN                            R19 12
      152 LOADN                            R20 12
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K34 ["TileSize"]
      156 LOADK                            R18 K41 ["size-full radius-medium"]
      157 SETTABLEKS                       R18 R17 K8 ["tag"]
      159 LOADN                            R18 1
      160 SETTABLEKS                       R18 R17 K35 ["ZIndex"]
      162 CALL                             R15 2 1
      163 SETTABLEKS                       R15 R14 K29 ["Checkerboard"]
      165 GETUPVAL                         R16 1
      166 GETTABLEKS                       R15 R16 K7 ["createElement"]
      168 GETUPVAL                         R16 2
      169 DUPTABLE                         R17 K43 [{"tag", "backgroundStyle", "ZIndex"}]
      170 LOADK                            R18 K41 ["size-full radius-medium"]
      171 SETTABLEKS                       R18 R17 K8 ["tag"]
      173 DUPTABLE                         R18 K44 [{"Color3", "Transparency"}]
      174 GETTABLEKS                       R19 R0 K1 ["color"]
      176 SETTABLEKS                       R19 R18 K28 ["Color3"]
      178 SETTABLEKS                       R6 R18 K23 ["Transparency"]
      180 SETTABLEKS                       R18 R17 K42 ["backgroundStyle"]
      182 LOADN                            R18 2
      183 SETTABLEKS                       R18 R17 K35 ["ZIndex"]
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K30 ["ColorOverlay"]
      188 CALL                             R11 3 1
      189 SETTABLEKS                       R11 R10 K12 ["ColorSwatch"]
      191 GETUPVAL                         R12 1
      192 GETTABLEKS                       R11 R12 K7 ["createElement"]
      194 GETUPVAL                         R12 2
      195 DUPTABLE                         R13 K46 [{"tag", "layout"}]
      196 LOADK                            R14 K47 ["col gap-xsmall auto-y flex-grow"]
      197 SETTABLEKS                       R14 R13 K8 ["tag"]
      199 DUPTABLE                         R14 K50 [{"FillDirection", "HorizontalAlignment"}]
      200 GETIMPORT                        R15 K52 [Enum.FillDirection.Vertical]
      202 SETTABLEKS                       R15 R14 K48 ["FillDirection"]
      204 GETIMPORT                        R15 K54 [Enum.HorizontalAlignment.Left]
      206 SETTABLEKS                       R15 R14 K49 ["HorizontalAlignment"]
      208 SETTABLEKS                       R14 R13 K45 ["layout"]
      210 DUPTABLE                         R14 K59 [{"HexLabel", "HexAlphaLabel", "RGBLabel", "RGBALabel"}]
      211 GETUPVAL                         R16 1
      212 GETTABLEKS                       R15 R16 K7 ["createElement"]
      214 GETUPVAL                         R16 4
      215 DUPTABLE                         R17 K64 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      216 SETTABLEKS                       R2 R17 K60 ["Text"]
      218 GETTABLEKS                       R19 R1 K65 ["Typography"]
      220 GETTABLEKS                       R18 R19 K66 ["BodyLarge"]
      222 SETTABLEKS                       R18 R17 K61 ["fontStyle"]
      224 GETTABLEKS                       R20 R1 K22 ["Color"]
      226 GETTABLEKS                       R19 R20 K67 ["Content"]
      228 GETTABLEKS                       R18 R19 K68 ["Emphasis"]
      230 SETTABLEKS                       R18 R17 K62 ["textStyle"]
      232 GETIMPORT                        R18 K69 [Enum.TextXAlignment.Left]
      234 SETTABLEKS                       R18 R17 K63 ["TextXAlignment"]
      236 LOADK                            R18 K70 ["auto-y size-full-0"]
      237 SETTABLEKS                       R18 R17 K8 ["tag"]
      239 CALL                             R15 2 1
      240 SETTABLEKS                       R15 R14 K55 ["HexLabel"]
      242 JUMPIFNOT                        R3 ; [+33]
      243 GETTABLEKS                       R16 R0 K71 ["showAlpha"]
      245 JUMPIFNOT                        R16 ; [+30]
      246 GETUPVAL                         R16 1
      247 GETTABLEKS                       R15 R16 K7 ["createElement"]
      249 GETUPVAL                         R16 4
      250 DUPTABLE                         R17 K64 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      251 SETTABLEKS                       R3 R17 K60 ["Text"]
      253 GETTABLEKS                       R19 R1 K65 ["Typography"]
      255 GETTABLEKS                       R18 R19 K72 ["CaptionLarge"]
      257 SETTABLEKS                       R18 R17 K61 ["fontStyle"]
      259 GETTABLEKS                       R20 R1 K22 ["Color"]
      261 GETTABLEKS                       R19 R20 K67 ["Content"]
      263 GETTABLEKS                       R18 R19 K73 ["Default"]
      265 SETTABLEKS                       R18 R17 K62 ["textStyle"]
      267 GETIMPORT                        R18 K69 [Enum.TextXAlignment.Left]
      269 SETTABLEKS                       R18 R17 K63 ["TextXAlignment"]
      271 LOADK                            R18 K70 ["auto-y size-full-0"]
      272 SETTABLEKS                       R18 R17 K8 ["tag"]
      274 CALL                             R15 2 1
      275 JUMP                             ; [+7]
      276 GETUPVAL                         R16 1
      277 GETTABLEKS                       R15 R16 K7 ["createElement"]
      279 GETUPVAL                         R17 1
      280 GETTABLEKS                       R16 R17 K74 ["Fragment"]
      282 CALL                             R15 1 1
      283 SETTABLEKS                       R15 R14 K56 ["HexAlphaLabel"]
      285 GETUPVAL                         R16 1
      286 GETTABLEKS                       R15 R16 K7 ["createElement"]
      288 GETUPVAL                         R16 4
      289 DUPTABLE                         R17 K64 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      290 SETTABLEKS                       R4 R17 K60 ["Text"]
      292 GETTABLEKS                       R19 R1 K65 ["Typography"]
      294 GETTABLEKS                       R18 R19 K72 ["CaptionLarge"]
      296 SETTABLEKS                       R18 R17 K61 ["fontStyle"]
      298 GETTABLEKS                       R20 R1 K22 ["Color"]
      300 GETTABLEKS                       R19 R20 K67 ["Content"]
      302 GETTABLEKS                       R18 R19 K73 ["Default"]
      304 SETTABLEKS                       R18 R17 K62 ["textStyle"]
      306 GETIMPORT                        R18 K69 [Enum.TextXAlignment.Left]
      308 SETTABLEKS                       R18 R17 K63 ["TextXAlignment"]
      310 LOADK                            R18 K70 ["auto-y size-full-0"]
      311 SETTABLEKS                       R18 R17 K8 ["tag"]
      313 CALL                             R15 2 1
      314 SETTABLEKS                       R15 R14 K57 ["RGBLabel"]
      316 JUMPIFNOT                        R5 ; [+33]
      317 GETTABLEKS                       R16 R0 K71 ["showAlpha"]
      319 JUMPIFNOT                        R16 ; [+30]
      320 GETUPVAL                         R16 1
      321 GETTABLEKS                       R15 R16 K7 ["createElement"]
      323 GETUPVAL                         R16 4
      324 DUPTABLE                         R17 K64 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "tag"}]
      325 SETTABLEKS                       R5 R17 K60 ["Text"]
      327 GETTABLEKS                       R19 R1 K65 ["Typography"]
      329 GETTABLEKS                       R18 R19 K72 ["CaptionLarge"]
      331 SETTABLEKS                       R18 R17 K61 ["fontStyle"]
      333 GETTABLEKS                       R20 R1 K22 ["Color"]
      335 GETTABLEKS                       R19 R20 K67 ["Content"]
      337 GETTABLEKS                       R18 R19 K73 ["Default"]
      339 SETTABLEKS                       R18 R17 K62 ["textStyle"]
      341 GETIMPORT                        R18 K69 [Enum.TextXAlignment.Left]
      343 SETTABLEKS                       R18 R17 K63 ["TextXAlignment"]
      345 LOADK                            R18 K70 ["auto-y size-full-0"]
      346 SETTABLEKS                       R18 R17 K8 ["tag"]
      348 CALL                             R15 2 1
      349 JUMP                             ; [+7]
      350 GETUPVAL                         R16 1
      351 GETTABLEKS                       R15 R16 K7 ["createElement"]
      353 GETUPVAL                         R17 1
      354 GETTABLEKS                       R16 R17 K74 ["Fragment"]
      356 CALL                             R15 1 1
      357 SETTABLEKS                       R15 R14 K58 ["RGBALabel"]
      359 CALL                             R11 3 1
      360 SETTABLEKS                       R11 R10 K13 ["ColorInfo"]
      362 CALL                             R7 3 -1
      363 RETURN                           R7 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Drag started!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Drag ended!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETTABLEKS                       R7 R1 K1 ["Color"]
        7 GETTABLEKS                       R6 R7 K2 ["Extended"]
        9 GETTABLEKS                       R5 R6 K3 ["Blue"]
       11 GETTABLEKS                       R4 R5 K4 ["Blue_1100"]
       13 GETTABLEKS                       R3 R4 K5 ["Color3"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K0 ["useState"]
       19 LOADN                            R5 1
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K6 ["createElement"]
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
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R10 R11 K6 ["createElement"]
       40 GETUPVAL                         R11 3
       41 DUPTABLE                         R12 K20 [{"color", "alpha", "showAlpha"}]
       42 SETTABLEKS                       R2 R12 K17 ["color"]
       44 SETTABLEKS                       R4 R12 K18 ["alpha"]
       46 LOADB                            R13 1
       47 SETTABLEKS                       R13 R12 K19 ["showAlpha"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K14 ["PreviewContainer"]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K6 ["createElement"]
       55 GETUPVAL                         R11 4
       56 DUPTABLE                         R12 K27 [{"initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged", "onDragStarted", "onDragEnded"}]
       57 SETTABLEKS                       R2 R12 K21 ["initialColor"]
       59 SETTABLEKS                       R4 R12 K22 ["initialAlpha"]
       61 SETTABLEKS                       R3 R12 K23 ["onColorChanged"]
       63 SETTABLEKS                       R5 R12 K24 ["onAlphaChanged"]
       65 DUPCLOSURE                       R13 K28 [PROTO_5]
       66 SETTABLEKS                       R13 R12 K25 ["onDragStarted"]
       68 DUPCLOSURE                       R13 K29 [PROTO_6]
       69 SETTABLEKS                       R13 R12 K26 ["onDragEnded"]
       71 CALL                             R10 2 1
       72 SETTABLEKS                       R10 R9 K15 ["Picker"]
       74 CALL                             R6 3 -1
       75 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETTABLEKS                       R7 R1 K1 ["Color"]
        7 GETTABLEKS                       R6 R7 K2 ["Extended"]
        9 GETTABLEKS                       R5 R6 K3 ["Blue"]
       11 GETTABLEKS                       R4 R5 K4 ["Blue_1100"]
       13 GETTABLEKS                       R3 R4 K5 ["Color3"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K6 ["createElement"]
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
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K6 ["createElement"]
       35 GETUPVAL                         R9 3
       36 DUPTABLE                         R10 K19 [{"color", "showAlpha"}]
       37 SETTABLEKS                       R2 R10 K17 ["color"]
       39 LOADB                            R11 0
       40 SETTABLEKS                       R11 R10 K18 ["showAlpha"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K14 ["PreviewContainer"]
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R8 R9 K6 ["createElement"]
       48 GETUPVAL                         R9 4
       49 DUPTABLE                         R10 K22 [{"initialColor", "onColorChanged"}]
       50 SETTABLEKS                       R2 R10 K20 ["initialColor"]
       52 SETTABLEKS                       R3 R10 K21 ["onColorChanged"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K15 ["Picker"]
       57 CALL                             R4 3 -1
       58 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["R"]
        3 MULK                             R1 R2 K0 [255]
        4 FASTCALL1                        MATH_FLOOR R1 ; [+2]
        5 GETIMPORT                        R0 K4 [math.floor]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K5 ["G"]
       11 MULK                             R2 R3 K0 [255]
       12 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       13 GETIMPORT                        R1 K4 [math.floor]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K6 ["B"]
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETTABLEKS                       R7 R1 K1 ["Color"]
        7 GETTABLEKS                       R6 R7 K2 ["Extended"]
        9 GETTABLEKS                       R5 R6 K3 ["Blue"]
       11 GETTABLEKS                       R4 R5 K4 ["Blue_1100"]
       13 GETTABLEKS                       R3 R4 K5 ["Color3"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K0 ["useState"]
       19 LOADN                            R5 1
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K0 ["useState"]
       24 LOADB                            R7 0
       25 CALL                             R6 1 2
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K0 ["useState"]
       29 GETTABLEKS                       R13 R1 K1 ["Color"]
       31 GETTABLEKS                       R12 R13 K2 ["Extended"]
       33 GETTABLEKS                       R11 R12 K3 ["Blue"]
       35 GETTABLEKS                       R10 R11 K4 ["Blue_1100"]
       37 GETTABLEKS                       R9 R10 K5 ["Color3"]
       39 CALL                             R8 1 2
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R10 R11 K0 ["useState"]
       43 LOADN                            R11 1
       44 CALL                             R10 1 2
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R12 R13 K6 ["useMemo"]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R14 0 1
       52 MOVE                             R15 R2
       53 SETLIST                          R14 R15 1 [1]
       55 CALL                             R12 2 1
       56 GETIMPORT                        R13 K8 [require]
       58 GETUPVAL                         R16 2
       59 GETTABLEKS                       R15 R16 K9 ["Components"]
       61 GETTABLEKS                       R14 R15 K10 ["Popover"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K8 [require]
       66 GETUPVAL                         R17 2
       67 GETTABLEKS                       R16 R17 K9 ["Components"]
       69 GETTABLEKS                       R15 R16 K11 ["Interactable"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K8 [require]
       74 GETUPVAL                         R18 2
       75 GETTABLEKS                       R17 R18 K12 ["Enums"]
       77 GETTABLEKS                       R16 R17 K13 ["PopoverSide"]
       79 CALL                             R15 1 1
       80 GETUPVAL                         R17 1
       81 GETTABLEKS                       R16 R17 K14 ["createElement"]
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
       96 GETUPVAL                         R21 1
       97 GETTABLEKS                       R20 R21 K14 ["createElement"]
       99 GETTABLEKS                       R21 R13 K24 ["Root"]
      101 DUPTABLE                         R22 K26 [{"isOpen"}]
      102 SETTABLEKS                       R6 R22 K25 ["isOpen"]
      104 DUPTABLE                         R23 K29 [{"Anchor", "Content"}]
      105 GETUPVAL                         R25 1
      106 GETTABLEKS                       R24 R25 K14 ["createElement"]
      108 GETTABLEKS                       R25 R13 K27 ["Anchor"]
      110 LOADNIL                          R26
      111 GETUPVAL                         R28 1
      112 GETTABLEKS                       R27 R28 K14 ["createElement"]
      114 GETUPVAL                         R28 3
      115 DUPTABLE                         R29 K30 [{"tag"}]
      116 LOADK                            R30 K31 ["row gap-medium align-y-center auto-xy"]
      117 SETTABLEKS                       R30 R29 K16 ["tag"]
      119 DUPTABLE                         R30 K33 [{"ColorSwatchButton"}]
      120 GETUPVAL                         R32 1
      121 GETTABLEKS                       R31 R32 K14 ["createElement"]
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
      148 GETUPVAL                         R36 1
      149 GETTABLEKS                       R35 R36 K14 ["createElement"]
      151 GETUPVAL                         R36 3
      152 DUPTABLE                         R37 K45 [{"tag", "backgroundStyle"}]
      153 LOADK                            R38 K46 ["row gap-small align-y-center padding-small radius-small stroke-neutral auto-xy"]
      154 SETTABLEKS                       R38 R37 K16 ["tag"]
      156 GETTABLEKS                       R40 R1 K1 ["Color"]
      158 GETTABLEKS                       R39 R40 K47 ["Surface"]
      160 GETTABLEKS                       R38 R39 K48 ["Surface_100"]
      162 SETTABLEKS                       R38 R37 K44 ["backgroundStyle"]
      164 DUPTABLE                         R38 K51 [{"ColorSwatch", "ColorLabel"}]
      165 GETUPVAL                         R40 1
      166 GETTABLEKS                       R39 R40 K14 ["createElement"]
      168 GETUPVAL                         R40 3
      169 DUPTABLE                         R41 K53 [{"Size", "tag", "stroke"}]
      170 GETIMPORT                        R42 K20 [UDim2.fromOffset]
      172 LOADN                            R43 24
      173 LOADN                            R44 24
      174 CALL                             R42 2 1
      175 SETTABLEKS                       R42 R41 K15 ["Size"]
      177 LOADK                            R42 K54 ["radius-small"]
      178 SETTABLEKS                       R42 R41 K16 ["tag"]
      180 DUPTABLE                         R42 K57 [{"Color", "Transparency", "Thickness"}]
      181 GETTABLEKS                       R46 R1 K1 ["Color"]
      183 GETTABLEKS                       R45 R46 K58 ["System"]
      185 GETTABLEKS                       R44 R45 K59 ["Neutral"]
      187 GETTABLEKS                       R43 R44 K5 ["Color3"]
      189 SETTABLEKS                       R43 R42 K1 ["Color"]
      191 GETTABLEKS                       R46 R1 K1 ["Color"]
      193 GETTABLEKS                       R45 R46 K58 ["System"]
      195 GETTABLEKS                       R44 R45 K59 ["Neutral"]
      197 GETTABLEKS                       R43 R44 K55 ["Transparency"]
      199 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      201 LOADN                            R43 1
      202 SETTABLEKS                       R43 R42 K56 ["Thickness"]
      204 SETTABLEKS                       R42 R41 K52 ["stroke"]
      206 DUPTABLE                         R42 K62 [{"Checkerboard", "ColorOverlay"}]
      207 GETUPVAL                         R44 1
      208 GETTABLEKS                       R43 R44 K14 ["createElement"]
      210 GETUPVAL                         R44 4
      211 DUPTABLE                         R45 K67 [{"Image", "ScaleType", "TileSize", "tag", "ZIndex"}]
      212 LOADK                            R46 K68 ["component_assets/checkerboard_12"]
      213 SETTABLEKS                       R46 R45 K63 ["Image"]
      215 GETIMPORT                        R46 K70 [Enum.ScaleType.Tile]
      217 SETTABLEKS                       R46 R45 K64 ["ScaleType"]
      219 GETIMPORT                        R46 K20 [UDim2.fromOffset]
      221 LOADN                            R47 12
      222 LOADN                            R48 12
      223 CALL                             R46 2 1
      224 SETTABLEKS                       R46 R45 K65 ["TileSize"]
      226 LOADK                            R46 K71 ["size-full radius-small"]
      227 SETTABLEKS                       R46 R45 K16 ["tag"]
      229 LOADN                            R46 1
      230 SETTABLEKS                       R46 R45 K66 ["ZIndex"]
      232 CALL                             R43 2 1
      233 SETTABLEKS                       R43 R42 K60 ["Checkerboard"]
      235 GETUPVAL                         R44 1
      236 GETTABLEKS                       R43 R44 K14 ["createElement"]
      238 GETUPVAL                         R44 3
      239 DUPTABLE                         R45 K72 [{"tag", "backgroundStyle", "ZIndex"}]
      240 LOADK                            R46 K71 ["size-full radius-small"]
      241 SETTABLEKS                       R46 R45 K16 ["tag"]
      243 DUPTABLE                         R46 K73 [{"Color3", "Transparency"}]
      244 SETTABLEKS                       R2 R46 K5 ["Color3"]
      246 SUBRK                            R47 R74 K4 ["Blue_1100"]
      247 SETTABLEKS                       R47 R46 K55 ["Transparency"]
      249 SETTABLEKS                       R46 R45 K44 ["backgroundStyle"]
      251 LOADN                            R46 2
      252 SETTABLEKS                       R46 R45 K66 ["ZIndex"]
      254 CALL                             R43 2 1
      255 SETTABLEKS                       R43 R42 K61 ["ColorOverlay"]
      257 CALL                             R39 3 1
      258 SETTABLEKS                       R39 R38 K49 ["ColorSwatch"]
      260 GETUPVAL                         R40 1
      261 GETTABLEKS                       R39 R40 K14 ["createElement"]
      263 GETUPVAL                         R40 5
      264 DUPTABLE                         R41 K78 [{"Text", "fontStyle", "textStyle", "tag"}]
      265 SETTABLEKS                       R12 R41 K75 ["Text"]
      267 GETTABLEKS                       R43 R1 K79 ["Typography"]
      269 GETTABLEKS                       R42 R43 K80 ["BodyMedium"]
      271 SETTABLEKS                       R42 R41 K76 ["fontStyle"]
      273 GETTABLEKS                       R44 R1 K1 ["Color"]
      275 GETTABLEKS                       R43 R44 K28 ["Content"]
      277 GETTABLEKS                       R42 R43 K81 ["Default"]
      279 SETTABLEKS                       R42 R41 K77 ["textStyle"]
      281 LOADK                            R42 K82 ["auto-xy"]
      282 SETTABLEKS                       R42 R41 K16 ["tag"]
      284 CALL                             R39 2 1
      285 SETTABLEKS                       R39 R38 K50 ["ColorLabel"]
      287 CALL                             R35 3 1
      288 SETTABLEKS                       R35 R34 K42 ["ButtonContainer"]
      290 CALL                             R31 3 1
      291 SETTABLEKS                       R31 R30 K32 ["ColorSwatchButton"]
      293 CALL                             R27 3 -1
      294 CALL                             R24 -1 1
      295 SETTABLEKS                       R24 R23 K27 ["Anchor"]
      297 GETUPVAL                         R25 1
      298 GETTABLEKS                       R24 R25 K14 ["createElement"]
      300 GETTABLEKS                       R25 R13 K28 ["Content"]
      302 DUPTABLE                         R26 K86 [{"side", "hasArrow", "onPressedOutside"}]
      303 GETTABLEKS                       R27 R15 K87 ["Right"]
      305 SETTABLEKS                       R27 R26 K83 ["side"]
      307 LOADB                            R27 1
      308 SETTABLEKS                       R27 R26 K84 ["hasArrow"]
      310 NEWCLOSURE                       R27 P2
      311 CAPTURE                          VAL R7
      312 SETTABLEKS                       R27 R26 K85 ["onPressedOutside"]
      314 GETUPVAL                         R28 1
      315 GETTABLEKS                       R27 R28 K14 ["createElement"]
      317 GETUPVAL                         R28 3
      318 DUPTABLE                         R29 K88 [{"tag", "Size"}]
      319 LOADK                            R30 K89 ["col padding-medium gap-medium"]
      320 SETTABLEKS                       R30 R29 K16 ["tag"]
      322 GETIMPORT                        R30 K20 [UDim2.fromOffset]
      324 LOADN                            R31 44
      325 LOADN                            R32 44
      326 CALL                             R30 2 1
      327 SETTABLEKS                       R30 R29 K15 ["Size"]
      329 DUPTABLE                         R30 K92 [{"Picker", "Actions"}]
      330 GETUPVAL                         R32 1
      331 GETTABLEKS                       R31 R32 K14 ["createElement"]
      333 GETUPVAL                         R32 6
      334 DUPTABLE                         R33 K98 [{"initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged", "LayoutOrder"}]
      335 SETTABLEKS                       R2 R33 K93 ["initialColor"]
      337 SETTABLEKS                       R4 R33 K94 ["initialAlpha"]
      339 NEWCLOSURE                       R34 P3
      340 CAPTURE                          VAL R3
      341 SETTABLEKS                       R34 R33 K95 ["onColorChanged"]
      343 NEWCLOSURE                       R34 P4
      344 CAPTURE                          VAL R5
      345 SETTABLEKS                       R34 R33 K96 ["onAlphaChanged"]
      347 LOADN                            R34 1
      348 SETTABLEKS                       R34 R33 K97 ["LayoutOrder"]
      350 CALL                             R31 2 1
      351 SETTABLEKS                       R31 R30 K90 ["Picker"]
      353 GETUPVAL                         R32 1
      354 GETTABLEKS                       R31 R32 K14 ["createElement"]
      356 GETUPVAL                         R32 3
      357 DUPTABLE                         R33 K99 [{"tag", "LayoutOrder"}]
      358 LOADK                            R34 K100 ["row gap-small auto-y size-full-0 margin-top-medium align-x-right"]
      359 SETTABLEKS                       R34 R33 K16 ["tag"]
      361 LOADN                            R34 2
      362 SETTABLEKS                       R34 R33 K97 ["LayoutOrder"]
      364 DUPTABLE                         R34 K103 [{"CancelButton", "DoneButton"}]
      365 GETUPVAL                         R36 1
      366 GETTABLEKS                       R35 R36 K14 ["createElement"]
      368 MOVE                             R36 R14
      369 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      370 NEWCLOSURE                       R38 P5
      371 CAPTURE                          VAL R3
      372 CAPTURE                          VAL R8
      373 CAPTURE                          VAL R5
      374 CAPTURE                          VAL R10
      375 CAPTURE                          VAL R7
      376 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      378 GETIMPORT                        R38 K38 [UDim2.new]
      380 LOADN                            R39 0
      381 LOADN                            R40 0
      382 LOADN                            R41 0
      383 LOADN                            R42 0
      384 CALL                             R38 4 1
      385 SETTABLEKS                       R38 R37 K15 ["Size"]
      387 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      389 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      391 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      392 GETUPVAL                         R40 1
      393 GETTABLEKS                       R39 R40 K14 ["createElement"]
      395 GETUPVAL                         R40 3
      396 DUPTABLE                         R41 K104 [{"tag", "backgroundStyle", "stroke"}]
      397 LOADK                            R42 K105 ["padding-small radius-small auto-xy"]
      398 SETTABLEKS                       R42 R41 K16 ["tag"]
      400 GETTABLEKS                       R44 R1 K1 ["Color"]
      402 GETTABLEKS                       R43 R44 K47 ["Surface"]
      404 GETTABLEKS                       R42 R43 K48 ["Surface_100"]
      406 SETTABLEKS                       R42 R41 K44 ["backgroundStyle"]
      408 DUPTABLE                         R42 K57 [{"Color", "Transparency", "Thickness"}]
      409 GETTABLEKS                       R46 R1 K1 ["Color"]
      411 GETTABLEKS                       R45 R46 K58 ["System"]
      413 GETTABLEKS                       R44 R45 K59 ["Neutral"]
      415 GETTABLEKS                       R43 R44 K5 ["Color3"]
      417 SETTABLEKS                       R43 R42 K1 ["Color"]
      419 GETTABLEKS                       R46 R1 K1 ["Color"]
      421 GETTABLEKS                       R45 R46 K58 ["System"]
      423 GETTABLEKS                       R44 R45 K59 ["Neutral"]
      425 GETTABLEKS                       R43 R44 K55 ["Transparency"]
      427 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      429 LOADN                            R43 1
      430 SETTABLEKS                       R43 R42 K56 ["Thickness"]
      432 SETTABLEKS                       R42 R41 K52 ["stroke"]
      434 DUPTABLE                         R42 K107 [{"ButtonText"}]
      435 GETUPVAL                         R44 1
      436 GETTABLEKS                       R43 R44 K14 ["createElement"]
      438 GETUPVAL                         R44 5
      439 DUPTABLE                         R45 K78 [{"Text", "fontStyle", "textStyle", "tag"}]
      440 LOADK                            R46 K108 ["Cancel"]
      441 SETTABLEKS                       R46 R45 K75 ["Text"]
      443 GETTABLEKS                       R47 R1 K79 ["Typography"]
      445 GETTABLEKS                       R46 R47 K80 ["BodyMedium"]
      447 SETTABLEKS                       R46 R45 K76 ["fontStyle"]
      449 GETTABLEKS                       R48 R1 K1 ["Color"]
      451 GETTABLEKS                       R47 R48 K28 ["Content"]
      453 GETTABLEKS                       R46 R47 K81 ["Default"]
      455 SETTABLEKS                       R46 R45 K77 ["textStyle"]
      457 LOADK                            R46 K82 ["auto-xy"]
      458 SETTABLEKS                       R46 R45 K16 ["tag"]
      460 CALL                             R43 2 1
      461 SETTABLEKS                       R43 R42 K106 ["ButtonText"]
      463 CALL                             R39 3 1
      464 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      466 CALL                             R35 3 1
      467 SETTABLEKS                       R35 R34 K101 ["CancelButton"]
      469 GETUPVAL                         R36 1
      470 GETTABLEKS                       R35 R36 K14 ["createElement"]
      472 MOVE                             R36 R14
      473 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      474 NEWCLOSURE                       R38 P6
      475 CAPTURE                          VAL R7
      476 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      478 GETIMPORT                        R38 K38 [UDim2.new]
      480 LOADN                            R39 0
      481 LOADN                            R40 0
      482 LOADN                            R41 0
      483 LOADN                            R42 0
      484 CALL                             R38 4 1
      485 SETTABLEKS                       R38 R37 K15 ["Size"]
      487 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      489 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      491 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      492 GETUPVAL                         R40 1
      493 GETTABLEKS                       R39 R40 K14 ["createElement"]
      495 GETUPVAL                         R40 3
      496 DUPTABLE                         R41 K104 [{"tag", "backgroundStyle", "stroke"}]
      497 LOADK                            R42 K105 ["padding-small radius-small auto-xy"]
      498 SETTABLEKS                       R42 R41 K16 ["tag"]
      500 GETTABLEKS                       R44 R1 K1 ["Color"]
      502 GETTABLEKS                       R43 R44 K47 ["Surface"]
      504 GETTABLEKS                       R42 R43 K48 ["Surface_100"]
      506 SETTABLEKS                       R42 R41 K44 ["backgroundStyle"]
      508 DUPTABLE                         R42 K57 [{"Color", "Transparency", "Thickness"}]
      509 GETTABLEKS                       R46 R1 K1 ["Color"]
      511 GETTABLEKS                       R45 R46 K58 ["System"]
      513 GETTABLEKS                       R44 R45 K59 ["Neutral"]
      515 GETTABLEKS                       R43 R44 K5 ["Color3"]
      517 SETTABLEKS                       R43 R42 K1 ["Color"]
      519 GETTABLEKS                       R46 R1 K1 ["Color"]
      521 GETTABLEKS                       R45 R46 K58 ["System"]
      523 GETTABLEKS                       R44 R45 K59 ["Neutral"]
      525 GETTABLEKS                       R43 R44 K55 ["Transparency"]
      527 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      529 LOADN                            R43 1
      530 SETTABLEKS                       R43 R42 K56 ["Thickness"]
      532 SETTABLEKS                       R42 R41 K52 ["stroke"]
      534 DUPTABLE                         R42 K107 [{"ButtonText"}]
      535 GETUPVAL                         R44 1
      536 GETTABLEKS                       R43 R44 K14 ["createElement"]
      538 GETUPVAL                         R44 5
      539 DUPTABLE                         R45 K78 [{"Text", "fontStyle", "textStyle", "tag"}]
      540 LOADK                            R46 K109 ["Done"]
      541 SETTABLEKS                       R46 R45 K75 ["Text"]
      543 GETTABLEKS                       R47 R1 K79 ["Typography"]
      545 GETTABLEKS                       R46 R47 K80 ["BodyMedium"]
      547 SETTABLEKS                       R46 R45 K76 ["fontStyle"]
      549 GETTABLEKS                       R48 R1 K1 ["Color"]
      551 GETTABLEKS                       R47 R48 K28 ["Content"]
      553 GETTABLEKS                       R46 R47 K81 ["Default"]
      555 SETTABLEKS                       R46 R45 K77 ["textStyle"]
      557 LOADK                            R46 K82 ["auto-xy"]
      558 SETTABLEKS                       R46 R45 K16 ["tag"]
      560 CALL                             R43 2 1
      561 SETTABLEKS                       R43 R42 K106 ["ButtonText"]
      563 CALL                             R39 3 1
      564 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      566 CALL                             R35 3 1
      567 SETTABLEKS                       R35 R34 K102 ["DoneButton"]
      569 CALL                             R31 3 1
      570 SETTABLEKS                       R31 R30 K91 ["Actions"]
      572 CALL                             R27 3 -1
      573 CALL                             R24 -1 1
      574 SETTABLEKS                       R24 R23 K28 ["Content"]
      576 CALL                             R20 3 1
      577 SETTABLEKS                       R20 R19 K22 ["PopoverContainer"]
      579 CALL                             R16 3 -1
      580 RETURN                           R16 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETTABLEKS                       R7 R1 K1 ["Color"]
        7 GETTABLEKS                       R6 R7 K2 ["Extended"]
        9 GETTABLEKS                       R5 R6 K3 ["Blue"]
       11 GETTABLEKS                       R4 R5 K4 ["Blue_1100"]
       13 GETTABLEKS                       R3 R4 K5 ["Color3"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K0 ["useState"]
       19 LOADN                            R5 1
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K6 ["createElement"]
       24 GETUPVAL                         R7 2
       25 DUPTABLE                         R8 K10 [{"AutomaticSize", "Size", "BackgroundTransparency"}]
       26 GETIMPORT                        R9 K13 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R9 R8 K7 ["AutomaticSize"]
       30 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       32 LOADN                            R10 208
       33 LOADN                            R11 0
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K8 ["Size"]
       37 LOADN                            R9 1
       38 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
       40 DUPTABLE                         R9 K19 [{"Stroke", "Picker"}]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R10 R11 K6 ["createElement"]
       44 LOADK                            R11 K20 ["UIStroke"]
       45 DUPTABLE                         R12 K23 [{"Color", "Thickness", "Transparency"}]
       46 GETTABLEKS                       R16 R1 K1 ["Color"]
       48 GETTABLEKS                       R15 R16 K24 ["System"]
       50 GETTABLEKS                       R14 R15 K25 ["Contrast"]
       52 GETTABLEKS                       R13 R14 K5 ["Color3"]
       54 SETTABLEKS                       R13 R12 K1 ["Color"]
       56 LOADN                            R13 1
       57 SETTABLEKS                       R13 R12 K21 ["Thickness"]
       59 LOADN                            R13 0
       60 SETTABLEKS                       R13 R12 K22 ["Transparency"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K17 ["Stroke"]
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R10 R11 K6 ["createElement"]
       68 GETUPVAL                         R11 3
       69 DUPTABLE                         R12 K31 [{"initialColor", "initialAlpha", "initialMode", "onColorChanged", "onAlphaChanged"}]
       70 SETTABLEKS                       R2 R12 K26 ["initialColor"]
       72 SETTABLEKS                       R4 R12 K27 ["initialAlpha"]
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R13 R14 K32 ["Hex"]
       77 SETTABLEKS                       R13 R12 K28 ["initialMode"]
       79 SETTABLEKS                       R3 R12 K29 ["onColorChanged"]
       81 SETTABLEKS                       R5 R12 K30 ["onAlphaChanged"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K18 ["Picker"]
       86 CALL                             R6 3 -1
       87 RETURN                           R6 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        8 CALL                             R1 1 0
        9 LOADK                            R3 K1 ["AbsoluteSize"]
       10 NAMECALL                         R1 R0 K2 ["GetPropertyChangedSignal"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R1 R1 K3 ["Connect"]
       18 CALL                             R1 2 1
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R1
       21 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETIMPORT                        R4 K3 [BrickColor.new]
        7 LOADK                            R5 K4 ["Bright red"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R3 R4 K5 ["Color"]
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K0 ["useState"]
       15 GETIMPORT                        R5 K7 [Vector2.new]
       17 LOADN                            R6 0
       18 LOADN                            R7 0
       19 CALL                             R5 2 -1
       20 CALL                             R4 -1 2
       21 NEWTABLE                         R6 0 1
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K8 ["Brick"]
       26 SETLIST                          R6 R7 1 [1]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K9 ["useRef"]
       31 LOADNIL                          R8
       32 CALL                             R7 1 1
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 0
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R8 R9 K11 ["createElement"]
       45 GETUPVAL                         R9 3
       46 DUPTABLE                         R10 K13 [{"tag"}]
       47 LOADK                            R11 K14 ["col gap-small"]
       48 SETTABLEKS                       R11 R10 K12 ["tag"]
       50 DUPTABLE                         R11 K17 [{"SizeLabel", "PickerContainer"}]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R12 R13 K11 ["createElement"]
       54 GETUPVAL                         R13 4
       55 DUPTABLE                         R14 K20 [{"Text", "tag", "LayoutOrder"}]
       56 LOADK                            R16 K21 ["Actual size: %*×%*"]
       57 GETTABLEKS                       R19 R4 K22 ["X"]
       59 FASTCALL1                        MATH_ROUND R19 ; [+2]
       60 GETIMPORT                        R18 K25 [math.round]
       62 CALL                             R18 1 1
       63 GETTABLEKS                       R20 R4 K26 ["Y"]
       65 FASTCALL1                        MATH_ROUND R20 ; [+2]
       66 GETIMPORT                        R19 K25 [math.round]
       68 CALL                             R19 1 1
       69 NAMECALL                         R16 R16 K27 ["format"]
       71 CALL                             R16 3 1
       72 MOVE                             R15 R16
       73 SETTABLEKS                       R15 R14 K18 ["Text"]
       75 LOADK                            R15 K28 ["text-caption-small content-muted"]
       76 SETTABLEKS                       R15 R14 K12 ["tag"]
       78 LOADN                            R15 1
       79 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K15 ["SizeLabel"]
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R12 R13 K11 ["createElement"]
       87 LOADK                            R13 K29 ["Frame"]
       88 DUPTABLE                         R14 K34 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder", "ref"}]
       89 GETIMPORT                        R15 K37 [Enum.AutomaticSize.XY]
       91 SETTABLEKS                       R15 R14 K30 ["AutomaticSize"]
       93 GETIMPORT                        R15 K39 [UDim2.new]
       95 CALL                             R15 0 1
       96 SETTABLEKS                       R15 R14 K31 ["Size"]
       98 LOADN                            R15 1
       99 SETTABLEKS                       R15 R14 K32 ["BackgroundTransparency"]
      101 LOADN                            R15 2
      102 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      104 SETTABLEKS                       R7 R14 K33 ["ref"]
      106 DUPTABLE                         R15 K42 [{"Stroke", "Picker"}]
      107 GETUPVAL                         R17 1
      108 GETTABLEKS                       R16 R17 K11 ["createElement"]
      110 LOADK                            R17 K43 ["UIStroke"]
      111 DUPTABLE                         R18 K46 [{"Color", "Thickness", "Transparency"}]
      112 GETTABLEKS                       R22 R1 K5 ["Color"]
      114 GETTABLEKS                       R21 R22 K47 ["System"]
      116 GETTABLEKS                       R20 R21 K48 ["Contrast"]
      118 GETTABLEKS                       R19 R20 K49 ["Color3"]
      120 SETTABLEKS                       R19 R18 K5 ["Color"]
      122 LOADN                            R19 1
      123 SETTABLEKS                       R19 R18 K44 ["Thickness"]
      125 LOADN                            R19 0
      126 SETTABLEKS                       R19 R18 K45 ["Transparency"]
      128 CALL                             R16 2 1
      129 SETTABLEKS                       R16 R15 K40 ["Stroke"]
      131 GETUPVAL                         R17 1
      132 GETTABLEKS                       R16 R17 K11 ["createElement"]
      134 GETUPVAL                         R17 5
      135 DUPTABLE                         R18 K54 [{"initialColor", "availableModes", "initialMode", "onColorChanged"}]
      136 SETTABLEKS                       R2 R18 K50 ["initialColor"]
      138 SETTABLEKS                       R6 R18 K51 ["availableModes"]
      140 GETUPVAL                         R20 2
      141 GETTABLEKS                       R19 R20 K8 ["Brick"]
      143 SETTABLEKS                       R19 R18 K52 ["initialMode"]
      145 NEWCLOSURE                       R19 P1
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R19 R18 K53 ["onColorChanged"]
      149 CALL                             R16 2 1
      150 SETTABLEKS                       R16 R15 K41 ["Picker"]
      152 CALL                             R12 3 1
      153 SETTABLEKS                       R12 R11 K16 ["PickerContainer"]
      155 CALL                             R8 3 -1
      156 RETURN                           R8 -1

PROTO_23:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Submit color:"]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R6 R1 K0 ["Color"]
        4 GETTABLEKS                       R5 R6 K1 ["Extended"]
        6 GETTABLEKS                       R4 R5 K2 ["Magenta"]
        8 GETTABLEKS                       R3 R4 K3 ["Magenta_700"]
       10 GETTABLEKS                       R2 R3 K4 ["Color3"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K5 ["useState"]
       15 DUPTABLE                         R4 K7 [{"H"}]
       16 LOADN                            R5 15
       17 SETTABLEKS                       R5 R4 K6 ["H"]
       19 CALL                             R3 1 2
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R6 R7 K8 ["isPartialHSV"]
       23 MOVE                             R7 R3
       24 CALL                             R6 1 1
       25 NOT                              R5 R6
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K8 ["isPartialHSV"]
       29 MOVE                             R8 R3
       30 CALL                             R7 1 1
       31 JUMPIFNOT                        R7 ; [+2]
       32 MOVE                             R6 R2
       33 JUMP                             ; [+1]
       34 MOVE                             R6 R3
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R7 R8 K9 ["createElement"]
       38 GETUPVAL                         R8 3
       39 DUPTABLE                         R9 K12 [{"Size", "tag"}]
       40 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       42 LOADN                            R11 44
       43 LOADN                            R12 144
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K10 ["Size"]
       47 LOADK                            R10 K16 ["col gap-medium"]
       48 SETTABLEKS                       R10 R9 K11 ["tag"]
       50 DUPTABLE                         R10 K21 [{"Description", "PreviewContainer", "Picker", "SubmitButton"}]
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R11 R12 K9 ["createElement"]
       54 GETUPVAL                         R12 4
       55 DUPTABLE                         R13 K27 [{"Text", "fontStyle", "textStyle", "TextXAlignment", "TextWrapped", "tag"}]
       56 LOADK                            R14 K28 ["When only hue is set, S and V show as empty. The submit button stays disabled until a full color is selected."]
       57 SETTABLEKS                       R14 R13 K22 ["Text"]
       59 GETTABLEKS                       R15 R1 K29 ["Typography"]
       61 GETTABLEKS                       R14 R15 K30 ["CaptionLarge"]
       63 SETTABLEKS                       R14 R13 K23 ["fontStyle"]
       65 GETTABLEKS                       R16 R1 K0 ["Color"]
       67 GETTABLEKS                       R15 R16 K31 ["Content"]
       69 GETTABLEKS                       R14 R15 K32 ["Default"]
       71 SETTABLEKS                       R14 R13 K24 ["textStyle"]
       73 GETIMPORT                        R14 K35 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R14 R13 K25 ["TextXAlignment"]
       77 LOADB                            R14 1
       78 SETTABLEKS                       R14 R13 K26 ["TextWrapped"]
       80 LOADK                            R14 K36 ["auto-y size-full-0"]
       81 SETTABLEKS                       R14 R13 K11 ["tag"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K17 ["Description"]
       86 GETUPVAL                         R12 1
       87 GETTABLEKS                       R11 R12 K9 ["createElement"]
       89 GETUPVAL                         R12 5
       90 DUPTABLE                         R13 K39 [{"color", "showAlpha"}]
       91 SETTABLEKS                       R6 R13 K37 ["color"]
       93 LOADB                            R14 0
       94 SETTABLEKS                       R14 R13 K38 ["showAlpha"]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K18 ["PreviewContainer"]
       99 GETUPVAL                         R12 1
      100 GETTABLEKS                       R11 R12 K9 ["createElement"]
      102 GETUPVAL                         R12 6
      103 DUPTABLE                         R13 K43 [{"initialColor", "initialMode", "onColorChanged"}]
      104 SETTABLEKS                       R3 R13 K40 ["initialColor"]
      106 GETUPVAL                         R15 7
      107 GETTABLEKS                       R14 R15 K44 ["HSV"]
      109 SETTABLEKS                       R14 R13 K41 ["initialMode"]
      111 SETTABLEKS                       R4 R13 K42 ["onColorChanged"]
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K19 ["Picker"]
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R11 R12 K9 ["createElement"]
      119 GETUPVAL                         R12 8
      120 DUPTABLE                         R13 K49 [{"text", "variant", "isDisabled", "onActivated"}]
      121 LOADK                            R14 K50 ["Submit"]
      122 SETTABLEKS                       R14 R13 K45 ["text"]
      124 GETUPVAL                         R15 9
      125 GETTABLEKS                       R14 R15 K51 ["Emphasis"]
      127 SETTABLEKS                       R14 R13 K46 ["variant"]
      129 NOT                              R14 R5
      130 SETTABLEKS                       R14 R13 K47 ["isDisabled"]
      132 NEWCLOSURE                       R14 P0
      133 CAPTURE                          VAL R3
      134 SETTABLEKS                       R14 R13 K48 ["onActivated"]
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K20 ["SubmitButton"]
      139 CALL                             R7 3 -1
      140 RETURN                           R7 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Button"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["ButtonVariant"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R7 K12 ["ColorInputMode"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["ColorPicker"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["Image"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R10 K15 ["Text"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R11 K16 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K8 ["Components"]
       67 GETTABLEKS                       R12 R13 K13 ["ColorPicker"]
       69 GETTABLEKS                       R11 R12 K17 ["colorUtils"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R14 R0 K18 ["Providers"]
       76 GETTABLEKS                       R13 R14 K19 ["Style"]
       78 GETTABLEKS                       R12 R13 K20 ["useTokens"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K21 [PROTO_4]
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 DUPTABLE                         R13 K25 [{"summary", "stories", "controls"}]
       88 LOADK                            R14 K13 ["ColorPicker"]
       89 SETTABLEKS                       R14 R13 K22 ["summary"]
       91 NEWTABLE                         R14 0 6
       93 DUPTABLE                         R15 K28 [{"name", "story"}]
       94 LOADK                            R16 K29 ["Base"]
       95 SETTABLEKS                       R16 R15 K26 ["name"]
       97 DUPCLOSURE                       R16 K30 [PROTO_7]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R6
      103 SETTABLEKS                       R16 R15 K27 ["story"]
      105 DUPTABLE                         R16 K28 [{"name", "story"}]
      106 LOADK                            R17 K31 ["Without Alpha"]
      107 SETTABLEKS                       R17 R16 K26 ["name"]
      109 DUPCLOSURE                       R17 K32 [PROTO_8]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R6
      115 SETTABLEKS                       R17 R16 K27 ["story"]
      117 DUPTABLE                         R17 K28 [{"name", "story"}]
      118 LOADK                            R18 K33 ["With Popover"]
      119 SETTABLEKS                       R18 R17 K26 ["name"]
      121 DUPCLOSURE                       R18 K34 [PROTO_16]
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R18 R17 K27 ["story"]
      131 DUPTABLE                         R18 K28 [{"name", "story"}]
      132 LOADK                            R19 K35 ["Properties Panel Spec"]
      133 SETTABLEKS                       R19 R18 K26 ["name"]
      135 DUPCLOSURE                       R19 K36 [PROTO_17]
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R19 R18 K27 ["story"]
      143 DUPTABLE                         R19 K28 [{"name", "story"}]
      144 LOADK                            R20 K37 ["BrickColor Only"]
      145 SETTABLEKS                       R20 R19 K26 ["name"]
      147 DUPCLOSURE                       R20 K38 [PROTO_22]
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R20 R19 K27 ["story"]
      156 DUPTABLE                         R20 K28 [{"name", "story"}]
      157 LOADK                            R21 K39 ["Partial HSV (H only)"]
      158 SETTABLEKS                       R21 R20 K26 ["name"]
      160 DUPCLOSURE                       R21 K40 [PROTO_24]
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R4
      171 SETTABLEKS                       R21 R20 K27 ["story"]
      173 SETLIST                          R14 R15 6 [1]
      175 SETTABLEKS                       R14 R13 K23 ["stories"]
      177 NEWTABLE                         R14 0 0
      179 SETTABLEKS                       R14 R13 K24 ["controls"]
      181 RETURN                           R13 1
