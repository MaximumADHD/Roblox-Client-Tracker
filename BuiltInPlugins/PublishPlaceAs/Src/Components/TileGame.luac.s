PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R1 R0
        3 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        5 LOADK                            R1 K1 ["Private"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["audiencesIncludePublic"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADK                            R1 K3 ["Public"]
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["audiencesAreEditorsOnly"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADK                            R1 K1 ["Private"]
       22 RETURN                           R1 1
       23 LOADK                            R1 K5 ["Limited"]
       24 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = }]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K4 ["isMounted"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isMounted"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K2 [{"assetFetchStatus"}]
        6 SETTABLEKS                       R1 R4 K1 ["assetFetchStatus"]
        8 NAMECALL                         R2 R2 K3 ["setState"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["thumbnailUrl"]
        5 SETLIST                          R0 R1 1 [1]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K1 ["PreloadAsync"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETIMPORT                        R1 K2 [spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Name"]
        8 GETTABLEKS                       R5 R1 K4 ["MinimumAge"]
       10 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       12 ORK                              R6 R7 K5 [0]
       13 LOADNIL                          R7
       14 GETUPVAL                         R8 0
       15 CALL                             R8 0 1
       16 JUMPIFNOT                        R8 ; [+27]
       17 GETTABLEKS                       R8 R1 K7 ["Audiences"]
       19 JUMPIFEQKNIL                     R8 ; [+4]
       21 LENGTH                           R9 R8
       22 JUMPIFNOTEQKN                    R9 K5 [0] ; [+3]
       24 LOADK                            R7 K8 ["Private"]
       25 JUMP                             ; [+20]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K9 ["audiencesIncludePublic"]
       29 MOVE                             R10 R8
       30 CALL                             R9 1 1
       31 JUMPIFNOT                        R9 ; [+2]
       32 LOADK                            R7 K10 ["Public"]
       33 JUMP                             ; [+12]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K11 ["audiencesAreEditorsOnly"]
       37 MOVE                             R10 R8
       38 CALL                             R9 1 1
       39 JUMPIFNOT                        R9 ; [+2]
       40 LOADK                            R7 K8 ["Private"]
       41 JUMP                             ; [+4]
       42 LOADK                            R7 K12 ["Limited"]
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R7 R1 K13 ["PrivacyType"]
       46 GETTABLEKS                       R8 R1 K14 ["OnActivated"]
       48 GETTABLEKS                       R9 R1 K15 ["Disabled"]
       50 GETIMPORT                        R10 K18 [string.format]
       52 LOADK                            R11 K19 ["rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i"]
       53 GETTABLEKS                       R12 R1 K20 ["Id"]
       55 LOADN                            R13 150
       56 LOADN                            R14 150
       57 CALL                             R10 4 1
       58 SETTABLEKS                       R10 R0 K21 ["thumbnailUrl"]
       60 GETTABLEKS                       R11 R0 K22 ["state"]
       62 GETTABLEKS                       R11 R11 K23 ["assetFetchStatus"]
       64 GETIMPORT                        R12 K27 [Enum.AssetFetchStatus.Success]
       66 JUMPIFEQ                         R11 R12 ; [+2]
       68 LOADB                            R10 0 +1
       69 LOADB                            R10 1
       70 GETTABLEKS                       R11 R2 K28 ["SCREEN_CHOOSE_GAME"]
       72 LOADNIL                          R12
       73 LOADNIL                          R13
       74 LOADNIL                          R14
       75 GETTABLEKS                       R12 R11 K29 ["ICON_SIZE"]
       77 GETTABLEKS                       R15 R11 K30 ["NAME_SIZE"]
       79 ADD                              R13 R12 R15
       80 GETTABLEKS                       R15 R11 K31 ["TILE_HEIGHT"]
       82 SUB                              R14 R15 R13
       83 GETUPVAL                         R15 2
       84 GETTABLEKS                       R15 R15 K32 ["createElement"]
       86 LOADK                            R16 K33 ["ImageButton"]
       87 NEWTABLE                         R17 8 0
       89 LOADN                            R18 1
       90 SETTABLEKS                       R18 R17 K34 ["BackgroundTransparency"]
       92 SETTABLEKS                       R6 R17 K6 ["LayoutOrder"]
       94 LOADN                            R18 0
       95 SETTABLEKS                       R18 R17 K35 ["BorderSizePixel"]
       97 JUMPIFNOT                        R9 ; [+2]
       98 LOADB                            R18 0
       99 JUMP                             ; [+1]
      100 LOADNIL                          R18
      101 SETTABLEKS                       R18 R17 K36 ["Active"]
      103 GETUPVAL                         R18 2
      104 GETTABLEKS                       R18 R18 K37 ["Event"]
      106 GETTABLEKS                       R18 R18 K38 ["Activated"]
      108 SETTABLE                         R8 R17 R18
      109 DUPTABLE                         R18 K42 [{"Icon", "Name", "Separator", "Footer"}]
      110 GETUPVAL                         R19 2
      111 GETTABLEKS                       R19 R19 K32 ["createElement"]
      113 LOADK                            R20 K43 ["ImageLabel"]
      114 DUPTABLE                         R21 K50 [{["Position"], ["Size"], ["Image"], ["ImageColor3"], ["BackgroundColor3"], ["ImageTransparency"], ["BorderSizePixel"] = 0}]
      115 GETIMPORT                        R22 K53 [UDim2.new]
      117 LOADN                            R23 0
      118 LOADN                            R24 0
      119 LOADN                            R25 0
      120 LOADN                            R26 0
      121 CALL                             R22 4 1
      122 SETTABLEKS                       R22 R21 K44 ["Position"]
      124 GETIMPORT                        R22 K53 [UDim2.new]
      126 LOADN                            R23 1
      127 LOADN                            R24 0
      128 LOADN                            R25 0
      129 GETTABLEKS                       R26 R11 K29 ["ICON_SIZE"]
      131 CALL                             R22 4 1
      132 SETTABLEKS                       R22 R21 K45 ["Size"]
      134 JUMPIFNOT                        R10 ; [+3]
      135 GETTABLEKS                       R22 R0 K21 ["thumbnailUrl"]
      137 JUMPIF                           R22 ; [+4]
      138 GETTABLEKS                       R22 R2 K54 ["icons"]
      140 GETTABLEKS                       R22 R22 K55 ["thumbnailPlaceHolder"]
      142 SETTABLEKS                       R22 R21 K46 ["Image"]
      144 JUMPIFNOT                        R10 ; [+7]
      145 GETIMPORT                        R22 K57 [Color3.new]
      147 LOADN                            R23 1
      148 LOADN                            R24 1
      149 LOADN                            R25 1
      150 CALL                             R22 3 1
      151 JUMPIF                           R22 ; [+4]
      152 GETTABLEKS                       R22 R2 K54 ["icons"]
      154 GETTABLEKS                       R22 R22 K58 ["imageColor"]
      156 SETTABLEKS                       R22 R21 K47 ["ImageColor3"]
      158 GETTABLEKS                       R22 R2 K54 ["icons"]
      160 GETTABLEKS                       R22 R22 K59 ["backgroundColor"]
      162 SETTABLEKS                       R22 R21 K48 ["BackgroundColor3"]
      164 JUMPIFNOT                        R9 ; [+2]
      165 LOADK                            R22 K60 [0.6]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R22
      168 SETTABLEKS                       R22 R21 K49 ["ImageTransparency"]
      170 CALL                             R19 2 1
      171 SETTABLEKS                       R19 R18 K39 ["Icon"]
      173 GETUPVAL                         R19 2
      174 GETTABLEKS                       R19 R19 K32 ["createElement"]
      176 LOADK                            R20 K61 ["TextLabel"]
      177 DUPTABLE                         R21 K74 [{["Text"], ["Position"], ["Size"], ["TextWrapped"] = True, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"] = 18, ["Font"], ["TextColor3"], ["TextTransparency"], ["BackgroundTransparency"] = 1}]
      178 SETTABLEKS                       R4 R21 K62 ["Text"]
      180 GETIMPORT                        R22 K76 [UDim2.fromOffset]
      182 LOADN                            R23 0
      183 MOVE                             R24 R12
      184 CALL                             R22 2 1
      185 SETTABLEKS                       R22 R21 K44 ["Position"]
      187 GETIMPORT                        R22 K53 [UDim2.new]
      189 LOADN                            R23 1
      190 LOADN                            R24 0
      191 LOADN                            R25 0
      192 GETTABLEKS                       R26 R11 K30 ["NAME_SIZE"]
      194 CALL                             R22 4 1
      195 SETTABLEKS                       R22 R21 K45 ["Size"]
      197 GETIMPORT                        R22 K78 [Enum.TextTruncate.AtEnd]
      199 SETTABLEKS                       R22 R21 K65 ["TextTruncate"]
      201 GETIMPORT                        R22 K80 [Enum.TextXAlignment.Left]
      203 SETTABLEKS                       R22 R21 K66 ["TextXAlignment"]
      205 GETIMPORT                        R22 K82 [Enum.TextYAlignment.Top]
      207 SETTABLEKS                       R22 R21 K67 ["TextYAlignment"]
      209 GETTABLEKS                       R22 R2 K83 ["font"]
      211 SETTABLEKS                       R22 R21 K70 ["Font"]
      213 GETTABLEKS                       R22 R2 K84 ["textColor"]
      215 SETTABLEKS                       R22 R21 K71 ["TextColor3"]
      217 JUMPIFNOT                        R9 ; [+2]
      218 LOADK                            R22 K60 [0.6]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R22
      221 SETTABLEKS                       R22 R21 K72 ["TextTransparency"]
      223 DUPTABLE                         R22 K86 [{"Padding"}]
      224 GETUPVAL                         R23 2
      225 GETTABLEKS                       R23 R23 K32 ["createElement"]
      227 LOADK                            R24 K87 ["UIPadding"]
      228 DUPTABLE                         R25 K92 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      229 GETIMPORT                        R26 K94 [UDim.new]
      231 LOADN                            R27 0
      232 GETTABLEKS                       R28 R11 K95 ["NAME_PADDING"]
      234 CALL                             R26 2 1
      235 SETTABLEKS                       R26 R25 K88 ["PaddingTop"]
      237 GETIMPORT                        R26 K94 [UDim.new]
      239 LOADN                            R27 0
      240 GETTABLEKS                       R28 R11 K95 ["NAME_PADDING"]
      242 CALL                             R26 2 1
      243 SETTABLEKS                       R26 R25 K89 ["PaddingBottom"]
      245 GETIMPORT                        R26 K94 [UDim.new]
      247 LOADN                            R27 0
      248 GETTABLEKS                       R28 R11 K95 ["NAME_PADDING"]
      250 CALL                             R26 2 1
      251 SETTABLEKS                       R26 R25 K90 ["PaddingLeft"]
      253 GETIMPORT                        R26 K94 [UDim.new]
      255 LOADN                            R27 0
      256 GETTABLEKS                       R28 R11 K95 ["NAME_PADDING"]
      258 CALL                             R26 2 1
      259 SETTABLEKS                       R26 R25 K91 ["PaddingRight"]
      261 CALL                             R23 2 1
      262 SETTABLEKS                       R23 R22 K85 ["Padding"]
      264 CALL                             R19 3 1
      265 SETTABLEKS                       R19 R18 K3 ["Name"]
      267 GETUPVAL                         R19 2
      268 GETTABLEKS                       R19 R19 K32 ["createElement"]
      270 GETUPVAL                         R20 3
      271 DUPTABLE                         R21 K96 [{"Position"}]
      272 GETIMPORT                        R22 K53 [UDim2.new]
      274 LOADK                            R23 K97 [0.5]
      275 LOADN                            R24 0
      276 LOADN                            R25 0
      277 MOVE                             R26 R13
      278 CALL                             R22 4 1
      279 SETTABLEKS                       R22 R21 K44 ["Position"]
      281 CALL                             R19 2 1
      282 SETTABLEKS                       R19 R18 K40 ["Separator"]
      284 GETUPVAL                         R19 2
      285 GETTABLEKS                       R19 R19 K32 ["createElement"]
      287 LOADK                            R20 K98 ["Frame"]
      288 DUPTABLE                         R21 K99 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
      289 GETIMPORT                        R22 K53 [UDim2.new]
      291 LOADN                            R23 1
      292 LOADN                            R24 0
      293 LOADN                            R25 0
      294 MOVE                             R26 R14
      295 CALL                             R22 4 1
      296 SETTABLEKS                       R22 R21 K45 ["Size"]
      298 GETIMPORT                        R22 K76 [UDim2.fromOffset]
      300 LOADN                            R23 0
      301 MOVE                             R24 R13
      302 CALL                             R22 2 1
      303 SETTABLEKS                       R22 R21 K44 ["Position"]
      305 DUPTABLE                         R22 K102 [{"Padding", "PrivacyLabel", "AgeGuidelinesLabel"}]
      306 GETUPVAL                         R23 2
      307 GETTABLEKS                       R23 R23 K32 ["createElement"]
      309 LOADK                            R24 K87 ["UIPadding"]
      310 DUPTABLE                         R25 K103 [{"PaddingLeft", "PaddingRight"}]
      311 GETIMPORT                        R26 K94 [UDim.new]
      313 LOADN                            R27 0
      314 GETTABLEKS                       R28 R11 K104 ["FOOTER_SIDE_PADDING"]
      316 CALL                             R26 2 1
      317 SETTABLEKS                       R26 R25 K90 ["PaddingLeft"]
      319 GETIMPORT                        R26 K94 [UDim.new]
      321 LOADN                            R27 0
      322 GETTABLEKS                       R28 R11 K104 ["FOOTER_SIDE_PADDING"]
      324 CALL                             R26 2 1
      325 SETTABLEKS                       R26 R25 K91 ["PaddingRight"]
      327 CALL                             R23 2 1
      328 SETTABLEKS                       R23 R22 K85 ["Padding"]
      330 GETUPVAL                         R23 2
      331 GETTABLEKS                       R23 R23 K32 ["createElement"]
      333 LOADK                            R24 K61 ["TextLabel"]
      334 DUPTABLE                         R25 K107 [{["Text"], ["AnchorPoint"], ["Position"], ["Size"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextSize"] = 14, ["Font"], ["TextColor3"], ["TextTransparency"], ["BackgroundTransparency"] = 1}]
      335 LOADK                            R28 K13 ["PrivacyType"]
      336 MOVE                             R29 R7
      337 NAMECALL                         R26 R3 K108 ["getText"]
      339 CALL                             R26 3 1
      340 SETTABLEKS                       R26 R25 K62 ["Text"]
      342 GETIMPORT                        R26 K110 [Vector2.new]
      344 LOADN                            R27 0
      345 LOADK                            R28 K97 [0.5]
      346 CALL                             R26 2 1
      347 SETTABLEKS                       R26 R25 K105 ["AnchorPoint"]
      349 GETIMPORT                        R26 K112 [UDim2.fromScale]
      351 LOADN                            R27 0
      352 LOADK                            R28 K97 [0.5]
      353 CALL                             R26 2 1
      354 SETTABLEKS                       R26 R25 K44 ["Position"]
      356 GETIMPORT                        R26 K112 [UDim2.fromScale]
      358 LOADN                            R27 1
      359 LOADN                            R28 1
      360 CALL                             R26 2 1
      361 SETTABLEKS                       R26 R25 K45 ["Size"]
      363 GETIMPORT                        R26 K80 [Enum.TextXAlignment.Left]
      365 SETTABLEKS                       R26 R25 K66 ["TextXAlignment"]
      367 GETTABLEKS                       R26 R2 K83 ["font"]
      369 SETTABLEKS                       R26 R25 K70 ["Font"]
      371 JUMPIFEQKS                       R7 K10 ["Public"] ; [+3]
      373 JUMPIFNOTEQKS                    R7 K12 ["Limited"] ; [+6]
      375 GETTABLEKS                       R26 R2 K113 ["successText"]
      377 GETTABLEKS                       R26 R26 K114 ["text"]
      379 JUMPIF                           R26 ; [+2]
      380 GETTABLEKS                       R26 R2 K115 ["dimmerTextColor"]
      382 SETTABLEKS                       R26 R25 K71 ["TextColor3"]
      384 JUMPIFNOT                        R9 ; [+2]
      385 LOADK                            R26 K60 [0.6]
      386 JUMP                             ; [+1]
      387 LOADNIL                          R26
      388 SETTABLEKS                       R26 R25 K72 ["TextTransparency"]
      390 CALL                             R23 2 1
      391 SETTABLEKS                       R23 R22 K100 ["PrivacyLabel"]
      393 JUMPIFNOT                        R5 ; [+94]
      394 GETUPVAL                         R24 4
      395 GETTABLEKS                       R24 R24 K116 ["MINIMUM_AGE"]
      397 JUMPIFNOTLE                      R24 R5 ; [+90]
      399 GETUPVAL                         R23 2
      400 GETTABLEKS                       R23 R23 K32 ["createElement"]
      402 LOADK                            R24 K61 ["TextLabel"]
      403 DUPTABLE                         R25 K119 [{["Text"], ["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["TextSize"] = 12, ["Font"], ["TextColor3"], ["BackgroundColor3"]}]
      404 MOVE                             R27 R5
      405 LOADK                            R28 K120 ["+"]
      406 CONCAT                           R26 R27 R28
      407 SETTABLEKS                       R26 R25 K62 ["Text"]
      409 GETIMPORT                        R26 K110 [Vector2.new]
      411 LOADN                            R27 1
      412 LOADK                            R28 K97 [0.5]
      413 CALL                             R26 2 1
      414 SETTABLEKS                       R26 R25 K105 ["AnchorPoint"]
      416 GETIMPORT                        R26 K112 [UDim2.fromScale]
      418 LOADN                            R27 1
      419 LOADK                            R28 K97 [0.5]
      420 CALL                             R26 2 1
      421 SETTABLEKS                       R26 R25 K44 ["Position"]
      423 GETIMPORT                        R26 K76 [UDim2.fromOffset]
      425 LOADN                            R27 0
      426 LOADN                            R28 20
      427 CALL                             R26 2 1
      428 SETTABLEKS                       R26 R25 K45 ["Size"]
      430 GETIMPORT                        R26 K122 [Enum.AutomaticSize.X]
      432 SETTABLEKS                       R26 R25 K117 ["AutomaticSize"]
      434 GETTABLEKS                       R26 R2 K83 ["font"]
      436 SETTABLEKS                       R26 R25 K70 ["Font"]
      438 GETTABLEKS                       R26 R2 K84 ["textColor"]
      440 SETTABLEKS                       R26 R25 K71 ["TextColor3"]
      442 GETTABLEKS                       R26 R2 K123 ["foregroundColorContrast"]
      444 SETTABLEKS                       R26 R25 K48 ["BackgroundColor3"]
      446 DUPTABLE                         R26 K125 [{"Padding", "Corners"}]
      447 GETUPVAL                         R27 2
      448 GETTABLEKS                       R27 R27 K32 ["createElement"]
      450 LOADK                            R28 K87 ["UIPadding"]
      451 DUPTABLE                         R29 K103 [{"PaddingLeft", "PaddingRight"}]
      452 GETIMPORT                        R30 K94 [UDim.new]
      454 LOADN                            R31 0
      455 GETTABLEKS                       R32 R11 K126 ["GUIDELINE_LABEL_PADDING"]
      457 CALL                             R30 2 1
      458 SETTABLEKS                       R30 R29 K90 ["PaddingLeft"]
      460 GETIMPORT                        R30 K94 [UDim.new]
      462 LOADN                            R31 0
      463 GETTABLEKS                       R32 R11 K126 ["GUIDELINE_LABEL_PADDING"]
      465 CALL                             R30 2 1
      466 SETTABLEKS                       R30 R29 K91 ["PaddingRight"]
      468 CALL                             R27 2 1
      469 SETTABLEKS                       R27 R26 K85 ["Padding"]
      471 GETUPVAL                         R27 2
      472 GETTABLEKS                       R27 R27 K32 ["createElement"]
      474 LOADK                            R28 K127 ["UICorner"]
      475 DUPTABLE                         R29 K129 [{"CornerRadius"}]
      476 GETIMPORT                        R30 K94 [UDim.new]
      478 LOADN                            R31 0
      479 LOADN                            R32 4
      480 CALL                             R30 2 1
      481 SETTABLEKS                       R30 R29 K128 ["CornerRadius"]
      483 CALL                             R27 2 1
      484 SETTABLEKS                       R27 R26 K124 ["Corners"]
      486 CALL                             R23 3 1
      487 JUMP                             ; [+1]
      488 LOADNIL                          R23
      489 SETTABLEKS                       R23 R22 K101 ["AgeGuidelinesLabel"]
      491 CALL                             R19 3 1
      492 SETTABLEKS                       R19 R18 K41 ["Footer"]
      494 CALL                             R15 3 -1
      495 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R3 R3 K9 ["Separator"]
       27 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K11 ["withContext"]
       31 GETIMPORT                        R6 K13 [game]
       33 LOADK                            R8 K14 ["ContentProvider"]
       34 NAMECALL                         R6 R6 K15 ["GetService"]
       36 CALL                             R6 2 1
       37 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       39 LOADK                            R9 K17 ["TileGame"]
       40 NAMECALL                         R7 R7 K18 ["extend"]
       42 CALL                             R7 2 1
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R9 R0 K19 ["Src"]
       47 GETTABLEKS                       R9 R9 K20 ["Resources"]
       49 GETTABLEKS                       R9 R9 K21 ["Constants"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K4 [require]
       54 GETTABLEKS                       R10 R0 K19 ["Src"]
       56 GETTABLEKS                       R10 R10 K22 ["Util"]
       58 GETTABLEKS                       R10 R10 K23 ["AudienceUtils"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K4 [require]
       63 GETTABLEKS                       R11 R0 K19 ["Src"]
       65 GETTABLEKS                       R11 R11 K24 ["Flags"]
       67 GETTABLEKS                       R11 R11 K25 ["getFFlagPublishPlaceAsAudiencesReplacement"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K26 [PROTO_0]
       71 CAPTURE                          VAL R9
       72 DUPCLOSURE                       R12 K27 [PROTO_1]
       73 SETTABLEKS                       R12 R7 K28 ["init"]
       75 DUPCLOSURE                       R12 K29 [PROTO_4]
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R12 R7 K30 ["didMount"]
       79 DUPCLOSURE                       R12 K31 [PROTO_5]
       80 SETTABLEKS                       R12 R7 K32 ["willUnmount"]
       82 DUPCLOSURE                       R12 K33 [PROTO_6]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R8
       88 SETTABLEKS                       R12 R7 K34 ["render"]
       90 MOVE                             R12 R5
       91 DUPTABLE                         R13 K37 [{"Stylizer", "Localization"}]
       92 GETTABLEKS                       R14 R4 K35 ["Stylizer"]
       94 SETTABLEKS                       R14 R13 K35 ["Stylizer"]
       96 GETTABLEKS                       R14 R4 K36 ["Localization"]
       98 SETTABLEKS                       R14 R13 K36 ["Localization"]
      100 CALL                             R12 1 1
      101 MOVE                             R13 R7
      102 CALL                             R12 1 1
      103 MOVE                             R7 R12
      104 RETURN                           R7 1
