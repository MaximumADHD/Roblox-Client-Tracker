PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onGenerate"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onPromptChanged"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onPromptChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["onModelChanged"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["onModelChanged"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 GETTABLEKS                       R4 R0 K4 ["initialPrompt"]
       12 ORK                              R3 R4 K3 [""]
       13 CALL                             R2 1 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K2 ["useState"]
       17 GETTABLEKS                       R5 R0 K5 ["initialModel"]
       19 JUMPIF                           R5 ; [+5]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K6 ["Constants"]
       23 GETTABLEKS                       R5 R5 K7 ["DEFAULT_TEXTURE_GEN_MODEL"]
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K8 ["createNextOrder"]
       29 CALL                             R6 0 1
       30 GETTABLEKS                       R7 R0 K9 ["referenceImage"]
       32 JUMPIFNOT                        R7 ; [+3]
       33 GETTABLEKS                       R8 R7 K10 ["status"]
       35 JUMP                             ; [+1]
       36 LOADK                            R8 K11 ["None"]
       37 JUMPIFEQKNIL                     R7 ; [+6]
       39 JUMPIFNOTEQKS                    R8 K12 ["Ready"] ; [+4]
       41 GETTABLEKS                       R9 R7 K13 ["imageId"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R9
       45 JUMPIFNOTEQKS                    R8 K14 ["Failed"] ; [+5]
       47 JUMPIFNOT                        R7 ; [+3]
       48 GETTABLEKS                       R10 R7 K15 ["errorMessage"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R10
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R11 R11 K16 ["getFFlagTextureGenReferenceImage"]
       55 CALL                             R11 0 1
       56 MOVE                             R12 R11
       57 JUMPIFNOT                        R12 ; [+4]
       58 JUMPIFNOTEQKNIL                  R9 ; [+2]
       60 LOADB                            R12 0 +1
       61 LOADB                            R12 1
       62 GETTABLEKS                       R14 R0 K17 ["disabled"]
       64 JUMPIFNOTEQKB                    R14 TRUE ; [+2]
       66 LOADB                            R13 0 +1
       67 LOADB                            R13 1
       68 MOVE                             R14 R11
       69 JUMPIFNOT                        R14 ; [+4]
       70 JUMPIFEQKS                       R8 K18 ["Loading"] ; [+2]
       72 LOADB                            R14 0 +1
       73 LOADB                            R14 1
       74 LOADB                            R15 1
       75 GETTABLEKS                       R16 R0 K17 ["disabled"]
       77 JUMPIFEQKB                       R16 TRUE ; [+7]
       79 MOVE                             R15 R14
       80 JUMPIF                           R15 ; [+4]
       81 LOADB                            R15 0
       82 JUMPIFNOTEQKS                    R2 K3 [""] ; [+2]
       84 NOT                              R15 R12
       85 GETUPVAL                         R16 0
       86 GETTABLEKS                       R16 R16 K19 ["useCallback"]
       88 NEWCLOSURE                       R17 P0
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 NEWTABLE                         R18 0 4
       95 MOVE                             R19 R15
       96 MOVE                             R20 R2
       97 MOVE                             R21 R4
       98 GETTABLEKS                       R22 R0 K20 ["onGenerate"]
      100 SETLIST                          R18 R19 4 [1]
      102 CALL                             R16 2 1
      103 GETUPVAL                         R17 0
      104 GETTABLEKS                       R17 R17 K21 ["createElement"]
      106 GETUPVAL                         R18 5
      107 GETTABLEKS                       R18 R18 K22 ["View"]
      109 DUPTABLE                         R19 K26 [{["tag"] = "col size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      110 GETTABLEKS                       R20 R0 K25 ["LayoutOrder"]
      112 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      114 DUPTABLE                         R20 K31 [{"Prompt", "ModelSelector", "ReferenceImage", "Generate"}]
      115 GETUPVAL                         R21 0
      116 GETTABLEKS                       R21 R21 K21 ["createElement"]
      118 GETUPVAL                         R22 5
      119 GETTABLEKS                       R22 R22 K32 ["TextInput"]
      121 DUPTABLE                         R23 K40 [{["LayoutOrder"], ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["onReturnPressed"], ["width"], ["size"]}]
      122 MOVE                             R24 R6
      123 CALL                             R24 0 1
      124 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      126 SETTABLEKS                       R2 R23 K34 ["text"]
      128 LOADK                            R26 K41 ["TextureGen"]
      129 LOADK                            R27 K42 ["InputPromptTitle"]
      130 NAMECALL                         R24 R1 K43 ["getText"]
      132 CALL                             R24 3 1
      133 SETTABLEKS                       R24 R23 K35 ["placeholder"]
      135 NEWCLOSURE                       R24 P1
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R24 R23 K36 ["onChanged"]
      140 SETTABLEKS                       R16 R23 K37 ["onReturnPressed"]
      142 GETIMPORT                        R24 K46 [UDim.new]
      144 LOADN                            R25 1
      145 LOADN                            R26 0
      146 CALL                             R24 2 1
      147 SETTABLEKS                       R24 R23 K38 ["width"]
      149 GETUPVAL                         R24 5
      150 GETTABLEKS                       R24 R24 K47 ["Enums"]
      152 GETTABLEKS                       R24 R24 K48 ["InputSize"]
      154 GETTABLEKS                       R24 R24 K49 ["Medium"]
      156 SETTABLEKS                       R24 R23 K39 ["size"]
      158 CALL                             R21 2 1
      159 SETTABLEKS                       R21 R20 K27 ["Prompt"]
      161 GETUPVAL                         R22 4
      162 GETTABLEKS                       R22 R22 K50 ["getFFlagTextureGenModelSelector"]
      164 CALL                             R22 0 1
      165 JUMPIFNOT                        R22 ; [+97]
      166 GETUPVAL                         R21 0
      167 GETTABLEKS                       R21 R21 K21 ["createElement"]
      169 GETUPVAL                         R22 5
      170 GETTABLEKS                       R22 R22 K22 ["View"]
      172 DUPTABLE                         R23 K52 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y gap-small align-y-center"}]
      173 MOVE                             R24 R6
      174 CALL                             R24 0 1
      175 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      177 DUPTABLE                         R24 K55 [{"ModelSelectorLabel", "ModelSelectorControl"}]
      178 GETUPVAL                         R25 0
      179 GETTABLEKS                       R25 R25 K21 ["createElement"]
      181 GETUPVAL                         R26 5
      182 GETTABLEKS                       R26 R26 K56 ["Text"]
      184 DUPTABLE                         R27 K58 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small text-emphasis-muted"}]
      185 MOVE                             R28 R6
      186 CALL                             R28 0 1
      187 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      189 LOADK                            R30 K41 ["TextureGen"]
      190 LOADK                            R31 K59 ["ModelSelectorTitle"]
      191 NAMECALL                         R28 R1 K43 ["getText"]
      193 CALL                             R28 3 1
      194 SETTABLEKS                       R28 R27 K56 ["Text"]
      196 CALL                             R25 2 1
      197 SETTABLEKS                       R25 R24 K53 ["ModelSelectorLabel"]
      199 GETUPVAL                         R25 0
      200 GETTABLEKS                       R25 R25 K21 ["createElement"]
      202 GETUPVAL                         R26 5
      203 GETTABLEKS                       R26 R26 K60 ["SegmentedControl"]
      205 DUPTABLE                         R27 K64 [{"LayoutOrder", "segments", "value", "onActivated", "size"}]
      206 MOVE                             R28 R6
      207 CALL                             R28 0 1
      208 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      210 NEWTABLE                         R28 0 2
      212 DUPTABLE                         R29 K66 [{"id", "text"}]
      213 GETUPVAL                         R30 6
      214 GETTABLEKS                       R30 R30 K67 ["RbxTexture1"]
      216 SETTABLEKS                       R30 R29 K65 ["id"]
      218 LOADK                            R32 K41 ["TextureGen"]
      219 LOADK                            R33 K68 ["ModelFast"]
      220 NAMECALL                         R30 R1 K43 ["getText"]
      222 CALL                             R30 3 1
      223 SETTABLEKS                       R30 R29 K34 ["text"]
      225 DUPTABLE                         R30 K66 [{"id", "text"}]
      226 GETUPVAL                         R31 6
      227 GETTABLEKS                       R31 R31 K69 ["RbxTexture2"]
      229 SETTABLEKS                       R31 R30 K65 ["id"]
      231 LOADK                            R33 K41 ["TextureGen"]
      232 LOADK                            R34 K70 ["ModelQuality"]
      233 NAMECALL                         R31 R1 K43 ["getText"]
      235 CALL                             R31 3 1
      236 SETTABLEKS                       R31 R30 K34 ["text"]
      238 SETLIST                          R28 R29 2 [1]
      240 SETTABLEKS                       R28 R27 K61 ["segments"]
      242 SETTABLEKS                       R4 R27 K62 ["value"]
      244 NEWCLOSURE                       R28 P2
      245 CAPTURE                          VAL R5
      246 CAPTURE                          VAL R0
      247 SETTABLEKS                       R28 R27 K63 ["onActivated"]
      249 GETUPVAL                         R28 5
      250 GETTABLEKS                       R28 R28 K47 ["Enums"]
      252 GETTABLEKS                       R28 R28 K48 ["InputSize"]
      254 GETTABLEKS                       R28 R28 K71 ["Small"]
      256 SETTABLEKS                       R28 R27 K39 ["size"]
      258 CALL                             R25 2 1
      259 SETTABLEKS                       R25 R24 K54 ["ModelSelectorControl"]
      261 CALL                             R21 3 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R21
      264 SETTABLEKS                       R21 R20 K28 ["ModelSelector"]
      266 JUMPIFNOT                        R11 ; [+214]
      267 GETUPVAL                         R21 0
      268 GETTABLEKS                       R21 R21 K21 ["createElement"]
      270 GETUPVAL                         R22 5
      271 GETTABLEKS                       R22 R22 K22 ["View"]
      273 DUPTABLE                         R23 K73 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y gap-xxsmall"}]
      274 MOVE                             R24 R6
      275 CALL                             R24 0 1
      276 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      278 DUPTABLE                         R24 K76 [{"ReferenceImageControls", "ReferenceImageError"}]
      279 GETUPVAL                         R25 0
      280 GETTABLEKS                       R25 R25 K21 ["createElement"]
      282 GETUPVAL                         R26 5
      283 GETTABLEKS                       R26 R26 K22 ["View"]
      285 DUPTABLE                         R27 K52 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y gap-small align-y-center"}]
      286 MOVE                             R28 R6
      287 CALL                             R28 0 1
      288 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      290 DUPTABLE                         R28 K81 [{"ReferenceImageLabel", "ReferenceImagePreview", "RemoveReferenceImageButton", "UploadReferenceImageButton"}]
      291 GETUPVAL                         R29 0
      292 GETTABLEKS                       R29 R29 K21 ["createElement"]
      294 GETUPVAL                         R30 5
      295 GETTABLEKS                       R30 R30 K56 ["Text"]
      297 DUPTABLE                         R31 K58 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small text-emphasis-muted"}]
      298 MOVE                             R32 R6
      299 CALL                             R32 0 1
      300 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      302 GETUPVAL                         R32 7
      303 MOVE                             R33 R1
      304 LOADK                            R34 K41 ["TextureGen"]
      305 LOADK                            R35 K82 ["InputHintImageTitle"]
      306 LOADK                            R36 K83 ["Reference image"]
      307 CALL                             R32 4 1
      308 SETTABLEKS                       R32 R31 K56 ["Text"]
      310 CALL                             R29 2 1
      311 SETTABLEKS                       R29 R28 K77 ["ReferenceImageLabel"]
      313 JUMPIFNOT                        R12 ; [+26]
      314 GETUPVAL                         R29 0
      315 GETTABLEKS                       R29 R29 K21 ["createElement"]
      317 GETUPVAL                         R30 5
      318 GETTABLEKS                       R30 R30 K84 ["Image"]
      320 DUPTABLE                         R31 K88 [{["LayoutOrder"], ["tag"] = "radius-medium", ["Size"], ["ScaleType"], ["Image"]}]
      321 MOVE                             R32 R6
      322 CALL                             R32 0 1
      323 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      325 GETIMPORT                        R32 K91 [UDim2.fromOffset]
      327 LOADN                            R33 48
      328 LOADN                            R34 48
      329 CALL                             R32 2 1
      330 SETTABLEKS                       R32 R31 K86 ["Size"]
      332 GETIMPORT                        R32 K94 [Enum.ScaleType.Crop]
      334 SETTABLEKS                       R32 R31 K87 ["ScaleType"]
      336 SETTABLEKS                       R9 R31 K84 ["Image"]
      338 CALL                             R29 2 1
      339 JUMP                             ; [+1]
      340 LOADNIL                          R29
      341 SETTABLEKS                       R29 R28 K78 ["ReferenceImagePreview"]
      343 JUMPIFNOT                        R12 ; [+52]
      344 GETUPVAL                         R29 0
      345 GETTABLEKS                       R29 R29 K21 ["createElement"]
      347 GETUPVAL                         R30 5
      348 GETTABLEKS                       R30 R30 K95 ["IconButton"]
      350 DUPTABLE                         R31 K103 [{["LayoutOrder"], ["icon"], ["onActivated"], ["isDisabled"], ["size"], ["variant"], ["isCircular"] = True, ["testId"] = "ReferenceImageRemove"}]
      351 MOVE                             R32 R6
      352 CALL                             R32 0 1
      353 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      355 DUPTABLE                         R32 K105 [{"name"}]
      356 GETUPVAL                         R33 5
      357 GETTABLEKS                       R33 R33 K47 ["Enums"]
      359 GETTABLEKS                       R33 R33 K106 ["IconName"]
      361 GETTABLEKS                       R33 R33 K107 ["X"]
      363 SETTABLEKS                       R33 R32 K104 ["name"]
      365 SETTABLEKS                       R32 R31 K96 ["icon"]
      367 GETTABLEKS                       R32 R0 K108 ["onClearReferenceImage"]
      369 JUMPIF                           R32 ; [+1]
      370 GETUPVAL                         R32 8
      371 SETTABLEKS                       R32 R31 K63 ["onActivated"]
      373 NOT                              R32 R13
      374 SETTABLEKS                       R32 R31 K97 ["isDisabled"]
      376 GETUPVAL                         R32 5
      377 GETTABLEKS                       R32 R32 K47 ["Enums"]
      379 GETTABLEKS                       R32 R32 K48 ["InputSize"]
      381 GETTABLEKS                       R32 R32 K71 ["Small"]
      383 SETTABLEKS                       R32 R31 K39 ["size"]
      385 GETUPVAL                         R32 5
      386 GETTABLEKS                       R32 R32 K47 ["Enums"]
      388 GETTABLEKS                       R32 R32 K109 ["ButtonVariant"]
      390 GETTABLEKS                       R32 R32 K110 ["Utility"]
      392 SETTABLEKS                       R32 R31 K98 ["variant"]
      394 CALL                             R29 2 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R29
      397 SETTABLEKS                       R29 R28 K79 ["RemoveReferenceImageButton"]
      399 JUMPIF                           R12 ; [+54]
      400 GETUPVAL                         R29 0
      401 GETTABLEKS                       R29 R29 K21 ["createElement"]
      403 GETUPVAL                         R30 5
      404 GETTABLEKS                       R30 R30 K111 ["Button"]
      406 DUPTABLE                         R31 K114 [{["LayoutOrder"], ["text"], ["onActivated"], ["isLoading"], ["isDisabled"], ["size"], ["variant"], ["testId"] = "ReferenceImageUpload"}]
      407 MOVE                             R32 R6
      408 CALL                             R32 0 1
      409 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      411 GETUPVAL                         R32 7
      412 MOVE                             R33 R1
      413 LOADK                            R34 K84 ["Image"]
      414 LOADK                            R35 K115 ["Upload"]
      415 LOADK                            R36 K115 ["Upload"]
      416 CALL                             R32 4 1
      417 SETTABLEKS                       R32 R31 K34 ["text"]
      419 GETTABLEKS                       R32 R0 K116 ["onPickReferenceImage"]
      421 JUMPIF                           R32 ; [+1]
      422 GETUPVAL                         R32 8
      423 SETTABLEKS                       R32 R31 K63 ["onActivated"]
      425 JUMPIFEQKS                       R8 K18 ["Loading"] ; [+2]
      427 LOADB                            R32 0 +1
      428 LOADB                            R32 1
      429 SETTABLEKS                       R32 R31 K112 ["isLoading"]
      431 NOT                              R32 R13
      432 SETTABLEKS                       R32 R31 K97 ["isDisabled"]
      434 GETUPVAL                         R32 5
      435 GETTABLEKS                       R32 R32 K47 ["Enums"]
      437 GETTABLEKS                       R32 R32 K48 ["InputSize"]
      439 GETTABLEKS                       R32 R32 K71 ["Small"]
      441 SETTABLEKS                       R32 R31 K39 ["size"]
      443 GETUPVAL                         R32 5
      444 GETTABLEKS                       R32 R32 K47 ["Enums"]
      446 GETTABLEKS                       R32 R32 K109 ["ButtonVariant"]
      448 GETTABLEKS                       R32 R32 K117 ["Standard"]
      450 SETTABLEKS                       R32 R31 K98 ["variant"]
      452 CALL                             R29 2 1
      453 JUMP                             ; [+1]
      454 LOADNIL                          R29
      455 SETTABLEKS                       R29 R28 K80 ["UploadReferenceImageButton"]
      457 CALL                             R25 3 1
      458 SETTABLEKS                       R25 R24 K74 ["ReferenceImageControls"]
      460 JUMPIFNOT                        R10 ; [+15]
      461 GETUPVAL                         R25 0
      462 GETTABLEKS                       R25 R25 K21 ["createElement"]
      464 GETUPVAL                         R26 5
      465 GETTABLEKS                       R26 R26 K56 ["Text"]
      467 DUPTABLE                         R27 K119 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert"}]
      468 MOVE                             R28 R6
      469 CALL                             R28 0 1
      470 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      472 SETTABLEKS                       R10 R27 K56 ["Text"]
      474 CALL                             R25 2 1
      475 JUMP                             ; [+1]
      476 LOADNIL                          R25
      477 SETTABLEKS                       R25 R24 K75 ["ReferenceImageError"]
      479 CALL                             R21 3 1
      480 JUMP                             ; [+1]
      481 LOADNIL                          R21
      482 SETTABLEKS                       R21 R20 K29 ["ReferenceImage"]
      484 GETUPVAL                         R21 0
      485 GETTABLEKS                       R21 R21 K21 ["createElement"]
      487 GETUPVAL                         R22 5
      488 GETTABLEKS                       R22 R22 K111 ["Button"]
      490 DUPTABLE                         R23 K120 [{"LayoutOrder", "text", "onActivated", "isDisabled", "variant", "size", "width"}]
      491 MOVE                             R24 R6
      492 CALL                             R24 0 1
      493 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      495 LOADK                            R26 K41 ["TextureGen"]
      496 LOADK                            R27 K121 ["InputGenerateTexture"]
      497 NAMECALL                         R24 R1 K43 ["getText"]
      499 CALL                             R24 3 1
      500 SETTABLEKS                       R24 R23 K34 ["text"]
      502 SETTABLEKS                       R16 R23 K63 ["onActivated"]
      504 SETTABLEKS                       R15 R23 K97 ["isDisabled"]
      506 GETUPVAL                         R24 5
      507 GETTABLEKS                       R24 R24 K47 ["Enums"]
      509 GETTABLEKS                       R24 R24 K109 ["ButtonVariant"]
      511 GETTABLEKS                       R24 R24 K122 ["Emphasis"]
      513 SETTABLEKS                       R24 R23 K98 ["variant"]
      515 GETUPVAL                         R24 5
      516 GETTABLEKS                       R24 R24 K47 ["Enums"]
      518 GETTABLEKS                       R24 R24 K48 ["InputSize"]
      520 GETTABLEKS                       R24 R24 K49 ["Medium"]
      522 SETTABLEKS                       R24 R23 K39 ["size"]
      524 GETIMPORT                        R24 K46 [UDim.new]
      526 LOADN                            R25 1
      527 LOADN                            R26 0
      528 CALL                             R24 2 1
      529 SETTABLEKS                       R24 R23 K38 ["width"]
      531 CALL                             R21 2 1
      532 SETTABLEKS                       R21 R20 K30 ["Generate"]
      534 CALL                             R17 3 -1
      535 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R4 R4 K12 ["Localization"]
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["Gen3dCore"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["getLocalizedTextOrDefault"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Bin"]
       66 GETTABLEKS                       R9 R9 K19 ["Common"]
       68 GETTABLEKS                       R9 R9 K20 ["defineLuaFlags"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R5 K21 ["Constants"]
       73 GETTABLEKS                       R9 R9 K22 ["Enums"]
       75 GETTABLEKS                       R9 R9 K23 ["TextureGenModel"]
       77 DUPCLOSURE                       R10 K24 [PROTO_0]
       78 DUPCLOSURE                       R11 K25 [PROTO_4]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R10
       88 RETURN                           R11 1
