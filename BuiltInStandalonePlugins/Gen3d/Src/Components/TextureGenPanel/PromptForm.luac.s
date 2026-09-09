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
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R3 R0 K2 ["initialPrompt"]
        5 ORK                              R2 R3 K1 [""]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useState"]
       10 GETTABLEKS                       R4 R0 K3 ["initialModel"]
       12 JUMPIF                           R4 ; [+5]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["Constants"]
       16 GETTABLEKS                       R4 R4 K5 ["DEFAULT_TEXTURE_GEN_MODEL"]
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["createNextOrder"]
       22 CALL                             R5 0 1
       23 GETTABLEKS                       R6 R0 K7 ["referenceImage"]
       25 JUMPIFNOT                        R6 ; [+3]
       26 GETTABLEKS                       R7 R6 K8 ["status"]
       28 JUMP                             ; [+1]
       29 LOADK                            R7 K9 ["None"]
       30 JUMPIFEQKNIL                     R6 ; [+6]
       32 JUMPIFNOTEQKS                    R7 K10 ["Ready"] ; [+4]
       34 GETTABLEKS                       R8 R6 K11 ["imageId"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R8
       38 JUMPIFNOTEQKS                    R7 K12 ["Failed"] ; [+5]
       40 JUMPIFNOT                        R6 ; [+3]
       41 GETTABLEKS                       R9 R6 K13 ["errorMessage"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R9
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R10 R10 K14 ["getFFlagTextureGenReferenceImage"]
       48 CALL                             R10 0 1
       49 MOVE                             R11 R10
       50 JUMPIFNOT                        R11 ; [+4]
       51 JUMPIFNOTEQKNIL                  R8 ; [+2]
       53 LOADB                            R11 0 +1
       54 LOADB                            R11 1
       55 GETTABLEKS                       R13 R0 K15 ["disabled"]
       57 JUMPIFNOTEQKB                    R13 TRUE ; [+2]
       59 LOADB                            R12 0 +1
       60 LOADB                            R12 1
       61 MOVE                             R13 R10
       62 JUMPIFNOT                        R13 ; [+4]
       63 JUMPIFEQKS                       R7 K16 ["Loading"] ; [+2]
       65 LOADB                            R13 0 +1
       66 LOADB                            R13 1
       67 LOADB                            R14 1
       68 GETTABLEKS                       R15 R0 K15 ["disabled"]
       70 JUMPIFEQKB                       R15 TRUE ; [+7]
       72 MOVE                             R14 R13
       73 JUMPIF                           R14 ; [+4]
       74 LOADB                            R14 0
       75 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
       77 NOT                              R14 R11
       78 GETUPVAL                         R15 0
       79 GETTABLEKS                       R15 R15 K17 ["useCallback"]
       81 NEWCLOSURE                       R16 P0
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 NEWTABLE                         R17 0 4
       88 MOVE                             R18 R14
       89 MOVE                             R19 R1
       90 MOVE                             R20 R3
       91 GETTABLEKS                       R21 R0 K18 ["onGenerate"]
       93 SETLIST                          R17 R18 4 [1]
       95 CALL                             R15 2 1
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R16 R16 K19 ["createElement"]
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R17 R17 K20 ["View"]
      102 DUPTABLE                         R18 K24 [{["tag"] = "col size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      103 GETTABLEKS                       R19 R0 K23 ["LayoutOrder"]
      105 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      107 DUPTABLE                         R19 K29 [{"Prompt", "ModelSelector", "ReferenceImage", "Generate"}]
      108 GETUPVAL                         R20 0
      109 GETTABLEKS                       R20 R20 K19 ["createElement"]
      111 GETUPVAL                         R21 4
      112 GETTABLEKS                       R21 R21 K30 ["TextInput"]
      114 DUPTABLE                         R22 K38 [{["LayoutOrder"], ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["onReturnPressed"], ["width"], ["size"]}]
      115 MOVE                             R23 R5
      116 CALL                             R23 0 1
      117 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      119 SETTABLEKS                       R1 R22 K32 ["text"]
      121 GETUPVAL                         R23 5
      122 LOADK                            R25 K39 ["TextureGen"]
      123 LOADK                            R26 K40 ["InputPromptTitle"]
      124 NAMECALL                         R23 R23 K41 ["getText"]
      126 CALL                             R23 3 1
      127 SETTABLEKS                       R23 R22 K33 ["placeholder"]
      129 NEWCLOSURE                       R23 P1
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R23 R22 K34 ["onChanged"]
      134 SETTABLEKS                       R15 R22 K35 ["onReturnPressed"]
      136 GETIMPORT                        R23 K44 [UDim.new]
      138 LOADN                            R24 1
      139 LOADN                            R25 0
      140 CALL                             R23 2 1
      141 SETTABLEKS                       R23 R22 K36 ["width"]
      143 GETUPVAL                         R23 4
      144 GETTABLEKS                       R23 R23 K45 ["Enums"]
      146 GETTABLEKS                       R23 R23 K46 ["InputSize"]
      148 GETTABLEKS                       R23 R23 K47 ["Medium"]
      150 SETTABLEKS                       R23 R22 K37 ["size"]
      152 CALL                             R20 2 1
      153 SETTABLEKS                       R20 R19 K25 ["Prompt"]
      155 GETUPVAL                         R21 3
      156 GETTABLEKS                       R21 R21 K48 ["getFFlagTextureGenModelSelector"]
      158 CALL                             R21 0 1
      159 JUMPIFNOT                        R21 ; [+100]
      160 GETUPVAL                         R20 0
      161 GETTABLEKS                       R20 R20 K19 ["createElement"]
      163 GETUPVAL                         R21 4
      164 GETTABLEKS                       R21 R21 K20 ["View"]
      166 DUPTABLE                         R22 K50 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y gap-small align-y-center"}]
      167 MOVE                             R23 R5
      168 CALL                             R23 0 1
      169 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      171 DUPTABLE                         R23 K53 [{"ModelSelectorLabel", "ModelSelectorControl"}]
      172 GETUPVAL                         R24 0
      173 GETTABLEKS                       R24 R24 K19 ["createElement"]
      175 GETUPVAL                         R25 4
      176 GETTABLEKS                       R25 R25 K54 ["Text"]
      178 DUPTABLE                         R26 K56 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small text-emphasis-muted"}]
      179 MOVE                             R27 R5
      180 CALL                             R27 0 1
      181 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      183 GETUPVAL                         R27 5
      184 LOADK                            R29 K39 ["TextureGen"]
      185 LOADK                            R30 K57 ["ModelSelectorTitle"]
      186 NAMECALL                         R27 R27 K41 ["getText"]
      188 CALL                             R27 3 1
      189 SETTABLEKS                       R27 R26 K54 ["Text"]
      191 CALL                             R24 2 1
      192 SETTABLEKS                       R24 R23 K51 ["ModelSelectorLabel"]
      194 GETUPVAL                         R24 0
      195 GETTABLEKS                       R24 R24 K19 ["createElement"]
      197 GETUPVAL                         R25 4
      198 GETTABLEKS                       R25 R25 K58 ["SegmentedControl"]
      200 DUPTABLE                         R26 K62 [{"LayoutOrder", "segments", "value", "onActivated", "size"}]
      201 MOVE                             R27 R5
      202 CALL                             R27 0 1
      203 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      205 NEWTABLE                         R27 0 2
      207 DUPTABLE                         R28 K64 [{"id", "text"}]
      208 GETUPVAL                         R29 6
      209 GETTABLEKS                       R29 R29 K65 ["RbxTexture1"]
      211 SETTABLEKS                       R29 R28 K63 ["id"]
      213 GETUPVAL                         R29 5
      214 LOADK                            R31 K39 ["TextureGen"]
      215 LOADK                            R32 K66 ["ModelFast"]
      216 NAMECALL                         R29 R29 K41 ["getText"]
      218 CALL                             R29 3 1
      219 SETTABLEKS                       R29 R28 K32 ["text"]
      221 DUPTABLE                         R29 K64 [{"id", "text"}]
      222 GETUPVAL                         R30 6
      223 GETTABLEKS                       R30 R30 K67 ["RbxTexture2"]
      225 SETTABLEKS                       R30 R29 K63 ["id"]
      227 GETUPVAL                         R30 5
      228 LOADK                            R32 K39 ["TextureGen"]
      229 LOADK                            R33 K68 ["ModelQuality"]
      230 NAMECALL                         R30 R30 K41 ["getText"]
      232 CALL                             R30 3 1
      233 SETTABLEKS                       R30 R29 K32 ["text"]
      235 SETLIST                          R27 R28 2 [1]
      237 SETTABLEKS                       R27 R26 K59 ["segments"]
      239 SETTABLEKS                       R3 R26 K60 ["value"]
      241 NEWCLOSURE                       R27 P2
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R0
      244 SETTABLEKS                       R27 R26 K61 ["onActivated"]
      246 GETUPVAL                         R27 4
      247 GETTABLEKS                       R27 R27 K45 ["Enums"]
      249 GETTABLEKS                       R27 R27 K46 ["InputSize"]
      251 GETTABLEKS                       R27 R27 K69 ["Small"]
      253 SETTABLEKS                       R27 R26 K37 ["size"]
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K52 ["ModelSelectorControl"]
      258 CALL                             R20 3 1
      259 JUMP                             ; [+1]
      260 LOADNIL                          R20
      261 SETTABLEKS                       R20 R19 K26 ["ModelSelector"]
      263 JUMPIFNOT                        R10 ; [+214]
      264 GETUPVAL                         R20 0
      265 GETTABLEKS                       R20 R20 K19 ["createElement"]
      267 GETUPVAL                         R21 4
      268 GETTABLEKS                       R21 R21 K20 ["View"]
      270 DUPTABLE                         R22 K71 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y gap-xxsmall"}]
      271 MOVE                             R23 R5
      272 CALL                             R23 0 1
      273 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      275 DUPTABLE                         R23 K74 [{"ReferenceImageControls", "ReferenceImageError"}]
      276 GETUPVAL                         R24 0
      277 GETTABLEKS                       R24 R24 K19 ["createElement"]
      279 GETUPVAL                         R25 4
      280 GETTABLEKS                       R25 R25 K20 ["View"]
      282 DUPTABLE                         R26 K50 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y gap-small align-y-center"}]
      283 MOVE                             R27 R5
      284 CALL                             R27 0 1
      285 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      287 DUPTABLE                         R27 K79 [{"ReferenceImageLabel", "ReferenceImagePreview", "RemoveReferenceImageButton", "UploadReferenceImageButton"}]
      288 GETUPVAL                         R28 0
      289 GETTABLEKS                       R28 R28 K19 ["createElement"]
      291 GETUPVAL                         R29 4
      292 GETTABLEKS                       R29 R29 K54 ["Text"]
      294 DUPTABLE                         R30 K56 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small text-emphasis-muted"}]
      295 MOVE                             R31 R5
      296 CALL                             R31 0 1
      297 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      299 GETUPVAL                         R31 5
      300 LOADK                            R33 K39 ["TextureGen"]
      301 LOADK                            R34 K80 ["InputHintImageTitle"]
      302 NAMECALL                         R31 R31 K41 ["getText"]
      304 CALL                             R31 3 1
      305 SETTABLEKS                       R31 R30 K54 ["Text"]
      307 CALL                             R28 2 1
      308 SETTABLEKS                       R28 R27 K75 ["ReferenceImageLabel"]
      310 JUMPIFNOT                        R11 ; [+26]
      311 GETUPVAL                         R28 0
      312 GETTABLEKS                       R28 R28 K19 ["createElement"]
      314 GETUPVAL                         R29 4
      315 GETTABLEKS                       R29 R29 K81 ["Image"]
      317 DUPTABLE                         R30 K85 [{["LayoutOrder"], ["tag"] = "radius-medium", ["Size"], ["ScaleType"], ["Image"]}]
      318 MOVE                             R31 R5
      319 CALL                             R31 0 1
      320 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      322 GETIMPORT                        R31 K88 [UDim2.fromOffset]
      324 LOADN                            R32 48
      325 LOADN                            R33 48
      326 CALL                             R31 2 1
      327 SETTABLEKS                       R31 R30 K83 ["Size"]
      329 GETIMPORT                        R31 K91 [Enum.ScaleType.Crop]
      331 SETTABLEKS                       R31 R30 K84 ["ScaleType"]
      333 SETTABLEKS                       R8 R30 K81 ["Image"]
      335 CALL                             R28 2 1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R28
      338 SETTABLEKS                       R28 R27 K76 ["ReferenceImagePreview"]
      340 JUMPIFNOT                        R11 ; [+52]
      341 GETUPVAL                         R28 0
      342 GETTABLEKS                       R28 R28 K19 ["createElement"]
      344 GETUPVAL                         R29 4
      345 GETTABLEKS                       R29 R29 K92 ["IconButton"]
      347 DUPTABLE                         R30 K100 [{["LayoutOrder"], ["icon"], ["onActivated"], ["isDisabled"], ["size"], ["variant"], ["isCircular"] = True, ["testId"] = "ReferenceImageRemove"}]
      348 MOVE                             R31 R5
      349 CALL                             R31 0 1
      350 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      352 DUPTABLE                         R31 K102 [{"name"}]
      353 GETUPVAL                         R32 4
      354 GETTABLEKS                       R32 R32 K45 ["Enums"]
      356 GETTABLEKS                       R32 R32 K103 ["IconName"]
      358 GETTABLEKS                       R32 R32 K104 ["X"]
      360 SETTABLEKS                       R32 R31 K101 ["name"]
      362 SETTABLEKS                       R31 R30 K93 ["icon"]
      364 GETTABLEKS                       R31 R0 K105 ["onClearReferenceImage"]
      366 JUMPIF                           R31 ; [+1]
      367 GETUPVAL                         R31 7
      368 SETTABLEKS                       R31 R30 K61 ["onActivated"]
      370 NOT                              R31 R12
      371 SETTABLEKS                       R31 R30 K94 ["isDisabled"]
      373 GETUPVAL                         R31 4
      374 GETTABLEKS                       R31 R31 K45 ["Enums"]
      376 GETTABLEKS                       R31 R31 K46 ["InputSize"]
      378 GETTABLEKS                       R31 R31 K69 ["Small"]
      380 SETTABLEKS                       R31 R30 K37 ["size"]
      382 GETUPVAL                         R31 4
      383 GETTABLEKS                       R31 R31 K45 ["Enums"]
      385 GETTABLEKS                       R31 R31 K106 ["ButtonVariant"]
      387 GETTABLEKS                       R31 R31 K107 ["Utility"]
      389 SETTABLEKS                       R31 R30 K95 ["variant"]
      391 CALL                             R28 2 1
      392 JUMP                             ; [+1]
      393 LOADNIL                          R28
      394 SETTABLEKS                       R28 R27 K77 ["RemoveReferenceImageButton"]
      396 JUMPIF                           R11 ; [+54]
      397 GETUPVAL                         R28 0
      398 GETTABLEKS                       R28 R28 K19 ["createElement"]
      400 GETUPVAL                         R29 4
      401 GETTABLEKS                       R29 R29 K108 ["Button"]
      403 DUPTABLE                         R30 K111 [{["LayoutOrder"], ["text"], ["onActivated"], ["isLoading"], ["isDisabled"], ["size"], ["variant"], ["testId"] = "ReferenceImageUpload"}]
      404 MOVE                             R31 R5
      405 CALL                             R31 0 1
      406 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      408 GETUPVAL                         R31 5
      409 LOADK                            R33 K81 ["Image"]
      410 LOADK                            R34 K112 ["Uploadf"]
      411 NAMECALL                         R31 R31 K41 ["getText"]
      413 CALL                             R31 3 1
      414 SETTABLEKS                       R31 R30 K32 ["text"]
      416 GETTABLEKS                       R31 R0 K113 ["onPickReferenceImage"]
      418 JUMPIF                           R31 ; [+1]
      419 GETUPVAL                         R31 7
      420 SETTABLEKS                       R31 R30 K61 ["onActivated"]
      422 JUMPIFEQKS                       R7 K16 ["Loading"] ; [+2]
      424 LOADB                            R31 0 +1
      425 LOADB                            R31 1
      426 SETTABLEKS                       R31 R30 K109 ["isLoading"]
      428 NOT                              R31 R12
      429 SETTABLEKS                       R31 R30 K94 ["isDisabled"]
      431 GETUPVAL                         R31 4
      432 GETTABLEKS                       R31 R31 K45 ["Enums"]
      434 GETTABLEKS                       R31 R31 K46 ["InputSize"]
      436 GETTABLEKS                       R31 R31 K69 ["Small"]
      438 SETTABLEKS                       R31 R30 K37 ["size"]
      440 GETUPVAL                         R31 4
      441 GETTABLEKS                       R31 R31 K45 ["Enums"]
      443 GETTABLEKS                       R31 R31 K106 ["ButtonVariant"]
      445 GETTABLEKS                       R31 R31 K114 ["Standard"]
      447 SETTABLEKS                       R31 R30 K95 ["variant"]
      449 CALL                             R28 2 1
      450 JUMP                             ; [+1]
      451 LOADNIL                          R28
      452 SETTABLEKS                       R28 R27 K78 ["UploadReferenceImageButton"]
      454 CALL                             R24 3 1
      455 SETTABLEKS                       R24 R23 K72 ["ReferenceImageControls"]
      457 JUMPIFNOT                        R9 ; [+15]
      458 GETUPVAL                         R24 0
      459 GETTABLEKS                       R24 R24 K19 ["createElement"]
      461 GETUPVAL                         R25 4
      462 GETTABLEKS                       R25 R25 K54 ["Text"]
      464 DUPTABLE                         R26 K116 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert"}]
      465 MOVE                             R27 R5
      466 CALL                             R27 0 1
      467 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      469 SETTABLEKS                       R9 R26 K54 ["Text"]
      471 CALL                             R24 2 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R24
      474 SETTABLEKS                       R24 R23 K73 ["ReferenceImageError"]
      476 CALL                             R20 3 1
      477 JUMP                             ; [+1]
      478 LOADNIL                          R20
      479 SETTABLEKS                       R20 R19 K27 ["ReferenceImage"]
      481 GETUPVAL                         R20 0
      482 GETTABLEKS                       R20 R20 K19 ["createElement"]
      484 GETUPVAL                         R21 4
      485 GETTABLEKS                       R21 R21 K108 ["Button"]
      487 DUPTABLE                         R22 K117 [{"LayoutOrder", "text", "onActivated", "isDisabled", "variant", "size", "width"}]
      488 MOVE                             R23 R5
      489 CALL                             R23 0 1
      490 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      492 GETUPVAL                         R23 5
      493 LOADK                            R25 K39 ["TextureGen"]
      494 LOADK                            R26 K118 ["InputGenerateTexture"]
      495 NAMECALL                         R23 R23 K41 ["getText"]
      497 CALL                             R23 3 1
      498 SETTABLEKS                       R23 R22 K32 ["text"]
      500 SETTABLEKS                       R15 R22 K61 ["onActivated"]
      502 SETTABLEKS                       R14 R22 K94 ["isDisabled"]
      504 GETUPVAL                         R23 4
      505 GETTABLEKS                       R23 R23 K45 ["Enums"]
      507 GETTABLEKS                       R23 R23 K106 ["ButtonVariant"]
      509 GETTABLEKS                       R23 R23 K119 ["Emphasis"]
      511 SETTABLEKS                       R23 R22 K95 ["variant"]
      513 GETUPVAL                         R23 4
      514 GETTABLEKS                       R23 R23 K45 ["Enums"]
      516 GETTABLEKS                       R23 R23 K46 ["InputSize"]
      518 GETTABLEKS                       R23 R23 K47 ["Medium"]
      520 SETTABLEKS                       R23 R22 K37 ["size"]
      522 GETIMPORT                        R23 K44 [UDim.new]
      524 LOADN                            R24 1
      525 LOADN                            R25 0
      526 CALL                             R23 2 1
      527 SETTABLEKS                       R23 R22 K36 ["width"]
      529 CALL                             R20 2 1
      530 SETTABLEKS                       R20 R19 K28 ["Generate"]
      532 CALL                             R16 3 -1
      533 RETURN                           R16 -1

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
       32 GETTABLEKS                       R5 R5 K10 ["AssistantUI"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Gen3dCore"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Bin"]
       53 GETTABLEKS                       R8 R8 K15 ["Common"]
       55 GETTABLEKS                       R8 R8 K16 ["defineLuaFlags"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R4 K17 ["Resources"]
       60 GETTABLEKS                       R8 R8 K18 ["Localization"]
       62 GETTABLEKS                       R8 R8 K19 ["Translator"]
       64 GETTABLEKS                       R9 R5 K20 ["Constants"]
       66 GETTABLEKS                       R9 R9 K21 ["Enums"]
       68 GETTABLEKS                       R9 R9 K22 ["TextureGenModel"]
       70 DUPCLOSURE                       R10 K23 [PROTO_0]
       71 DUPCLOSURE                       R11 K24 [PROTO_4]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 RETURN                           R11 1
