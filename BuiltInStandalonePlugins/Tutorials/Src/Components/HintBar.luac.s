PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["guiRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Tutorial"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 NAMECALL                         R2 R1 K2 ["Destroy"]
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R0 K3 ["guiRef"]
       11 GETTABLEKS                       R2 R2 K4 ["current"]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K5 ["Parent"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R1 K2 ["TutorialData"]
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R5 R4 K3 ["step"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R5
       13 MOVE                             R6 R5
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETTABLEKS                       R7 R5 K4 ["kind"]
       17 JUMPIFEQKS                       R7 K5 ["Dialog"] ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 GETTABLEKS                       R7 R1 K6 ["PressedKeys"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K7 ["createElement"]
       26 LOADK                            R9 K8 ["ScreenGui"]
       27 DUPTABLE                         R10 K10 [{"ref"}]
       28 GETTABLEKS                       R11 R0 K11 ["guiRef"]
       30 SETTABLEKS                       R11 R10 K9 ["ref"]
       32 DUPTABLE                         R11 K14 [{"Content", "ProgressRow"}]
       33 JUMPIFNOT                        R5 ; [+263]
       34 GETTABLEKS                       R13 R5 K15 ["callout"]
       36 JUMPIF                           R13 ; [+260]
       37 GETTABLEKS                       R13 R5 K4 ["kind"]
       39 JUMPIFEQKS                       R13 K16 ["Playtest"] ; [+257]
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R12 R12 K7 ["createElement"]
       44 GETUPVAL                         R13 2
       45 DUPTABLE                         R14 K29 [{["AnchorPoint"], ["ClipsDescendants"] = True, ["AutomaticSize"], ["Layout"], ["Style"] = "Box", ["BackgroundTransparency"] = 0.05, ["Spacing"] = 20, ["Position"]}]
       46 JUMPIFNOT                        R6 ; [+6]
       47 GETIMPORT                        R15 K32 [Vector2.new]
       49 LOADK                            R16 K33 [0.5]
       50 LOADK                            R17 K33 [0.5]
       51 CALL                             R15 2 1
       52 JUMP                             ; [+5]
       53 GETIMPORT                        R15 K32 [Vector2.new]
       55 LOADK                            R16 K33 [0.5]
       56 LOADN                            R17 1
       57 CALL                             R15 2 1
       58 SETTABLEKS                       R15 R14 K17 ["AnchorPoint"]
       60 GETIMPORT                        R15 K36 [Enum.AutomaticSize.XY]
       62 SETTABLEKS                       R15 R14 K20 ["AutomaticSize"]
       64 GETIMPORT                        R15 K39 [Enum.FillDirection.Vertical]
       66 SETTABLEKS                       R15 R14 K21 ["Layout"]
       68 JUMPIFNOT                        R6 ; [+6]
       69 GETIMPORT                        R15 K42 [UDim2.fromScale]
       71 LOADK                            R16 K33 [0.5]
       72 LOADK                            R17 K33 [0.5]
       73 CALL                             R15 2 1
       74 JUMP                             ; [+7]
       75 GETIMPORT                        R15 K43 [UDim2.new]
       77 LOADK                            R16 K33 [0.5]
       78 LOADN                            R17 0
       79 LOADN                            R18 1
       80 LOADN                            R19 -48
       81 CALL                             R15 4 1
       82 SETTABLEKS                       R15 R14 K28 ["Position"]
       84 DUPTABLE                         R15 K47 [{"Corner", "MaxSize", "Hint"}]
       85 GETUPVAL                         R16 1
       86 GETTABLEKS                       R16 R16 K7 ["createElement"]
       88 LOADK                            R17 K48 ["UICorner"]
       89 DUPTABLE                         R18 K50 [{"CornerRadius"}]
       90 GETIMPORT                        R19 K52 [UDim.new]
       92 LOADN                            R20 0
       93 LOADN                            R21 16
       94 CALL                             R19 2 1
       95 SETTABLEKS                       R19 R18 K49 ["CornerRadius"]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K44 ["Corner"]
      100 GETUPVAL                         R16 1
      101 GETTABLEKS                       R16 R16 K7 ["createElement"]
      103 LOADK                            R17 K53 ["UISizeConstraint"]
      104 DUPTABLE                         R18 K54 [{"MaxSize"}]
      105 GETIMPORT                        R19 K32 [Vector2.new]
      107 LOADN                            R20 500
      108 LOADN                            R21 500
      109 CALL                             R19 2 1
      110 SETTABLEKS                       R19 R18 K45 ["MaxSize"]
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R15 K45 ["MaxSize"]
      115 GETUPVAL                         R16 1
      116 GETTABLEKS                       R16 R16 K7 ["createElement"]
      118 GETUPVAL                         R17 2
      119 DUPTABLE                         R18 K56 [{["AutomaticSize"], ["Layout"], ["Padding"] = 20, ["Spacing"] = 20}]
      120 GETIMPORT                        R19 K36 [Enum.AutomaticSize.XY]
      122 SETTABLEKS                       R19 R18 K20 ["AutomaticSize"]
      124 GETIMPORT                        R19 K39 [Enum.FillDirection.Vertical]
      126 SETTABLEKS                       R19 R18 K21 ["Layout"]
      128 DUPTABLE                         R19 K62 [{"Tick", "Keys", "Title", "Subtitle", "ButtonRow"}]
      129 GETTABLEKS                       R21 R5 K4 ["kind"]
      131 JUMPIFNOTEQKS                    R21 K63 ["Completed"] ; [+19]
      133 GETUPVAL                         R20 1
      134 GETTABLEKS                       R20 R20 K7 ["createElement"]
      136 GETUPVAL                         R21 3
      137 DUPTABLE                         R22 K68 [{["LayoutOrder"], ["Image"] = "rbxasset://textures/Tutorials/Tick.png", ["Size"]}]
      138 MOVE                             R23 R3
      139 CALL                             R23 0 1
      140 SETTABLEKS                       R23 R22 K64 ["LayoutOrder"]
      142 GETIMPORT                        R23 K70 [UDim2.fromOffset]
      144 LOADN                            R24 52
      145 LOADN                            R25 52
      146 CALL                             R23 2 1
      147 SETTABLEKS                       R23 R22 K67 ["Size"]
      149 CALL                             R20 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R20
      152 SETTABLEKS                       R20 R19 K57 ["Tick"]
      154 JUMPIFNOT                        R7 ; [+13]
      155 GETUPVAL                         R20 1
      156 GETTABLEKS                       R20 R20 K7 ["createElement"]
      158 GETUPVAL                         R21 4
      159 DUPTABLE                         R22 K71 [{"LayoutOrder", "PressedKeys"}]
      160 MOVE                             R23 R3
      161 CALL                             R23 0 1
      162 SETTABLEKS                       R23 R22 K64 ["LayoutOrder"]
      164 SETTABLEKS                       R7 R22 K6 ["PressedKeys"]
      166 CALL                             R20 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R20
      169 SETTABLEKS                       R20 R19 K58 ["Keys"]
      171 GETTABLEKS                       R21 R5 K72 ["title"]
      173 JUMPIFNOT                        R21 ; [+27]
      174 GETTABLEKS                       R21 R5 K4 ["kind"]
      176 JUMPIFNOTEQKS                    R21 K5 ["Dialog"] ; [+24]
      178 GETUPVAL                         R20 1
      179 GETTABLEKS                       R20 R20 K7 ["createElement"]
      181 GETUPVAL                         R21 5
      182 DUPTABLE                         R22 K78 [{["AutomaticSize"], ["LayoutOrder"], ["TextWrapped"] = True, ["Text"], ["Font"], ["TextSize"] = 26}]
      183 GETIMPORT                        R23 K36 [Enum.AutomaticSize.XY]
      185 SETTABLEKS                       R23 R22 K20 ["AutomaticSize"]
      187 MOVE                             R23 R3
      188 CALL                             R23 0 1
      189 SETTABLEKS                       R23 R22 K64 ["LayoutOrder"]
      191 GETTABLEKS                       R23 R5 K72 ["title"]
      193 SETTABLEKS                       R23 R22 K74 ["Text"]
      195 GETIMPORT                        R23 K80 [Enum.Font.SourceSansBold]
      197 SETTABLEKS                       R23 R22 K75 ["Font"]
      199 CALL                             R20 2 1
      200 JUMP                             ; [+1]
      201 LOADNIL                          R20
      202 SETTABLEKS                       R20 R19 K59 ["Title"]
      204 GETTABLEKS                       R21 R5 K81 ["description"]
      206 JUMPIFNOT                        R21 ; [+19]
      207 GETUPVAL                         R20 1
      208 GETTABLEKS                       R20 R20 K7 ["createElement"]
      210 GETUPVAL                         R21 5
      211 DUPTABLE                         R22 K84 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["TextSize"] = 22, ["TextWrapped"] = True, ["RichText"] = True}]
      212 GETIMPORT                        R23 K36 [Enum.AutomaticSize.XY]
      214 SETTABLEKS                       R23 R22 K20 ["AutomaticSize"]
      216 MOVE                             R23 R3
      217 CALL                             R23 0 1
      218 SETTABLEKS                       R23 R22 K64 ["LayoutOrder"]
      220 GETTABLEKS                       R23 R5 K81 ["description"]
      222 SETTABLEKS                       R23 R22 K74 ["Text"]
      224 CALL                             R20 2 1
      225 JUMP                             ; [+1]
      226 LOADNIL                          R20
      227 SETTABLEKS                       R20 R19 K60 ["Subtitle"]
      229 GETTABLEKS                       R21 R5 K4 ["kind"]
      231 JUMPIFEQKS                       R21 K5 ["Dialog"] ; [+4]
      233 GETTABLEKS                       R21 R5 K85 ["showNext"]
      235 JUMPIFNOT                        R21 ; [+53]
      236 GETUPVAL                         R20 1
      237 GETTABLEKS                       R20 R20 K7 ["createElement"]
      239 GETUPVAL                         R21 2
      240 DUPTABLE                         R22 K86 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 20}]
      241 GETIMPORT                        R23 K36 [Enum.AutomaticSize.XY]
      243 SETTABLEKS                       R23 R22 K20 ["AutomaticSize"]
      245 GETIMPORT                        R23 K88 [Enum.FillDirection.Horizontal]
      247 SETTABLEKS                       R23 R22 K21 ["Layout"]
      249 MOVE                             R23 R3
      250 CALL                             R23 0 1
      251 SETTABLEKS                       R23 R22 K64 ["LayoutOrder"]
      253 DUPTABLE                         R23 K90 [{"Next"}]
      254 GETUPVAL                         R24 1
      255 GETTABLEKS                       R24 R24 K7 ["createElement"]
      257 GETUPVAL                         R25 6
      258 DUPTABLE                         R26 K93 [{["LayoutOrder"], ["Text"], ["Style"] = "RoundPrimary", ["OnClick"], ["Size"]}]
      259 MOVE                             R27 R3
      260 CALL                             R27 0 1
      261 SETTABLEKS                       R27 R26 K64 ["LayoutOrder"]
      263 GETTABLEKS                       R27 R5 K94 ["nextText"]
      265 JUMPIF                           R27 ; [+5]
      266 LOADK                            R29 K95 ["Tutorial"]
      267 LOADK                            R30 K96 ["Begin"]
      268 NAMECALL                         R27 R2 K97 ["getText"]
      270 CALL                             R27 3 1
      271 SETTABLEKS                       R27 R26 K74 ["Text"]
      273 GETTABLEKS                       R27 R1 K98 ["OnNext"]
      275 SETTABLEKS                       R27 R26 K92 ["OnClick"]
      277 GETIMPORT                        R27 K70 [UDim2.fromOffset]
      279 LOADN                            R28 80
      280 LOADN                            R29 32
      281 CALL                             R27 2 1
      282 SETTABLEKS                       R27 R26 K67 ["Size"]
      284 CALL                             R24 2 1
      285 SETTABLEKS                       R24 R23 K89 ["Next"]
      287 CALL                             R20 3 1
      288 JUMP                             ; [+1]
      289 LOADNIL                          R20
      290 SETTABLEKS                       R20 R19 K61 ["ButtonRow"]
      292 CALL                             R16 3 1
      293 SETTABLEKS                       R16 R15 K46 ["Hint"]
      295 CALL                             R12 3 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R12
      298 SETTABLEKS                       R12 R11 K12 ["Content"]
      300 MOVE                             R12 R4
      301 JUMPIFNOT                        R12 ; [+111]
      302 GETUPVAL                         R12 1
      303 GETTABLEKS                       R12 R12 K7 ["createElement"]
      305 GETUPVAL                         R13 2
      306 DUPTABLE                         R14 K101 [{["AnchorPoint"], ["AutomaticSize"], ["BackgroundTransparency"] = 0.05, ["Layout"], ["Position"], ["Padding"] = 5, ["Spacing"] = 10, ["Size"], ["Style"] = "Box"}]
      307 GETIMPORT                        R15 K32 [Vector2.new]
      309 LOADN                            R16 0
      310 LOADN                            R17 1
      311 CALL                             R15 2 1
      312 SETTABLEKS                       R15 R14 K17 ["AnchorPoint"]
      314 GETIMPORT                        R15 K103 [Enum.AutomaticSize.Y]
      316 SETTABLEKS                       R15 R14 K20 ["AutomaticSize"]
      318 GETIMPORT                        R15 K88 [Enum.FillDirection.Horizontal]
      320 SETTABLEKS                       R15 R14 K21 ["Layout"]
      322 GETIMPORT                        R15 K42 [UDim2.fromScale]
      324 LOADN                            R16 0
      325 LOADN                            R17 1
      326 CALL                             R15 2 1
      327 SETTABLEKS                       R15 R14 K28 ["Position"]
      329 GETIMPORT                        R15 K42 [UDim2.fromScale]
      331 LOADN                            R16 1
      332 LOADN                            R17 0
      333 CALL                             R15 2 1
      334 SETTABLEKS                       R15 R14 K67 ["Size"]
      336 DUPTABLE                         R15 K107 [{"Name", "Progress", "Skip"}]
      337 GETUPVAL                         R16 1
      338 GETTABLEKS                       R16 R16 K7 ["createElement"]
      340 GETUPVAL                         R17 5
      341 DUPTABLE                         R18 K108 [{["AutomaticSize"], ["Style"] = "Subtitle", ["Text"]}]
      342 GETIMPORT                        R19 K36 [Enum.AutomaticSize.XY]
      344 SETTABLEKS                       R19 R18 K20 ["AutomaticSize"]
      346 GETTABLEKS                       R19 R1 K59 ["Title"]
      348 SETTABLEKS                       R19 R18 K74 ["Text"]
      350 CALL                             R16 2 1
      351 SETTABLEKS                       R16 R15 K104 ["Name"]
      353 GETUPVAL                         R16 1
      354 GETTABLEKS                       R16 R16 K7 ["createElement"]
      356 GETUPVAL                         R17 7
      357 DUPTABLE                         R18 K109 [{"LayoutOrder", "Progress", "Size"}]
      358 MOVE                             R19 R3
      359 CALL                             R19 0 1
      360 SETTABLEKS                       R19 R18 K64 ["LayoutOrder"]
      362 GETTABLEKS                       R21 R4 K111 ["currentStep"]
      364 SUBK                             R20 R21 K110 [1]
      365 GETTABLEKS                       R21 R4 K112 ["stepCount"]
      367 DIV                              R19 R20 R21
      368 SETTABLEKS                       R19 R18 K105 ["Progress"]
      370 GETIMPORT                        R19 K43 [UDim2.new]
      372 LOADN                            R20 1
      373 LOADN                            R21 -300
      374 LOADN                            R22 0
      375 LOADN                            R23 20
      376 CALL                             R19 4 1
      377 SETTABLEKS                       R19 R18 K67 ["Size"]
      379 CALL                             R16 2 1
      380 SETTABLEKS                       R16 R15 K105 ["Progress"]
      382 GETUPVAL                         R16 1
      383 GETTABLEKS                       R16 R16 K7 ["createElement"]
      385 GETUPVAL                         R17 6
      386 DUPTABLE                         R18 K114 [{["LayoutOrder"], ["Text"], ["Style"] = "Round", ["OnClick"], ["Size"]}]
      387 MOVE                             R19 R3
      388 CALL                             R19 0 1
      389 SETTABLEKS                       R19 R18 K64 ["LayoutOrder"]
      391 LOADK                            R21 K95 ["Tutorial"]
      392 LOADK                            R22 K115 ["SkipStep"]
      393 NAMECALL                         R19 R2 K97 ["getText"]
      395 CALL                             R19 3 1
      396 SETTABLEKS                       R19 R18 K74 ["Text"]
      398 GETTABLEKS                       R19 R1 K116 ["OnSkip"]
      400 SETTABLEKS                       R19 R18 K92 ["OnClick"]
      402 GETIMPORT                        R19 K70 [UDim2.fromOffset]
      404 LOADN                            R20 80
      405 LOADN                            R21 32
      406 CALL                             R19 2 1
      407 SETTABLEKS                       R19 R18 K67 ["Size"]
      409 CALL                             R16 2 1
      410 SETTABLEKS                       R16 R15 K106 ["Skip"]
      412 CALL                             R12 3 1
      413 SETTABLEKS                       R12 R11 K13 ["ProgressRow"]
      415 CALL                             R8 3 -1
      416 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["CoreGui"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETTABLEKS                       R6 R4 K14 ["Stylizer"]
       35 GETTABLEKS                       R7 R4 K15 ["Localization"]
       37 GETIMPORT                        R8 K4 [require]
       39 GETTABLEKS                       R9 R0 K16 ["Src"]
       41 GETTABLEKS                       R9 R9 K17 ["Components"]
       43 GETTABLEKS                       R9 R9 K18 ["HintKeys"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETTABLEKS                       R10 R0 K16 ["Src"]
       50 GETTABLEKS                       R10 R10 K19 ["Util"]
       52 GETTABLEKS                       R10 R10 K20 ["counter"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R2 K21 ["UI"]
       57 GETTABLEKS                       R11 R10 K22 ["Button"]
       59 GETTABLEKS                       R12 R10 K23 ["Image"]
       61 GETTABLEKS                       R13 R10 K24 ["LoadingBar"]
       63 GETTABLEKS                       R14 R10 K25 ["Pane"]
       65 GETTABLEKS                       R15 R10 K26 ["TextLabel"]
       67 GETTABLEKS                       R16 R1 K27 ["PureComponent"]
       69 LOADK                            R18 K28 ["HintBar"]
       70 NAMECALL                         R16 R16 K29 ["extend"]
       72 CALL                             R16 2 1
       73 DUPCLOSURE                       R17 K30 [PROTO_0]
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R17 R16 K31 ["init"]
       77 DUPCLOSURE                       R17 K32 [PROTO_1]
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R17 R16 K33 ["didMount"]
       81 DUPCLOSURE                       R17 K34 [PROTO_2]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R13
       90 SETTABLEKS                       R17 R16 K35 ["render"]
       92 MOVE                             R17 R5
       93 DUPTABLE                         R18 K36 [{"Localization", "Stylizer"}]
       94 SETTABLEKS                       R7 R18 K15 ["Localization"]
       96 SETTABLEKS                       R6 R18 K14 ["Stylizer"]
       98 CALL                             R17 1 1
       99 MOVE                             R18 R16
      100 CALL                             R17 1 1
      101 MOVE                             R16 R17
      102 RETURN                           R16 1
