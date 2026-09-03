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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["prompt"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+11]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["startGeneration"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["prompt"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["model"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

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
       88 JUMP                             ; [+276]
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
      107 JUMP                             ; [+257]
      108 GETTABLEKS                       R13 R8 K5 ["kind"]
      110 JUMPIFNOTEQKS                    R13 K21 ["multi"] ; [+123]
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
      158 JUMP                             ; [+57]
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
      201 DUPTABLE                         R22 K51 [{["initialPrompt"] = "", ["LayoutOrder"], ["onGenerate"]}]
      202 MOVE                             R23 R4
      203 CALL                             R23 0 1
      204 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      206 NEWCLOSURE                       R23 P1
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R3
      209 SETTABLEKS                       R23 R22 K50 ["onGenerate"]
      211 CALL                             R20 2 1
      212 SETTABLEKS                       R20 R19 K39 ["Form"]
      214 CALL                             R16 3 1
      215 MOVE                             R15 R16
      216 DUPTABLE                         R16 K53 [{"Body"}]
      217 GETUPVAL                         R17 0
      218 GETTABLEKS                       R17 R17 K24 ["createElement"]
      220 GETUPVAL                         R18 7
      221 DUPTABLE                         R19 K54 [{["tag"] = "col size-full-0 auto-y gap-medium", ["LayoutOrder"]}]
      222 MOVE                             R20 R4
      223 CALL                             R20 0 1
      224 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      226 DUPTABLE                         R20 K56 [{"Content"}]
      227 SETTABLEKS                       R15 R20 K55 ["Content"]
      229 CALL                             R17 3 1
      230 SETTABLEKS                       R17 R16 K52 ["Body"]
      232 MOVE                             R11 R16
      233 JUMP                             ; [+131]
      234 GETTABLEKS                       R13 R9 K8 ["state"]
      236 GETTABLEKS                       R14 R13 K9 ["stage"]
      238 GETTABLEKS                       R16 R8 K57 ["displayName"]
      240 ORK                              R15 R16 K49 [""]
      241 LOADNIL                          R16
      242 JUMPIFEQKS                       R14 K58 ["Idle"] ; [+3]
      244 JUMPIFNOTEQKS                    R14 K59 ["Failed"] ; [+33]
      246 GETUPVAL                         R17 0
      247 GETTABLEKS                       R17 R17 K24 ["createElement"]
      249 GETUPVAL                         R18 8
      250 DUPTABLE                         R19 K62 [{"initialPrompt", "errorMessage", "failureReason", "onGenerate"}]
      251 GETTABLEKS                       R20 R13 K63 ["prompt"]
      253 SETTABLEKS                       R20 R19 K48 ["initialPrompt"]
      255 JUMPIFNOTEQKS                    R14 K59 ["Failed"] ; [+4]
      257 GETTABLEKS                       R20 R13 K60 ["errorMessage"]
      259 JUMP                             ; [+1]
      260 LOADNIL                          R20
      261 SETTABLEKS                       R20 R19 K60 ["errorMessage"]
      263 JUMPIFNOTEQKS                    R14 K59 ["Failed"] ; [+4]
      265 GETTABLEKS                       R20 R13 K61 ["failureReason"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R20
      269 SETTABLEKS                       R20 R19 K61 ["failureReason"]
      271 GETTABLEKS                       R20 R9 K64 ["startGeneration"]
      273 SETTABLEKS                       R20 R19 K50 ["onGenerate"]
      275 CALL                             R17 2 1
      276 MOVE                             R16 R17
      277 JUMP                             ; [+70]
      278 JUMPIFEQKS                       R14 K65 ["GeneratingImages"] ; [+3]
      280 JUMPIFNOTEQKS                    R14 K10 ["PickingImage"] ; [+40]
      282 JUMPIFEQKNIL                     R5 ; [+4]
      284 NEWCLOSURE                       R12 P2
      285 CAPTURE                          VAL R6
      286 JUMP                             ; [+2]
      287 GETTABLEKS                       R12 R9 K66 ["cancel"]
      289 GETUPVAL                         R17 0
      290 GETTABLEKS                       R17 R17 K24 ["createElement"]
      292 GETUPVAL                         R18 9
      293 DUPTABLE                         R19 K73 [{"slots", "canPick", "previewIndex", "setPreviewIndex", "onConfirm", "onReload"}]
      294 GETTABLEKS                       R20 R13 K67 ["slots"]
      296 SETTABLEKS                       R20 R19 K67 ["slots"]
      298 JUMPIFEQKS                       R14 K10 ["PickingImage"] ; [+2]
      300 LOADB                            R20 0 +1
      301 LOADB                            R20 1
      302 SETTABLEKS                       R20 R19 K68 ["canPick"]
      304 SETTABLEKS                       R5 R19 K69 ["previewIndex"]
      306 SETTABLEKS                       R6 R19 K70 ["setPreviewIndex"]
      308 NEWCLOSURE                       R20 P3
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R3
      311 SETTABLEKS                       R20 R19 K71 ["onConfirm"]
      313 NEWCLOSURE                       R20 P4
      314 CAPTURE                          VAL R13
      315 CAPTURE                          VAL R9
      316 SETTABLEKS                       R20 R19 K72 ["onReload"]
      318 CALL                             R17 2 1
      319 MOVE                             R16 R17
      320 JUMP                             ; [+27]
      321 GETUPVAL                         R17 0
      322 GETTABLEKS                       R17 R17 K24 ["createElement"]
      324 GETUPVAL                         R18 10
      325 DUPTABLE                         R19 K76 [{"stage", "displayName", "errorMessage", "failureReason", "onReset", "onCancel"}]
      326 SETTABLEKS                       R14 R19 K9 ["stage"]
      328 SETTABLEKS                       R15 R19 K57 ["displayName"]
      330 GETTABLEKS                       R20 R13 K60 ["errorMessage"]
      332 SETTABLEKS                       R20 R19 K60 ["errorMessage"]
      334 GETTABLEKS                       R20 R13 K61 ["failureReason"]
      336 SETTABLEKS                       R20 R19 K61 ["failureReason"]
      338 GETTABLEKS                       R20 R9 K66 ["cancel"]
      340 SETTABLEKS                       R20 R19 K74 ["onReset"]
      342 GETTABLEKS                       R20 R9 K66 ["cancel"]
      344 SETTABLEKS                       R20 R19 K75 ["onCancel"]
      346 CALL                             R17 2 1
      347 MOVE                             R16 R17
      348 DUPTABLE                         R17 K53 [{"Body"}]
      349 GETUPVAL                         R18 0
      350 GETTABLEKS                       R18 R18 K24 ["createElement"]
      352 GETUPVAL                         R19 7
      353 DUPTABLE                         R20 K54 [{["tag"] = "col size-full-0 auto-y gap-medium", ["LayoutOrder"]}]
      354 MOVE                             R21 R4
      355 CALL                             R21 0 1
      356 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      358 DUPTABLE                         R21 K56 [{"Content"}]
      359 SETTABLEKS                       R16 R21 K55 ["Content"]
      361 CALL                             R18 3 1
      362 SETTABLEKS                       R18 R17 K52 ["Body"]
      364 MOVE                             R11 R17
      365 GETUPVAL                         R13 4
      366 GETTABLEKS                       R13 R13 K2 ["createNextOrder"]
      368 CALL                             R13 0 1
      369 GETUPVAL                         R14 0
      370 GETTABLEKS                       R14 R14 K24 ["createElement"]
      372 GETUPVAL                         R15 7
      373 DUPTABLE                         R16 K79 [{["tag"] = "row align-y-center size-full-0 auto-y gap-small", ["LayoutOrder"] = 0}]
      374 DUPTABLE                         R17 K84 [{"Back", "Title", "Spacer", "Close"}]
      375 JUMPIFNOT                        R12 ; [+45]
      376 GETUPVAL                         R18 0
      377 GETTABLEKS                       R18 R18 K24 ["createElement"]
      379 GETUPVAL                         R19 11
      380 GETTABLEKS                       R19 R19 K85 ["IconButton"]
      382 DUPTABLE                         R20 K91 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["variant"], ["isCircular"] = True}]
      383 MOVE                             R21 R13
      384 CALL                             R21 0 1
      385 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      387 DUPTABLE                         R21 K93 [{"name"}]
      388 GETUPVAL                         R22 11
      389 GETTABLEKS                       R22 R22 K94 ["Enums"]
      391 GETTABLEKS                       R22 R22 K95 ["IconName"]
      393 GETTABLEKS                       R22 R22 K96 ["ChevronLargeLeft"]
      395 SETTABLEKS                       R22 R21 K92 ["name"]
      397 SETTABLEKS                       R21 R20 K86 ["icon"]
      399 SETTABLEKS                       R12 R20 K87 ["onActivated"]
      401 GETUPVAL                         R21 11
      402 GETTABLEKS                       R21 R21 K94 ["Enums"]
      404 GETTABLEKS                       R21 R21 K97 ["InputSize"]
      406 GETTABLEKS                       R21 R21 K98 ["Small"]
      408 SETTABLEKS                       R21 R20 K88 ["size"]
      410 GETUPVAL                         R21 11
      411 GETTABLEKS                       R21 R21 K94 ["Enums"]
      413 GETTABLEKS                       R21 R21 K99 ["ButtonVariant"]
      415 GETTABLEKS                       R21 R21 K100 ["Utility"]
      417 SETTABLEKS                       R21 R20 K89 ["variant"]
      419 CALL                             R18 2 1
      420 JUMP                             ; [+1]
      421 LOADNIL                          R18
      422 SETTABLEKS                       R18 R17 K80 ["Back"]
      424 GETUPVAL                         R18 0
      425 GETTABLEKS                       R18 R18 K24 ["createElement"]
      427 GETUPVAL                         R19 6
      428 DUPTABLE                         R20 K102 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-title-small content-emphasis"}]
      429 MOVE                             R21 R13
      430 CALL                             R21 0 1
      431 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      433 LOADK                            R23 K14 ["TexturePanel"]
      434 LOADK                            R24 K81 ["Title"]
      435 NAMECALL                         R21 R1 K16 ["getText"]
      437 CALL                             R21 3 1
      438 SETTABLEKS                       R21 R20 K25 ["Text"]
      440 CALL                             R18 2 1
      441 SETTABLEKS                       R18 R17 K81 ["Title"]
      443 GETUPVAL                         R18 0
      444 GETTABLEKS                       R18 R18 K24 ["createElement"]
      446 GETUPVAL                         R19 7
      447 DUPTABLE                         R20 K104 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
      448 MOVE                             R21 R13
      449 CALL                             R21 0 1
      450 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      452 CALL                             R18 2 1
      453 SETTABLEKS                       R18 R17 K82 ["Spacer"]
      455 GETUPVAL                         R18 0
      456 GETTABLEKS                       R18 R18 K24 ["createElement"]
      458 GETUPVAL                         R19 11
      459 GETTABLEKS                       R19 R19 K85 ["IconButton"]
      461 DUPTABLE                         R20 K91 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["variant"], ["isCircular"] = True}]
      462 MOVE                             R21 R13
      463 CALL                             R21 0 1
      464 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      466 DUPTABLE                         R21 K93 [{"name"}]
      467 GETUPVAL                         R22 11
      468 GETTABLEKS                       R22 R22 K94 ["Enums"]
      470 GETTABLEKS                       R22 R22 K95 ["IconName"]
      472 GETTABLEKS                       R22 R22 K105 ["X"]
      474 SETTABLEKS                       R22 R21 K92 ["name"]
      476 SETTABLEKS                       R21 R20 K86 ["icon"]
      478 NEWCLOSURE                       R21 P5
      479 CAPTURE                          VAL R3
      480 SETTABLEKS                       R21 R20 K87 ["onActivated"]
      482 GETUPVAL                         R21 11
      483 GETTABLEKS                       R21 R21 K94 ["Enums"]
      485 GETTABLEKS                       R21 R21 K97 ["InputSize"]
      487 GETTABLEKS                       R21 R21 K98 ["Small"]
      489 SETTABLEKS                       R21 R20 K88 ["size"]
      491 GETUPVAL                         R21 11
      492 GETTABLEKS                       R21 R21 K94 ["Enums"]
      494 GETTABLEKS                       R21 R21 K99 ["ButtonVariant"]
      496 GETTABLEKS                       R21 R21 K100 ["Utility"]
      498 SETTABLEKS                       R21 R20 K89 ["variant"]
      500 CALL                             R18 2 1
      501 SETTABLEKS                       R18 R17 K83 ["Close"]
      503 CALL                             R14 3 1
      504 SETTABLEKS                       R14 R11 K106 ["Header"]
      506 GETUPVAL                         R14 0
      507 GETTABLEKS                       R14 R14 K24 ["createElement"]
      509 GETUPVAL                         R15 7
      510 DUPTABLE                         R16 K108 [{["tag"] = "col align-y-top size-full-0 auto-y padding-medium gap-medium bg-surface-100 stroke-standard stroke-emphasis radius-large"}]
      511 MOVE                             R17 R11
      512 CALL                             R14 3 -1
      513 RETURN                           R14 -1

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
