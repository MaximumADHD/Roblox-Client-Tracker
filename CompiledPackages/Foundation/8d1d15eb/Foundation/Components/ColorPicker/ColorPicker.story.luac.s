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
       96 DUPTABLE                         R13 K18 [{["Size"], ["tag"] = "radius-medium", ["stroke"]}]
       97 GETIMPORT                        R14 K21 [UDim2.fromOffset]
       99 LOADN                            R15 64
      100 LOADN                            R16 64
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K15 ["Size"]
      104 DUPTABLE                         R14 K25 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      105 GETTABLEKS                       R15 R1 K22 ["Color"]
      107 GETTABLEKS                       R15 R15 K26 ["System"]
      109 GETTABLEKS                       R15 R15 K27 ["Neutral"]
      111 GETTABLEKS                       R15 R15 K28 ["Color3"]
      113 SETTABLEKS                       R15 R14 K22 ["Color"]
      115 GETTABLEKS                       R15 R1 K22 ["Color"]
      117 GETTABLEKS                       R15 R15 K26 ["System"]
      119 GETTABLEKS                       R15 R15 K27 ["Neutral"]
      121 GETTABLEKS                       R15 R15 K23 ["Transparency"]
      123 SETTABLEKS                       R15 R14 K23 ["Transparency"]
      125 SETTABLEKS                       R14 R13 K17 ["stroke"]
      127 DUPTABLE                         R14 K31 [{"Checkerboard", "ColorOverlay"}]
      128 GETUPVAL                         R15 1
      129 GETTABLEKS                       R15 R15 K7 ["createElement"]
      131 GETUPVAL                         R16 3
      132 DUPTABLE                         R17 K38 [{["Image"] = "component_assets/checkerboard_12", ["ScaleType"], ["TileSize"], ["tag"] = "size-full radius-medium", ["ZIndex"] = 1}]
      133 GETIMPORT                        R18 K41 [Enum.ScaleType.Tile]
      135 SETTABLEKS                       R18 R17 K34 ["ScaleType"]
      137 GETIMPORT                        R18 K21 [UDim2.fromOffset]
      139 LOADN                            R19 12
      140 LOADN                            R20 12
      141 CALL                             R18 2 1
      142 SETTABLEKS                       R18 R17 K35 ["TileSize"]
      144 CALL                             R15 2 1
      145 SETTABLEKS                       R15 R14 K29 ["Checkerboard"]
      147 GETUPVAL                         R15 1
      148 GETTABLEKS                       R15 R15 K7 ["createElement"]
      150 GETUPVAL                         R16 2
      151 DUPTABLE                         R17 K44 [{["tag"] = "size-full radius-medium", ["backgroundStyle"], ["ZIndex"] = 2}]
      152 DUPTABLE                         R18 K45 [{"Color3", "Transparency"}]
      153 GETTABLEKS                       R19 R0 K1 ["color"]
      155 SETTABLEKS                       R19 R18 K28 ["Color3"]
      157 SETTABLEKS                       R6 R18 K23 ["Transparency"]
      159 SETTABLEKS                       R18 R17 K42 ["backgroundStyle"]
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K30 ["ColorOverlay"]
      164 CALL                             R11 3 1
      165 SETTABLEKS                       R11 R10 K12 ["ColorSwatch"]
      167 GETUPVAL                         R11 1
      168 GETTABLEKS                       R11 R11 K7 ["createElement"]
      170 GETUPVAL                         R12 2
      171 DUPTABLE                         R13 K48 [{["tag"] = "col gap-xsmall auto-y flex-grow", ["layout"]}]
      172 DUPTABLE                         R14 K51 [{"FillDirection", "HorizontalAlignment"}]
      173 GETIMPORT                        R15 K53 [Enum.FillDirection.Vertical]
      175 SETTABLEKS                       R15 R14 K49 ["FillDirection"]
      177 GETIMPORT                        R15 K55 [Enum.HorizontalAlignment.Left]
      179 SETTABLEKS                       R15 R14 K50 ["HorizontalAlignment"]
      181 SETTABLEKS                       R14 R13 K47 ["layout"]
      183 DUPTABLE                         R14 K60 [{"HexLabel", "HexAlphaLabel", "RGBLabel", "RGBALabel"}]
      184 GETUPVAL                         R15 1
      185 GETTABLEKS                       R15 R15 K7 ["createElement"]
      187 GETUPVAL                         R16 4
      188 DUPTABLE                         R17 K66 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      189 SETTABLEKS                       R2 R17 K61 ["Text"]
      191 GETTABLEKS                       R18 R1 K67 ["Typography"]
      193 GETTABLEKS                       R18 R18 K68 ["BodyLarge"]
      195 SETTABLEKS                       R18 R17 K62 ["fontStyle"]
      197 GETTABLEKS                       R18 R1 K22 ["Color"]
      199 GETTABLEKS                       R18 R18 K69 ["Content"]
      201 GETTABLEKS                       R18 R18 K70 ["Emphasis"]
      203 SETTABLEKS                       R18 R17 K63 ["textStyle"]
      205 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      207 SETTABLEKS                       R18 R17 K64 ["TextXAlignment"]
      209 CALL                             R15 2 1
      210 SETTABLEKS                       R15 R14 K56 ["HexLabel"]
      212 JUMPIFNOT                        R3 ; [+30]
      213 GETTABLEKS                       R16 R0 K72 ["showAlpha"]
      215 JUMPIFNOT                        R16 ; [+27]
      216 GETUPVAL                         R15 1
      217 GETTABLEKS                       R15 R15 K7 ["createElement"]
      219 GETUPVAL                         R16 4
      220 DUPTABLE                         R17 K66 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      221 SETTABLEKS                       R3 R17 K61 ["Text"]
      223 GETTABLEKS                       R18 R1 K67 ["Typography"]
      225 GETTABLEKS                       R18 R18 K73 ["CaptionLarge"]
      227 SETTABLEKS                       R18 R17 K62 ["fontStyle"]
      229 GETTABLEKS                       R18 R1 K22 ["Color"]
      231 GETTABLEKS                       R18 R18 K69 ["Content"]
      233 GETTABLEKS                       R18 R18 K74 ["Default"]
      235 SETTABLEKS                       R18 R17 K63 ["textStyle"]
      237 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      239 SETTABLEKS                       R18 R17 K64 ["TextXAlignment"]
      241 CALL                             R15 2 1
      242 JUMP                             ; [+7]
      243 GETUPVAL                         R15 1
      244 GETTABLEKS                       R15 R15 K7 ["createElement"]
      246 GETUPVAL                         R16 1
      247 GETTABLEKS                       R16 R16 K75 ["Fragment"]
      249 CALL                             R15 1 1
      250 SETTABLEKS                       R15 R14 K57 ["HexAlphaLabel"]
      252 GETUPVAL                         R15 1
      253 GETTABLEKS                       R15 R15 K7 ["createElement"]
      255 GETUPVAL                         R16 4
      256 DUPTABLE                         R17 K66 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      257 SETTABLEKS                       R4 R17 K61 ["Text"]
      259 GETTABLEKS                       R18 R1 K67 ["Typography"]
      261 GETTABLEKS                       R18 R18 K73 ["CaptionLarge"]
      263 SETTABLEKS                       R18 R17 K62 ["fontStyle"]
      265 GETTABLEKS                       R18 R1 K22 ["Color"]
      267 GETTABLEKS                       R18 R18 K69 ["Content"]
      269 GETTABLEKS                       R18 R18 K74 ["Default"]
      271 SETTABLEKS                       R18 R17 K63 ["textStyle"]
      273 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      275 SETTABLEKS                       R18 R17 K64 ["TextXAlignment"]
      277 CALL                             R15 2 1
      278 SETTABLEKS                       R15 R14 K58 ["RGBLabel"]
      280 JUMPIFNOT                        R5 ; [+30]
      281 GETTABLEKS                       R16 R0 K72 ["showAlpha"]
      283 JUMPIFNOT                        R16 ; [+27]
      284 GETUPVAL                         R15 1
      285 GETTABLEKS                       R15 R15 K7 ["createElement"]
      287 GETUPVAL                         R16 4
      288 DUPTABLE                         R17 K66 [{["Text"], ["fontStyle"], ["textStyle"], ["TextXAlignment"], ["tag"] = "auto-y size-full-0"}]
      289 SETTABLEKS                       R5 R17 K61 ["Text"]
      291 GETTABLEKS                       R18 R1 K67 ["Typography"]
      293 GETTABLEKS                       R18 R18 K73 ["CaptionLarge"]
      295 SETTABLEKS                       R18 R17 K62 ["fontStyle"]
      297 GETTABLEKS                       R18 R1 K22 ["Color"]
      299 GETTABLEKS                       R18 R18 K69 ["Content"]
      301 GETTABLEKS                       R18 R18 K74 ["Default"]
      303 SETTABLEKS                       R18 R17 K63 ["textStyle"]
      305 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      307 SETTABLEKS                       R18 R17 K64 ["TextXAlignment"]
      309 CALL                             R15 2 1
      310 JUMP                             ; [+7]
      311 GETUPVAL                         R15 1
      312 GETTABLEKS                       R15 R15 K7 ["createElement"]
      314 GETUPVAL                         R16 1
      315 GETTABLEKS                       R16 R16 K75 ["Fragment"]
      317 CALL                             R15 1 1
      318 SETTABLEKS                       R15 R14 K59 ["RGBALabel"]
      320 CALL                             R11 3 1
      321 SETTABLEKS                       R11 R10 K13 ["ColorInfo"]
      323 CALL                             R7 3 -1
      324 RETURN                           R7 -1

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
       50 DUPTABLE                         R12 K28 [{"initialColor", "initialAlpha", "onColorChanged", "onAlphaChanged", "onDragStarted", "onDragEnded"}]
       51 SETTABLEKS                       R2 R12 K22 ["initialColor"]
       53 SETTABLEKS                       R4 R12 K23 ["initialAlpha"]
       55 SETTABLEKS                       R3 R12 K24 ["onColorChanged"]
       57 SETTABLEKS                       R5 R12 K25 ["onAlphaChanged"]
       59 DUPCLOSURE                       R13 K29 [PROTO_5]
       60 SETTABLEKS                       R13 R12 K26 ["onDragStarted"]
       62 DUPCLOSURE                       R13 K30 [PROTO_6]
       63 SETTABLEKS                       R13 R12 K27 ["onDragEnded"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K15 ["Picker"]
       68 CALL                             R6 3 -1
       69 RETURN                           R6 -1

PROTO_8:
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

PROTO_9:
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
      160 DUPTABLE                         R41 K54 [{["Size"], ["tag"] = "radius-small", ["stroke"]}]
      161 GETIMPORT                        R42 K21 [UDim2.fromOffset]
      163 LOADN                            R43 24
      164 LOADN                            R44 24
      165 CALL                             R42 2 1
      166 SETTABLEKS                       R42 R41 K15 ["Size"]
      168 DUPTABLE                         R42 K58 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      169 GETTABLEKS                       R43 R1 K1 ["Color"]
      171 GETTABLEKS                       R43 R43 K59 ["System"]
      173 GETTABLEKS                       R43 R43 K60 ["Neutral"]
      175 GETTABLEKS                       R43 R43 K5 ["Color3"]
      177 SETTABLEKS                       R43 R42 K1 ["Color"]
      179 GETTABLEKS                       R43 R1 K1 ["Color"]
      181 GETTABLEKS                       R43 R43 K59 ["System"]
      183 GETTABLEKS                       R43 R43 K60 ["Neutral"]
      185 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      187 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      189 SETTABLEKS                       R42 R41 K53 ["stroke"]
      191 DUPTABLE                         R42 K63 [{"Checkerboard", "ColorOverlay"}]
      192 GETUPVAL                         R43 1
      193 GETTABLEKS                       R43 R43 K14 ["createElement"]
      195 GETUPVAL                         R44 4
      196 DUPTABLE                         R45 K70 [{["Image"] = "component_assets/checkerboard_12", ["ScaleType"], ["TileSize"], ["tag"] = "size-full radius-small", ["ZIndex"] = 1}]
      197 GETIMPORT                        R46 K72 [Enum.ScaleType.Tile]
      199 SETTABLEKS                       R46 R45 K66 ["ScaleType"]
      201 GETIMPORT                        R46 K21 [UDim2.fromOffset]
      203 LOADN                            R47 12
      204 LOADN                            R48 12
      205 CALL                             R46 2 1
      206 SETTABLEKS                       R46 R45 K67 ["TileSize"]
      208 CALL                             R43 2 1
      209 SETTABLEKS                       R43 R42 K61 ["Checkerboard"]
      211 GETUPVAL                         R43 1
      212 GETTABLEKS                       R43 R43 K14 ["createElement"]
      214 GETUPVAL                         R44 3
      215 DUPTABLE                         R45 K74 [{["tag"] = "size-full radius-small", ["backgroundStyle"], ["ZIndex"] = 2}]
      216 DUPTABLE                         R46 K75 [{"Color3", "Transparency"}]
      217 SETTABLEKS                       R2 R46 K5 ["Color3"]
      219 SUBRK                            R47 K57 [1] R4
      220 SETTABLEKS                       R47 R46 K55 ["Transparency"]
      222 SETTABLEKS                       R46 R45 K45 ["backgroundStyle"]
      224 CALL                             R43 2 1
      225 SETTABLEKS                       R43 R42 K62 ["ColorOverlay"]
      227 CALL                             R39 3 1
      228 SETTABLEKS                       R39 R38 K49 ["ColorSwatch"]
      230 GETUPVAL                         R39 1
      231 GETTABLEKS                       R39 R39 K14 ["createElement"]
      233 GETUPVAL                         R40 5
      234 DUPTABLE                         R41 K80 [{["Text"], ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      235 SETTABLEKS                       R12 R41 K76 ["Text"]
      237 GETTABLEKS                       R42 R1 K81 ["Typography"]
      239 GETTABLEKS                       R42 R42 K82 ["BodyMedium"]
      241 SETTABLEKS                       R42 R41 K77 ["fontStyle"]
      243 GETTABLEKS                       R42 R1 K1 ["Color"]
      245 GETTABLEKS                       R42 R42 K28 ["Content"]
      247 GETTABLEKS                       R42 R42 K83 ["Default"]
      249 SETTABLEKS                       R42 R41 K78 ["textStyle"]
      251 CALL                             R39 2 1
      252 SETTABLEKS                       R39 R38 K50 ["ColorLabel"]
      254 CALL                             R35 3 1
      255 SETTABLEKS                       R35 R34 K42 ["ButtonContainer"]
      257 CALL                             R31 3 1
      258 SETTABLEKS                       R31 R30 K32 ["ColorSwatchButton"]
      260 CALL                             R27 3 -1
      261 CALL                             R24 -1 1
      262 SETTABLEKS                       R24 R23 K27 ["Anchor"]
      264 GETUPVAL                         R24 1
      265 GETTABLEKS                       R24 R24 K14 ["createElement"]
      267 GETTABLEKS                       R25 R13 K28 ["Content"]
      269 DUPTABLE                         R26 K88 [{["side"], ["hasArrow"] = True, ["onPressedOutside"]}]
      270 GETTABLEKS                       R27 R15 K89 ["Right"]
      272 SETTABLEKS                       R27 R26 K84 ["side"]
      274 NEWCLOSURE                       R27 P2
      275 CAPTURE                          VAL R7
      276 SETTABLEKS                       R27 R26 K87 ["onPressedOutside"]
      278 GETUPVAL                         R27 1
      279 GETTABLEKS                       R27 R27 K14 ["createElement"]
      281 GETUPVAL                         R28 3
      282 DUPTABLE                         R29 K91 [{["tag"] = "col padding-medium gap-medium", ["Size"]}]
      283 GETIMPORT                        R30 K21 [UDim2.fromOffset]
      285 LOADN                            R31 300
      286 LOADN                            R32 300
      287 CALL                             R30 2 1
      288 SETTABLEKS                       R30 R29 K15 ["Size"]
      290 DUPTABLE                         R30 K94 [{"Picker", "Actions"}]
      291 GETUPVAL                         R31 1
      292 GETTABLEKS                       R31 R31 K14 ["createElement"]
      294 GETUPVAL                         R32 6
      295 DUPTABLE                         R33 K100 [{["initialColor"], ["initialAlpha"], ["onColorChanged"], ["onAlphaChanged"], ["LayoutOrder"] = 1}]
      296 SETTABLEKS                       R2 R33 K95 ["initialColor"]
      298 SETTABLEKS                       R4 R33 K96 ["initialAlpha"]
      300 NEWCLOSURE                       R34 P3
      301 CAPTURE                          VAL R3
      302 SETTABLEKS                       R34 R33 K97 ["onColorChanged"]
      304 NEWCLOSURE                       R34 P4
      305 CAPTURE                          VAL R5
      306 SETTABLEKS                       R34 R33 K98 ["onAlphaChanged"]
      308 CALL                             R31 2 1
      309 SETTABLEKS                       R31 R30 K92 ["Picker"]
      311 GETUPVAL                         R31 1
      312 GETTABLEKS                       R31 R31 K14 ["createElement"]
      314 GETUPVAL                         R32 3
      315 DUPTABLE                         R33 K102 [{["tag"] = "row gap-small auto-y size-full-0 margin-top-medium align-x-right", ["LayoutOrder"] = 2}]
      316 DUPTABLE                         R34 K105 [{"CancelButton", "DoneButton"}]
      317 GETUPVAL                         R35 1
      318 GETTABLEKS                       R35 R35 K14 ["createElement"]
      320 MOVE                             R36 R14
      321 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      322 NEWCLOSURE                       R38 P5
      323 CAPTURE                          VAL R3
      324 CAPTURE                          VAL R8
      325 CAPTURE                          VAL R5
      326 CAPTURE                          VAL R10
      327 CAPTURE                          VAL R7
      328 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      330 GETIMPORT                        R38 K38 [UDim2.new]
      332 LOADN                            R39 0
      333 LOADN                            R40 0
      334 LOADN                            R41 0
      335 LOADN                            R42 0
      336 CALL                             R38 4 1
      337 SETTABLEKS                       R38 R37 K15 ["Size"]
      339 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      341 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      343 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      344 GETUPVAL                         R39 1
      345 GETTABLEKS                       R39 R39 K14 ["createElement"]
      347 GETUPVAL                         R40 3
      348 DUPTABLE                         R41 K107 [{["tag"] = "padding-small radius-small auto-xy", ["backgroundStyle"], ["stroke"]}]
      349 GETTABLEKS                       R42 R1 K1 ["Color"]
      351 GETTABLEKS                       R42 R42 K47 ["Surface"]
      353 GETTABLEKS                       R42 R42 K48 ["Surface_100"]
      355 SETTABLEKS                       R42 R41 K45 ["backgroundStyle"]
      357 DUPTABLE                         R42 K58 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      358 GETTABLEKS                       R43 R1 K1 ["Color"]
      360 GETTABLEKS                       R43 R43 K59 ["System"]
      362 GETTABLEKS                       R43 R43 K60 ["Neutral"]
      364 GETTABLEKS                       R43 R43 K5 ["Color3"]
      366 SETTABLEKS                       R43 R42 K1 ["Color"]
      368 GETTABLEKS                       R43 R1 K1 ["Color"]
      370 GETTABLEKS                       R43 R43 K59 ["System"]
      372 GETTABLEKS                       R43 R43 K60 ["Neutral"]
      374 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      376 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      378 SETTABLEKS                       R42 R41 K53 ["stroke"]
      380 DUPTABLE                         R42 K109 [{"ButtonText"}]
      381 GETUPVAL                         R43 1
      382 GETTABLEKS                       R43 R43 K14 ["createElement"]
      384 GETUPVAL                         R44 5
      385 DUPTABLE                         R45 K111 [{["Text"] = "Cancel", ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      386 GETTABLEKS                       R46 R1 K81 ["Typography"]
      388 GETTABLEKS                       R46 R46 K82 ["BodyMedium"]
      390 SETTABLEKS                       R46 R45 K77 ["fontStyle"]
      392 GETTABLEKS                       R46 R1 K1 ["Color"]
      394 GETTABLEKS                       R46 R46 K28 ["Content"]
      396 GETTABLEKS                       R46 R46 K83 ["Default"]
      398 SETTABLEKS                       R46 R45 K78 ["textStyle"]
      400 CALL                             R43 2 1
      401 SETTABLEKS                       R43 R42 K108 ["ButtonText"]
      403 CALL                             R39 3 1
      404 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      406 CALL                             R35 3 1
      407 SETTABLEKS                       R35 R34 K103 ["CancelButton"]
      409 GETUPVAL                         R35 1
      410 GETTABLEKS                       R35 R35 K14 ["createElement"]
      412 MOVE                             R36 R14
      413 DUPTABLE                         R37 K36 [{"onActivated", "Size", "AutomaticSize"}]
      414 NEWCLOSURE                       R38 P6
      415 CAPTURE                          VAL R7
      416 SETTABLEKS                       R38 R37 K34 ["onActivated"]
      418 GETIMPORT                        R38 K38 [UDim2.new]
      420 LOADN                            R39 0
      421 LOADN                            R40 0
      422 LOADN                            R41 0
      423 LOADN                            R42 0
      424 CALL                             R38 4 1
      425 SETTABLEKS                       R38 R37 K15 ["Size"]
      427 GETIMPORT                        R38 K41 [Enum.AutomaticSize.XY]
      429 SETTABLEKS                       R38 R37 K35 ["AutomaticSize"]
      431 DUPTABLE                         R38 K43 [{"ButtonContainer"}]
      432 GETUPVAL                         R39 1
      433 GETTABLEKS                       R39 R39 K14 ["createElement"]
      435 GETUPVAL                         R40 3
      436 DUPTABLE                         R41 K107 [{["tag"] = "padding-small radius-small auto-xy", ["backgroundStyle"], ["stroke"]}]
      437 GETTABLEKS                       R42 R1 K1 ["Color"]
      439 GETTABLEKS                       R42 R42 K47 ["Surface"]
      441 GETTABLEKS                       R42 R42 K48 ["Surface_100"]
      443 SETTABLEKS                       R42 R41 K45 ["backgroundStyle"]
      445 DUPTABLE                         R42 K58 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      446 GETTABLEKS                       R43 R1 K1 ["Color"]
      448 GETTABLEKS                       R43 R43 K59 ["System"]
      450 GETTABLEKS                       R43 R43 K60 ["Neutral"]
      452 GETTABLEKS                       R43 R43 K5 ["Color3"]
      454 SETTABLEKS                       R43 R42 K1 ["Color"]
      456 GETTABLEKS                       R43 R1 K1 ["Color"]
      458 GETTABLEKS                       R43 R43 K59 ["System"]
      460 GETTABLEKS                       R43 R43 K60 ["Neutral"]
      462 GETTABLEKS                       R43 R43 K55 ["Transparency"]
      464 SETTABLEKS                       R43 R42 K55 ["Transparency"]
      466 SETTABLEKS                       R42 R41 K53 ["stroke"]
      468 DUPTABLE                         R42 K109 [{"ButtonText"}]
      469 GETUPVAL                         R43 1
      470 GETTABLEKS                       R43 R43 K14 ["createElement"]
      472 GETUPVAL                         R44 5
      473 DUPTABLE                         R45 K113 [{["Text"] = "Done", ["fontStyle"], ["textStyle"], ["tag"] = "auto-xy"}]
      474 GETTABLEKS                       R46 R1 K81 ["Typography"]
      476 GETTABLEKS                       R46 R46 K82 ["BodyMedium"]
      478 SETTABLEKS                       R46 R45 K77 ["fontStyle"]
      480 GETTABLEKS                       R46 R1 K1 ["Color"]
      482 GETTABLEKS                       R46 R46 K28 ["Content"]
      484 GETTABLEKS                       R46 R46 K83 ["Default"]
      486 SETTABLEKS                       R46 R45 K78 ["textStyle"]
      488 CALL                             R43 2 1
      489 SETTABLEKS                       R43 R42 K108 ["ButtonText"]
      491 CALL                             R39 3 1
      492 SETTABLEKS                       R39 R38 K42 ["ButtonContainer"]
      494 CALL                             R35 3 1
      495 SETTABLEKS                       R35 R34 K104 ["DoneButton"]
      497 CALL                             R31 3 1
      498 SETTABLEKS                       R31 R30 K93 ["Actions"]
      500 CALL                             R27 3 -1
      501 CALL                             R24 -1 1
      502 SETTABLEKS                       R24 R23 K28 ["Content"]
      504 CALL                             R20 3 1
      505 SETTABLEKS                       R20 R19 K22 ["PopoverContainer"]
      507 CALL                             R16 3 -1
      508 RETURN                           R16 -1

PROTO_17:
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
       25 DUPTABLE                         R8 K11 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1}]
       26 GETIMPORT                        R9 K14 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R9 R8 K7 ["AutomaticSize"]
       30 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       32 LOADN                            R10 208
       33 LOADN                            R11 0
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K8 ["Size"]
       37 DUPTABLE                         R9 K20 [{"Stroke", "Picker"}]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K6 ["createElement"]
       41 LOADK                            R11 K21 ["UIStroke"]
       42 DUPTABLE                         R12 K25 [{["Color"], ["Thickness"] = 1, ["Transparency"] = 0}]
       43 GETTABLEKS                       R13 R1 K1 ["Color"]
       45 GETTABLEKS                       R13 R13 K26 ["System"]
       47 GETTABLEKS                       R13 R13 K27 ["Contrast"]
       49 GETTABLEKS                       R13 R13 K5 ["Color3"]
       51 SETTABLEKS                       R13 R12 K1 ["Color"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K18 ["Stroke"]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K6 ["createElement"]
       59 GETUPVAL                         R11 3
       60 DUPTABLE                         R12 K33 [{"initialColor", "initialAlpha", "initialMode", "onColorChanged", "onAlphaChanged"}]
       61 SETTABLEKS                       R2 R12 K28 ["initialColor"]
       63 SETTABLEKS                       R4 R12 K29 ["initialAlpha"]
       65 GETUPVAL                         R13 4
       66 GETTABLEKS                       R13 R13 K34 ["Hex"]
       68 SETTABLEKS                       R13 R12 K30 ["initialMode"]
       70 SETTABLEKS                       R3 R12 K31 ["onColorChanged"]
       72 SETTABLEKS                       R5 R12 K32 ["onAlphaChanged"]
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K19 ["Picker"]
       77 CALL                             R6 3 -1
       78 RETURN                           R6 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 GETIMPORT                        R3 K3 [BrickColor.new]
        7 LOADK                            R4 K4 ["Bright red"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R3 R3 K5 ["Color"]
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["useState"]
       15 GETIMPORT                        R5 K7 [Vector2.new]
       17 LOADN                            R6 0
       18 LOADN                            R7 0
       19 CALL                             R5 2 -1
       20 CALL                             R4 -1 2
       21 NEWTABLE                         R6 0 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K8 ["Brick"]
       26 SETLIST                          R6 R7 1 [1]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K9 ["useRef"]
       31 LOADNIL                          R8
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 0
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K11 ["createElement"]
       45 GETUPVAL                         R9 3
       46 DUPTABLE                         R10 K14 [{["tag"] = "col gap-small"}]
       47 DUPTABLE                         R11 K17 [{"SizeLabel", "PickerContainer"}]
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K11 ["createElement"]
       51 GETUPVAL                         R13 4
       52 DUPTABLE                         R14 K22 [{["Text"], ["tag"] = "text-caption-small content-muted", ["LayoutOrder"] = 1}]
       53 LOADK                            R16 K23 ["Actual size: %*×%*"]
       54 GETTABLEKS                       R19 R4 K24 ["X"]
       56 FASTCALL1                        MATH_ROUND R19 ; [+2]
       57 GETIMPORT                        R18 K27 [math.round]
       59 CALL                             R18 1 1
       60 GETTABLEKS                       R20 R4 K28 ["Y"]
       62 FASTCALL1                        MATH_ROUND R20 ; [+2]
       63 GETIMPORT                        R19 K27 [math.round]
       65 CALL                             R19 1 1
       66 NAMECALL                         R16 R16 K29 ["format"]
       68 CALL                             R16 3 1
       69 MOVE                             R15 R16
       70 SETTABLEKS                       R15 R14 K18 ["Text"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K15 ["SizeLabel"]
       75 GETUPVAL                         R12 1
       76 GETTABLEKS                       R12 R12 K11 ["createElement"]
       78 LOADK                            R13 K30 ["Frame"]
       79 DUPTABLE                         R14 K36 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["ref"]}]
       80 GETIMPORT                        R15 K39 [Enum.AutomaticSize.XY]
       82 SETTABLEKS                       R15 R14 K31 ["AutomaticSize"]
       84 GETIMPORT                        R15 K41 [UDim2.new]
       86 CALL                             R15 0 1
       87 SETTABLEKS                       R15 R14 K32 ["Size"]
       89 SETTABLEKS                       R7 R14 K35 ["ref"]
       91 DUPTABLE                         R15 K44 [{"Stroke", "Picker"}]
       92 GETUPVAL                         R16 1
       93 GETTABLEKS                       R16 R16 K11 ["createElement"]
       95 LOADK                            R17 K45 ["UIStroke"]
       96 DUPTABLE                         R18 K49 [{["Color"], ["Thickness"] = 1, ["Transparency"] = 0}]
       97 GETTABLEKS                       R19 R1 K5 ["Color"]
       99 GETTABLEKS                       R19 R19 K50 ["System"]
      101 GETTABLEKS                       R19 R19 K51 ["Contrast"]
      103 GETTABLEKS                       R19 R19 K52 ["Color3"]
      105 SETTABLEKS                       R19 R18 K5 ["Color"]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K42 ["Stroke"]
      110 GETUPVAL                         R16 1
      111 GETTABLEKS                       R16 R16 K11 ["createElement"]
      113 GETUPVAL                         R17 5
      114 DUPTABLE                         R18 K57 [{"initialColor", "availableModes", "initialMode", "onColorChanged"}]
      115 SETTABLEKS                       R2 R18 K53 ["initialColor"]
      117 SETTABLEKS                       R6 R18 K54 ["availableModes"]
      119 GETUPVAL                         R19 2
      120 GETTABLEKS                       R19 R19 K8 ["Brick"]
      122 SETTABLEKS                       R19 R18 K55 ["initialMode"]
      124 NEWCLOSURE                       R19 P1
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R19 R18 K56 ["onColorChanged"]
      128 CALL                             R16 2 1
      129 SETTABLEKS                       R16 R15 K43 ["Picker"]
      131 CALL                             R12 3 1
      132 SETTABLEKS                       R12 R11 K16 ["PickerContainer"]
      134 CALL                             R8 3 -1
      135 RETURN                           R8 -1

PROTO_23:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Submit color:"]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_24:
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
       46 GETTABLEKS                       R8 R8 K14 ["Image"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["Text"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K16 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R11 K13 ["ColorPicker"]
       69 GETTABLEKS                       R11 R11 K17 ["colorUtils"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K18 ["Providers"]
       76 GETTABLEKS                       R12 R12 K19 ["Style"]
       78 GETTABLEKS                       R12 R12 K20 ["useTokens"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K21 [PROTO_4]
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 DUPTABLE                         R13 K25 [{["summary"] = "ColorPicker", ["stories"], ["controls"]}]
       88 NEWTABLE                         R14 0 6
       90 DUPTABLE                         R15 K29 [{["name"] = "Base", ["story"]}]
       91 DUPCLOSURE                       R16 K30 [PROTO_7]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R6
       97 SETTABLEKS                       R16 R15 K28 ["story"]
       99 DUPTABLE                         R16 K32 [{["name"] = "Without Alpha", ["story"]}]
      100 DUPCLOSURE                       R17 K33 [PROTO_8]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R17 R16 K28 ["story"]
      108 DUPTABLE                         R17 K35 [{["name"] = "With Popover", ["story"]}]
      109 DUPCLOSURE                       R18 K36 [PROTO_16]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R18 R17 K28 ["story"]
      119 DUPTABLE                         R18 K38 [{["name"] = "Properties Panel Spec", ["story"]}]
      120 DUPCLOSURE                       R19 K39 [PROTO_17]
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R5
      126 SETTABLEKS                       R19 R18 K28 ["story"]
      128 DUPTABLE                         R19 K41 [{["name"] = "BrickColor Only", ["story"]}]
      129 DUPCLOSURE                       R20 K42 [PROTO_22]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R20 R19 K28 ["story"]
      138 DUPTABLE                         R20 K44 [{["name"] = "Partial HSV (H only)", ["story"]}]
      139 DUPCLOSURE                       R21 K45 [PROTO_24]
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R4
      150 SETTABLEKS                       R21 R20 K28 ["story"]
      152 SETLIST                          R14 R15 6 [1]
      154 SETTABLEKS                       R14 R13 K23 ["stories"]
      156 NEWTABLE                         R14 0 0
      158 SETTABLEKS                       R14 R13 K24 ["controls"]
      160 RETURN                           R13 1
