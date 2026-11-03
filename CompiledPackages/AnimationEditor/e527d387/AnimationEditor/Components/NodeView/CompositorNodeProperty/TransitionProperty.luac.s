PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["View"]
        6 DUPTABLE                         R6 K10 [{["tag"] = "auto-xy", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["ref"], ["testId"] = "transition-property-toggle"}]
        7 SETTABLEKS                       R0 R6 K4 ["LayoutOrder"]
        9 SETTABLEKS                       R1 R6 K5 ["onStateChanged"]
       11 DUPTABLE                         R7 K12 [{"affordance"}]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K13 ["Enums"]
       15 GETTABLEKS                       R8 R8 K14 ["StateLayerAffordance"]
       17 GETTABLEKS                       R8 R8 K15 ["None"]
       19 SETTABLEKS                       R8 R7 K11 ["affordance"]
       21 SETTABLEKS                       R7 R6 K6 ["stateLayer"]
       23 SETTABLEKS                       R2 R6 K7 ["ref"]
       25 DUPTABLE                         R7 K17 [{"Icon"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["createElement"]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K16 ["Icon"]
       32 DUPTABLE                         R10 K23 [{["name"] = "arrow-small-right", ["size"], ["variant"], ["style"]}]
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K13 ["Enums"]
       36 GETTABLEKS                       R11 R11 K24 ["IconSize"]
       38 GETTABLEKS                       R11 R11 K25 ["XSmall"]
       40 SETTABLEKS                       R11 R10 K20 ["size"]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K13 ["Enums"]
       45 GETTABLEKS                       R11 R11 K26 ["IconVariant"]
       47 GETTABLEKS                       R11 R11 K27 ["Regular"]
       49 SETTABLEKS                       R11 R10 K21 ["variant"]
       51 SETTABLEKS                       R3 R10 K22 ["style"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K16 ["Icon"]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["toggle"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["enabled"]
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K3 ["IsDefaultValue"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADN                            R1 0
       12 JUMP                             ; [+7]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["IsHovered"]
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADK                            R1 K5 [0.5]
       18 JUMP                             ; [+1]
       19 LOADN                            R1 1
       20 SETTABLEKS                       R1 R0 K0 ["Transparency"]
       22 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["useToggleState"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K7 ["createNextOrder"]
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R8 0 1
       37 GETTABLEKS                       R9 R3 K9 ["toggle"]
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETTABLEKS                       R8 R0 K10 ["AllowReset"]
       44 JUMPIFNOTEQKB                    R8 FALSE ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R10 0 4
       57 GETTABLEKS                       R11 R3 K12 ["enabled"]
       59 MOVE                             R12 R7
       60 GETTABLEKS                       R13 R0 K13 ["IsDefaultValue"]
       62 GETTABLEKS                       R14 R0 K14 ["IsHovered"]
       64 SETLIST                          R10 R11 4 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K15 ["useSignalState"]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R12 0 2
       78 GETTABLEKS                       R13 R2 K16 ["observeGraphNodeById"]
       80 GETTABLEKS                       R14 R0 K17 ["NodeId"]
       82 SETLIST                          R12 R13 2 [1]
       84 CALL                             R10 2 -1
       85 CALL                             R9 -1 1
       86 GETUPVAL                         R10 5
       87 GETTABLEKS                       R10 R10 K15 ["useSignalState"]
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R11 R11 K11 ["useMemo"]
       92 NEWCLOSURE                       R12 P3
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R0
       95 NEWTABLE                         R13 0 2
       97 GETTABLEKS                       R14 R2 K18 ["observeNodeRenderInfoById"]
       99 GETTABLEKS                       R15 R0 K17 ["NodeId"]
      101 SETLIST                          R13 R14 2 [1]
      103 CALL                             R11 2 -1
      104 CALL                             R10 -1 1
      105 GETTABLEKS                       R12 R0 K19 ["Weight"]
      107 JUMPIFNOTEQKNIL                  R12 ; [+3]
      109 LOADN                            R11 0
      110 JUMP                             ; [+7]
      111 GETTABLEKS                       R13 R0 K19 ["Weight"]
      113 MULK                             R12 R13 K20 [100]
      114 FASTCALL1                        MATH_ROUND R12 ; [+2]
      115 GETIMPORT                        R11 K23 [math.round]
      117 CALL                             R11 1 1
      118 GETTABLEKS                       R12 R0 K24 ["OnDelete"]
      120 JUMPIFNOT                        R12 ; [+2]
      121 GETTABLEKS                       R12 R0 K14 ["IsHovered"]
      123 GETTABLEKS                       R13 R0 K25 ["HideWeight"]
      125 JUMPIFNOT                        R13 ; [+1]
      126 NOT                              R13 R12
      127 GETUPVAL                         R14 6
      128 GETTABLEKS                       R14 R14 K26 ["translateLabel"]
      130 MOVE                             R15 R1
      131 GETTABLEKS                       R16 R0 K27 ["Label"]
      133 CALL                             R14 2 1
      134 GETTABLEKS                       R17 R0 K27 ["Label"]
      136 FASTCALL1                        TYPE R17 ; [+2]
      137 GETIMPORT                        R16 K29 [type]
      139 CALL                             R16 1 1
      140 JUMPIFNOTEQKS                    R16 K30 ["string"] ; [+2]
      142 LOADB                            R15 0 +1
      143 LOADB                            R15 1
      144 GETUPVAL                         R16 7
      145 CALL                             R16 0 1
      146 JUMPIFNOT                        R16 ; [+11]
      147 LOADB                            R16 0
      148 GETTABLEKS                       R17 R0 K31 ["OnRename"]
      150 JUMPIFEQKNIL                     R17 ; [+7]
      152 GETTABLEKS                       R17 R0 K32 ["InputName"]
      154 JUMPIFNOTEQKNIL                  R17 ; [+2]
      156 LOADB                            R16 0 +1
      157 LOADB                            R16 1
      158 GETUPVAL                         R17 1
      159 GETTABLEKS                       R17 R17 K33 ["createElement"]
      161 GETUPVAL                         R18 4
      162 GETTABLEKS                       R18 R18 K34 ["View"]
      164 DUPTABLE                         R19 K38 [{"tag", "LayoutOrder", "testId"}]
      165 GETUPVAL                         R20 4
      166 GETTABLEKS                       R20 R20 K39 ["Hooks"]
      168 GETTABLEKS                       R20 R20 K40 ["useDefaultTags"]
      170 GETTABLEKS                       R21 R0 K41 ["tags"]
      172 LOADK                            R22 K42 ["row auto-y gap-small size-full-700 align-y-center"]
      173 CALL                             R20 2 1
      174 SETTABLEKS                       R20 R19 K35 ["tag"]
      176 GETTABLEKS                       R20 R0 K36 ["LayoutOrder"]
      178 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      180 GETTABLEKS                       R20 R0 K37 ["testId"]
      182 SETTABLEKS                       R20 R19 K37 ["testId"]
      184 DUPTABLE                         R20 K52 [{"PinChildren", "InputLabel", "DuplicateWarning", "InputDelete", "InputDeleteSpacer", "InputWeight", "TrailingControls", "TransitionButton", "Popover"}]
      185 GETUPVAL                         R21 1
      186 GETTABLEKS                       R21 R21 K33 ["createElement"]
      188 LOADK                            R22 K53 ["Folder"]
      189 NEWTABLE                         R23 0 0
      191 GETTABLEKS                       R24 R0 K54 ["children"]
      193 CALL                             R21 3 1
      194 SETTABLEKS                       R21 R20 K43 ["PinChildren"]
      196 JUMPIFNOT                        R16 ; [+23]
      197 GETUPVAL                         R21 1
      198 GETTABLEKS                       R21 R21 K33 ["createElement"]
      200 GETUPVAL                         R22 8
      201 DUPTABLE                         R23 K57 [{"Name", "OnRename", "HasDuplicateName", "LayoutOrder"}]
      202 GETTABLEKS                       R24 R0 K32 ["InputName"]
      204 SETTABLEKS                       R24 R23 K55 ["Name"]
      206 GETTABLEKS                       R24 R0 K31 ["OnRename"]
      208 SETTABLEKS                       R24 R23 K31 ["OnRename"]
      210 GETTABLEKS                       R24 R0 K56 ["HasDuplicateName"]
      212 SETTABLEKS                       R24 R23 K56 ["HasDuplicateName"]
      214 MOVE                             R24 R5
      215 CALL                             R24 0 1
      216 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      218 CALL                             R21 2 1
      219 JUMP                             ; [+33]
      220 GETUPVAL                         R21 1
      221 GETTABLEKS                       R21 R21 K33 ["createElement"]
      223 GETUPVAL                         R22 9
      224 DUPTABLE                         R23 K61 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
      225 NEWTABLE                         R24 4 0
      227 LOADB                            R25 1
      228 SETTABLEKS                       R25 R24 K62 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      230 SETTABLEKS                       R13 R24 K63 ["fill"]
      232 GETUPVAL                         R25 10
      233 CALL                             R25 0 1
      234 JUMPIFNOT                        R25 ; [+1]
      235 NOT                              R25 R13
      236 SETTABLEKS                       R25 R24 K64 ["shrink"]
      238 SETTABLEKS                       R24 R23 K35 ["tag"]
      240 SETTABLEKS                       R14 R23 K58 ["Text"]
      242 GETIMPORT                        R24 K67 [Enum.TextTruncate.SplitWord]
      244 SETTABLEKS                       R24 R23 K59 ["TextTruncate"]
      246 MOVE                             R24 R5
      247 CALL                             R24 0 1
      248 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      250 SETTABLEKS                       R15 R23 K60 ["isDisabled"]
      252 CALL                             R21 2 1
      253 SETTABLEKS                       R21 R20 K44 ["InputLabel"]
      255 JUMPIF                           R16 ; [+84]
      256 JUMPIF                           R12 ; [+83]
      257 GETTABLEKS                       R22 R0 K56 ["HasDuplicateName"]
      259 JUMPIFNOT                        R22 ; [+80]
      260 GETUPVAL                         R21 1
      261 GETTABLEKS                       R21 R21 K33 ["createElement"]
      263 GETUPVAL                         R22 4
      264 GETTABLEKS                       R22 R22 K68 ["Tooltip"]
      266 DUPTABLE                         R23 K72 [{"title", "side", "align", "LayoutOrder"}]
      267 LOADK                            R26 K73 ["Common"]
      268 LOADK                            R27 K74 ["AnimationEditor"]
      269 LOADK                            R28 K75 ["InputPanel"]
      270 LOADK                            R29 K76 ["DuplicateName"]
      271 DUPTABLE                         R30 K78 [{"name"}]
      272 SETTABLEKS                       R14 R30 K77 ["name"]
      274 NAMECALL                         R24 R1 K79 ["getExternalText"]
      276 CALL                             R24 6 1
      277 SETTABLEKS                       R24 R23 K69 ["title"]
      279 GETUPVAL                         R24 4
      280 GETTABLEKS                       R24 R24 K80 ["Enums"]
      282 GETTABLEKS                       R24 R24 K81 ["PopoverSide"]
      284 GETTABLEKS                       R24 R24 K82 ["Bottom"]
      286 SETTABLEKS                       R24 R23 K70 ["side"]
      288 GETUPVAL                         R24 4
      289 GETTABLEKS                       R24 R24 K80 ["Enums"]
      291 GETTABLEKS                       R24 R24 K83 ["PopoverAlign"]
      293 GETTABLEKS                       R24 R24 K84 ["Start"]
      295 SETTABLEKS                       R24 R23 K71 ["align"]
      297 MOVE                             R24 R5
      298 CALL                             R24 0 1
      299 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      301 GETUPVAL                         R24 1
      302 GETTABLEKS                       R24 R24 K33 ["createElement"]
      304 GETUPVAL                         R25 4
      305 GETTABLEKS                       R25 R25 K34 ["View"]
      307 DUPTABLE                         R26 K87 [{["tag"] = "auto-xy", ["testId"] = "input-duplicate-warning"}]
      308 DUPTABLE                         R27 K89 [{"Icon"}]
      309 GETUPVAL                         R28 1
      310 GETTABLEKS                       R28 R28 K33 ["createElement"]
      312 GETUPVAL                         R29 4
      313 GETTABLEKS                       R29 R29 K88 ["Icon"]
      315 DUPTABLE                         R30 K93 [{["name"] = "triangle-exclamation", ["size"], ["variant"]}]
      316 GETUPVAL                         R31 4
      317 GETTABLEKS                       R31 R31 K80 ["Enums"]
      319 GETTABLEKS                       R31 R31 K94 ["IconSize"]
      321 GETTABLEKS                       R31 R31 K95 ["XSmall"]
      323 SETTABLEKS                       R31 R30 K91 ["size"]
      325 GETUPVAL                         R31 4
      326 GETTABLEKS                       R31 R31 K80 ["Enums"]
      328 GETTABLEKS                       R31 R31 K96 ["IconVariant"]
      330 GETTABLEKS                       R31 R31 K97 ["Regular"]
      332 SETTABLEKS                       R31 R30 K92 ["variant"]
      334 CALL                             R28 2 1
      335 SETTABLEKS                       R28 R27 K88 ["Icon"]
      337 CALL                             R24 3 -1
      338 CALL                             R21 -1 1
      339 JUMP                             ; [+1]
      340 LOADNIL                          R21
      341 SETTABLEKS                       R21 R20 K45 ["DuplicateWarning"]
      343 JUMPIF                           R16 ; [+16]
      344 JUMPIFNOT                        R12 ; [+15]
      345 GETUPVAL                         R21 1
      346 GETTABLEKS                       R21 R21 K33 ["createElement"]
      348 GETUPVAL                         R22 11
      349 DUPTABLE                         R23 K98 [{"LayoutOrder", "OnDelete"}]
      350 MOVE                             R24 R5
      351 CALL                             R24 0 1
      352 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      354 GETTABLEKS                       R24 R0 K24 ["OnDelete"]
      356 SETTABLEKS                       R24 R23 K24 ["OnDelete"]
      358 CALL                             R21 2 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R21
      361 SETTABLEKS                       R21 R20 K46 ["InputDelete"]
      363 JUMPIF                           R16 ; [+14]
      364 JUMPIFNOT                        R12 ; [+13]
      365 GETUPVAL                         R21 1
      366 GETTABLEKS                       R21 R21 K33 ["createElement"]
      368 GETUPVAL                         R22 4
      369 GETTABLEKS                       R22 R22 K34 ["View"]
      371 DUPTABLE                         R23 K100 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      372 MOVE                             R24 R5
      373 CALL                             R24 0 1
      374 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      376 CALL                             R21 2 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R21
      379 SETTABLEKS                       R21 R20 K47 ["InputDeleteSpacer"]
      381 JUMPIF                           R16 ; [+49]
      382 GETTABLEKS                       R22 R0 K25 ["HideWeight"]
      384 JUMPIF                           R22 ; [+46]
      385 JUMPIF                           R12 ; [+45]
      386 GETUPVAL                         R21 1
      387 GETTABLEKS                       R21 R21 K33 ["createElement"]
      389 GETUPVAL                         R22 4
      390 GETTABLEKS                       R22 R22 K58 ["Text"]
      392 DUPTABLE                         R23 K102 [{"tag", "Size", "Text", "LayoutOrder"}]
      393 NEWTABLE                         R24 4 0
      395 LOADB                            R25 1
      396 SETTABLEKS                       R25 R24 K103 ["auto-y text-body-small text-align-x-left content-muted"]
      398 GETUPVAL                         R26 10
      399 CALL                             R26 0 1
      400 NOT                              R25 R26
      401 JUMPIFNOT                        R25 ; [+1]
      402 NOT                              R25 R12
      403 SETTABLEKS                       R25 R24 K63 ["fill"]
      405 GETUPVAL                         R25 10
      406 CALL                             R25 0 1
      407 SETTABLEKS                       R25 R24 K104 ["grow"]
      409 SETTABLEKS                       R24 R23 K35 ["tag"]
      411 GETIMPORT                        R24 K107 [UDim2.fromOffset]
      413 LOADN                            R25 30
      414 LOADN                            R26 0
      415 CALL                             R24 2 1
      416 SETTABLEKS                       R24 R23 K101 ["Size"]
      418 LOADK                            R24 K108 ["%*%%"]
      419 MOVE                             R26 R11
      420 NAMECALL                         R24 R24 K109 ["format"]
      422 CALL                             R24 2 1
      423 SETTABLEKS                       R24 R23 K58 ["Text"]
      425 MOVE                             R24 R5
      426 CALL                             R24 0 1
      427 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      429 CALL                             R21 2 1
      430 JUMP                             ; [+1]
      431 LOADNIL                          R21
      432 SETTABLEKS                       R21 R20 K48 ["InputWeight"]
      434 JUMPIFNOT                        R16 ; [+115]
      435 GETUPVAL                         R21 1
      436 GETTABLEKS                       R21 R21 K33 ["createElement"]
      438 GETUPVAL                         R22 4
      439 GETTABLEKS                       R22 R22 K34 ["View"]
      441 DUPTABLE                         R23 K110 [{"tag", "Size", "LayoutOrder"}]
      442 NEWTABLE                         R24 2 0
      444 LOADB                            R25 1
      445 SETTABLEKS                       R25 R24 K111 ["row align-y-center auto-y"]
      447 GETUPVAL                         R25 12
      448 CALL                             R25 0 1
      449 SETTABLEKS                       R25 R24 K63 ["fill"]
      451 SETTABLEKS                       R24 R23 K35 ["tag"]
      453 GETUPVAL                         R25 12
      454 CALL                             R25 0 1
      455 JUMPIFNOT                        R25 ; [+2]
      456 LOADNIL                          R24
      457 JUMP                             ; [+7]
      458 GETIMPORT                        R24 K107 [UDim2.fromOffset]
      460 GETUPVAL                         R25 13
      461 GETTABLEKS                       R25 R25 K112 ["PROPERTY_WIDTH"]
      463 LOADN                            R26 0
      464 CALL                             R24 2 1
      465 SETTABLEKS                       R24 R23 K101 ["Size"]
      467 MOVE                             R24 R5
      468 CALL                             R24 0 1
      469 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      471 DUPTABLE                         R24 K116 [{"WeightOrDelete", "Spacer", "Arrow"}]
      472 GETUPVAL                         R25 1
      473 GETTABLEKS                       R25 R25 K33 ["createElement"]
      475 GETUPVAL                         R26 4
      476 GETTABLEKS                       R26 R26 K34 ["View"]
      478 DUPTABLE                         R27 K118 [{["tag"] = "row align-y-center auto-y", ["Size"], ["LayoutOrder"] = 1}]
      479 GETIMPORT                        R28 K107 [UDim2.fromOffset]
      481 GETUPVAL                         R29 13
      482 GETTABLEKS                       R29 R29 K119 ["WEIGHT_WIDTH"]
      484 LOADN                            R30 0
      485 CALL                             R28 2 1
      486 SETTABLEKS                       R28 R27 K101 ["Size"]
      488 DUPTABLE                         R28 K121 [{"Delete", "Weight"}]
      489 JUMPIFNOT                        R12 ; [+11]
      490 GETUPVAL                         R29 1
      491 GETTABLEKS                       R29 R29 K33 ["createElement"]
      493 GETUPVAL                         R30 11
      494 DUPTABLE                         R31 K122 [{"OnDelete"}]
      495 GETTABLEKS                       R32 R0 K24 ["OnDelete"]
      497 SETTABLEKS                       R32 R31 K24 ["OnDelete"]
      499 CALL                             R29 2 1
      500 JUMP                             ; [+1]
      501 LOADNIL                          R29
      502 SETTABLEKS                       R29 R28 K120 ["Delete"]
      504 JUMPIF                           R12 ; [+19]
      505 GETTABLEKS                       R30 R0 K25 ["HideWeight"]
      507 JUMPIF                           R30 ; [+16]
      508 GETUPVAL                         R29 1
      509 GETTABLEKS                       R29 R29 K33 ["createElement"]
      511 GETUPVAL                         R30 4
      512 GETTABLEKS                       R30 R30 K58 ["Text"]
      514 DUPTABLE                         R31 K124 [{["tag"] = "auto-y text-body-small text-align-x-left content-muted fill", ["Text"]}]
      515 LOADK                            R32 K108 ["%*%%"]
      516 MOVE                             R34 R11
      517 NAMECALL                         R32 R32 K109 ["format"]
      519 CALL                             R32 2 1
      520 SETTABLEKS                       R32 R31 K58 ["Text"]
      522 CALL                             R29 2 1
      523 JUMP                             ; [+1]
      524 LOADNIL                          R29
      525 SETTABLEKS                       R29 R28 K19 ["Weight"]
      527 CALL                             R25 3 1
      528 SETTABLEKS                       R25 R24 K113 ["WeightOrDelete"]
      530 GETUPVAL                         R25 1
      531 GETTABLEKS                       R25 R25 K33 ["createElement"]
      533 GETUPVAL                         R26 4
      534 GETTABLEKS                       R26 R26 K34 ["View"]
      536 DUPTABLE                         R27 K126 [{["tag"] = "fill auto-y", ["LayoutOrder"] = 2}]
      537 CALL                             R25 2 1
      538 SETTABLEKS                       R25 R24 K114 ["Spacer"]
      540 GETUPVAL                         R25 14
      541 LOADN                            R26 3
      542 MOVE                             R27 R6
      543 MOVE                             R28 R4
      544 MOVE                             R29 R8
      545 CALL                             R25 4 1
      546 SETTABLEKS                       R25 R24 K115 ["Arrow"]
      548 CALL                             R21 3 1
      549 JUMP                             ; [+1]
      550 LOADNIL                          R21
      551 SETTABLEKS                       R21 R20 K49 ["TrailingControls"]
      553 JUMPIF                           R16 ; [+8]
      554 GETUPVAL                         R21 14
      555 MOVE                             R22 R5
      556 CALL                             R22 0 1
      557 MOVE                             R23 R6
      558 MOVE                             R24 R4
      559 MOVE                             R25 R8
      560 CALL                             R21 4 1
      561 JUMP                             ; [+1]
      562 LOADNIL                          R21
      563 SETTABLEKS                       R21 R20 K50 ["TransitionButton"]
      565 GETUPVAL                         R21 1
      566 GETTABLEKS                       R21 R21 K33 ["createElement"]
      568 GETUPVAL                         R22 4
      569 GETTABLEKS                       R22 R22 K51 ["Popover"]
      571 GETTABLEKS                       R22 R22 K127 ["Root"]
      573 DUPTABLE                         R23 K129 [{"isOpen"}]
      574 GETTABLEKS                       R24 R3 K12 ["enabled"]
      576 SETTABLEKS                       R24 R23 K128 ["isOpen"]
      578 DUPTABLE                         R24 K132 [{"Anchor", "Content"}]
      579 GETUPVAL                         R25 1
      580 GETTABLEKS                       R25 R25 K33 ["createElement"]
      582 GETUPVAL                         R26 4
      583 GETTABLEKS                       R26 R26 K51 ["Popover"]
      585 GETTABLEKS                       R26 R26 K130 ["Anchor"]
      587 DUPTABLE                         R27 K134 [{"anchorRef"}]
      588 SETTABLEKS                       R4 R27 K133 ["anchorRef"]
      590 CALL                             R25 2 1
      591 SETTABLEKS                       R25 R24 K130 ["Anchor"]
      593 GETUPVAL                         R25 1
      594 GETTABLEKS                       R25 R25 K33 ["createElement"]
      596 GETUPVAL                         R26 4
      597 GETTABLEKS                       R26 R26 K51 ["Popover"]
      599 GETTABLEKS                       R26 R26 K131 ["Content"]
      601 DUPTABLE                         R27 K136 [{"align", "side", "onPressedOutside"}]
      602 GETUPVAL                         R28 4
      603 GETTABLEKS                       R28 R28 K80 ["Enums"]
      605 GETTABLEKS                       R28 R28 K83 ["PopoverAlign"]
      607 GETTABLEKS                       R28 R28 K84 ["Start"]
      609 SETTABLEKS                       R28 R27 K71 ["align"]
      611 GETUPVAL                         R28 4
      612 GETTABLEKS                       R28 R28 K80 ["Enums"]
      614 GETTABLEKS                       R28 R28 K81 ["PopoverSide"]
      616 GETTABLEKS                       R28 R28 K137 ["Right"]
      618 SETTABLEKS                       R28 R27 K70 ["side"]
      620 GETTABLEKS                       R28 R3 K138 ["disable"]
      622 SETTABLEKS                       R28 R27 K135 ["onPressedOutside"]
      624 JUMPIFNOT                        R9 ; [+63]
      625 GETUPVAL                         R28 1
      626 GETTABLEKS                       R28 R28 K33 ["createElement"]
      628 GETUPVAL                         R29 15
      629 DUPTABLE                         R30 K152 [{["AllowReset"], ["Name"], ["Expanded"] = True, ["IsDefaultValue"], ["TransitionBuilder"], ["Transition"], ["OnChanged"], ["OnClosed"], ["GraphPayload"], ["PropertyLookup"], ["Position"], ["Size"], ["StateLookup"], ["text"] = "", ["editName"] = ""}]
      630 SETTABLEKS                       R7 R30 K10 ["AllowReset"]
      632 GETTABLEKS                       R32 R0 K27 ["Label"]
      634 ORK                              R31 R32 K150 [""]
      635 SETTABLEKS                       R31 R30 K55 ["Name"]
      637 GETTABLEKS                       R31 R0 K13 ["IsDefaultValue"]
      639 SETTABLEKS                       R31 R30 K13 ["IsDefaultValue"]
      641 GETTABLEKS                       R31 R0 K141 ["TransitionBuilder"]
      643 SETTABLEKS                       R31 R30 K141 ["TransitionBuilder"]
      645 GETTABLEKS                       R31 R0 K153 ["Value"]
      647 JUMPIF                           R31 ; [+2]
      648 GETTABLEKS                       R31 R0 K154 ["DefaultValue"]
      650 SETTABLEKS                       R31 R30 K142 ["Transition"]
      652 GETTABLEKS                       R31 R0 K143 ["OnChanged"]
      654 SETTABLEKS                       R31 R30 K143 ["OnChanged"]
      656 GETTABLEKS                       R31 R3 K138 ["disable"]
      658 SETTABLEKS                       R31 R30 K144 ["OnClosed"]
      660 SETTABLEKS                       R9 R30 K145 ["GraphPayload"]
      662 NEWTABLE                         R31 0 0
      664 SETTABLEKS                       R31 R30 K146 ["PropertyLookup"]
      666 JUMPIFNOT                        R10 ; [+3]
      667 GETTABLEKS                       R31 R10 K155 ["position"]
      669 JUMP                             ; [+2]
      670 GETIMPORT                        R31 K158 [Vector2.zero]
      672 SETTABLEKS                       R31 R30 K147 ["Position"]
      674 JUMPIFNOT                        R10 ; [+3]
      675 GETTABLEKS                       R31 R10 K91 ["size"]
      677 JUMP                             ; [+2]
      678 GETIMPORT                        R31 K158 [Vector2.zero]
      680 SETTABLEKS                       R31 R30 K101 ["Size"]
      682 NEWTABLE                         R31 0 0
      684 SETTABLEKS                       R31 R30 K148 ["StateLookup"]
      686 CALL                             R28 2 1
      687 JUMP                             ; [+1]
      688 LOADNIL                          R28
      689 CALL                             R25 3 1
      690 SETTABLEKS                       R25 R24 K131 ["Content"]
      692 CALL                             R21 3 1
      693 SETTABLEKS                       R21 R20 K51 ["Popover"]
      695 CALL                             R17 3 -1
      696 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["DeleteInputButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K8 ["CompositorNodeInput"]
       40 GETTABLEKS                       R5 R5 K13 ["InputNameField"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K14 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K15 ["NativeGraphContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K10 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Util"]
       61 GETTABLEKS                       R8 R8 K18 ["Nodes"]
       63 GETTABLEKS                       R8 R8 K19 ["NodeNameFormattingUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Components"]
       70 GETTABLEKS                       R9 R9 K7 ["NodeView"]
       72 GETTABLEKS                       R9 R9 K20 ["CompositorNodeProperty"]
       74 GETTABLEKS                       R9 R9 K21 ["PropertyConstants"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Components"]
       81 GETTABLEKS                       R10 R10 K7 ["NodeView"]
       83 GETTABLEKS                       R10 R10 K20 ["CompositorNodeProperty"]
       85 GETTABLEKS                       R10 R10 K22 ["PropertyLabel"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K10 ["Parent"]
       92 GETTABLEKS                       R11 R11 K23 ["React"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K10 ["Parent"]
       99 GETTABLEKS                       R12 R12 K24 ["ReactUtils"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K10 ["Parent"]
      106 GETTABLEKS                       R13 R13 K25 ["SignalsReact"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K6 ["Components"]
      113 GETTABLEKS                       R14 R14 K7 ["NodeView"]
      115 GETTABLEKS                       R14 R14 K26 ["CompositorNodeTransition"]
      117 GETTABLEKS                       R14 R14 K27 ["TransitionPanel"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K28 ["Flags"]
      124 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphUIInputIds"]
      126 CALL                             R14 1 1
      127 GETTABLEKS                       R15 R6 K30 ["getFFlagAnimGraphUINodeFieldLayout"]
      129 GETIMPORT                        R16 K5 [require]
      131 GETTABLEKS                       R17 R0 K28 ["Flags"]
      133 GETTABLEKS                       R17 R17 K31 ["getFFlagAnimGraphUIWeightOverlap"]
      135 CALL                             R16 1 1
      136 DUPCLOSURE                       R17 K32 [PROTO_0]
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R2
      139 DUPCLOSURE                       R18 K33 [PROTO_5]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R13
      156 RETURN                           R18 1
