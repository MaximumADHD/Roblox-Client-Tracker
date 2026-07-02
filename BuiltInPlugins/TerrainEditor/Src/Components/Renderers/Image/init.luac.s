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
        3 DUPTABLE                         R1 K3 [{["Error"] = ""}]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       54 JUMPIFNOT                        R7 ; [+224]
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
      120 JUMPIFNOT                        R3 ; [+132]
      121 GETUPVAL                         R12 2
      122 GETTABLEKS                       R12 R12 K9 ["createElement"]
      124 LOADK                            R13 K34 ["Frame"]
      125 DUPTABLE                         R14 K41 [{["ZIndex"] = 2, ["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      126 GETIMPORT                        R15 K26 [Vector2.new]
      128 LOADN                            R16 0
      129 LOADN                            R17 1
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K20 ["AnchorPoint"]
      133 GETIMPORT                        R15 K30 [UDim2.fromScale]
      135 LOADN                            R16 0
      136 LOADN                            R17 1
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K21 ["Position"]
      140 GETIMPORT                        R15 K42 [UDim2.new]
      142 LOADN                            R16 1
      143 LOADN                            R17 0
      144 LOADN                            R18 0
      145 GETTABLEKS                       R19 R1 K43 ["ToolbarHeight"]
      147 CALL                             R15 4 1
      148 SETTABLEKS                       R15 R14 K13 ["Size"]
      150 GETTABLEKS                       R15 R1 K44 ["ToolbarTransparency"]
      152 SETTABLEKS                       R15 R14 K37 ["BackgroundTransparency"]
      154 GETTABLEKS                       R15 R1 K45 ["ToolbarBackgroundColor"]
      156 SETTABLEKS                       R15 R14 K40 ["BackgroundColor3"]
      158 DUPTABLE                         R15 K48 [{"ExpandPreview", "ClearButton"}]
      159 GETUPVAL                         R16 2
      160 GETTABLEKS                       R16 R16 K9 ["createElement"]
      162 GETUPVAL                         R17 4
      163 DUPTABLE                         R18 K54 [{["Icon"], ["IconPadding"], ["Style"] = "RoundSubtle", ["OnClick"], ["Size"]}]
      164 GETTABLEKS                       R19 R1 K55 ["ExpandIcon"]
      166 SETTABLEKS                       R19 R18 K49 ["Icon"]
      168 GETTABLEKS                       R19 R1 K50 ["IconPadding"]
      170 SETTABLEKS                       R19 R18 K50 ["IconPadding"]
      172 NEWCLOSURE                       R19 P2
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R5
      175 SETTABLEKS                       R19 R18 K53 ["OnClick"]
      177 GETIMPORT                        R19 K57 [UDim2.fromOffset]
      179 GETTABLEKS                       R20 R1 K43 ["ToolbarHeight"]
      181 GETTABLEKS                       R21 R1 K43 ["ToolbarHeight"]
      183 CALL                             R19 2 1
      184 SETTABLEKS                       R19 R18 K13 ["Size"]
      186 NEWTABLE                         R19 0 1
      188 GETUPVAL                         R20 2
      189 GETTABLEKS                       R20 R20 K9 ["createElement"]
      191 LOADK                            R21 K58 ["UIAspectRatioConstraint"]
      192 CALL                             R20 1 -1
      193 SETLIST                          R19 R20 -1 [1]
      195 CALL                             R16 3 1
      196 SETTABLEKS                       R16 R15 K46 ["ExpandPreview"]
      198 GETUPVAL                         R16 2
      199 GETTABLEKS                       R16 R16 K9 ["createElement"]
      201 GETUPVAL                         R17 4
      202 DUPTABLE                         R18 K59 [{["AnchorPoint"], ["Position"], ["Icon"], ["IconPadding"], ["Style"] = "RoundSubtle", ["OnClick"], ["Size"]}]
      203 GETIMPORT                        R19 K26 [Vector2.new]
      205 LOADN                            R20 1
      206 LOADN                            R21 0
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K20 ["AnchorPoint"]
      210 GETIMPORT                        R19 K30 [UDim2.fromScale]
      212 LOADN                            R20 1
      213 LOADN                            R21 0
      214 CALL                             R19 2 1
      215 SETTABLEKS                       R19 R18 K21 ["Position"]
      217 GETTABLEKS                       R19 R1 K60 ["ClearIcon"]
      219 SETTABLEKS                       R19 R18 K49 ["Icon"]
      221 GETTABLEKS                       R19 R1 K50 ["IconPadding"]
      223 SETTABLEKS                       R19 R18 K50 ["IconPadding"]
      225 NEWCLOSURE                       R19 P3
      226 CAPTURE                          VAL R0
      227 SETTABLEKS                       R19 R18 K53 ["OnClick"]
      229 GETIMPORT                        R19 K57 [UDim2.fromOffset]
      231 GETTABLEKS                       R20 R1 K43 ["ToolbarHeight"]
      233 GETTABLEKS                       R21 R1 K43 ["ToolbarHeight"]
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K13 ["Size"]
      238 NEWTABLE                         R19 0 1
      240 GETUPVAL                         R20 2
      241 GETTABLEKS                       R20 R20 K9 ["createElement"]
      243 LOADK                            R21 K58 ["UIAspectRatioConstraint"]
      244 DUPTABLE                         R22 K63 [{["AspectRatio"] = 1}]
      245 CALL                             R20 2 -1
      246 SETLIST                          R19 R20 -1 [1]
      248 CALL                             R16 3 1
      249 SETTABLEKS                       R16 R15 K47 ["ClearButton"]
      251 CALL                             R12 3 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R12
      254 SETTABLEKS                       R12 R11 K17 ["Toolbar"]
      256 JUMPIFNOT                        R5 ; [+17]
      257 GETUPVAL                         R12 2
      258 GETTABLEKS                       R12 R12 K9 ["createElement"]
      260 GETUPVAL                         R13 5
      261 DUPTABLE                         R14 K65 [{"Image", "OnClose"}]
      262 GETTABLEKS                       R15 R0 K3 ["Value"]
      264 GETTABLEKS                       R15 R15 K4 ["Image"]
      266 SETTABLEKS                       R15 R14 K4 ["Image"]
      268 NEWCLOSURE                       R15 P4
      269 CAPTURE                          VAL R6
      270 SETTABLEKS                       R15 R14 K64 ["OnClose"]
      272 CALL                             R12 2 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R12
      275 SETTABLEKS                       R12 R11 K18 ["MetadataDialog"]
      277 CALL                             R8 3 1
      278 RETURN                           R8 1
      279 GETUPVAL                         R8 2
      280 GETTABLEKS                       R8 R8 K9 ["createElement"]
      282 GETUPVAL                         R9 4
      283 DUPTABLE                         R10 K67 [{"Icon", "IconSize", "OnClick", "Size"}]
      284 GETTABLEKS                       R11 R1 K68 ["ImportIcon"]
      286 SETTABLEKS                       R11 R10 K49 ["Icon"]
      288 GETIMPORT                        R11 K57 [UDim2.fromOffset]
      290 LOADN                            R12 28
      291 LOADN                            R13 28
      292 CALL                             R11 2 1
      293 SETTABLEKS                       R11 R10 K66 ["IconSize"]
      295 NEWCLOSURE                       R11 P5
      296 CAPTURE                          UPVAL U6
      297 CAPTURE                          VAL R0
      298 CAPTURE                          VAL R2
      299 SETTABLEKS                       R11 R10 K53 ["OnClick"]
      301 GETTABLEKS                       R11 R1 K12 ["PreviewSize"]
      303 SETTABLEKS                       R11 R10 K13 ["Size"]
      305 CALL                             R8 2 1
      306 RETURN                           R8 1

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
