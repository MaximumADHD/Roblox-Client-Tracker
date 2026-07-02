PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Clone"]
       11 CALL                             R7 1 1
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 CALL                             R8 1 0
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-8]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = False, ["reasons"]}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K2 ["reasons"]
        5 NAMECALL                         R0 R0 K4 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K1 [{"onFinish"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["props"]
        6 GETTABLEKS                       R5 R5 K3 ["nextScreen"]
        8 SETTABLEKS                       R5 R4 K0 ["onFinish"]
       10 NAMECALL                         R2 R2 K4 ["setState"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K1 [{"onFinish"}]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R5 R4 K0 ["onFinish"]
       21 NAMECALL                         R2 R2 K4 ["setState"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K4 [{[1] = False, ["isLoading"] = True}]
        1 SETTABLEKS                       R2 R0 K5 ["state"]
        3 DUPCLOSURE                       R2 K6 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 GETUPVAL                         R3 1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R3 R3 K7 ["HasInternalPermission"]
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+57]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K8 ["isCatalogAsset"]
       15 GETTABLEKS                       R5 R0 K9 ["props"]
       17 GETTABLEKS                       R5 R5 K10 ["assetTypeEnum"]
       19 CALL                             R4 1 1
       20 JUMPIFNOT                        R4 ; [+48]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R0
       23 GETIMPORT                        R5 K14 [Enum.AssetType.DynamicHead]
       25 GETTABLEKS                       R6 R0 K9 ["props"]
       27 GETTABLEKS                       R6 R6 K10 ["assetTypeEnum"]
       29 JUMPIFNOTEQ                      R5 R6 ; [+20]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K15 ["validateAsyncMeshPartFormat"]
       34 MOVE                             R6 R2
       35 GETTABLEKS                       R7 R0 K9 ["props"]
       37 GETTABLEKS                       R7 R7 K16 ["instances"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R0 K9 ["props"]
       42 GETTABLEKS                       R7 R7 K10 ["assetTypeEnum"]
       44 MOVE                             R8 R4
       45 LOADB                            R9 0
       46 LOADB                            R10 0
       47 LOADNIL                          R11
       48 CALL                             R5 6 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K17 ["validateAsync"]
       53 MOVE                             R6 R2
       54 GETTABLEKS                       R7 R0 K9 ["props"]
       56 GETTABLEKS                       R7 R7 K16 ["instances"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R0 K9 ["props"]
       61 GETTABLEKS                       R7 R7 K10 ["assetTypeEnum"]
       63 MOVE                             R8 R4
       64 LOADB                            R9 0
       65 LOADB                            R10 0
       66 LOADNIL                          R11
       67 CALL                             R5 6 0
       68 RETURN                           R0 0
       69 GETTABLEKS                       R4 R0 K9 ["props"]
       71 GETTABLEKS                       R4 R4 K18 ["nextScreen"]
       73 CALL                             R4 0 0
       74 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 LOADK                            R5 K3 ["Reason:\n"]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOT                        R7 ; [+12]
        9 GETIMPORT                        R6 K6 [table.concat]
       11 GETTABLEKS                       R7 R0 K1 ["state"]
       13 GETTABLEKS                       R7 R7 K7 ["reasons"]
       15 JUMPIF                           R7 ; [+2]
       16 NEWTABLE                         R7 0 0
       18 LOADK                            R8 K8 ["\n\n"]
       19 CALL                             R6 2 1
       20 JUMP                             ; [+11]
       21 GETIMPORT                        R6 K6 [table.concat]
       23 GETTABLEKS                       R7 R0 K1 ["state"]
       25 GETTABLEKS                       R7 R7 K7 ["reasons"]
       27 JUMPIF                           R7 ; [+2]
       28 NEWTABLE                         R7 0 0
       30 LOADK                            R8 K9 ["\n"]
       31 CALL                             R6 2 1
       32 CONCAT                           R4 R5 R6
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K10 ["createElement"]
       36 LOADK                            R6 K11 ["Frame"]
       37 DUPTABLE                         R7 K17 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
       38 GETTABLEKS                       R8 R3 K18 ["typeValidation"]
       40 GETTABLEKS                       R8 R8 K19 ["background"]
       42 SETTABLEKS                       R8 R7 K12 ["BackgroundColor3"]
       44 GETTABLEKS                       R8 R1 K16 ["Size"]
       46 SETTABLEKS                       R8 R7 K16 ["Size"]
       48 DUPTABLE                         R8 K24 [{"Preview", "LoadingBar", "LoadingResult", "Footer"}]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K10 ["createElement"]
       52 GETUPVAL                         R10 2
       53 DUPTABLE                         R11 K30 [{["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"]}]
       54 GETIMPORT                        R12 K33 [UDim2.new]
       56 LOADK                            R13 K34 [0.5]
       57 LOADN                            R14 -75
       58 LOADN                            R15 0
       59 LOADN                            R16 48
       60 CALL                             R12 4 1
       61 SETTABLEKS                       R12 R11 K29 ["Position"]
       63 GETIMPORT                        R12 K33 [UDim2.new]
       65 LOADN                            R13 0
       66 LOADN                            R14 150
       67 LOADN                            R15 0
       68 LOADN                            R16 186
       69 CALL                             R12 4 1
       70 SETTABLEKS                       R12 R11 K16 ["Size"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K20 ["Preview"]
       75 GETTABLEKS                       R9 R0 K1 ["state"]
       77 GETTABLEKS                       R9 R9 K35 ["isLoading"]
       79 JUMPIFNOT                        R9 ; [+28]
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R9 R9 K10 ["createElement"]
       83 GETUPVAL                         R10 3
       84 DUPTABLE                         R11 K42 [{["loadingText"] = "Validating", ["loadingTime"] = 0.5, ["holdPercent"] = 0.92, ["Size"], ["Position"], ["onFinish"]}]
       85 GETIMPORT                        R12 K33 [UDim2.new]
       87 LOADN                            R13 0
       88 LOADN                            R14 400
       89 LOADN                            R15 0
       90 LOADN                            R16 6
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K16 ["Size"]
       94 GETIMPORT                        R12 K33 [UDim2.new]
       96 LOADK                            R13 K34 [0.5]
       97 LOADN                            R14 -200
       98 LOADN                            R15 0
       99 LOADN                            R16 314
      100 CALL                             R12 4 1
      101 SETTABLEKS                       R12 R11 K29 ["Position"]
      103 GETTABLEKS                       R12 R2 K41 ["onFinish"]
      105 SETTABLEKS                       R12 R11 K41 ["onFinish"]
      107 CALL                             R9 2 1
      108 SETTABLEKS                       R9 R8 K21 ["LoadingBar"]
      110 GETTABLEKS                       R10 R0 K1 ["state"]
      112 GETTABLEKS                       R10 R10 K35 ["isLoading"]
      114 NOT                              R9 R10
      115 JUMPIFNOT                        R9 ; [+226]
      116 GETUPVAL                         R9 1
      117 GETTABLEKS                       R9 R9 K10 ["createElement"]
      119 LOADK                            R10 K11 ["Frame"]
      120 DUPTABLE                         R11 K44 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      121 GETIMPORT                        R12 K33 [UDim2.new]
      123 LOADN                            R13 0
      124 LOADN                            R14 0
      125 LOADN                            R15 0
      126 LOADN                            R16 279
      127 CALL                             R12 4 1
      128 SETTABLEKS                       R12 R11 K29 ["Position"]
      130 GETIMPORT                        R12 K33 [UDim2.new]
      132 LOADN                            R13 1
      133 LOADN                            R14 0
      134 LOADN                            R15 1
      135 LOADN                            R16 -279
      136 CALL                             R12 4 1
      137 SETTABLEKS                       R12 R11 K16 ["Size"]
      139 DUPTABLE                         R12 K48 [{"Title", "Reason", "ScrollingFrame"}]
      140 GETUPVAL                         R13 1
      141 GETTABLEKS                       R13 R13 K10 ["createElement"]
      143 LOADK                            R14 K49 ["TextLabel"]
      144 DUPTABLE                         R15 K57 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"] = "Validation Failed", ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      145 GETUPVAL                         R16 4
      146 GETTABLEKS                       R16 R16 K58 ["FONT"]
      148 SETTABLEKS                       R16 R15 K50 ["Font"]
      150 GETIMPORT                        R16 K33 [UDim2.new]
      152 LOADK                            R17 K34 [0.5]
      153 LOADN                            R18 -200
      154 LOADN                            R19 0
      155 LOADN                            R20 0
      156 CALL                             R16 4 1
      157 SETTABLEKS                       R16 R15 K29 ["Position"]
      159 GETIMPORT                        R16 K33 [UDim2.new]
      161 LOADN                            R17 0
      162 LOADN                            R18 400
      163 LOADN                            R19 0
      164 LOADN                            R20 36
      165 CALL                             R16 4 1
      166 SETTABLEKS                       R16 R15 K16 ["Size"]
      168 GETTABLEKS                       R16 R3 K59 ["loading"]
      170 GETTABLEKS                       R16 R16 K60 ["text"]
      172 SETTABLEKS                       R16 R15 K53 ["TextColor3"]
      174 GETUPVAL                         R16 4
      175 GETTABLEKS                       R16 R16 K61 ["FONT_SIZE_TITLE"]
      177 SETTABLEKS                       R16 R15 K54 ["TextSize"]
      179 GETIMPORT                        R16 K64 [Enum.TextXAlignment.Center]
      181 SETTABLEKS                       R16 R15 K55 ["TextXAlignment"]
      183 GETIMPORT                        R16 K65 [Enum.TextYAlignment.Center]
      185 SETTABLEKS                       R16 R15 K56 ["TextYAlignment"]
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K45 ["Title"]
      190 GETUPVAL                         R14 0
      191 NOT                              R13 R14
      192 JUMPIFNOT                        R13 ; [+52]
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R13 R13 K10 ["createElement"]
      196 LOADK                            R14 K49 ["TextLabel"]
      197 DUPTABLE                         R15 K68 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      198 GETUPVAL                         R16 4
      199 GETTABLEKS                       R16 R16 K58 ["FONT"]
      201 SETTABLEKS                       R16 R15 K50 ["Font"]
      203 GETIMPORT                        R16 K33 [UDim2.new]
      205 LOADK                            R17 K34 [0.5]
      206 GETUPVAL                         R20 5
      207 MINUS                            R19 R20
      208 DIVK                             R18 R19 K69 [2]
      209 LOADN                            R19 0
      210 LOADN                            R20 49
      211 CALL                             R16 4 1
      212 SETTABLEKS                       R16 R15 K29 ["Position"]
      214 GETIMPORT                        R16 K33 [UDim2.new]
      216 LOADN                            R17 0
      217 GETUPVAL                         R18 5
      218 LOADN                            R19 0
      219 GETUPVAL                         R20 6
      220 CALL                             R16 4 1
      221 SETTABLEKS                       R16 R15 K16 ["Size"]
      223 SETTABLEKS                       R4 R15 K51 ["Text"]
      225 GETTABLEKS                       R16 R3 K59 ["loading"]
      227 GETTABLEKS                       R16 R16 K60 ["text"]
      229 SETTABLEKS                       R16 R15 K53 ["TextColor3"]
      231 GETUPVAL                         R16 4
      232 GETTABLEKS                       R16 R16 K70 ["FONT_SIZE_MEDIUM"]
      234 SETTABLEKS                       R16 R15 K54 ["TextSize"]
      236 GETIMPORT                        R16 K64 [Enum.TextXAlignment.Center]
      238 SETTABLEKS                       R16 R15 K55 ["TextXAlignment"]
      240 GETIMPORT                        R16 K72 [Enum.TextYAlignment.Top]
      242 SETTABLEKS                       R16 R15 K56 ["TextYAlignment"]
      244 CALL                             R13 2 1
      245 SETTABLEKS                       R13 R12 K46 ["Reason"]
      247 GETUPVAL                         R13 0
      248 JUMPIFNOT                        R13 ; [+90]
      249 GETUPVAL                         R13 1
      250 GETTABLEKS                       R13 R13 K10 ["createElement"]
      252 GETUPVAL                         R14 7
      253 DUPTABLE                         R15 K74 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["CanvasSize"]}]
      254 GETIMPORT                        R16 K33 [UDim2.new]
      256 LOADK                            R17 K34 [0.5]
      257 GETUPVAL                         R20 5
      258 MINUS                            R19 R20
      259 DIVK                             R18 R19 K69 [2]
      260 LOADN                            R19 0
      261 LOADN                            R20 49
      262 CALL                             R16 4 1
      263 SETTABLEKS                       R16 R15 K29 ["Position"]
      265 GETIMPORT                        R16 K33 [UDim2.new]
      267 LOADN                            R17 0
      268 GETUPVAL                         R18 5
      269 LOADN                            R19 1
      270 LOADN                            R20 -111
      271 CALL                             R16 4 1
      272 SETTABLEKS                       R16 R15 K16 ["Size"]
      274 GETIMPORT                        R16 K33 [UDim2.new]
      276 LOADN                            R17 0
      277 GETUPVAL                         R18 5
      278 LOADN                            R19 0
      279 GETUPVAL                         R20 6
      280 CALL                             R16 4 1
      281 SETTABLEKS                       R16 R15 K73 ["CanvasSize"]
      283 DUPTABLE                         R16 K75 [{"Reason"}]
      284 GETUPVAL                         R17 1
      285 GETTABLEKS                       R17 R17 K10 ["createElement"]
      287 LOADK                            R18 K49 ["TextLabel"]
      288 DUPTABLE                         R19 K68 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      289 GETUPVAL                         R20 4
      290 GETTABLEKS                       R20 R20 K58 ["FONT"]
      292 SETTABLEKS                       R20 R19 K50 ["Font"]
      294 GETIMPORT                        R20 K33 [UDim2.new]
      296 LOADK                            R21 K34 [0.5]
      297 GETUPVAL                         R24 5
      298 MINUS                            R23 R24
      299 DIVK                             R22 R23 K69 [2]
      300 LOADN                            R23 0
      301 LOADN                            R24 49
      302 CALL                             R20 4 1
      303 SETTABLEKS                       R20 R19 K29 ["Position"]
      305 GETIMPORT                        R20 K33 [UDim2.new]
      307 LOADN                            R21 0
      308 GETUPVAL                         R22 5
      309 LOADN                            R23 0
      310 GETUPVAL                         R24 6
      311 CALL                             R20 4 1
      312 SETTABLEKS                       R20 R19 K16 ["Size"]
      314 SETTABLEKS                       R4 R19 K51 ["Text"]
      316 GETTABLEKS                       R20 R3 K59 ["loading"]
      318 GETTABLEKS                       R20 R20 K60 ["text"]
      320 SETTABLEKS                       R20 R19 K53 ["TextColor3"]
      322 GETUPVAL                         R20 4
      323 GETTABLEKS                       R20 R20 K70 ["FONT_SIZE_MEDIUM"]
      325 SETTABLEKS                       R20 R19 K54 ["TextSize"]
      327 GETIMPORT                        R20 K77 [Enum.TextXAlignment.Left]
      329 SETTABLEKS                       R20 R19 K55 ["TextXAlignment"]
      331 GETIMPORT                        R20 K72 [Enum.TextYAlignment.Top]
      333 SETTABLEKS                       R20 R19 K56 ["TextYAlignment"]
      335 CALL                             R17 2 1
      336 SETTABLEKS                       R17 R16 K46 ["Reason"]
      338 CALL                             R13 3 1
      339 SETTABLEKS                       R13 R12 K47 ["ScrollingFrame"]
      341 CALL                             R9 3 1
      342 SETTABLEKS                       R9 R8 K22 ["LoadingResult"]
      344 GETTABLEKS                       R10 R0 K1 ["state"]
      346 GETTABLEKS                       R10 R10 K35 ["isLoading"]
      348 NOT                              R9 R10
      349 JUMPIFNOT                        R9 ; [+55]
      350 GETUPVAL                         R9 1
      351 GETTABLEKS                       R9 R9 K10 ["createElement"]
      353 LOADK                            R10 K11 ["Frame"]
      354 DUPTABLE                         R11 K78 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      355 GETIMPORT                        R12 K33 [UDim2.new]
      357 LOADN                            R13 0
      358 LOADN                            R14 0
      359 LOADN                            R15 1
      360 LOADN                            R16 -62
      361 CALL                             R12 4 1
      362 SETTABLEKS                       R12 R11 K29 ["Position"]
      364 GETIMPORT                        R12 K33 [UDim2.new]
      366 LOADN                            R13 1
      367 LOADN                            R14 0
      368 LOADN                            R15 0
      369 LOADN                            R16 62
      370 CALL                             R12 4 1
      371 SETTABLEKS                       R12 R11 K16 ["Size"]
      373 DUPTABLE                         R12 K80 [{"CloseButton"}]
      374 GETUPVAL                         R13 1
      375 GETTABLEKS                       R13 R13 K10 ["createElement"]
      377 GETUPVAL                         R14 8
      378 DUPTABLE                         R15 K85 [{["onClick"], ["titleText"] = "Close", ["LayoutOrder"] = 0, ["Position"], ["Size"]}]
      379 GETTABLEKS                       R16 R1 K86 ["onClose"]
      381 SETTABLEKS                       R16 R15 K81 ["onClick"]
      383 GETIMPORT                        R16 K33 [UDim2.new]
      385 LOADK                            R17 K34 [0.5]
      386 LOADN                            R18 -60
      387 LOADK                            R19 K34 [0.5]
      388 LOADN                            R20 -16
      389 CALL                             R16 4 1
      390 SETTABLEKS                       R16 R15 K29 ["Position"]
      392 GETIMPORT                        R16 K33 [UDim2.new]
      394 LOADN                            R17 0
      395 LOADN                            R18 120
      396 LOADN                            R19 0
      397 LOADN                            R20 32
      398 CALL                             R16 4 1
      399 SETTABLEKS                       R16 R15 K16 ["Size"]
      401 CALL                             R13 2 1
      402 SETTABLEKS                       R13 R12 K79 ["CloseButton"]
      404 CALL                             R9 3 1
      405 SETTABLEKS                       R9 R8 K23 ["Footer"]
      407 CALL                             R5 3 -1
      408 RETURN                           R5 -1

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K2 [{"instances", "assetTypeEnum"}]
        6 GETTABLEKS                       R3 R0 K0 ["instances"]
        8 SETTABLEKS                       R3 R2 K0 ["instances"]
       10 GETTABLEKS                       R3 R0 K1 ["assetTypeEnum"]
       12 SETTABLEKS                       R3 R2 K1 ["assetTypeEnum"]
       14 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"nextScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["nextScreen"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DebugDisableLocalUGCValidation"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["ToolboxAdjustValidationReasonSize"]
       16 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K8 [script]
       21 GETTABLEKS                       R3 R3 K9 ["Parent"]
       23 GETTABLEKS                       R3 R3 K9 ["Parent"]
       25 GETTABLEKS                       R3 R3 K9 ["Parent"]
       27 GETTABLEKS                       R3 R3 K9 ["Parent"]
       29 GETTABLEKS                       R4 R3 K10 ["Packages"]
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Roact"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K12 [require]
       38 GETTABLEKS                       R7 R4 K14 ["RoactRodux"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K12 [require]
       43 GETTABLEKS                       R8 R4 K15 ["Framework"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K16 ["UI"]
       48 GETTABLEKS                       R9 R8 K17 ["ScrollingFrame"]
       50 GETTABLEKS                       R10 R3 K18 ["Src"]
       52 GETTABLEKS                       R10 R10 K19 ["Util"]
       54 GETIMPORT                        R11 K12 [require]
       56 GETTABLEKS                       R12 R10 K20 ["Constants"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K12 [require]
       61 GETTABLEKS                       R13 R10 K21 ["AssetConfigConstants"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K12 [require]
       66 GETTABLEKS                       R14 R10 K22 ["AssetConfigUtil"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K12 [require]
       71 GETTABLEKS                       R15 R10 K23 ["fixUpPreValidation"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K12 [require]
       76 GETTABLEKS                       R16 R10 K24 ["getUGCValidationRestrictedUserTable"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K12 [require]
       81 GETTABLEKS                       R17 R4 K25 ["UGCValidation"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K12 [require]
       86 GETTABLEKS                       R18 R4 K15 ["Framework"]
       88 CALL                             R17 1 1
       89 GETTABLEKS                       R17 R17 K26 ["ContextServices"]
       91 GETTABLEKS                       R18 R17 K27 ["withContext"]
       93 GETTABLEKS                       R19 R3 K18 ["Src"]
       95 GETTABLEKS                       R19 R19 K28 ["Actions"]
       97 GETIMPORT                        R20 K12 [require]
       99 GETTABLEKS                       R21 R19 K29 ["SetCurrentScreen"]
      101 CALL                             R20 1 1
      102 GETTABLEKS                       R21 R3 K18 ["Src"]
      104 GETTABLEKS                       R21 R21 K30 ["Components"]
      106 GETIMPORT                        R22 K12 [require]
      108 GETTABLEKS                       R23 R21 K31 ["AssetConfiguration"]
      110 GETTABLEKS                       R23 R23 K32 ["LoadingBarWrapper"]
      112 CALL                             R22 1 1
      113 GETIMPORT                        R23 K12 [require]
      115 GETTABLEKS                       R24 R21 K31 ["AssetConfiguration"]
      117 GETTABLEKS                       R24 R24 K33 ["AssetThumbnailPreview"]
      119 CALL                             R23 1 1
      120 GETIMPORT                        R24 K12 [require]
      122 GETTABLEKS                       R25 R21 K34 ["NavButton"]
      124 CALL                             R24 1 1
      125 JUMPIFNOT                        R2 ; [+2]
      126 LOADN                            R25 600
      127 JUMP                             ; [+1]
      128 LOADN                            R25 400
      129 JUMPIFNOT                        R2 ; [+2]
      130 LOADN                            R26 400
      131 JUMP                             ; [+1]
      132 LOADN                            R26 72
      133 GETTABLEKS                       R27 R5 K35 ["PureComponent"]
      135 LOADK                            R29 K36 ["AssetValidation"]
      136 NAMECALL                         R27 R27 K37 ["extend"]
      138 CALL                             R27 2 1
      139 DUPCLOSURE                       R28 K38 [PROTO_3]
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R16
      145 SETTABLEKS                       R28 R27 K39 ["init"]
      147 DUPCLOSURE                       R28 K40 [PROTO_4]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R23
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R26
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R24
      157 SETTABLEKS                       R28 R27 K41 ["render"]
      159 DUPCLOSURE                       R28 K42 [PROTO_5]
      160 DUPCLOSURE                       R29 K43 [PROTO_7]
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R12
      163 MOVE                             R30 R18
      164 DUPTABLE                         R31 K45 [{"Stylizer"}]
      165 GETTABLEKS                       R32 R17 K44 ["Stylizer"]
      167 SETTABLEKS                       R32 R31 K44 ["Stylizer"]
      169 CALL                             R30 1 1
      170 MOVE                             R31 R27
      171 CALL                             R30 1 1
      172 MOVE                             R27 R30
      173 GETTABLEKS                       R30 R6 K46 ["connect"]
      175 MOVE                             R31 R28
      176 MOVE                             R32 R29
      177 CALL                             R30 2 1
      178 MOVE                             R31 R27
      179 CALL                             R30 1 -1
      180 RETURN                           R30 -1
