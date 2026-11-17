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
      219 JUMP                             ; [+30]
      220 GETUPVAL                         R21 1
      221 GETTABLEKS                       R21 R21 K33 ["createElement"]
      223 GETUPVAL                         R22 9
      224 DUPTABLE                         R23 K61 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
      225 NEWTABLE                         R24 4 0
      227 LOADB                            R25 1
      228 SETTABLEKS                       R25 R24 K62 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      230 SETTABLEKS                       R13 R24 K63 ["fill"]
      232 NOT                              R25 R13
      233 SETTABLEKS                       R25 R24 K64 ["shrink"]
      235 SETTABLEKS                       R24 R23 K35 ["tag"]
      237 SETTABLEKS                       R14 R23 K58 ["Text"]
      239 GETIMPORT                        R24 K67 [Enum.TextTruncate.SplitWord]
      241 SETTABLEKS                       R24 R23 K59 ["TextTruncate"]
      243 MOVE                             R24 R5
      244 CALL                             R24 0 1
      245 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      247 SETTABLEKS                       R15 R23 K60 ["isDisabled"]
      249 CALL                             R21 2 1
      250 SETTABLEKS                       R21 R20 K44 ["InputLabel"]
      252 JUMPIF                           R16 ; [+84]
      253 JUMPIF                           R12 ; [+83]
      254 GETTABLEKS                       R22 R0 K56 ["HasDuplicateName"]
      256 JUMPIFNOT                        R22 ; [+80]
      257 GETUPVAL                         R21 1
      258 GETTABLEKS                       R21 R21 K33 ["createElement"]
      260 GETUPVAL                         R22 4
      261 GETTABLEKS                       R22 R22 K68 ["Tooltip"]
      263 DUPTABLE                         R23 K72 [{"title", "side", "align", "LayoutOrder"}]
      264 LOADK                            R26 K73 ["Common"]
      265 LOADK                            R27 K74 ["AnimationEditor"]
      266 LOADK                            R28 K75 ["InputPanel"]
      267 LOADK                            R29 K76 ["DuplicateName"]
      268 DUPTABLE                         R30 K78 [{"name"}]
      269 SETTABLEKS                       R14 R30 K77 ["name"]
      271 NAMECALL                         R24 R1 K79 ["getExternalText"]
      273 CALL                             R24 6 1
      274 SETTABLEKS                       R24 R23 K69 ["title"]
      276 GETUPVAL                         R24 4
      277 GETTABLEKS                       R24 R24 K80 ["Enums"]
      279 GETTABLEKS                       R24 R24 K81 ["PopoverSide"]
      281 GETTABLEKS                       R24 R24 K82 ["Bottom"]
      283 SETTABLEKS                       R24 R23 K70 ["side"]
      285 GETUPVAL                         R24 4
      286 GETTABLEKS                       R24 R24 K80 ["Enums"]
      288 GETTABLEKS                       R24 R24 K83 ["PopoverAlign"]
      290 GETTABLEKS                       R24 R24 K84 ["Start"]
      292 SETTABLEKS                       R24 R23 K71 ["align"]
      294 MOVE                             R24 R5
      295 CALL                             R24 0 1
      296 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      298 GETUPVAL                         R24 1
      299 GETTABLEKS                       R24 R24 K33 ["createElement"]
      301 GETUPVAL                         R25 4
      302 GETTABLEKS                       R25 R25 K34 ["View"]
      304 DUPTABLE                         R26 K87 [{["tag"] = "auto-xy", ["testId"] = "input-duplicate-warning"}]
      305 DUPTABLE                         R27 K89 [{"Icon"}]
      306 GETUPVAL                         R28 1
      307 GETTABLEKS                       R28 R28 K33 ["createElement"]
      309 GETUPVAL                         R29 4
      310 GETTABLEKS                       R29 R29 K88 ["Icon"]
      312 DUPTABLE                         R30 K93 [{["name"] = "triangle-exclamation", ["size"], ["variant"]}]
      313 GETUPVAL                         R31 4
      314 GETTABLEKS                       R31 R31 K80 ["Enums"]
      316 GETTABLEKS                       R31 R31 K94 ["IconSize"]
      318 GETTABLEKS                       R31 R31 K95 ["XSmall"]
      320 SETTABLEKS                       R31 R30 K91 ["size"]
      322 GETUPVAL                         R31 4
      323 GETTABLEKS                       R31 R31 K80 ["Enums"]
      325 GETTABLEKS                       R31 R31 K96 ["IconVariant"]
      327 GETTABLEKS                       R31 R31 K97 ["Regular"]
      329 SETTABLEKS                       R31 R30 K92 ["variant"]
      331 CALL                             R28 2 1
      332 SETTABLEKS                       R28 R27 K88 ["Icon"]
      334 CALL                             R24 3 -1
      335 CALL                             R21 -1 1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R21
      338 SETTABLEKS                       R21 R20 K45 ["DuplicateWarning"]
      340 JUMPIF                           R16 ; [+16]
      341 JUMPIFNOT                        R12 ; [+15]
      342 GETUPVAL                         R21 1
      343 GETTABLEKS                       R21 R21 K33 ["createElement"]
      345 GETUPVAL                         R22 10
      346 DUPTABLE                         R23 K98 [{"LayoutOrder", "OnDelete"}]
      347 MOVE                             R24 R5
      348 CALL                             R24 0 1
      349 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      351 GETTABLEKS                       R24 R0 K24 ["OnDelete"]
      353 SETTABLEKS                       R24 R23 K24 ["OnDelete"]
      355 CALL                             R21 2 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R21
      358 SETTABLEKS                       R21 R20 K46 ["InputDelete"]
      360 JUMPIF                           R16 ; [+14]
      361 JUMPIFNOT                        R12 ; [+13]
      362 GETUPVAL                         R21 1
      363 GETTABLEKS                       R21 R21 K33 ["createElement"]
      365 GETUPVAL                         R22 4
      366 GETTABLEKS                       R22 R22 K34 ["View"]
      368 DUPTABLE                         R23 K100 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      369 MOVE                             R24 R5
      370 CALL                             R24 0 1
      371 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      373 CALL                             R21 2 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R21
      376 SETTABLEKS                       R21 R20 K47 ["InputDeleteSpacer"]
      378 JUMPIF                           R16 ; [+31]
      379 GETTABLEKS                       R22 R0 K25 ["HideWeight"]
      381 JUMPIF                           R22 ; [+28]
      382 JUMPIF                           R12 ; [+27]
      383 GETUPVAL                         R21 1
      384 GETTABLEKS                       R21 R21 K33 ["createElement"]
      386 GETUPVAL                         R22 4
      387 GETTABLEKS                       R22 R22 K58 ["Text"]
      389 DUPTABLE                         R23 K103 [{["tag"] = "auto-y text-body-small text-align-x-left content-muted grow", ["Size"], ["Text"], ["LayoutOrder"]}]
      390 GETIMPORT                        R24 K106 [UDim2.fromOffset]
      392 LOADN                            R25 30
      393 LOADN                            R26 0
      394 CALL                             R24 2 1
      395 SETTABLEKS                       R24 R23 K102 ["Size"]
      397 LOADK                            R24 K107 ["%*%%"]
      398 MOVE                             R26 R11
      399 NAMECALL                         R24 R24 K108 ["format"]
      401 CALL                             R24 2 1
      402 SETTABLEKS                       R24 R23 K58 ["Text"]
      404 MOVE                             R24 R5
      405 CALL                             R24 0 1
      406 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      408 CALL                             R21 2 1
      409 JUMP                             ; [+1]
      410 LOADNIL                          R21
      411 SETTABLEKS                       R21 R20 K48 ["InputWeight"]
      413 JUMPIFNOT                        R16 ; [+115]
      414 GETUPVAL                         R21 1
      415 GETTABLEKS                       R21 R21 K33 ["createElement"]
      417 GETUPVAL                         R22 4
      418 GETTABLEKS                       R22 R22 K34 ["View"]
      420 DUPTABLE                         R23 K109 [{"tag", "Size", "LayoutOrder"}]
      421 NEWTABLE                         R24 2 0
      423 LOADB                            R25 1
      424 SETTABLEKS                       R25 R24 K110 ["row align-y-center auto-y"]
      426 GETUPVAL                         R25 11
      427 CALL                             R25 0 1
      428 SETTABLEKS                       R25 R24 K63 ["fill"]
      430 SETTABLEKS                       R24 R23 K35 ["tag"]
      432 GETUPVAL                         R25 11
      433 CALL                             R25 0 1
      434 JUMPIFNOT                        R25 ; [+2]
      435 LOADNIL                          R24
      436 JUMP                             ; [+7]
      437 GETIMPORT                        R24 K106 [UDim2.fromOffset]
      439 GETUPVAL                         R25 12
      440 GETTABLEKS                       R25 R25 K111 ["PROPERTY_WIDTH"]
      442 LOADN                            R26 0
      443 CALL                             R24 2 1
      444 SETTABLEKS                       R24 R23 K102 ["Size"]
      446 MOVE                             R24 R5
      447 CALL                             R24 0 1
      448 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      450 DUPTABLE                         R24 K115 [{"WeightOrDelete", "Spacer", "Arrow"}]
      451 GETUPVAL                         R25 1
      452 GETTABLEKS                       R25 R25 K33 ["createElement"]
      454 GETUPVAL                         R26 4
      455 GETTABLEKS                       R26 R26 K34 ["View"]
      457 DUPTABLE                         R27 K117 [{["tag"] = "row align-y-center auto-y", ["Size"], ["LayoutOrder"] = 1}]
      458 GETIMPORT                        R28 K106 [UDim2.fromOffset]
      460 GETUPVAL                         R29 12
      461 GETTABLEKS                       R29 R29 K118 ["WEIGHT_WIDTH"]
      463 LOADN                            R30 0
      464 CALL                             R28 2 1
      465 SETTABLEKS                       R28 R27 K102 ["Size"]
      467 DUPTABLE                         R28 K120 [{"Delete", "Weight"}]
      468 JUMPIFNOT                        R12 ; [+11]
      469 GETUPVAL                         R29 1
      470 GETTABLEKS                       R29 R29 K33 ["createElement"]
      472 GETUPVAL                         R30 10
      473 DUPTABLE                         R31 K121 [{"OnDelete"}]
      474 GETTABLEKS                       R32 R0 K24 ["OnDelete"]
      476 SETTABLEKS                       R32 R31 K24 ["OnDelete"]
      478 CALL                             R29 2 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R29
      481 SETTABLEKS                       R29 R28 K119 ["Delete"]
      483 JUMPIF                           R12 ; [+19]
      484 GETTABLEKS                       R30 R0 K25 ["HideWeight"]
      486 JUMPIF                           R30 ; [+16]
      487 GETUPVAL                         R29 1
      488 GETTABLEKS                       R29 R29 K33 ["createElement"]
      490 GETUPVAL                         R30 4
      491 GETTABLEKS                       R30 R30 K58 ["Text"]
      493 DUPTABLE                         R31 K123 [{["tag"] = "auto-y text-body-small text-align-x-left content-muted fill", ["Text"]}]
      494 LOADK                            R32 K107 ["%*%%"]
      495 MOVE                             R34 R11
      496 NAMECALL                         R32 R32 K108 ["format"]
      498 CALL                             R32 2 1
      499 SETTABLEKS                       R32 R31 K58 ["Text"]
      501 CALL                             R29 2 1
      502 JUMP                             ; [+1]
      503 LOADNIL                          R29
      504 SETTABLEKS                       R29 R28 K19 ["Weight"]
      506 CALL                             R25 3 1
      507 SETTABLEKS                       R25 R24 K112 ["WeightOrDelete"]
      509 GETUPVAL                         R25 1
      510 GETTABLEKS                       R25 R25 K33 ["createElement"]
      512 GETUPVAL                         R26 4
      513 GETTABLEKS                       R26 R26 K34 ["View"]
      515 DUPTABLE                         R27 K125 [{["tag"] = "fill auto-y", ["LayoutOrder"] = 2}]
      516 CALL                             R25 2 1
      517 SETTABLEKS                       R25 R24 K113 ["Spacer"]
      519 GETUPVAL                         R25 13
      520 LOADN                            R26 3
      521 MOVE                             R27 R6
      522 MOVE                             R28 R4
      523 MOVE                             R29 R8
      524 CALL                             R25 4 1
      525 SETTABLEKS                       R25 R24 K114 ["Arrow"]
      527 CALL                             R21 3 1
      528 JUMP                             ; [+1]
      529 LOADNIL                          R21
      530 SETTABLEKS                       R21 R20 K49 ["TrailingControls"]
      532 JUMPIF                           R16 ; [+8]
      533 GETUPVAL                         R21 13
      534 MOVE                             R22 R5
      535 CALL                             R22 0 1
      536 MOVE                             R23 R6
      537 MOVE                             R24 R4
      538 MOVE                             R25 R8
      539 CALL                             R21 4 1
      540 JUMP                             ; [+1]
      541 LOADNIL                          R21
      542 SETTABLEKS                       R21 R20 K50 ["TransitionButton"]
      544 GETUPVAL                         R21 1
      545 GETTABLEKS                       R21 R21 K33 ["createElement"]
      547 GETUPVAL                         R22 4
      548 GETTABLEKS                       R22 R22 K51 ["Popover"]
      550 GETTABLEKS                       R22 R22 K126 ["Root"]
      552 DUPTABLE                         R23 K128 [{"isOpen"}]
      553 GETTABLEKS                       R24 R3 K12 ["enabled"]
      555 SETTABLEKS                       R24 R23 K127 ["isOpen"]
      557 DUPTABLE                         R24 K131 [{"Anchor", "Content"}]
      558 GETUPVAL                         R25 1
      559 GETTABLEKS                       R25 R25 K33 ["createElement"]
      561 GETUPVAL                         R26 4
      562 GETTABLEKS                       R26 R26 K51 ["Popover"]
      564 GETTABLEKS                       R26 R26 K129 ["Anchor"]
      566 DUPTABLE                         R27 K133 [{"anchorRef"}]
      567 SETTABLEKS                       R4 R27 K132 ["anchorRef"]
      569 CALL                             R25 2 1
      570 SETTABLEKS                       R25 R24 K129 ["Anchor"]
      572 GETUPVAL                         R25 1
      573 GETTABLEKS                       R25 R25 K33 ["createElement"]
      575 GETUPVAL                         R26 4
      576 GETTABLEKS                       R26 R26 K51 ["Popover"]
      578 GETTABLEKS                       R26 R26 K130 ["Content"]
      580 DUPTABLE                         R27 K135 [{"align", "side", "onPressedOutside"}]
      581 GETUPVAL                         R28 4
      582 GETTABLEKS                       R28 R28 K80 ["Enums"]
      584 GETTABLEKS                       R28 R28 K83 ["PopoverAlign"]
      586 GETTABLEKS                       R28 R28 K84 ["Start"]
      588 SETTABLEKS                       R28 R27 K71 ["align"]
      590 GETUPVAL                         R28 4
      591 GETTABLEKS                       R28 R28 K80 ["Enums"]
      593 GETTABLEKS                       R28 R28 K81 ["PopoverSide"]
      595 GETTABLEKS                       R28 R28 K136 ["Right"]
      597 SETTABLEKS                       R28 R27 K70 ["side"]
      599 GETTABLEKS                       R28 R3 K137 ["disable"]
      601 SETTABLEKS                       R28 R27 K134 ["onPressedOutside"]
      603 JUMPIFNOT                        R9 ; [+63]
      604 GETUPVAL                         R28 1
      605 GETTABLEKS                       R28 R28 K33 ["createElement"]
      607 GETUPVAL                         R29 14
      608 DUPTABLE                         R30 K151 [{["AllowReset"], ["Name"], ["Expanded"] = True, ["IsDefaultValue"], ["TransitionBuilder"], ["Transition"], ["OnChanged"], ["OnClosed"], ["GraphPayload"], ["PropertyLookup"], ["Position"], ["Size"], ["StateLookup"], ["text"] = "", ["editName"] = ""}]
      609 SETTABLEKS                       R7 R30 K10 ["AllowReset"]
      611 GETTABLEKS                       R32 R0 K27 ["Label"]
      613 ORK                              R31 R32 K149 [""]
      614 SETTABLEKS                       R31 R30 K55 ["Name"]
      616 GETTABLEKS                       R31 R0 K13 ["IsDefaultValue"]
      618 SETTABLEKS                       R31 R30 K13 ["IsDefaultValue"]
      620 GETTABLEKS                       R31 R0 K140 ["TransitionBuilder"]
      622 SETTABLEKS                       R31 R30 K140 ["TransitionBuilder"]
      624 GETTABLEKS                       R31 R0 K152 ["Value"]
      626 JUMPIF                           R31 ; [+2]
      627 GETTABLEKS                       R31 R0 K153 ["DefaultValue"]
      629 SETTABLEKS                       R31 R30 K141 ["Transition"]
      631 GETTABLEKS                       R31 R0 K142 ["OnChanged"]
      633 SETTABLEKS                       R31 R30 K142 ["OnChanged"]
      635 GETTABLEKS                       R31 R3 K137 ["disable"]
      637 SETTABLEKS                       R31 R30 K143 ["OnClosed"]
      639 SETTABLEKS                       R9 R30 K144 ["GraphPayload"]
      641 NEWTABLE                         R31 0 0
      643 SETTABLEKS                       R31 R30 K145 ["PropertyLookup"]
      645 JUMPIFNOT                        R10 ; [+3]
      646 GETTABLEKS                       R31 R10 K154 ["position"]
      648 JUMP                             ; [+2]
      649 GETIMPORT                        R31 K157 [Vector2.zero]
      651 SETTABLEKS                       R31 R30 K146 ["Position"]
      653 JUMPIFNOT                        R10 ; [+3]
      654 GETTABLEKS                       R31 R10 K91 ["size"]
      656 JUMP                             ; [+2]
      657 GETIMPORT                        R31 K157 [Vector2.zero]
      659 SETTABLEKS                       R31 R30 K102 ["Size"]
      661 NEWTABLE                         R31 0 0
      663 SETTABLEKS                       R31 R30 K147 ["StateLookup"]
      665 CALL                             R28 2 1
      666 JUMP                             ; [+1]
      667 LOADNIL                          R28
      668 CALL                             R25 3 1
      669 SETTABLEKS                       R25 R24 K130 ["Content"]
      671 CALL                             R21 3 1
      672 SETTABLEKS                       R21 R20 K51 ["Popover"]
      674 CALL                             R17 3 -1
      675 RETURN                           R17 -1

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
      129 DUPCLOSURE                       R16 K31 [PROTO_0]
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R2
      132 DUPCLOSURE                       R17 K32 [PROTO_5]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R13
      148 RETURN                           R17 1
