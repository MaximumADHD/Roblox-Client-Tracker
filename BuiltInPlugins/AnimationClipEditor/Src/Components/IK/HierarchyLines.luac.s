PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ToggleExpanded"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Element"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["IsLeafNode"]
        6 GETTABLEKS                       R4 R1 K3 ["InActiveChain"]
        8 GETTABLEKS                       R5 R1 K4 ["IsChildNode"]
       10 GETTABLEKS                       R6 R1 K5 ["IsExpanded"]
       12 GETTABLEKS                       R7 R1 K6 ["Indent"]
       14 GETTABLEKS                       R8 R1 K7 ["Height"]
       16 GETTABLEKS                       R9 R1 K8 ["IKHeight"]
       18 GETTABLEKS                       R10 R1 K9 ["LayoutOrder"]
       20 GETTABLEKS                       R11 R1 K10 ["Highlight"]
       22 GETTABLEKS                       R12 R1 K11 ["IsSelected"]
       24 LOADN                            R14 0
       25 JUMPIFNOTLT                      R14 R7 ; [+3]
       27 LOADN                            R13 20
       28 JUMP                             ; [+1]
       29 LOADN                            R13 0
       30 JUMPIFNOT                        R3 ; [+2]
       31 LOADN                            R14 3
       32 JUMP                             ; [+1]
       33 LOADN                            R14 6
       34 LOADN                            R16 1
       35 JUMPIFNOTLT                      R16 R7 ; [+4]
       37 SUBK                             R16 R7 K13 [1]
       38 MULK                             R15 R16 K12 [20]
       39 JUMPIF                           R15 ; [+1]
       40 LOADN                            R15 0
       41 GETUPVAL                         R16 0
       42 GETTABLEKS                       R16 R16 K14 ["createElement"]
       44 LOADK                            R17 K15 ["Frame"]
       45 DUPTABLE                         R18 K18 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
       46 LOADN                            R19 1
       47 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
       49 GETIMPORT                        R19 K21 [UDim2.new]
       51 LOADN                            R20 0
       52 ADD                              R21 R15 R13
       53 LOADN                            R22 0
       54 LOADN                            R23 0
       55 CALL                             R19 4 1
       56 SETTABLEKS                       R19 R18 K17 ["Size"]
       58 SETTABLEKS                       R10 R18 K9 ["LayoutOrder"]
       60 DUPTABLE                         R19 K27 [{"Indent", "VerticalLine", "IKVerticalLine", "HorizontalLine", "LeafNode", "Toggle"}]
       61 GETUPVAL                         R20 0
       62 GETTABLEKS                       R20 R20 K14 ["createElement"]
       64 LOADK                            R21 K15 ["Frame"]
       65 DUPTABLE                         R22 K28 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       66 LOADN                            R23 1
       67 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
       69 LOADN                            R23 0
       70 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
       72 GETIMPORT                        R23 K21 [UDim2.new]
       74 LOADN                            R24 0
       75 MOVE                             R25 R15
       76 LOADN                            R26 1
       77 LOADN                            R27 0
       78 CALL                             R23 4 1
       79 SETTABLEKS                       R23 R22 K17 ["Size"]
       81 CALL                             R20 2 1
       82 SETTABLEKS                       R20 R19 K6 ["Indent"]
       84 NOT                              R20 R3
       85 JUMPIFNOT                        R20 ; [+51]
       86 MOVE                             R20 R6
       87 JUMPIFNOT                        R20 ; [+49]
       88 GETUPVAL                         R20 0
       89 GETTABLEKS                       R20 R20 K14 ["createElement"]
       91 LOADK                            R21 K15 ["Frame"]
       92 DUPTABLE                         R22 K33 [{"Size", "BorderSizePixel", "BackgroundTransparency", "Position", "BackgroundColor3", "ZIndex"}]
       93 GETIMPORT                        R23 K21 [UDim2.new]
       95 LOADN                            R24 0
       96 LOADN                            R25 1
       97 LOADN                            R26 0
       98 SUBK                             R27 R8 K34 [6]
       99 CALL                             R23 4 1
      100 SETTABLEKS                       R23 R22 K17 ["Size"]
      102 LOADN                            R23 0
      103 SETTABLEKS                       R23 R22 K29 ["BorderSizePixel"]
      105 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      107 GETTABLEKS                       R23 R23 K36 ["transparency"]
      109 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
      111 GETIMPORT                        R23 K21 [UDim2.new]
      113 LOADN                            R24 0
      114 ADD                              R26 R15 R13
      115 ADDK                             R25 R26 K34 [6]
      116 LOADN                            R26 0
      117 LOADN                            R27 6
      118 CALL                             R23 4 1
      119 SETTABLEKS                       R23 R22 K30 ["Position"]
      121 JUMPIFNOT                        R11 ; [+5]
      122 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      124 GETTABLEKS                       R23 R23 K37 ["ikLineColor"]
      126 JUMPIF                           R23 ; [+4]
      127 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      129 GETTABLEKS                       R23 R23 K38 ["lineColor"]
      131 SETTABLEKS                       R23 R22 K31 ["BackgroundColor3"]
      133 LOADN                            R23 2
      134 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      136 CALL                             R20 2 1
      137 SETTABLEKS                       R20 R19 K22 ["VerticalLine"]
      139 NOT                              R20 R3
      140 JUMPIFNOT                        R20 ; [+53]
      141 MOVE                             R20 R6
      142 JUMPIFNOT                        R20 ; [+51]
      143 MOVE                             R20 R4
      144 JUMPIFNOT                        R20 ; [+49]
      145 GETUPVAL                         R20 0
      146 GETTABLEKS                       R20 R20 K14 ["createElement"]
      148 LOADK                            R21 K15 ["Frame"]
      149 DUPTABLE                         R22 K40 [{"Size", "BorderSizePixel", "Position", "BackgroundColor3", "BorderColor3", "ZIndex"}]
      150 GETIMPORT                        R23 K21 [UDim2.new]
      152 LOADN                            R24 0
      153 LOADN                            R25 1
      154 LOADN                            R26 0
      155 SUBK                             R28 R9 K34 [6]
      156 FASTCALL2K                       MATH_MAX R28 K41 ; [+4]
      158 LOADK                            R29 K41 [0]
      159 GETIMPORT                        R27 K44 [math.max]
      161 CALL                             R27 2 1
      162 CALL                             R23 4 1
      163 SETTABLEKS                       R23 R22 K17 ["Size"]
      165 LOADN                            R23 0
      166 SETTABLEKS                       R23 R22 K29 ["BorderSizePixel"]
      168 GETIMPORT                        R23 K21 [UDim2.new]
      170 LOADN                            R24 0
      171 ADD                              R26 R15 R13
      172 ADDK                             R25 R26 K34 [6]
      173 LOADN                            R26 0
      174 LOADN                            R27 6
      175 CALL                             R23 4 1
      176 SETTABLEKS                       R23 R22 K30 ["Position"]
      178 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      180 GETTABLEKS                       R23 R23 K37 ["ikLineColor"]
      182 SETTABLEKS                       R23 R22 K31 ["BackgroundColor3"]
      184 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      186 GETTABLEKS                       R23 R23 K37 ["ikLineColor"]
      188 SETTABLEKS                       R23 R22 K39 ["BorderColor3"]
      190 LOADN                            R23 3
      191 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      193 CALL                             R20 2 1
      194 SETTABLEKS                       R20 R19 K23 ["IKVerticalLine"]
      196 MOVE                             R20 R5
      197 JUMPIFNOT                        R20 ; [+52]
      198 GETUPVAL                         R20 0
      199 GETTABLEKS                       R20 R20 K14 ["createElement"]
      201 LOADK                            R21 K15 ["Frame"]
      202 DUPTABLE                         R22 K45 [{"Size", "BorderSizePixel", "BackgroundTransparency", "BackgroundColor3", "Position", "ZIndex"}]
      203 GETIMPORT                        R23 K21 [UDim2.new]
      205 LOADN                            R24 0
      206 SUB                              R25 R13 R14
      207 LOADN                            R26 0
      208 LOADN                            R27 1
      209 CALL                             R23 4 1
      210 SETTABLEKS                       R23 R22 K17 ["Size"]
      212 LOADN                            R23 0
      213 SETTABLEKS                       R23 R22 K29 ["BorderSizePixel"]
      215 JUMPIFNOT                        R11 ; [+1]
      216 JUMPIF                           R4 ; [+5]
      217 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      219 GETTABLEKS                       R23 R23 K36 ["transparency"]
      221 JUMPIF                           R23 ; [+1]
      222 LOADN                            R23 0
      223 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
      225 JUMPIFNOT                        R11 ; [+5]
      226 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      228 GETTABLEKS                       R23 R23 K37 ["ikLineColor"]
      230 JUMPIF                           R23 ; [+4]
      231 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      233 GETTABLEKS                       R23 R23 K38 ["lineColor"]
      235 SETTABLEKS                       R23 R22 K31 ["BackgroundColor3"]
      237 GETIMPORT                        R23 K21 [UDim2.new]
      239 LOADN                            R24 0
      240 ADDK                             R25 R15 K34 [6]
      241 LOADN                            R26 0
      242 LOADN                            R27 0
      243 CALL                             R23 4 1
      244 SETTABLEKS                       R23 R22 K30 ["Position"]
      246 LOADN                            R23 2
      247 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      249 CALL                             R20 2 1
      250 SETTABLEKS                       R20 R19 K24 ["HorizontalLine"]
      252 MOVE                             R20 R3
      253 JUMPIFNOT                        R20 ; [+58]
      254 GETUPVAL                         R20 0
      255 GETTABLEKS                       R20 R20 K14 ["createElement"]
      257 LOADK                            R21 K46 ["ImageLabel"]
      258 DUPTABLE                         R22 K50 [{"Size", "BorderSizePixel", "BackgroundTransparency", "Image", "ImageColor3", "Position", "AnchorPoint", "ZIndex"}]
      259 GETIMPORT                        R23 K21 [UDim2.new]
      261 LOADN                            R24 0
      262 LOADN                            R25 6
      263 LOADN                            R26 0
      264 LOADN                            R27 6
      265 CALL                             R23 4 1
      266 SETTABLEKS                       R23 R22 K17 ["Size"]
      268 LOADN                            R23 0
      269 SETTABLEKS                       R23 R22 K29 ["BorderSizePixel"]
      271 LOADN                            R23 1
      272 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
      274 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      276 GETTABLEKS                       R23 R23 K51 ["leafNodeImage"]
      278 SETTABLEKS                       R23 R22 K47 ["Image"]
      280 JUMPIFNOT                        R12 ; [+5]
      281 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      283 GETTABLEKS                       R23 R23 K52 ["primaryTextColor"]
      285 JUMPIF                           R23 ; [+4]
      286 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      288 GETTABLEKS                       R23 R23 K38 ["lineColor"]
      290 SETTABLEKS                       R23 R22 K48 ["ImageColor3"]
      292 GETIMPORT                        R23 K21 [UDim2.new]
      294 LOADN                            R24 0
      295 ADD                              R25 R15 R13
      296 LOADK                            R26 K53 [0.5]
      297 LOADN                            R27 0
      298 CALL                             R23 4 1
      299 SETTABLEKS                       R23 R22 K30 ["Position"]
      301 GETIMPORT                        R23 K55 [Vector2.new]
      303 LOADN                            R24 0
      304 LOADK                            R25 K53 [0.5]
      305 CALL                             R23 2 1
      306 SETTABLEKS                       R23 R22 K49 ["AnchorPoint"]
      308 LOADN                            R23 4
      309 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      311 CALL                             R20 2 1
      312 SETTABLEKS                       R20 R19 K25 ["LeafNode"]
      314 NOT                              R20 R3
      315 JUMPIFNOT                        R20 ; [+76]
      316 GETUPVAL                         R20 0
      317 GETTABLEKS                       R20 R20 K14 ["createElement"]
      319 LOADK                            R21 K56 ["ImageButton"]
      320 NEWTABLE                         R22 16 0
      322 GETIMPORT                        R23 K21 [UDim2.new]
      324 LOADN                            R24 0
      325 LOADN                            R25 12
      326 LOADN                            R26 0
      327 LOADN                            R27 12
      328 CALL                             R23 4 1
      329 SETTABLEKS                       R23 R22 K17 ["Size"]
      331 LOADN                            R23 0
      332 SETTABLEKS                       R23 R22 K29 ["BorderSizePixel"]
      334 LOADN                            R23 1
      335 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
      337 JUMPIFNOT                        R6 ; [+5]
      338 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      340 GETTABLEKS                       R23 R23 K57 ["collapseImage"]
      342 JUMPIF                           R23 ; [+4]
      343 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      345 GETTABLEKS                       R23 R23 K58 ["expandImage"]
      347 SETTABLEKS                       R23 R22 K47 ["Image"]
      349 JUMPIFNOT                        R12 ; [+5]
      350 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      352 GETTABLEKS                       R23 R23 K52 ["primaryTextColor"]
      354 JUMPIF                           R23 ; [+4]
      355 GETTABLEKS                       R23 R2 K35 ["ikTheme"]
      357 GETTABLEKS                       R23 R23 K38 ["lineColor"]
      359 SETTABLEKS                       R23 R22 K48 ["ImageColor3"]
      361 GETIMPORT                        R23 K21 [UDim2.new]
      363 LOADN                            R24 0
      364 ADD                              R25 R15 R13
      365 LOADK                            R26 K53 [0.5]
      366 LOADN                            R27 0
      367 CALL                             R23 4 1
      368 SETTABLEKS                       R23 R22 K30 ["Position"]
      370 GETIMPORT                        R23 K55 [Vector2.new]
      372 LOADN                            R24 0
      373 LOADK                            R25 K53 [0.5]
      374 CALL                             R23 2 1
      375 SETTABLEKS                       R23 R22 K49 ["AnchorPoint"]
      377 LOADB                            R23 0
      378 SETTABLEKS                       R23 R22 K59 ["AutoButtonColor"]
      380 LOADN                            R23 4
      381 SETTABLEKS                       R23 R22 K32 ["ZIndex"]
      383 GETUPVAL                         R23 0
      384 GETTABLEKS                       R23 R23 K60 ["Event"]
      386 GETTABLEKS                       R23 R23 K61 ["MouseButton1Click"]
      388 NEWCLOSURE                       R24 P0
      389 CAPTURE                          VAL R1
      390 SETTABLE                         R24 R22 R23
      391 CALL                             R20 2 1
      392 SETTABLEKS                       R20 R19 K26 ["Toggle"]
      394 CALL                             R16 3 -1
      395 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R1 K11 ["PureComponent"]
       27 LOADK                            R7 K12 ["HierarchyLines"]
       28 NAMECALL                         R5 R5 K13 ["extend"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K14 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R5 K15 ["render"]
       35 MOVE                             R6 R4
       36 DUPTABLE                         R7 K17 [{"Stylizer"}]
       37 GETTABLEKS                       R8 R3 K16 ["Stylizer"]
       39 SETTABLEKS                       R8 R7 K16 ["Stylizer"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 RETURN                           R5 1
