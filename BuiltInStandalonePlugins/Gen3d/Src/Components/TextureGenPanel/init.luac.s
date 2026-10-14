PROTO_0:
        0 DUPTABLE                         R3 K2 [{"Heading", "Body"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K3 ["createElement"]
        4 GETUPVAL                         R5 1
        5 DUPTABLE                         R6 K11 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small content-emphasis", ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"]}]
        6 SETTABLEKS                       R0 R6 K4 ["Text"]
        8 GETIMPORT                        R7 K14 [Enum.TextXAlignment.Left]
       10 SETTABLEKS                       R7 R6 K7 ["TextXAlignment"]
       12 MOVE                             R7 R2
       13 CALL                             R7 0 1
       14 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K0 ["Heading"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["createElement"]
       22 GETUPVAL                         R5 1
       23 DUPTABLE                         R6 K16 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-emphasis-muted", ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"]}]
       24 SETTABLEKS                       R1 R6 K4 ["Text"]
       26 GETIMPORT                        R7 K14 [Enum.TextXAlignment.Left]
       28 SETTABLEKS                       R7 R6 K7 ["TextXAlignment"]
       30 MOVE                             R7 R2
       31 CALL                             R7 0 1
       32 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K1 ["Body"]
       37 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["startBatch"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["setEnabled"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["setEnabled"]
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pickSlot"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["setEnabled"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["useContext"]
       15 GETUPVAL                         R4 3
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K2 ["createNextOrder"]
       20 CALL                             R4 0 1
       21 JUMPIF                           R2 ; [+2]
       22 LOADNIL                          R5
       23 RETURN                           R5 1
       24 GETTABLEKS                       R5 R2 K3 ["selection"]
       26 GETTABLEKS                       R6 R2 K4 ["generation"]
       28 GETTABLEKS                       R7 R2 K5 ["batch"]
       30 NEWTABLE                         R8 0 0
       32 GETTABLEKS                       R9 R5 K6 ["kind"]
       34 JUMPIFNOTEQKS                    R9 K7 ["none"] ; [+16]
       36 GETUPVAL                         R9 5
       37 LOADK                            R12 K8 ["TexturePanel"]
       38 LOADK                            R13 K9 ["NoSelectionTitle"]
       39 NAMECALL                         R10 R1 K10 ["getText"]
       41 CALL                             R10 3 1
       42 LOADK                            R13 K8 ["TexturePanel"]
       43 LOADK                            R14 K11 ["NoSelectionBody"]
       44 NAMECALL                         R11 R1 K10 ["getText"]
       46 CALL                             R11 3 1
       47 MOVE                             R12 R4
       48 CALL                             R9 3 1
       49 MOVE                             R8 R9
       50 JUMP                             ; [+339]
       51 GETTABLEKS                       R9 R5 K6 ["kind"]
       53 JUMPIFNOTEQKS                    R9 K12 ["invalid"] ; [+16]
       55 GETUPVAL                         R9 5
       56 LOADK                            R12 K8 ["TexturePanel"]
       57 LOADK                            R13 K13 ["InvalidSelectionTitle"]
       58 NAMECALL                         R10 R1 K10 ["getText"]
       60 CALL                             R10 3 1
       61 LOADK                            R13 K8 ["TexturePanel"]
       62 LOADK                            R14 K14 ["InvalidSelectionBody"]
       63 NAMECALL                         R11 R1 K10 ["getText"]
       65 CALL                             R11 3 1
       66 MOVE                             R12 R4
       67 CALL                             R9 3 1
       68 MOVE                             R8 R9
       69 JUMP                             ; [+320]
       70 GETTABLEKS                       R9 R5 K6 ["kind"]
       72 JUMPIFNOTEQKS                    R9 K15 ["multi"] ; [+138]
       74 NEWTABLE                         R9 0 0
       76 GETTABLEKS                       R10 R2 K16 ["activeGenerationUniqueIds"]
       78 LOADNIL                          R11
       79 LOADNIL                          R12
       80 FORGPREP                         R10
       81 LOADB                            R15 1
       82 SETTABLE                         R15 R9 R14
       83 FORGLOOP                         R10 2 ; [-3]
       85 LOADB                            R10 0
       86 GETTABLEKS                       R11 R5 K17 ["memberUniqueIds"]
       88 JUMPIFNOT                        R11 ; [+11]
       89 GETTABLEKS                       R11 R5 K17 ["memberUniqueIds"]
       91 LOADNIL                          R12
       92 LOADNIL                          R13
       93 FORGPREP                         R11
       94 GETTABLE                         R16 R9 R15
       95 JUMPIFNOT                        R16 ; [+2]
       96 LOADB                            R10 1
       97 JUMP                             ; [+2]
       98 FORGLOOP                         R11 2 ; [-5]
      100 LOADNIL                          R11
      101 JUMPIFNOT                        R10 ; [+19]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K18 ["createElement"]
      105 GETUPVAL                         R13 6
      106 DUPTABLE                         R14 K25 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-emphasis-muted", ["TextXAlignment"], ["TextWrapped"] = True}]
      107 LOADK                            R17 K8 ["TexturePanel"]
      108 LOADK                            R18 K26 ["MultiGenerationInProgress"]
      109 NAMECALL                         R15 R1 K10 ["getText"]
      111 CALL                             R15 3 1
      112 SETTABLEKS                       R15 R14 K19 ["Text"]
      114 GETIMPORT                        R15 K29 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R15 R14 K22 ["TextXAlignment"]
      118 CALL                             R12 2 1
      119 MOVE                             R11 R12
      120 JUMP                             ; [+72]
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K18 ["createElement"]
      124 GETUPVAL                         R13 7
      125 DUPTABLE                         R14 K31 [{["tag"] = "col size-full-0 auto-y gap-medium"}]
      126 DUPTABLE                         R15 K33 [{"Form"}]
      127 GETUPVAL                         R16 0
      128 GETTABLEKS                       R16 R16 K18 ["createElement"]
      130 GETUPVAL                         R17 8
      131 DUPTABLE                         R18 K44 [{"initialPrompt", "initialModel", "onPromptChanged", "onModelChanged", "LayoutOrder", "referenceImage", "onPickReferenceImage", "onClearReferenceImage", "submitText", "onGenerate"}]
      132 GETTABLEKS                       R19 R6 K45 ["state"]
      134 GETTABLEKS                       R19 R19 K46 ["prompt"]
      136 SETTABLEKS                       R19 R18 K34 ["initialPrompt"]
      138 GETTABLEKS                       R20 R6 K45 ["state"]
      140 GETTABLEKS                       R20 R20 K47 ["model"]
      142 JUMPIFEQKS                       R20 K48 [""] ; [+6]
      144 GETTABLEKS                       R19 R6 K45 ["state"]
      146 GETTABLEKS                       R19 R19 K47 ["model"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R19
      150 SETTABLEKS                       R19 R18 K35 ["initialModel"]
      152 GETTABLEKS                       R19 R6 K49 ["setPrompt"]
      154 SETTABLEKS                       R19 R18 K36 ["onPromptChanged"]
      156 GETTABLEKS                       R19 R6 K50 ["setModel"]
      158 SETTABLEKS                       R19 R18 K37 ["onModelChanged"]
      160 MOVE                             R19 R4
      161 CALL                             R19 0 1
      162 SETTABLEKS                       R19 R18 K38 ["LayoutOrder"]
      164 GETTABLEKS                       R19 R2 K39 ["referenceImage"]
      166 SETTABLEKS                       R19 R18 K39 ["referenceImage"]
      168 GETTABLEKS                       R19 R2 K51 ["pickReferenceImage"]
      170 SETTABLEKS                       R19 R18 K40 ["onPickReferenceImage"]
      172 GETTABLEKS                       R19 R2 K52 ["clearReferenceImage"]
      174 SETTABLEKS                       R19 R18 K41 ["onClearReferenceImage"]
      176 LOADK                            R21 K53 ["TextureGen"]
      177 LOADK                            R22 K54 ["InputGenerateTexture"]
      178 NAMECALL                         R19 R1 K10 ["getText"]
      180 CALL                             R19 3 1
      181 SETTABLEKS                       R19 R18 K42 ["submitText"]
      183 NEWCLOSURE                       R19 P0
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R3
      186 SETTABLEKS                       R19 R18 K43 ["onGenerate"]
      188 CALL                             R16 2 1
      189 SETTABLEKS                       R16 R15 K32 ["Form"]
      191 CALL                             R12 3 1
      192 MOVE                             R11 R12
      193 DUPTABLE                         R12 K56 [{"Body"}]
      194 GETUPVAL                         R13 0
      195 GETTABLEKS                       R13 R13 K18 ["createElement"]
      197 GETUPVAL                         R14 7
      198 DUPTABLE                         R15 K57 [{["tag"] = "col size-full-0 auto-y gap-medium", ["LayoutOrder"]}]
      199 MOVE                             R16 R4
      200 CALL                             R16 0 1
      201 SETTABLEKS                       R16 R15 K38 ["LayoutOrder"]
      203 DUPTABLE                         R16 K59 [{"Content"}]
      204 SETTABLEKS                       R11 R16 K58 ["Content"]
      206 CALL                             R13 3 1
      207 SETTABLEKS                       R13 R12 K55 ["Body"]
      209 MOVE                             R8 R12
      210 JUMP                             ; [+179]
      211 GETTABLEKS                       R9 R6 K45 ["state"]
      213 GETTABLEKS                       R10 R9 K60 ["stage"]
      215 GETTABLEKS                       R12 R5 K61 ["displayName"]
      217 ORK                              R11 R12 K48 [""]
      218 LOADNIL                          R12
      219 LOADK                            R13 K58 ["Content"]
      220 JUMPIFEQKS                       R10 K62 ["Idle"] ; [+3]
      222 JUMPIFNOTEQKS                    R10 K63 ["Failed"] ; [+79]
      224 LOADK                            R14 K64 ["Form-%*"]
      225 GETTABLEKS                       R17 R5 K65 ["uniqueId"]
      227 ORK                              R16 R17 K48 [""]
      228 NAMECALL                         R14 R14 K66 ["format"]
      230 CALL                             R14 2 1
      231 MOVE                             R13 R14
      232 GETUPVAL                         R14 0
      233 GETTABLEKS                       R14 R14 K18 ["createElement"]
      235 GETUPVAL                         R15 8
      236 DUPTABLE                         R16 K71 [{"initialPrompt", "initialModel", "initialAutoSelectView", "onPromptChanged", "onModelChanged", "onAutoSelectViewChanged", "errorMessage", "failureReason", "referenceImage", "onPickReferenceImage", "onClearReferenceImage", "onGenerate"}]
      237 GETTABLEKS                       R17 R9 K46 ["prompt"]
      239 SETTABLEKS                       R17 R16 K34 ["initialPrompt"]
      241 GETTABLEKS                       R18 R9 K47 ["model"]
      243 JUMPIFEQKS                       R18 K48 [""] ; [+4]
      245 GETTABLEKS                       R17 R9 K47 ["model"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R17
      249 SETTABLEKS                       R17 R16 K35 ["initialModel"]
      251 GETTABLEKS                       R17 R9 K72 ["autoSelectView"]
      253 SETTABLEKS                       R17 R16 K67 ["initialAutoSelectView"]
      255 GETTABLEKS                       R17 R6 K49 ["setPrompt"]
      257 SETTABLEKS                       R17 R16 K36 ["onPromptChanged"]
      259 GETTABLEKS                       R17 R6 K50 ["setModel"]
      261 SETTABLEKS                       R17 R16 K37 ["onModelChanged"]
      263 GETTABLEKS                       R17 R6 K73 ["setAutoSelectView"]
      265 SETTABLEKS                       R17 R16 K68 ["onAutoSelectViewChanged"]
      267 JUMPIFNOTEQKS                    R10 K63 ["Failed"] ; [+4]
      269 GETTABLEKS                       R17 R9 K69 ["errorMessage"]
      271 JUMP                             ; [+1]
      272 LOADNIL                          R17
      273 SETTABLEKS                       R17 R16 K69 ["errorMessage"]
      275 JUMPIFNOTEQKS                    R10 K63 ["Failed"] ; [+4]
      277 GETTABLEKS                       R17 R9 K70 ["failureReason"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R17
      281 SETTABLEKS                       R17 R16 K70 ["failureReason"]
      283 GETTABLEKS                       R17 R2 K39 ["referenceImage"]
      285 SETTABLEKS                       R17 R16 K39 ["referenceImage"]
      287 GETTABLEKS                       R17 R2 K51 ["pickReferenceImage"]
      289 SETTABLEKS                       R17 R16 K40 ["onPickReferenceImage"]
      291 GETTABLEKS                       R17 R2 K52 ["clearReferenceImage"]
      293 SETTABLEKS                       R17 R16 K41 ["onClearReferenceImage"]
      295 GETTABLEKS                       R17 R6 K74 ["startGeneration"]
      297 SETTABLEKS                       R17 R16 K43 ["onGenerate"]
      299 CALL                             R14 2 1
      300 MOVE                             R12 R14
      301 JUMP                             ; [+71]
      302 JUMPIFEQKS                       R10 K75 ["GeneratingImages"] ; [+3]
      304 JUMPIFNOTEQKS                    R10 K76 ["PickingImage"] ; [+41]
      306 GETUPVAL                         R14 0
      307 GETTABLEKS                       R14 R14 K18 ["createElement"]
      309 GETUPVAL                         R15 9
      310 DUPTABLE                         R16 K82 [{"slots", "canPick", "model", "onModelChanged", "onBack", "onCancel", "onConfirm"}]
      311 GETTABLEKS                       R17 R9 K77 ["slots"]
      313 SETTABLEKS                       R17 R16 K77 ["slots"]
      315 JUMPIFEQKS                       R10 K76 ["PickingImage"] ; [+2]
      317 LOADB                            R17 0 +1
      318 LOADB                            R17 1
      319 SETTABLEKS                       R17 R16 K78 ["canPick"]
      321 GETTABLEKS                       R17 R9 K47 ["model"]
      323 SETTABLEKS                       R17 R16 K47 ["model"]
      325 GETTABLEKS                       R17 R6 K50 ["setModel"]
      327 SETTABLEKS                       R17 R16 K37 ["onModelChanged"]
      329 GETTABLEKS                       R17 R6 K83 ["cancel"]
      331 SETTABLEKS                       R17 R16 K79 ["onBack"]
      333 NEWCLOSURE                       R17 P1
      334 CAPTURE                          VAL R6
      335 CAPTURE                          VAL R3
      336 SETTABLEKS                       R17 R16 K80 ["onCancel"]
      338 NEWCLOSURE                       R17 P2
      339 CAPTURE                          VAL R6
      340 CAPTURE                          VAL R3
      341 SETTABLEKS                       R17 R16 K81 ["onConfirm"]
      343 CALL                             R14 2 1
      344 MOVE                             R12 R14
      345 JUMP                             ; [+27]
      346 GETUPVAL                         R14 0
      347 GETTABLEKS                       R14 R14 K18 ["createElement"]
      349 GETUPVAL                         R15 10
      350 DUPTABLE                         R16 K85 [{"stage", "displayName", "errorMessage", "failureReason", "onReset", "onCancel"}]
      351 SETTABLEKS                       R10 R16 K60 ["stage"]
      353 SETTABLEKS                       R11 R16 K61 ["displayName"]
      355 GETTABLEKS                       R17 R9 K69 ["errorMessage"]
      357 SETTABLEKS                       R17 R16 K69 ["errorMessage"]
      359 GETTABLEKS                       R17 R9 K70 ["failureReason"]
      361 SETTABLEKS                       R17 R16 K70 ["failureReason"]
      363 GETTABLEKS                       R17 R6 K83 ["cancel"]
      365 SETTABLEKS                       R17 R16 K84 ["onReset"]
      367 GETTABLEKS                       R17 R6 K83 ["cancel"]
      369 SETTABLEKS                       R17 R16 K80 ["onCancel"]
      371 CALL                             R14 2 1
      372 MOVE                             R12 R14
      373 DUPTABLE                         R14 K56 [{"Body"}]
      374 GETUPVAL                         R15 0
      375 GETTABLEKS                       R15 R15 K18 ["createElement"]
      377 GETUPVAL                         R16 7
      378 DUPTABLE                         R17 K57 [{["tag"] = "col size-full-0 auto-y gap-medium", ["LayoutOrder"]}]
      379 MOVE                             R18 R4
      380 CALL                             R18 0 1
      381 SETTABLEKS                       R18 R17 K38 ["LayoutOrder"]
      383 NEWTABLE                         R18 1 0
      385 SETTABLE                         R12 R18 R13
      386 CALL                             R15 3 1
      387 SETTABLEKS                       R15 R14 K55 ["Body"]
      389 MOVE                             R8 R14
      390 GETUPVAL                         R9 0
      391 GETTABLEKS                       R9 R9 K18 ["createElement"]
      393 GETUPVAL                         R10 7
      394 DUPTABLE                         R11 K87 [{["tag"] = "col align-y-top size-full-0 auto-y padding-medium gap-medium bg-surface-100 stroke-standard stroke-emphasis radius-large"}]
      395 MOVE                             R12 R8
      396 CALL                             R9 3 1
      397 GETTABLEKS                       R10 R6 K45 ["state"]
      399 GETTABLEKS                       R10 R10 K60 ["stage"]
      401 LOADB                            R11 1
      402 GETTABLEKS                       R12 R5 K6 ["kind"]
      404 JUMPIFNOTEQKS                    R12 K88 ["single"] ; [+8]
      406 LOADB                            R11 0
      407 JUMPIFEQKS                       R10 K75 ["GeneratingImages"] ; [+5]
      409 JUMPIFNOTEQKS                    R10 K76 ["PickingImage"] ; [+2]
      411 LOADB                            R11 0 +1
      412 LOADB                            R11 1
      413 GETUPVAL                         R12 0
      414 GETTABLEKS                       R12 R12 K18 ["createElement"]
      416 GETUPVAL                         R13 7
      417 DUPTABLE                         R14 K90 [{["tag"] = "size-full-0 auto-y"}]
      418 DUPTABLE                         R15 K93 [{"Card", "Close"}]
      419 SETTABLEKS                       R9 R15 K91 ["Card"]
      421 JUMPIFNOT                        R11 ; [+68]
      422 GETUPVAL                         R16 0
      423 GETTABLEKS                       R16 R16 K18 ["createElement"]
      425 GETUPVAL                         R17 7
      426 DUPTABLE                         R18 K99 [{["tag"] = "auto-xy", ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      427 GETIMPORT                        R19 K102 [Vector2.new]
      429 LOADN                            R20 1
      430 LOADN                            R21 0
      431 CALL                             R19 2 1
      432 SETTABLEKS                       R19 R18 K95 ["AnchorPoint"]
      434 GETIMPORT                        R19 K104 [UDim2.new]
      436 LOADN                            R20 1
      437 LOADN                            R21 -8
      438 LOADN                            R22 0
      439 LOADN                            R23 8
      440 CALL                             R19 4 1
      441 SETTABLEKS                       R19 R18 K96 ["Position"]
      443 DUPTABLE                         R19 K106 [{"Button"}]
      444 GETUPVAL                         R20 0
      445 GETTABLEKS                       R20 R20 K18 ["createElement"]
      447 GETUPVAL                         R21 11
      448 GETTABLEKS                       R21 R21 K107 ["IconButton"]
      450 DUPTABLE                         R22 K115 [{["icon"], ["onActivated"], ["size"], ["variant"], ["isCircular"] = True, ["testId"] = "TextureGenPanelClose"}]
      451 DUPTABLE                         R23 K117 [{"name"}]
      452 GETUPVAL                         R24 11
      453 GETTABLEKS                       R24 R24 K118 ["Enums"]
      455 GETTABLEKS                       R24 R24 K119 ["IconName"]
      457 GETTABLEKS                       R24 R24 K120 ["X"]
      459 SETTABLEKS                       R24 R23 K116 ["name"]
      461 SETTABLEKS                       R23 R22 K108 ["icon"]
      463 NEWCLOSURE                       R23 P3
      464 CAPTURE                          VAL R3
      465 SETTABLEKS                       R23 R22 K109 ["onActivated"]
      467 GETUPVAL                         R23 11
      468 GETTABLEKS                       R23 R23 K118 ["Enums"]
      470 GETTABLEKS                       R23 R23 K121 ["InputSize"]
      472 GETTABLEKS                       R23 R23 K122 ["Small"]
      474 SETTABLEKS                       R23 R22 K110 ["size"]
      476 GETUPVAL                         R23 11
      477 GETTABLEKS                       R23 R23 K118 ["Enums"]
      479 GETTABLEKS                       R23 R23 K123 ["ButtonVariant"]
      481 GETTABLEKS                       R23 R23 K124 ["Utility"]
      483 SETTABLEKS                       R23 R22 K111 ["variant"]
      485 CALL                             R20 2 1
      486 SETTABLEKS                       R20 R19 K105 ["Button"]
      488 CALL                             R16 3 1
      489 JUMP                             ; [+1]
      490 LOADNIL                          R16
      491 SETTABLEKS                       R16 R15 K92 ["Close"]
      493 CALL                             R12 3 -1
      494 RETURN                           R12 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagTextureGenComposerRevamp"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["createElement"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K1 ["createElement"]
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R0
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

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
       41 GETTABLEKS                       R6 R0 K13 ["Src"]
       43 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K14 ["GenViewModelContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K13 ["Src"]
       52 GETTABLEKS                       R7 R7 K11 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K15 ["PluginToggleContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K13 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K13 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Components"]
       70 GETTABLEKS                       R9 R9 K18 ["TextureGenPanel"]
       72 GETTABLEKS                       R9 R9 K19 ["PromptForm"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K13 ["Src"]
       79 GETTABLEKS                       R10 R10 K17 ["Components"]
       81 GETTABLEKS                       R10 R10 K18 ["TextureGenPanel"]
       83 GETTABLEKS                       R10 R10 K20 ["TexturingStatus"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K13 ["Src"]
       90 GETTABLEKS                       R11 R11 K17 ["Components"]
       92 GETTABLEKS                       R11 R11 K18 ["TextureGenPanel"]
       94 GETTABLEKS                       R11 R11 K21 ["PickerPhase"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K13 ["Src"]
      101 GETTABLEKS                       R12 R12 K17 ["Components"]
      103 GETTABLEKS                       R12 R12 K18 ["TextureGenPanel"]
      105 GETTABLEKS                       R12 R12 K22 ["DEPRECATED_TextureGenPanel"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K23 ["Bin"]
      112 GETTABLEKS                       R13 R13 K24 ["Common"]
      114 GETTABLEKS                       R13 R13 K25 ["defineLuaFlags"]
      116 CALL                             R12 1 1
      117 GETTABLEKS                       R13 R3 K26 ["View"]
      119 GETTABLEKS                       R14 R3 K27 ["Text"]
      121 DUPCLOSURE                       R15 K28 [PROTO_0]
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R14
      124 DUPCLOSURE                       R16 K29 [PROTO_5]
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R3
      137 DUPCLOSURE                       R17 K30 [PROTO_6]
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R11
      142 RETURN                           R17 1
