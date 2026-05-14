PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 DUPTABLE                         R1 K2 [{"Error"}]
        4 LOADK                            R2 K3 [""]
        5 SETTABLEKS                       R2 R1 K1 ["Error"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        3 DUPTABLE                         R3 K3 [{"Error", "Image"}]
        4 SETTABLEKS                       R0 R3 K1 ["Error"]
        6 SETTABLEKS                       R1 R3 K2 ["Image"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["ImageType"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ImageRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Schema"]
        7 GETUPVAL                         R3 1
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 1
       11 LOADB                            R6 0
       12 CALL                             R5 1 2
       13 LOADNIL                          R7
       14 GETTABLEKS                       R8 R0 K3 ["Value"]
       16 GETTABLEKS                       R8 R8 K4 ["Image"]
       18 JUMPIFNOT                        R8 ; [+35]
       19 GETTABLEKS                       R8 R0 K3 ["Value"]
       21 GETTABLEKS                       R8 R8 K4 ["Image"]
       23 GETTABLEKS                       R8 R8 K5 ["Preview"]
       25 GETTABLEKS                       R8 R8 K6 ["Id"]
       27 JUMPIFNOT                        R8 ; [+9]
       28 GETTABLEKS                       R8 R0 K3 ["Value"]
       30 GETTABLEKS                       R8 R8 K4 ["Image"]
       32 GETTABLEKS                       R8 R8 K5 ["Preview"]
       34 GETTABLEKS                       R7 R8 K6 ["Id"]
       36 JUMP                             ; [+17]
       37 GETTABLEKS                       R8 R0 K3 ["Value"]
       39 GETTABLEKS                       R8 R8 K4 ["Image"]
       41 GETTABLEKS                       R8 R8 K7 ["File"]
       43 JUMPIFNOT                        R8 ; [+10]
       44 GETTABLEKS                       R8 R0 K3 ["Value"]
       46 GETTABLEKS                       R8 R8 K4 ["Image"]
       48 GETTABLEKS                       R8 R8 K7 ["File"]
       50 NAMECALL                         R8 R8 K8 ["GetTemporaryId"]
       52 CALL                             R8 1 1
       53 MOVE                             R7 R8
       54 JUMPIFNOT                        R7 ; [+239]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R8 R8 K9 ["createElement"]
       58 LOADK                            R9 K10 ["ImageButton"]
       59 NEWTABLE                         R10 4 0
       61 LOADK                            R11 K11 [""]
       62 SETTABLEKS                       R11 R10 K4 ["Image"]
       64 GETTABLEKS                       R11 R1 K12 ["PreviewSize"]
       66 SETTABLEKS                       R11 R10 K13 ["Size"]
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R11 R11 K14 ["Event"]
       71 GETTABLEKS                       R11 R11 K15 ["MouseEnter"]
       73 NEWCLOSURE                       R12 P0
       74 CAPTURE                          VAL R4
       75 SETTABLE                         R12 R10 R11
       76 GETUPVAL                         R11 2
       77 GETTABLEKS                       R11 R11 K14 ["Event"]
       79 GETTABLEKS                       R11 R11 K16 ["MouseLeave"]
       81 NEWCLOSURE                       R12 P1
       82 CAPTURE                          VAL R4
       83 SETTABLE                         R12 R10 R11
       84 DUPTABLE                         R11 K19 [{"Image", "Toolbar", "MetadataDialog"}]
       85 GETUPVAL                         R12 2
       86 GETTABLEKS                       R12 R12 K9 ["createElement"]
       88 GETUPVAL                         R13 3
       89 DUPTABLE                         R14 K23 [{"AnchorPoint", "Image", "Position", "ScaleType", "Size"}]
       90 GETIMPORT                        R15 K26 [Vector2.new]
       92 LOADK                            R16 K27 [0.5]
       93 LOADK                            R17 K27 [0.5]
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K20 ["AnchorPoint"]
       97 SETTABLEKS                       R7 R14 K4 ["Image"]
       99 GETIMPORT                        R15 K30 [UDim2.fromScale]
      101 LOADK                            R16 K27 [0.5]
      102 LOADK                            R17 K27 [0.5]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K21 ["Position"]
      106 GETIMPORT                        R15 K33 [Enum.ScaleType.Fit]
      108 SETTABLEKS                       R15 R14 K22 ["ScaleType"]
      110 GETIMPORT                        R15 K30 [UDim2.fromScale]
      112 LOADN                            R16 1
      113 LOADN                            R17 1
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K13 ["Size"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K4 ["Image"]
      120 JUMPIFNOT                        R3 ; [+147]
      121 GETUPVAL                         R12 2
      122 GETTABLEKS                       R12 R12 K9 ["createElement"]
      124 LOADK                            R13 K34 ["Frame"]
      125 DUPTABLE                         R14 K39 [{"ZIndex", "AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      126 LOADN                            R15 2
      127 SETTABLEKS                       R15 R14 K35 ["ZIndex"]
      129 GETIMPORT                        R15 K26 [Vector2.new]
      131 LOADN                            R16 0
      132 LOADN                            R17 1
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K20 ["AnchorPoint"]
      136 GETIMPORT                        R15 K30 [UDim2.fromScale]
      138 LOADN                            R16 0
      139 LOADN                            R17 1
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K21 ["Position"]
      143 GETIMPORT                        R15 K40 [UDim2.new]
      145 LOADN                            R16 1
      146 LOADN                            R17 0
      147 LOADN                            R18 0
      148 GETTABLEKS                       R19 R1 K41 ["ToolbarHeight"]
      150 CALL                             R15 4 1
      151 SETTABLEKS                       R15 R14 K13 ["Size"]
      153 GETTABLEKS                       R15 R1 K42 ["ToolbarTransparency"]
      155 SETTABLEKS                       R15 R14 K36 ["BackgroundTransparency"]
      157 LOADN                            R15 0
      158 SETTABLEKS                       R15 R14 K37 ["BorderSizePixel"]
      160 GETTABLEKS                       R15 R1 K43 ["ToolbarBackgroundColor"]
      162 SETTABLEKS                       R15 R14 K38 ["BackgroundColor3"]
      164 DUPTABLE                         R15 K46 [{"ExpandPreview", "ClearButton"}]
      165 GETUPVAL                         R16 2
      166 GETTABLEKS                       R16 R16 K9 ["createElement"]
      168 GETUPVAL                         R17 4
      169 DUPTABLE                         R18 K51 [{"Icon", "IconPadding", "Style", "OnClick", "Size"}]
      170 GETTABLEKS                       R19 R1 K52 ["ExpandIcon"]
      172 SETTABLEKS                       R19 R18 K47 ["Icon"]
      174 GETTABLEKS                       R19 R1 K48 ["IconPadding"]
      176 SETTABLEKS                       R19 R18 K48 ["IconPadding"]
      178 LOADK                            R19 K53 ["RoundSubtle"]
      179 SETTABLEKS                       R19 R18 K49 ["Style"]
      181 NEWCLOSURE                       R19 P2
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R5
      184 SETTABLEKS                       R19 R18 K50 ["OnClick"]
      186 GETIMPORT                        R19 K55 [UDim2.fromOffset]
      188 GETTABLEKS                       R20 R1 K41 ["ToolbarHeight"]
      190 GETTABLEKS                       R21 R1 K41 ["ToolbarHeight"]
      192 CALL                             R19 2 1
      193 SETTABLEKS                       R19 R18 K13 ["Size"]
      195 NEWTABLE                         R19 0 1
      197 GETUPVAL                         R20 2
      198 GETTABLEKS                       R20 R20 K9 ["createElement"]
      200 LOADK                            R21 K56 ["UIAspectRatioConstraint"]
      201 CALL                             R20 1 -1
      202 SETLIST                          R19 R20 -1 [1]
      204 CALL                             R16 3 1
      205 SETTABLEKS                       R16 R15 K44 ["ExpandPreview"]
      207 GETUPVAL                         R16 2
      208 GETTABLEKS                       R16 R16 K9 ["createElement"]
      210 GETUPVAL                         R17 4
      211 DUPTABLE                         R18 K57 [{"AnchorPoint", "Position", "Icon", "IconPadding", "Style", "OnClick", "Size"}]
      212 GETIMPORT                        R19 K26 [Vector2.new]
      214 LOADN                            R20 1
      215 LOADN                            R21 0
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K20 ["AnchorPoint"]
      219 GETIMPORT                        R19 K30 [UDim2.fromScale]
      221 LOADN                            R20 1
      222 LOADN                            R21 0
      223 CALL                             R19 2 1
      224 SETTABLEKS                       R19 R18 K21 ["Position"]
      226 GETTABLEKS                       R19 R1 K58 ["ClearIcon"]
      228 SETTABLEKS                       R19 R18 K47 ["Icon"]
      230 GETTABLEKS                       R19 R1 K48 ["IconPadding"]
      232 SETTABLEKS                       R19 R18 K48 ["IconPadding"]
      234 LOADK                            R19 K53 ["RoundSubtle"]
      235 SETTABLEKS                       R19 R18 K49 ["Style"]
      237 NEWCLOSURE                       R19 P3
      238 CAPTURE                          VAL R0
      239 SETTABLEKS                       R19 R18 K50 ["OnClick"]
      241 GETIMPORT                        R19 K55 [UDim2.fromOffset]
      243 GETTABLEKS                       R20 R1 K41 ["ToolbarHeight"]
      245 GETTABLEKS                       R21 R1 K41 ["ToolbarHeight"]
      247 CALL                             R19 2 1
      248 SETTABLEKS                       R19 R18 K13 ["Size"]
      250 NEWTABLE                         R19 0 1
      252 GETUPVAL                         R20 2
      253 GETTABLEKS                       R20 R20 K9 ["createElement"]
      255 LOADK                            R21 K56 ["UIAspectRatioConstraint"]
      256 DUPTABLE                         R22 K60 [{"AspectRatio"}]
      257 LOADN                            R23 1
      258 SETTABLEKS                       R23 R22 K59 ["AspectRatio"]
      260 CALL                             R20 2 -1
      261 SETLIST                          R19 R20 -1 [1]
      263 CALL                             R16 3 1
      264 SETTABLEKS                       R16 R15 K45 ["ClearButton"]
      266 CALL                             R12 3 1
      267 JUMP                             ; [+1]
      268 LOADNIL                          R12
      269 SETTABLEKS                       R12 R11 K17 ["Toolbar"]
      271 JUMPIFNOT                        R5 ; [+17]
      272 GETUPVAL                         R12 2
      273 GETTABLEKS                       R12 R12 K9 ["createElement"]
      275 GETUPVAL                         R13 5
      276 DUPTABLE                         R14 K62 [{"Image", "OnClose"}]
      277 GETTABLEKS                       R15 R0 K3 ["Value"]
      279 GETTABLEKS                       R15 R15 K4 ["Image"]
      281 SETTABLEKS                       R15 R14 K4 ["Image"]
      283 NEWCLOSURE                       R15 P4
      284 CAPTURE                          VAL R6
      285 SETTABLEKS                       R15 R14 K61 ["OnClose"]
      287 CALL                             R12 2 1
      288 JUMP                             ; [+1]
      289 LOADNIL                          R12
      290 SETTABLEKS                       R12 R11 K18 ["MetadataDialog"]
      292 CALL                             R8 3 1
      293 RETURN                           R8 1
      294 GETUPVAL                         R8 2
      295 GETTABLEKS                       R8 R8 K9 ["createElement"]
      297 GETUPVAL                         R9 4
      298 DUPTABLE                         R10 K64 [{"Icon", "IconSize", "OnClick", "Size"}]
      299 GETTABLEKS                       R11 R1 K65 ["ImportIcon"]
      301 SETTABLEKS                       R11 R10 K47 ["Icon"]
      303 GETIMPORT                        R11 K55 [UDim2.fromOffset]
      305 LOADN                            R12 28
      306 LOADN                            R13 28
      307 CALL                             R11 2 1
      308 SETTABLEKS                       R11 R10 K63 ["IconSize"]
      310 NEWCLOSURE                       R11 P5
      311 CAPTURE                          UPVAL U6
      312 CAPTURE                          VAL R0
      313 CAPTURE                          VAL R2
      314 SETTABLEKS                       R11 R10 K50 ["OnClick"]
      316 GETTABLEKS                       R11 R1 K12 ["PreviewSize"]
      318 SETTABLEKS                       R11 R10 K13 ["Size"]
      320 CALL                             R8 2 1
      321 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useState"]
       23 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       25 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       27 GETTABLEKS                       R5 R1 K12 ["UI"]
       29 GETTABLEKS                       R6 R5 K13 ["Button"]
       31 GETTABLEKS                       R7 R5 K14 ["Image"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R0 K15 ["Src"]
       37 GETTABLEKS                       R9 R9 K16 ["Components"]
       39 GETTABLEKS                       R9 R9 K17 ["Renderers"]
       41 GETTABLEKS                       R9 R9 K14 ["Image"]
       43 GETTABLEKS                       R9 R9 K18 ["MetadataDialog"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R0 K15 ["Src"]
       50 GETTABLEKS                       R10 R10 K19 ["Util"]
       52 GETTABLEKS                       R10 R10 K20 ["getImage"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K15 ["Src"]
       59 GETTABLEKS                       R11 R11 K21 ["Resources"]
       61 GETTABLEKS                       R11 R11 K22 ["Theme"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K15 ["Src"]
       68 GETTABLEKS                       R12 R12 K23 ["Types"]
       70 CALL                             R11 1 1
       71 DUPCLOSURE                       R12 K24 [PROTO_7]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 RETURN                           R12 1
