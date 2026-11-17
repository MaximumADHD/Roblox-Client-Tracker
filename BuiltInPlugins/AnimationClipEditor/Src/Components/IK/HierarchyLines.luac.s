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
       45 DUPTABLE                         R18 K18 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
       46 GETIMPORT                        R19 K21 [UDim2.new]
       48 LOADN                            R20 0
       49 ADD                              R21 R15 R13
       50 LOADN                            R22 0
       51 LOADN                            R23 0
       52 CALL                             R19 4 1
       53 SETTABLEKS                       R19 R18 K17 ["Size"]
       55 SETTABLEKS                       R10 R18 K9 ["LayoutOrder"]
       57 DUPTABLE                         R19 K27 [{"Indent", "VerticalLine", "IKVerticalLine", "HorizontalLine", "LeafNode", "Toggle"}]
       58 GETUPVAL                         R20 0
       59 GETTABLEKS                       R20 R20 K14 ["createElement"]
       61 LOADK                            R21 K15 ["Frame"]
       62 DUPTABLE                         R22 K29 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 0, ["Size"]}]
       63 GETIMPORT                        R23 K21 [UDim2.new]
       65 LOADN                            R24 0
       66 MOVE                             R25 R15
       67 LOADN                            R26 1
       68 LOADN                            R27 0
       69 CALL                             R23 4 1
       70 SETTABLEKS                       R23 R22 K17 ["Size"]
       72 CALL                             R20 2 1
       73 SETTABLEKS                       R20 R19 K6 ["Indent"]
       75 NOT                              R20 R3
       76 JUMPIFNOT                        R20 ; [+45]
       77 MOVE                             R20 R6
       78 JUMPIFNOT                        R20 ; [+43]
       79 GETUPVAL                         R20 0
       80 GETTABLEKS                       R20 R20 K14 ["createElement"]
       82 LOADK                            R21 K15 ["Frame"]
       83 DUPTABLE                         R22 K35 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"], ["Position"], ["BackgroundColor3"], ["ZIndex"] = 2}]
       84 GETIMPORT                        R23 K21 [UDim2.new]
       86 LOADN                            R24 0
       87 LOADN                            R25 1
       88 LOADN                            R26 0
       89 SUBK                             R27 R8 K36 [6]
       90 CALL                             R23 4 1
       91 SETTABLEKS                       R23 R22 K17 ["Size"]
       93 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
       95 GETTABLEKS                       R23 R23 K38 ["transparency"]
       97 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
       99 GETIMPORT                        R23 K21 [UDim2.new]
      101 LOADN                            R24 0
      102 ADD                              R26 R15 R13
      103 ADDK                             R25 R26 K36 [6]
      104 LOADN                            R26 0
      105 LOADN                            R27 6
      106 CALL                             R23 4 1
      107 SETTABLEKS                       R23 R22 K31 ["Position"]
      109 JUMPIFNOT                        R11 ; [+5]
      110 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      112 GETTABLEKS                       R23 R23 K39 ["ikLineColor"]
      114 JUMPIF                           R23 ; [+4]
      115 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      117 GETTABLEKS                       R23 R23 K40 ["lineColor"]
      119 SETTABLEKS                       R23 R22 K32 ["BackgroundColor3"]
      121 CALL                             R20 2 1
      122 SETTABLEKS                       R20 R19 K22 ["VerticalLine"]
      124 NOT                              R20 R3
      125 JUMPIFNOT                        R20 ; [+47]
      126 MOVE                             R20 R6
      127 JUMPIFNOT                        R20 ; [+45]
      128 MOVE                             R20 R4
      129 JUMPIFNOT                        R20 ; [+43]
      130 GETUPVAL                         R20 0
      131 GETTABLEKS                       R20 R20 K14 ["createElement"]
      133 LOADK                            R21 K15 ["Frame"]
      134 DUPTABLE                         R22 K43 [{["Size"], ["BorderSizePixel"] = 0, ["Position"], ["BackgroundColor3"], ["BorderColor3"], ["ZIndex"] = 3}]
      135 GETIMPORT                        R23 K21 [UDim2.new]
      137 LOADN                            R24 0
      138 LOADN                            R25 1
      139 LOADN                            R26 0
      140 SUBK                             R28 R9 K36 [6]
      141 FASTCALL2K                       MATH_MAX R28 K28 ; [+4]
      143 LOADK                            R29 K28 [0]
      144 GETIMPORT                        R27 K46 [math.max]
      146 CALL                             R27 2 1
      147 CALL                             R23 4 1
      148 SETTABLEKS                       R23 R22 K17 ["Size"]
      150 GETIMPORT                        R23 K21 [UDim2.new]
      152 LOADN                            R24 0
      153 ADD                              R26 R15 R13
      154 ADDK                             R25 R26 K36 [6]
      155 LOADN                            R26 0
      156 LOADN                            R27 6
      157 CALL                             R23 4 1
      158 SETTABLEKS                       R23 R22 K31 ["Position"]
      160 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      162 GETTABLEKS                       R23 R23 K39 ["ikLineColor"]
      164 SETTABLEKS                       R23 R22 K32 ["BackgroundColor3"]
      166 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      168 GETTABLEKS                       R23 R23 K39 ["ikLineColor"]
      170 SETTABLEKS                       R23 R22 K41 ["BorderColor3"]
      172 CALL                             R20 2 1
      173 SETTABLEKS                       R20 R19 K23 ["IKVerticalLine"]
      175 MOVE                             R20 R5
      176 JUMPIFNOT                        R20 ; [+46]
      177 GETUPVAL                         R20 0
      178 GETTABLEKS                       R20 R20 K14 ["createElement"]
      180 LOADK                            R21 K15 ["Frame"]
      181 DUPTABLE                         R22 K47 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"], ["BackgroundColor3"], ["Position"], ["ZIndex"] = 2}]
      182 GETIMPORT                        R23 K21 [UDim2.new]
      184 LOADN                            R24 0
      185 SUB                              R25 R13 R14
      186 LOADN                            R26 0
      187 LOADN                            R27 1
      188 CALL                             R23 4 1
      189 SETTABLEKS                       R23 R22 K17 ["Size"]
      191 JUMPIFNOT                        R11 ; [+1]
      192 JUMPIF                           R4 ; [+5]
      193 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      195 GETTABLEKS                       R23 R23 K38 ["transparency"]
      197 JUMPIF                           R23 ; [+1]
      198 LOADN                            R23 0
      199 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
      201 JUMPIFNOT                        R11 ; [+5]
      202 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      204 GETTABLEKS                       R23 R23 K39 ["ikLineColor"]
      206 JUMPIF                           R23 ; [+4]
      207 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      209 GETTABLEKS                       R23 R23 K40 ["lineColor"]
      211 SETTABLEKS                       R23 R22 K32 ["BackgroundColor3"]
      213 GETIMPORT                        R23 K21 [UDim2.new]
      215 LOADN                            R24 0
      216 ADDK                             R25 R15 K36 [6]
      217 LOADN                            R26 0
      218 LOADN                            R27 0
      219 CALL                             R23 4 1
      220 SETTABLEKS                       R23 R22 K31 ["Position"]
      222 CALL                             R20 2 1
      223 SETTABLEKS                       R20 R19 K24 ["HorizontalLine"]
      225 MOVE                             R20 R3
      226 JUMPIFNOT                        R20 ; [+49]
      227 GETUPVAL                         R20 0
      228 GETTABLEKS                       R20 R20 K14 ["createElement"]
      230 LOADK                            R21 K48 ["ImageLabel"]
      231 DUPTABLE                         R22 K53 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 4}]
      232 GETIMPORT                        R23 K21 [UDim2.new]
      234 LOADN                            R24 0
      235 LOADN                            R25 6
      236 LOADN                            R26 0
      237 LOADN                            R27 6
      238 CALL                             R23 4 1
      239 SETTABLEKS                       R23 R22 K17 ["Size"]
      241 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      243 GETTABLEKS                       R23 R23 K54 ["leafNodeImage"]
      245 SETTABLEKS                       R23 R22 K49 ["Image"]
      247 JUMPIFNOT                        R12 ; [+5]
      248 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      250 GETTABLEKS                       R23 R23 K55 ["primaryTextColor"]
      252 JUMPIF                           R23 ; [+4]
      253 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      255 GETTABLEKS                       R23 R23 K40 ["lineColor"]
      257 SETTABLEKS                       R23 R22 K50 ["ImageColor3"]
      259 GETIMPORT                        R23 K21 [UDim2.new]
      261 LOADN                            R24 0
      262 ADD                              R25 R15 R13
      263 LOADK                            R26 K56 [0.5]
      264 LOADN                            R27 0
      265 CALL                             R23 4 1
      266 SETTABLEKS                       R23 R22 K31 ["Position"]
      268 GETIMPORT                        R23 K58 [Vector2.new]
      270 LOADN                            R24 0
      271 LOADK                            R25 K56 [0.5]
      272 CALL                             R23 2 1
      273 SETTABLEKS                       R23 R22 K51 ["AnchorPoint"]
      275 CALL                             R20 2 1
      276 SETTABLEKS                       R20 R19 K25 ["LeafNode"]
      278 NOT                              R20 R3
      279 JUMPIFNOT                        R20 ; [+76]
      280 GETUPVAL                         R20 0
      281 GETTABLEKS                       R20 R20 K14 ["createElement"]
      283 LOADK                            R21 K59 ["ImageButton"]
      284 NEWTABLE                         R22 16 0
      286 GETIMPORT                        R23 K21 [UDim2.new]
      288 LOADN                            R24 0
      289 LOADN                            R25 12
      290 LOADN                            R26 0
      291 LOADN                            R27 12
      292 CALL                             R23 4 1
      293 SETTABLEKS                       R23 R22 K17 ["Size"]
      295 LOADN                            R23 0
      296 SETTABLEKS                       R23 R22 K30 ["BorderSizePixel"]
      298 LOADN                            R23 1
      299 SETTABLEKS                       R23 R22 K16 ["BackgroundTransparency"]
      301 JUMPIFNOT                        R6 ; [+5]
      302 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      304 GETTABLEKS                       R23 R23 K60 ["collapseImage"]
      306 JUMPIF                           R23 ; [+4]
      307 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      309 GETTABLEKS                       R23 R23 K61 ["expandImage"]
      311 SETTABLEKS                       R23 R22 K49 ["Image"]
      313 JUMPIFNOT                        R12 ; [+5]
      314 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      316 GETTABLEKS                       R23 R23 K55 ["primaryTextColor"]
      318 JUMPIF                           R23 ; [+4]
      319 GETTABLEKS                       R23 R2 K37 ["ikTheme"]
      321 GETTABLEKS                       R23 R23 K40 ["lineColor"]
      323 SETTABLEKS                       R23 R22 K50 ["ImageColor3"]
      325 GETIMPORT                        R23 K21 [UDim2.new]
      327 LOADN                            R24 0
      328 ADD                              R25 R15 R13
      329 LOADK                            R26 K56 [0.5]
      330 LOADN                            R27 0
      331 CALL                             R23 4 1
      332 SETTABLEKS                       R23 R22 K31 ["Position"]
      334 GETIMPORT                        R23 K58 [Vector2.new]
      336 LOADN                            R24 0
      337 LOADK                            R25 K56 [0.5]
      338 CALL                             R23 2 1
      339 SETTABLEKS                       R23 R22 K51 ["AnchorPoint"]
      341 LOADB                            R23 0
      342 SETTABLEKS                       R23 R22 K62 ["AutoButtonColor"]
      344 LOADN                            R23 4
      345 SETTABLEKS                       R23 R22 K33 ["ZIndex"]
      347 GETUPVAL                         R23 0
      348 GETTABLEKS                       R23 R23 K63 ["Event"]
      350 GETTABLEKS                       R23 R23 K64 ["MouseButton1Click"]
      352 NEWCLOSURE                       R24 P0
      353 CAPTURE                          VAL R1
      354 SETTABLE                         R24 R22 R23
      355 CALL                             R20 2 1
      356 SETTABLEKS                       R20 R19 K26 ["Toggle"]
      358 CALL                             R16 3 -1
      359 RETURN                           R16 -1

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
