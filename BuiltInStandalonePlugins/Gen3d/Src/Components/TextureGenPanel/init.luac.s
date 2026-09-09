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
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startBatch"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["setEnabled"]
       11 LOADB                            R3 0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["referenceImage"]
        3 GETTABLEKS                       R1 R1 K1 ["status"]
        5 JUMPIFEQKS                       R1 K2 ["Ready"] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["prompt"]
       12 JUMPIFNOTEQKS                    R1 K4 [""] ; [+2]
       14 JUMPIFNOT                        R0 ; [+10]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K5 ["startGeneration"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K3 ["prompt"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K6 ["model"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
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
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["useState"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 2
       26 LOADB                            R7 0
       27 JUMPIFEQKNIL                     R2 ; [+18]
       29 LOADB                            R7 0
       30 GETTABLEKS                       R8 R2 K4 ["selection"]
       32 GETTABLEKS                       R8 R8 K5 ["kind"]
       34 JUMPIFNOTEQKS                    R8 K6 ["single"] ; [+11]
       36 GETTABLEKS                       R8 R2 K7 ["generation"]
       38 GETTABLEKS                       R8 R8 K8 ["state"]
       40 GETTABLEKS                       R8 R8 K9 ["stage"]
       42 JUMPIFEQKS                       R8 K10 ["PickingImage"] ; [+2]
       44 LOADB                            R7 0 +1
       45 LOADB                            R7 1
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K11 ["useEffect"]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R10 0 1
       54 MOVE                             R11 R7
       55 SETLIST                          R10 R11 1 [1]
       57 CALL                             R8 2 0
       58 JUMPIF                           R2 ; [+2]
       59 LOADNIL                          R8
       60 RETURN                           R8 1
       61 GETTABLEKS                       R8 R2 K4 ["selection"]
       63 GETTABLEKS                       R9 R2 K7 ["generation"]
       65 GETTABLEKS                       R10 R2 K12 ["batch"]
       67 NEWTABLE                         R11 1 0
       69 LOADNIL                          R12
       70 GETTABLEKS                       R13 R8 K5 ["kind"]
       72 JUMPIFNOTEQKS                    R13 K13 ["none"] ; [+16]
       74 GETUPVAL                         R13 5
       75 LOADK                            R16 K14 ["TexturePanel"]
       76 LOADK                            R17 K15 ["NoSelectionTitle"]
       77 NAMECALL                         R14 R1 K16 ["getText"]
       79 CALL                             R14 3 1
       80 LOADK                            R17 K14 ["TexturePanel"]
       81 LOADK                            R18 K17 ["NoSelectionBody"]
       82 NAMECALL                         R15 R1 K16 ["getText"]
       84 CALL                             R15 3 1
       85 MOVE                             R16 R4
       86 CALL                             R13 3 1
       87 MOVE                             R11 R13
       88 JUMP                             ; [+356]
       89 GETTABLEKS                       R13 R8 K5 ["kind"]
       91 JUMPIFNOTEQKS                    R13 K18 ["invalid"] ; [+16]
       93 GETUPVAL                         R13 5
       94 LOADK                            R16 K14 ["TexturePanel"]
       95 LOADK                            R17 K19 ["InvalidSelectionTitle"]
       96 NAMECALL                         R14 R1 K16 ["getText"]
       98 CALL                             R14 3 1
       99 LOADK                            R17 K14 ["TexturePanel"]
      100 LOADK                            R18 K20 ["InvalidSelectionBody"]
      101 NAMECALL                         R15 R1 K16 ["getText"]
      103 CALL                             R15 3 1
      104 MOVE                             R16 R4
      105 CALL                             R13 3 1
      106 MOVE                             R11 R13
      107 JUMP                             ; [+337]
      108 GETTABLEKS                       R13 R8 K5 ["kind"]
      110 JUMPIFNOTEQKS                    R13 K21 ["multi"] ; [+163]
      112 NEWTABLE                         R13 0 0
      114 GETTABLEKS                       R14 R2 K22 ["activeGenerationUniqueIds"]
      116 LOADNIL                          R15
      117 LOADNIL                          R16
      118 FORGPREP                         R14
      119 LOADB                            R19 1
      120 SETTABLE                         R19 R13 R18
      121 FORGLOOP                         R14 2 ; [-3]
      123 LOADB                            R14 0
      124 GETTABLEKS                       R15 R8 K23 ["memberUniqueIds"]
      126 JUMPIFNOT                        R15 ; [+11]
      127 GETTABLEKS                       R15 R8 K23 ["memberUniqueIds"]
      129 LOADNIL                          R16
      130 LOADNIL                          R17
      131 FORGPREP                         R15
      132 GETTABLE                         R20 R13 R19
      133 JUMPIFNOT                        R20 ; [+2]
      134 LOADB                            R14 1
      135 JUMP                             ; [+2]
      136 FORGLOOP                         R15 2 ; [-5]
      138 LOADNIL                          R15
      139 JUMPIFNOT                        R14 ; [+19]
      140 GETUPVAL                         R16 0
      141 GETTABLEKS                       R16 R16 K24 ["createElement"]
      143 GETUPVAL                         R17 6
      144 DUPTABLE                         R18 K31 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-emphasis-muted", ["TextXAlignment"], ["TextWrapped"] = True}]
      145 LOADK                            R21 K14 ["TexturePanel"]
      146 LOADK                            R22 K32 ["MultiGenerationInProgress"]
      147 NAMECALL                         R19 R1 K16 ["getText"]
      149 CALL                             R19 3 1
      150 SETTABLEKS                       R19 R18 K25 ["Text"]
      152 GETIMPORT                        R19 K35 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R19 R18 K28 ["TextXAlignment"]
      156 CALL                             R16 2 1
      157 MOVE                             R15 R16
      158 JUMP                             ; [+97]
      159 GETUPVAL                         R16 0
      160 GETTABLEKS                       R16 R16 K24 ["createElement"]
      162 GETUPVAL                         R17 7
      163 DUPTABLE                         R18 K37 [{["tag"] = "col size-full-0 auto-y gap-medium"}]
      164 DUPTABLE                         R19 K40 [{"Hint", "Form"}]
      165 GETUPVAL                         R20 0
      166 GETTABLEKS                       R20 R20 K24 ["createElement"]
      168 GETUPVAL                         R21 6
      169 DUPTABLE                         R22 K42 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-emphasis-muted", ["TextXAlignment"], ["LayoutOrder"]}]
      170 LOADK                            R25 K14 ["TexturePanel"]
      171 LOADK                            R26 K43 ["MultiSelectionTitle"]
      172 DUPTABLE                         R27 K45 [{"count"}]
      173 GETTABLEKS                       R29 R8 K44 ["count"]
      175 FASTCALL1                        TOSTRING R29 ; [+2]
      176 GETIMPORT                        R28 K47 [tostring]
      178 CALL                             R28 1 1
      179 SETTABLEKS                       R28 R27 K44 ["count"]
      181 NAMECALL                         R23 R1 K16 ["getText"]
      183 CALL                             R23 4 1
      184 SETTABLEKS                       R23 R22 K25 ["Text"]
      186 GETIMPORT                        R23 K35 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R23 R22 K28 ["TextXAlignment"]
      190 MOVE                             R23 R4
      191 CALL                             R23 0 1
      192 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      194 CALL                             R20 2 1
      195 SETTABLEKS                       R20 R19 K38 ["Hint"]
      197 GETUPVAL                         R20 0
      198 GETTABLEKS                       R20 R20 K24 ["createElement"]
      200 GETUPVAL                         R21 8
      201 DUPTABLE                         R22 K56 [{"initialPrompt", "initialModel", "onPromptChanged", "onModelChanged", "LayoutOrder", "referenceImage", "onPickReferenceImage", "onClearReferenceImage", "onGenerate"}]
      202 GETTABLEKS                       R23 R9 K8 ["state"]
      204 GETTABLEKS                       R23 R23 K57 ["prompt"]
      206 SETTABLEKS                       R23 R22 K48 ["initialPrompt"]
      208 GETTABLEKS                       R24 R9 K8 ["state"]
      210 GETTABLEKS                       R24 R24 K58 ["model"]
      212 JUMPIFEQKS                       R24 K59 [""] ; [+6]
      214 GETTABLEKS                       R23 R9 K8 ["state"]
      216 GETTABLEKS                       R23 R23 K58 ["model"]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R23
      220 SETTABLEKS                       R23 R22 K49 ["initialModel"]
      222 GETTABLEKS                       R23 R9 K60 ["setPrompt"]
      224 SETTABLEKS                       R23 R22 K50 ["onPromptChanged"]
      226 GETTABLEKS                       R23 R9 K61 ["setModel"]
      228 SETTABLEKS                       R23 R22 K51 ["onModelChanged"]
      230 MOVE                             R23 R4
      231 CALL                             R23 0 1
      232 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      234 GETTABLEKS                       R23 R2 K52 ["referenceImage"]
      236 SETTABLEKS                       R23 R22 K52 ["referenceImage"]
      238 GETTABLEKS                       R23 R2 K62 ["pickReferenceImage"]
      240 SETTABLEKS                       R23 R22 K53 ["onPickReferenceImage"]
      242 GETTABLEKS                       R23 R2 K63 ["clearReferenceImage"]
      244 SETTABLEKS                       R23 R22 K54 ["onClearReferenceImage"]
      246 NEWCLOSURE                       R23 P1
      247 CAPTURE                          VAL R10
      248 CAPTURE                          VAL R3
      249 SETTABLEKS                       R23 R22 K55 ["onGenerate"]
      251 CALL                             R20 2 1
      252 SETTABLEKS                       R20 R19 K39 ["Form"]
      254 CALL                             R16 3 1
      255 MOVE                             R15 R16
      256 DUPTABLE                         R16 K65 [{"Body"}]
      257 GETUPVAL                         R17 0
      258 GETTABLEKS                       R17 R17 K24 ["createElement"]
      260 GETUPVAL                         R18 7
      261 DUPTABLE                         R19 K66 [{["tag"] = "col size-full-0 auto-y gap-medium", ["LayoutOrder"]}]
      262 MOVE                             R20 R4
      263 CALL                             R20 0 1
      264 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      266 DUPTABLE                         R20 K68 [{"Content"}]
      267 SETTABLEKS                       R15 R20 K67 ["Content"]
      269 CALL                             R17 3 1
      270 SETTABLEKS                       R17 R16 K64 ["Body"]
      272 MOVE                             R11 R16
      273 JUMP                             ; [+171]
      274 GETTABLEKS                       R13 R9 K8 ["state"]
      276 GETTABLEKS                       R14 R13 K9 ["stage"]
      278 GETTABLEKS                       R16 R8 K69 ["displayName"]
      280 ORK                              R15 R16 K59 [""]
      281 LOADNIL                          R16
      282 LOADK                            R17 K67 ["Content"]
      283 JUMPIFEQKS                       R14 K70 ["Idle"] ; [+3]
      285 JUMPIFNOTEQKS                    R14 K71 ["Failed"] ; [+71]
      287 LOADK                            R18 K72 ["Form-%*"]
      288 GETTABLEKS                       R21 R8 K73 ["uniqueId"]
      290 ORK                              R20 R21 K59 [""]
      291 NAMECALL                         R18 R18 K74 ["format"]
      293 CALL                             R18 2 1
      294 MOVE                             R17 R18
      295 GETUPVAL                         R18 0
      296 GETTABLEKS                       R18 R18 K24 ["createElement"]
      298 GETUPVAL                         R19 8
      299 DUPTABLE                         R20 K77 [{"initialPrompt", "initialModel", "onPromptChanged", "onModelChanged", "errorMessage", "failureReason", "referenceImage", "onPickReferenceImage", "onClearReferenceImage", "onGenerate"}]
      300 GETTABLEKS                       R21 R13 K57 ["prompt"]
      302 SETTABLEKS                       R21 R20 K48 ["initialPrompt"]
      304 GETTABLEKS                       R22 R13 K58 ["model"]
      306 JUMPIFEQKS                       R22 K59 [""] ; [+4]
      308 GETTABLEKS                       R21 R13 K58 ["model"]
      310 JUMP                             ; [+1]
      311 LOADNIL                          R21
      312 SETTABLEKS                       R21 R20 K49 ["initialModel"]
      314 GETTABLEKS                       R21 R9 K60 ["setPrompt"]
      316 SETTABLEKS                       R21 R20 K50 ["onPromptChanged"]
      318 GETTABLEKS                       R21 R9 K61 ["setModel"]
      320 SETTABLEKS                       R21 R20 K51 ["onModelChanged"]
      322 JUMPIFNOTEQKS                    R14 K71 ["Failed"] ; [+4]
      324 GETTABLEKS                       R21 R13 K75 ["errorMessage"]
      326 JUMP                             ; [+1]
      327 LOADNIL                          R21
      328 SETTABLEKS                       R21 R20 K75 ["errorMessage"]
      330 JUMPIFNOTEQKS                    R14 K71 ["Failed"] ; [+4]
      332 GETTABLEKS                       R21 R13 K76 ["failureReason"]
      334 JUMP                             ; [+1]
      335 LOADNIL                          R21
      336 SETTABLEKS                       R21 R20 K76 ["failureReason"]
      338 GETTABLEKS                       R21 R2 K52 ["referenceImage"]
      340 SETTABLEKS                       R21 R20 K52 ["referenceImage"]
      342 GETTABLEKS                       R21 R2 K62 ["pickReferenceImage"]
      344 SETTABLEKS                       R21 R20 K53 ["onPickReferenceImage"]
      346 GETTABLEKS                       R21 R2 K63 ["clearReferenceImage"]
      348 SETTABLEKS                       R21 R20 K54 ["onClearReferenceImage"]
      350 GETTABLEKS                       R21 R9 K78 ["startGeneration"]
      352 SETTABLEKS                       R21 R20 K55 ["onGenerate"]
      354 CALL                             R18 2 1
      355 MOVE                             R16 R18
      356 JUMP                             ; [+71]
      357 JUMPIFEQKS                       R14 K79 ["GeneratingImages"] ; [+3]
      359 JUMPIFNOTEQKS                    R14 K10 ["PickingImage"] ; [+41]
      361 JUMPIFEQKNIL                     R5 ; [+4]
      363 NEWCLOSURE                       R12 P2
      364 CAPTURE                          VAL R6
      365 JUMP                             ; [+2]
      366 GETTABLEKS                       R12 R9 K80 ["cancel"]
      368 GETUPVAL                         R18 0
      369 GETTABLEKS                       R18 R18 K24 ["createElement"]
      371 GETUPVAL                         R19 9
      372 DUPTABLE                         R20 K87 [{"slots", "canPick", "previewIndex", "setPreviewIndex", "onConfirm", "onReload"}]
      373 GETTABLEKS                       R21 R13 K81 ["slots"]
      375 SETTABLEKS                       R21 R20 K81 ["slots"]
      377 JUMPIFEQKS                       R14 K10 ["PickingImage"] ; [+2]
      379 LOADB                            R21 0 +1
      380 LOADB                            R21 1
      381 SETTABLEKS                       R21 R20 K82 ["canPick"]
      383 SETTABLEKS                       R5 R20 K83 ["previewIndex"]
      385 SETTABLEKS                       R6 R20 K84 ["setPreviewIndex"]
      387 NEWCLOSURE                       R21 P3
      388 CAPTURE                          VAL R9
      389 CAPTURE                          VAL R3
      390 SETTABLEKS                       R21 R20 K85 ["onConfirm"]
      392 NEWCLOSURE                       R21 P4
      393 CAPTURE                          VAL R2
      394 CAPTURE                          VAL R13
      395 CAPTURE                          VAL R9
      396 SETTABLEKS                       R21 R20 K86 ["onReload"]
      398 CALL                             R18 2 1
      399 MOVE                             R16 R18
      400 JUMP                             ; [+27]
      401 GETUPVAL                         R18 0
      402 GETTABLEKS                       R18 R18 K24 ["createElement"]
      404 GETUPVAL                         R19 10
      405 DUPTABLE                         R20 K90 [{"stage", "displayName", "errorMessage", "failureReason", "onReset", "onCancel"}]
      406 SETTABLEKS                       R14 R20 K9 ["stage"]
      408 SETTABLEKS                       R15 R20 K69 ["displayName"]
      410 GETTABLEKS                       R21 R13 K75 ["errorMessage"]
      412 SETTABLEKS                       R21 R20 K75 ["errorMessage"]
      414 GETTABLEKS                       R21 R13 K76 ["failureReason"]
      416 SETTABLEKS                       R21 R20 K76 ["failureReason"]
      418 GETTABLEKS                       R21 R9 K80 ["cancel"]
      420 SETTABLEKS                       R21 R20 K88 ["onReset"]
      422 GETTABLEKS                       R21 R9 K80 ["cancel"]
      424 SETTABLEKS                       R21 R20 K89 ["onCancel"]
      426 CALL                             R18 2 1
      427 MOVE                             R16 R18
      428 DUPTABLE                         R18 K65 [{"Body"}]
      429 GETUPVAL                         R19 0
      430 GETTABLEKS                       R19 R19 K24 ["createElement"]
      432 GETUPVAL                         R20 7
      433 DUPTABLE                         R21 K66 [{["tag"] = "col size-full-0 auto-y gap-medium", ["LayoutOrder"]}]
      434 MOVE                             R22 R4
      435 CALL                             R22 0 1
      436 SETTABLEKS                       R22 R21 K41 ["LayoutOrder"]
      438 NEWTABLE                         R22 1 0
      440 SETTABLE                         R16 R22 R17
      441 CALL                             R19 3 1
      442 SETTABLEKS                       R19 R18 K64 ["Body"]
      444 MOVE                             R11 R18
      445 GETUPVAL                         R13 4
      446 GETTABLEKS                       R13 R13 K2 ["createNextOrder"]
      448 CALL                             R13 0 1
      449 GETUPVAL                         R14 0
      450 GETTABLEKS                       R14 R14 K24 ["createElement"]
      452 GETUPVAL                         R15 7
      453 DUPTABLE                         R16 K93 [{["tag"] = "row align-y-center size-full-0 auto-y gap-small", ["LayoutOrder"] = 0}]
      454 DUPTABLE                         R17 K98 [{"Back", "Title", "Spacer", "Close"}]
      455 JUMPIFNOT                        R12 ; [+45]
      456 GETUPVAL                         R18 0
      457 GETTABLEKS                       R18 R18 K24 ["createElement"]
      459 GETUPVAL                         R19 11
      460 GETTABLEKS                       R19 R19 K99 ["IconButton"]
      462 DUPTABLE                         R20 K105 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["variant"], ["isCircular"] = True}]
      463 MOVE                             R21 R13
      464 CALL                             R21 0 1
      465 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      467 DUPTABLE                         R21 K107 [{"name"}]
      468 GETUPVAL                         R22 11
      469 GETTABLEKS                       R22 R22 K108 ["Enums"]
      471 GETTABLEKS                       R22 R22 K109 ["IconName"]
      473 GETTABLEKS                       R22 R22 K110 ["ChevronLargeLeft"]
      475 SETTABLEKS                       R22 R21 K106 ["name"]
      477 SETTABLEKS                       R21 R20 K100 ["icon"]
      479 SETTABLEKS                       R12 R20 K101 ["onActivated"]
      481 GETUPVAL                         R21 11
      482 GETTABLEKS                       R21 R21 K108 ["Enums"]
      484 GETTABLEKS                       R21 R21 K111 ["InputSize"]
      486 GETTABLEKS                       R21 R21 K112 ["Small"]
      488 SETTABLEKS                       R21 R20 K102 ["size"]
      490 GETUPVAL                         R21 11
      491 GETTABLEKS                       R21 R21 K108 ["Enums"]
      493 GETTABLEKS                       R21 R21 K113 ["ButtonVariant"]
      495 GETTABLEKS                       R21 R21 K114 ["Utility"]
      497 SETTABLEKS                       R21 R20 K103 ["variant"]
      499 CALL                             R18 2 1
      500 JUMP                             ; [+1]
      501 LOADNIL                          R18
      502 SETTABLEKS                       R18 R17 K94 ["Back"]
      504 GETUPVAL                         R18 0
      505 GETTABLEKS                       R18 R18 K24 ["createElement"]
      507 GETUPVAL                         R19 6
      508 DUPTABLE                         R20 K116 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-title-small content-emphasis"}]
      509 MOVE                             R21 R13
      510 CALL                             R21 0 1
      511 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      513 LOADK                            R23 K14 ["TexturePanel"]
      514 LOADK                            R24 K95 ["Title"]
      515 NAMECALL                         R21 R1 K16 ["getText"]
      517 CALL                             R21 3 1
      518 SETTABLEKS                       R21 R20 K25 ["Text"]
      520 CALL                             R18 2 1
      521 SETTABLEKS                       R18 R17 K95 ["Title"]
      523 GETUPVAL                         R18 0
      524 GETTABLEKS                       R18 R18 K24 ["createElement"]
      526 GETUPVAL                         R19 7
      527 DUPTABLE                         R20 K118 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
      528 MOVE                             R21 R13
      529 CALL                             R21 0 1
      530 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      532 CALL                             R18 2 1
      533 SETTABLEKS                       R18 R17 K96 ["Spacer"]
      535 GETUPVAL                         R18 0
      536 GETTABLEKS                       R18 R18 K24 ["createElement"]
      538 GETUPVAL                         R19 11
      539 GETTABLEKS                       R19 R19 K99 ["IconButton"]
      541 DUPTABLE                         R20 K105 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["variant"], ["isCircular"] = True}]
      542 MOVE                             R21 R13
      543 CALL                             R21 0 1
      544 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      546 DUPTABLE                         R21 K107 [{"name"}]
      547 GETUPVAL                         R22 11
      548 GETTABLEKS                       R22 R22 K108 ["Enums"]
      550 GETTABLEKS                       R22 R22 K109 ["IconName"]
      552 GETTABLEKS                       R22 R22 K119 ["X"]
      554 SETTABLEKS                       R22 R21 K106 ["name"]
      556 SETTABLEKS                       R21 R20 K100 ["icon"]
      558 NEWCLOSURE                       R21 P5
      559 CAPTURE                          VAL R3
      560 SETTABLEKS                       R21 R20 K101 ["onActivated"]
      562 GETUPVAL                         R21 11
      563 GETTABLEKS                       R21 R21 K108 ["Enums"]
      565 GETTABLEKS                       R21 R21 K111 ["InputSize"]
      567 GETTABLEKS                       R21 R21 K112 ["Small"]
      569 SETTABLEKS                       R21 R20 K102 ["size"]
      571 GETUPVAL                         R21 11
      572 GETTABLEKS                       R21 R21 K108 ["Enums"]
      574 GETTABLEKS                       R21 R21 K113 ["ButtonVariant"]
      576 GETTABLEKS                       R21 R21 K114 ["Utility"]
      578 SETTABLEKS                       R21 R20 K103 ["variant"]
      580 CALL                             R18 2 1
      581 SETTABLEKS                       R18 R17 K97 ["Close"]
      583 CALL                             R14 3 1
      584 SETTABLEKS                       R14 R11 K120 ["Header"]
      586 GETUPVAL                         R14 0
      587 GETTABLEKS                       R14 R14 K24 ["createElement"]
      589 GETUPVAL                         R15 7
      590 DUPTABLE                         R16 K122 [{["tag"] = "col align-y-top size-full-0 auto-y padding-medium gap-medium bg-surface-100 stroke-standard stroke-emphasis radius-large"}]
      591 MOVE                             R17 R11
      592 CALL                             R14 3 -1
      593 RETURN                           R14 -1

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
       97 GETTABLEKS                       R11 R3 K22 ["View"]
       99 GETTABLEKS                       R12 R3 K23 ["Text"]
      101 DUPCLOSURE                       R13 K24 [PROTO_0]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R14 K25 [PROTO_7]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R3
      117 RETURN                           R14 1
