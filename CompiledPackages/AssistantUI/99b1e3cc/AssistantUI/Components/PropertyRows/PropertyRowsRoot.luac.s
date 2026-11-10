PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "auto-xy text-body-small content-default", ["Text"] = "*", ["LayoutOrder"], ["testId"]}]
        3 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
        5 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["PropertyRow"]
       10 GETTABLEKS                       R4 R4 K8 ["RequiredMarker"]
       12 SETTABLEKS                       R4 R3 K5 ["testId"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["rowDef"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R1 K1 ["type"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIF                           R2 ; [+5]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Warning"]
       11 GETTABLE                         R2 R3 R4
       12 GETTABLEKS                       R3 R2 K3 ["layout"]
       14 GETTABLEKS                       R4 R2 K4 ["component"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K5 ["FFlagAssistantEditScrubbarPropertyRow"]
       19 JUMPIFNOT                        R5 ; [+73]
       20 GETTABLEKS                       R5 R3 K6 ["fillRow"]
       22 JUMPIFNOT                        R5 ; [+70]
       23 GETUPVAL                         R5 3
       24 GETUPVAL                         R6 4
       25 DUPTABLE                         R7 K9 [{"tag", "LayoutOrder"}]
       26 NEWTABLE                         R8 2 0
       28 LOADB                            R9 1
       29 SETTABLEKS                       R9 R8 K10 ["col size-full-0 auto-y"]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K11 ["FFlagAssistantAddPaddingToFillRow"]
       34 SETTABLEKS                       R9 R8 K12 ["padding-y-xxsmall"]
       36 SETTABLEKS                       R8 R7 K7 ["tag"]
       38 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       40 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       42 DUPTABLE                         R8 K14 [{"ValueNode"}]
       43 GETUPVAL                         R9 3
       44 MOVE                             R10 R4
       45 DUPTABLE                         R11 K25 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "setRowValue", "reportBusy", "reportStatus", "registerFooterButton", "LayoutOrder"}]
       46 SETTABLEKS                       R1 R11 K15 ["definition"]
       48 GETTABLEKS                       R12 R0 K16 ["value"]
       50 SETTABLEKS                       R12 R11 K16 ["value"]
       52 GETTABLEKS                       R12 R0 K17 ["setValue"]
       54 SETTABLEKS                       R12 R11 K17 ["setValue"]
       56 GETTABLEKS                       R12 R0 K18 ["interactable"]
       58 SETTABLEKS                       R12 R11 K18 ["interactable"]
       60 GETTABLEKS                       R12 R0 K19 ["active"]
       62 SETTABLEKS                       R12 R11 K19 ["active"]
       64 GETTABLEKS                       R12 R0 K20 ["getRowValue"]
       66 SETTABLEKS                       R12 R11 K20 ["getRowValue"]
       68 GETTABLEKS                       R12 R0 K21 ["setRowValue"]
       70 SETTABLEKS                       R12 R11 K21 ["setRowValue"]
       72 GETTABLEKS                       R12 R0 K22 ["reportBusy"]
       74 SETTABLEKS                       R12 R11 K22 ["reportBusy"]
       76 GETTABLEKS                       R12 R0 K23 ["reportStatus"]
       78 SETTABLEKS                       R12 R11 K23 ["reportStatus"]
       80 GETTABLEKS                       R12 R0 K24 ["registerFooterButton"]
       82 SETTABLEKS                       R12 R11 K24 ["registerFooterButton"]
       84 GETTABLEKS                       R12 R0 K8 ["LayoutOrder"]
       86 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       88 CALL                             R9 2 1
       89 SETTABLEKS                       R9 R8 K13 ["ValueNode"]
       91 CALL                             R5 3 -1
       92 RETURN                           R5 -1
       93 GETUPVAL                         R5 2
       94 GETTABLEKS                       R5 R5 K26 ["FFlagAssistantSegmentationUIFixes"]
       96 LOADB                            R6 0
       97 GETTABLEKS                       R7 R1 K1 ["type"]
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R8 R8 K27 ["String"]
      102 JUMPIFNOTEQ                      R7 R8 ; [+7]
      104 GETTABLEKS                       R7 R1 K28 ["multiLine"]
      106 JUMPIFEQKB                       R7 TRUE ; [+2]
      108 LOADB                            R6 0 +1
      109 LOADB                            R6 1
      110 LOADB                            R7 1
      111 GETTABLEKS                       R8 R3 K29 ["align"]
      113 GETUPVAL                         R9 5
      114 GETTABLEKS                       R9 R9 K30 ["Top"]
      116 JUMPIFEQ                         R8 R9 ; [+2]
      118 MOVE                             R7 R6
      119 GETUPVAL                         R8 6
      120 CALL                             R8 0 1
      121 NEWTABLE                         R9 2 0
      123 SETTABLEKS                       R5 R9 K31 ["size-3000-0 auto-y"]
      125 NOT                              R10 R5
      126 SETTABLEKS                       R10 R9 K32 ["grow-2 size-3000-0 auto-y"]
      128 GETUPVAL                         R10 2
      129 GETTABLEKS                       R10 R10 K33 ["FFlagAssistantAskInputRequiredMarkers"]
      131 JUMPIFNOT                        R10 ; [+6]
      132 GETTABLEKS                       R11 R1 K34 ["required"]
      134 JUMPIFEQKB                       R11 TRUE ; [+2]
      136 LOADB                            R10 0 +1
      137 LOADB                            R10 1
      138 GETTABLEKS                       R12 R0 K35 ["showDisclosureGutter"]
      140 JUMPIFNOT                        R12 ; [+11]
      141 NEWTABLE                         R11 4 0
      143 LOADB                            R12 1
      144 SETTABLEKS                       R12 R11 K36 ["row align-y-center gap-xsmall"]
      146 SETTABLEKS                       R5 R11 K31 ["size-3000-0 auto-y"]
      148 NOT                              R12 R5
      149 SETTABLEKS                       R12 R11 K32 ["grow-2 size-3000-0 auto-y"]
      151 JUMP                             ; [+10]
      152 NEWTABLE                         R11 4 0
      154 LOADB                            R12 1
      155 SETTABLEKS                       R12 R11 K36 ["row align-y-center gap-xsmall"]
      157 SETTABLEKS                       R5 R11 K37 ["size-2200-0 auto-y"]
      159 NOT                              R12 R5
      160 SETTABLEKS                       R12 R11 K38 ["grow-2 size-2500-0 auto-xy"]
      162 LOADNIL                          R12
      163 GETTABLEKS                       R13 R3 K39 ["hideLabel"]
      165 JUMPIFNOT                        R13 ; [+24]
      166 GETUPVAL                         R13 3
      167 GETUPVAL                         R14 4
      168 DUPTABLE                         R15 K9 [{"tag", "LayoutOrder"}]
      169 GETTABLEKS                       R17 R0 K35 ["showDisclosureGutter"]
      171 JUMPIFNOT                        R17 ; [+2]
      172 MOVE                             R16 R9
      173 JUMP                             ; [+7]
      174 NEWTABLE                         R16 2 0
      176 SETTABLEKS                       R5 R16 K37 ["size-2200-0 auto-y"]
      178 NOT                              R17 R5
      179 SETTABLEKS                       R17 R16 K40 ["grow-2 size-2500-0"]
      181 SETTABLEKS                       R16 R15 K7 ["tag"]
      183 MOVE                             R16 R8
      184 CALL                             R16 0 1
      185 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      187 CALL                             R13 2 1
      188 MOVE                             R12 R13
      189 JUMP                             ; [+90]
      190 JUMPIFNOT                        R10 ; [+37]
      191 GETUPVAL                         R13 3
      192 GETUPVAL                         R14 4
      193 DUPTABLE                         R15 K9 [{"tag", "LayoutOrder"}]
      194 SETTABLEKS                       R11 R15 K7 ["tag"]
      196 MOVE                             R16 R8
      197 CALL                             R16 0 1
      198 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      200 DUPTABLE                         R16 K43 [{"Label", "RequiredMarker"}]
      201 GETUPVAL                         R17 3
      202 GETUPVAL                         R18 7
      203 DUPTABLE                         R19 K46 [{["tag"] = "auto-xy shrink text-body-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      204 GETTABLEKS                       R20 R1 K47 ["label"]
      206 SETTABLEKS                       R20 R19 K45 ["Text"]
      208 MOVE                             R20 R8
      209 CALL                             R20 0 1
      210 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      212 CALL                             R17 2 1
      213 SETTABLEKS                       R17 R16 K41 ["Label"]
      215 GETUPVAL                         R17 3
      216 GETUPVAL                         R18 8
      217 DUPTABLE                         R19 K48 [{"LayoutOrder"}]
      218 MOVE                             R20 R8
      219 CALL                             R20 0 1
      220 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      222 CALL                             R17 2 1
      223 SETTABLEKS                       R17 R16 K42 ["RequiredMarker"]
      225 CALL                             R13 3 1
      226 MOVE                             R12 R13
      227 JUMP                             ; [+52]
      228 GETUPVAL                         R13 3
      229 GETUPVAL                         R14 7
      230 DUPTABLE                         R15 K49 [{"tag", "Text", "LayoutOrder"}]
      231 GETTABLEKS                       R17 R3 K50 ["labelSizeTag"]
      233 JUMPIFNOT                        R17 ; [+10]
      234 NEWTABLE                         R16 2 0
      236 LOADB                            R17 1
      237 SETTABLEKS                       R17 R16 K51 ["text-body-small text-align-x-left text-truncate-end content-default"]
      239 GETTABLEKS                       R17 R3 K50 ["labelSizeTag"]
      241 LOADB                            R18 1
      242 SETTABLE                         R18 R16 R17
      243 JUMP                             ; [+24]
      244 GETTABLEKS                       R17 R0 K35 ["showDisclosureGutter"]
      246 JUMPIFNOT                        R17 ; [+11]
      247 NEWTABLE                         R16 4 0
      249 LOADB                            R17 1
      250 SETTABLEKS                       R17 R16 K51 ["text-body-small text-align-x-left text-truncate-end content-default"]
      252 SETTABLEKS                       R5 R16 K31 ["size-3000-0 auto-y"]
      254 NOT                              R17 R5
      255 SETTABLEKS                       R17 R16 K32 ["grow-2 size-3000-0 auto-y"]
      257 JUMP                             ; [+10]
      258 NEWTABLE                         R16 4 0
      260 LOADB                            R17 1
      261 SETTABLEKS                       R17 R16 K51 ["text-body-small text-align-x-left text-truncate-end content-default"]
      263 SETTABLEKS                       R5 R16 K37 ["size-2200-0 auto-y"]
      265 NOT                              R17 R5
      266 SETTABLEKS                       R17 R16 K38 ["grow-2 size-2500-0 auto-xy"]
      268 SETTABLEKS                       R16 R15 K7 ["tag"]
      270 GETTABLEKS                       R16 R1 K47 ["label"]
      272 SETTABLEKS                       R16 R15 K45 ["Text"]
      274 MOVE                             R16 R8
      275 CALL                             R16 0 1
      276 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      278 CALL                             R13 2 1
      279 MOVE                             R12 R13
      280 GETTABLEKS                       R14 R3 K52 ["valueSize"]
      282 GETUPVAL                         R15 9
      283 GETTABLEKS                       R15 R15 K53 ["Fill"]
      285 JUMPIFEQ                         R14 R15 ; [+2]
      287 LOADB                            R13 0 +1
      288 LOADB                            R13 1
      289 GETUPVAL                         R14 3
      290 GETUPVAL                         R15 4
      291 DUPTABLE                         R16 K55 [{"tag", "LayoutOrder", "testId"}]
      292 GETTABLEKS                       R17 R3 K56 ["rowTag"]
      294 JUMPIF                           R17 ; [+10]
      295 NEWTABLE                         R17 4 0
      297 LOADB                            R18 1
      298 SETTABLEKS                       R18 R17 K57 ["row gap-small size-full-0 auto-y"]
      300 SETTABLEKS                       R7 R17 K58 ["align-y-top"]
      302 NOT                              R18 R7
      303 SETTABLEKS                       R18 R17 K59 ["align-y-center"]
      305 SETTABLEKS                       R17 R16 K7 ["tag"]
      307 GETTABLEKS                       R17 R0 K8 ["LayoutOrder"]
      309 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      311 GETUPVAL                         R17 10
      312 GETTABLEKS                       R17 R17 K60 ["PropertyRow"]
      314 GETTABLEKS                       R17 R17 K61 ["Row"]
      316 GETTABLEKS                       R18 R1 K1 ["type"]
      318 CALL                             R17 1 1
      319 SETTABLEKS                       R17 R16 K54 ["testId"]
      321 DUPTABLE                         R17 K64 [{"DisclosureGutter", "Label", "Value"}]
      322 GETTABLEKS                       R19 R0 K35 ["showDisclosureGutter"]
      324 JUMPIFNOT                        R19 ; [+92]
      325 GETUPVAL                         R18 3
      326 GETUPVAL                         R19 4
      327 DUPTABLE                         R20 K67 [{["tag"] = "size-600-600", ["LayoutOrder"] = 0}]
      328 DUPTABLE                         R21 K69 [{"Toggle"}]
      329 GETTABLEKS                       R23 R0 K70 ["onToggleExpanded"]
      331 JUMPIFEQKNIL                     R23 ; [+80]
      333 GETUPVAL                         R22 3
      334 GETUPVAL                         R23 4
      335 DUPTABLE                         R24 K75 [{["tag"] = "size-full-full row align-x-right align-y-center", ["selection"], ["stateLayer"], ["onActivated"], ["testId"]}]
      336 DUPTABLE                         R25 K78 [{["Selectable"] = True}]
      337 SETTABLEKS                       R25 R24 K72 ["selection"]
      339 DUPTABLE                         R25 K80 [{"affordance"}]
      340 GETUPVAL                         R26 11
      341 GETTABLEKS                       R26 R26 K81 ["Enums"]
      343 GETTABLEKS                       R26 R26 K82 ["StateLayerAffordance"]
      345 GETTABLEKS                       R26 R26 K83 ["None"]
      347 SETTABLEKS                       R26 R25 K79 ["affordance"]
      349 SETTABLEKS                       R25 R24 K73 ["stateLayer"]
      351 GETTABLEKS                       R25 R0 K70 ["onToggleExpanded"]
      353 SETTABLEKS                       R25 R24 K74 ["onActivated"]
      355 GETUPVAL                         R25 10
      356 GETTABLEKS                       R25 R25 K60 ["PropertyRow"]
      358 GETTABLEKS                       R25 R25 K84 ["Expand"]
      360 GETTABLEKS                       R26 R1 K85 ["name"]
      362 CALL                             R25 1 1
      363 SETTABLEKS                       R25 R24 K54 ["testId"]
      365 DUPTABLE                         R25 K87 [{"Icon"}]
      366 GETUPVAL                         R26 3
      367 GETUPVAL                         R27 12
      368 DUPTABLE                         R28 K90 [{"name", "variant", "size"}]
      369 GETTABLEKS                       R30 R0 K91 ["isExpanded"]
      371 JUMPIFNOT                        R30 ; [+8]
      372 GETUPVAL                         R29 11
      373 GETTABLEKS                       R29 R29 K81 ["Enums"]
      375 GETTABLEKS                       R29 R29 K92 ["IconName"]
      377 GETTABLEKS                       R29 R29 K93 ["CaretSmallDown"]
      379 JUMP                             ; [+7]
      380 GETUPVAL                         R29 11
      381 GETTABLEKS                       R29 R29 K81 ["Enums"]
      383 GETTABLEKS                       R29 R29 K92 ["IconName"]
      385 GETTABLEKS                       R29 R29 K94 ["CaretSmallRight"]
      387 SETTABLEKS                       R29 R28 K85 ["name"]
      389 GETUPVAL                         R29 11
      390 GETTABLEKS                       R29 R29 K81 ["Enums"]
      392 GETTABLEKS                       R29 R29 K95 ["IconVariant"]
      394 GETTABLEKS                       R29 R29 K96 ["Filled"]
      396 SETTABLEKS                       R29 R28 K88 ["variant"]
      398 GETUPVAL                         R29 11
      399 GETTABLEKS                       R29 R29 K81 ["Enums"]
      401 GETTABLEKS                       R29 R29 K97 ["IconSize"]
      403 GETTABLEKS                       R29 R29 K98 ["Small"]
      405 SETTABLEKS                       R29 R28 K89 ["size"]
      407 CALL                             R26 2 1
      408 SETTABLEKS                       R26 R25 K86 ["Icon"]
      410 CALL                             R22 3 1
      411 JUMP                             ; [+1]
      412 LOADNIL                          R22
      413 SETTABLEKS                       R22 R21 K68 ["Toggle"]
      415 CALL                             R18 3 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R18
      418 SETTABLEKS                       R18 R17 K62 ["DisclosureGutter"]
      420 SETTABLEKS                       R12 R17 K41 ["Label"]
      422 GETUPVAL                         R18 3
      423 GETUPVAL                         R19 4
      424 DUPTABLE                         R20 K9 [{"tag", "LayoutOrder"}]
      425 NEWTABLE                         R21 4 0
      427 AND                              R22 R13 R5
      428 SETTABLEKS                       R22 R21 K99 ["fill auto-y"]
      430 MOVE                             R22 R13
      431 JUMPIFNOT                        R22 ; [+1]
      432 NOT                              R22 R5
      433 SETTABLEKS                       R22 R21 K100 ["size-2500-0 auto-y grow-4"]
      435 NOT                              R23 R13
      436 AND                              R22 R23 R6
      437 SETTABLEKS                       R22 R21 K101 ["size-2500-1800 grow-4"]
      439 NOT                              R22 R13
      440 JUMPIFNOT                        R22 ; [+1]
      441 NOT                              R22 R6
      442 SETTABLEKS                       R22 R21 K102 ["size-2500-600 grow-4"]
      444 SETTABLEKS                       R21 R20 K7 ["tag"]
      446 MOVE                             R21 R8
      447 CALL                             R21 0 1
      448 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      450 DUPTABLE                         R21 K14 [{"ValueNode"}]
      451 GETUPVAL                         R22 3
      452 MOVE                             R23 R4
      453 DUPTABLE                         R24 K25 [{"definition", "value", "setValue", "interactable", "active", "getRowValue", "setRowValue", "reportBusy", "reportStatus", "registerFooterButton", "LayoutOrder"}]
      454 SETTABLEKS                       R1 R24 K15 ["definition"]
      456 GETTABLEKS                       R25 R0 K16 ["value"]
      458 SETTABLEKS                       R25 R24 K16 ["value"]
      460 GETTABLEKS                       R25 R0 K17 ["setValue"]
      462 SETTABLEKS                       R25 R24 K17 ["setValue"]
      464 GETTABLEKS                       R25 R0 K18 ["interactable"]
      466 SETTABLEKS                       R25 R24 K18 ["interactable"]
      468 GETTABLEKS                       R25 R0 K19 ["active"]
      470 SETTABLEKS                       R25 R24 K19 ["active"]
      472 GETTABLEKS                       R25 R0 K20 ["getRowValue"]
      474 SETTABLEKS                       R25 R24 K20 ["getRowValue"]
      476 GETTABLEKS                       R25 R0 K21 ["setRowValue"]
      478 SETTABLEKS                       R25 R24 K21 ["setRowValue"]
      480 GETTABLEKS                       R25 R0 K22 ["reportBusy"]
      482 SETTABLEKS                       R25 R24 K22 ["reportBusy"]
      484 GETTABLEKS                       R25 R0 K23 ["reportStatus"]
      486 SETTABLEKS                       R25 R24 K23 ["reportStatus"]
      488 GETTABLEKS                       R25 R0 K24 ["registerFooterButton"]
      490 SETTABLEKS                       R25 R24 K24 ["registerFooterButton"]
      492 MOVE                             R25 R8
      493 CALL                             R25 0 1
      494 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      496 CALL                             R22 2 1
      497 SETTABLEKS                       R22 R21 K13 ["ValueNode"]
      499 CALL                             R18 3 1
      500 SETTABLEKS                       R18 R17 K63 ["Value"]
      502 CALL                             R14 3 1
      503 RETURN                           R14 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 JUMPIFEQKNIL                     R0 ; [+8]
       13 GETTABLEKS                       R7 R6 K1 ["name"]
       15 GETTABLEKS                       R9 R6 K1 ["name"]
       17 GETTABLE                         R8 R0 R9
       18 SETTABLE                         R8 R1 R7
       19 JUMP                             ; [+5]
       20 GETTABLEKS                       R7 R6 K1 ["name"]
       22 GETTABLEKS                       R8 R6 K2 ["initialValue"]
       24 SETTABLE                         R8 R1 R7
       25 FORGLOOP                         R2 2 ; [-15]
       27 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["name"]
       10 DUPTABLE                         R7 K6 [{"visible", "interactable", "enabled", "active"}]
       11 GETTABLEKS                       R9 R5 K7 ["initialVisible"]
       13 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       15 LOADB                            R8 0 +1
       16 LOADB                            R8 1
       17 SETTABLEKS                       R8 R7 K2 ["visible"]
       19 GETTABLEKS                       R9 R5 K8 ["initialInteractable"]
       21 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       23 LOADB                            R8 0 +1
       24 LOADB                            R8 1
       25 SETTABLEKS                       R8 R7 K3 ["interactable"]
       27 GETTABLEKS                       R9 R5 K9 ["initialEnabled"]
       29 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 SETTABLEKS                       R8 R7 K4 ["enabled"]
       35 GETTABLEKS                       R9 R5 K10 ["initialActive"]
       37 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K5 ["active"]
       43 SETTABLE                         R7 R0 R6
       44 FORGLOOP                         R1 2 ; [-37]
       46 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETIMPORT                        R4 K2 [next]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADB                            R4 1
       13 SETTABLE                         R4 R2 R0
       14 JUMP                             ; [+2]
       15 LOADNIL                          R4
       16 SETTABLE                         R4 R2 R0
       17 GETIMPORT                        R5 K2 [next]
       19 MOVE                             R6 R2
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKNIL                  R5 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 JUMPIFEQ                         R4 R3 ; [+10]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K0 ["current"]
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K0 ["current"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 0
       36 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 1
       12 SETTABLE                         R3 R1 R2
       13 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_12:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+8]
        7 MOVE                             R2 R1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["current"]
       11 GETTABLE                         R3 R4 R0
       12 CALL                             R2 1 1
       13 JUMP                             ; [+1]
       14 MOVE                             R2 R1
       15 GETUPVAL                         R3 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["onChange"]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R2
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLE                         R2 R1 R3
        6 GETUPVAL                         R3 3
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 RETURN                           R0 1
       10 GETIMPORT                        R2 K2 [table.clone]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 SETTABLE                         R4 R2 R3
       17 GETIMPORT                        R3 K2 [table.clone]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 SETTABLE                         R2 R3 R4
       23 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["visible"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["interactable"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["enabled"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["active"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["current"]
       11 GETTABLE                         R6 R7 R4
       12 JUMPIF                           R6 ; [+1]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R7 R6 K1 ["enabled"]
       16 JUMPIFNOT                        R7 ; [+1]
       17 SETTABLE                         R5 R0 R4
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 MOVE                             R2 R1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R1 K6 [{"setRowVisible", "setRowInteractable", "setRowEnabled", "setRowActive", "getEnabledValues", "activateFooterButton"}]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R2 R1 K0 ["setRowVisible"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R2 R1 K1 ["setRowInteractable"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R2 R1 K2 ["setRowEnabled"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R2 R1 K3 ["setRowActive"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R2 R1 K4 ["getEnabledValues"]
       28 NEWCLOSURE                       R2 P5
       29 CAPTURE                          UPVAL U5
       30 SETTABLEKS                       R2 R1 K5 ["activateFooterButton"]
       32 SETTABLEKS                       R1 R0 K7 ["current"]
       34 NEWCLOSURE                       R0 P6
       35 CAPTURE                          UPVAL U0
       36 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAskInputFooterResolver"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["rowDefinitions"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K2 ["internal"]
       15 JUMPIF                           R6 ; [+16]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R8 R5 K3 ["name"]
       19 GETTABLE                         R6 R7 R8
       20 JUMPIF                           R6 ; [+1]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["visible"]
       24 JUMPIFNOT                        R6 ; [+7]
       25 GETTABLEKS                       R6 R5 K3 ["name"]
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R9 R5 K3 ["name"]
       30 GETTABLE                         R7 R8 R9
       31 SETTABLE                         R7 R0 R6
       32 FORGLOOP                         R1 2 ; [-20]
       34 GETUPVAL                         R1 5
       35 GETTABLEKS                       R1 R1 K5 ["current"]
       37 JUMPIFNOT                        R1 ; [+5]
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R1 R1 K5 ["current"]
       41 MOVE                             R2 R0
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 GETTABLEKS                       R2 R0 K1 ["rowDefinitions"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["useRef"]
       23 GETTABLEKS                       R6 R0 K4 ["initialValues"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K2 ["useState"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R8 0 0
       34 CALL                             R6 2 2
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K2 ["useState"]
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          VAL R1
       40 NEWTABLE                         R10 0 0
       42 CALL                             R8 2 2
       43 GETUPVAL                         R10 1
       44 MOVE                             R11 R6
       45 CALL                             R10 1 1
       46 GETUPVAL                         R11 1
       47 MOVE                             R12 R8
       48 CALL                             R11 1 1
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R12 R12 K3 ["useCallback"]
       52 NEWCLOSURE                       R13 P3
       53 CAPTURE                          VAL R10
       54 NEWTABLE                         R14 0 0
       56 CALL                             R12 2 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R13 R13 K0 ["useRef"]
       60 NEWTABLE                         R14 0 0
       62 CALL                             R13 1 1
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R15 R0 K5 ["onBusyChanged"]
       66 CALL                             R14 1 1
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R15 R15 K3 ["useCallback"]
       70 NEWCLOSURE                       R16 P4
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R14
       73 NEWTABLE                         R17 0 0
       75 CALL                             R15 2 1
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K2 ["useState"]
       79 NEWTABLE                         R17 0 0
       81 CALL                             R16 1 2
       82 GETUPVAL                         R18 0
       83 GETTABLEKS                       R18 R18 K3 ["useCallback"]
       85 NEWCLOSURE                       R19 P5
       86 CAPTURE                          VAL R17
       87 NEWTABLE                         R20 0 0
       89 CALL                             R18 2 1
       90 GETUPVAL                         R19 0
       91 GETTABLEKS                       R19 R19 K0 ["useRef"]
       93 NEWTABLE                         R20 0 0
       95 CALL                             R19 1 1
       96 GETUPVAL                         R20 0
       97 GETTABLEKS                       R20 R20 K3 ["useCallback"]
       99 NEWCLOSURE                       R21 P6
      100 CAPTURE                          VAL R19
      101 NEWTABLE                         R22 0 0
      103 CALL                             R20 2 1
      104 GETUPVAL                         R21 0
      105 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      107 NEWCLOSURE                       R22 P7
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R23 0 1
      113 GETTABLEKS                       R24 R0 K6 ["onChange"]
      115 SETLIST                          R23 R24 1 [1]
      117 CALL                             R21 2 1
      118 GETUPVAL                         R22 0
      119 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      121 NEWCLOSURE                       R23 P8
      122 CAPTURE                          VAL R9
      123 CAPTURE                          UPVAL U2
      124 NEWTABLE                         R24 0 0
      126 CALL                             R22 2 1
      127 GETTABLEKS                       R23 R0 K7 ["controlsRef"]
      129 GETUPVAL                         R24 0
      130 GETTABLEKS                       R24 R24 K8 ["useEffect"]
      132 NEWCLOSURE                       R25 P9
      133 CAPTURE                          VAL R23
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R11
      137 CAPTURE                          UPVAL U2
      138 CAPTURE                          VAL R19
      139 NEWTABLE                         R26 0 2
      141 MOVE                             R27 R23
      142 MOVE                             R28 R22
      143 SETLIST                          R26 R27 2 [1]
      145 CALL                             R24 2 0
      146 GETUPVAL                         R24 1
      147 GETTABLEKS                       R25 R0 K9 ["onRowStatusChanged"]
      149 CALL                             R24 1 1
      150 GETUPVAL                         R25 0
      151 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      153 NEWCLOSURE                       R26 P10
      154 CAPTURE                          UPVAL U3
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R8
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R24
      160 NEWTABLE                         R27 0 3
      162 GETTABLEKS                       R28 R0 K1 ["rowDefinitions"]
      164 MOVE                             R29 R8
      165 MOVE                             R30 R16
      166 SETLIST                          R27 R28 3 [1]
      168 CALL                             R25 2 0
      169 GETUPVAL                         R25 4
      170 CALL                             R25 0 1
      171 NEWTABLE                         R26 0 0
      173 NEWTABLE                         R27 0 0
      175 GETUPVAL                         R28 3
      176 GETTABLEKS                       R28 R28 K10 ["FFlagAssistantAskInputExpandableRows"]
      178 JUMPIFNOT                        R28 ; [+45]
      179 GETTABLEKS                       R28 R0 K1 ["rowDefinitions"]
      181 LOADNIL                          R29
      182 LOADNIL                          R30
      183 FORGPREP                         R28
      184 GETTABLEKS                       R33 R32 K11 ["parentRow"]
      186 JUMPIFEQKNIL                     R33 ; [+5]
      188 GETTABLEKS                       R33 R32 K11 ["parentRow"]
      190 LOADB                            R34 1
      191 SETTABLE                         R34 R26 R33
      192 FORGLOOP                         R28 2 ; [-9]
      194 GETTABLEKS                       R28 R0 K1 ["rowDefinitions"]
      196 LOADNIL                          R29
      197 LOADNIL                          R30
      198 FORGPREP                         R28
      199 GETTABLEKS                       R34 R32 K12 ["name"]
      201 GETTABLE                         R33 R26 R34
      202 JUMPIFNOT                        R33 ; [+19]
      203 GETTABLEKS                       R33 R32 K11 ["parentRow"]
      205 JUMPIFNOTEQKNIL                  R33 ; [+16]
      207 GETTABLEKS                       R33 R32 K13 ["internal"]
      209 JUMPIF                           R33 ; [+12]
      210 GETTABLEKS                       R34 R32 K12 ["name"]
      212 GETTABLE                         R33 R8 R34
      213 JUMPIF                           R33 ; [+1]
      214 GETUPVAL                         R33 2
      215 GETTABLEKS                       R33 R33 K14 ["visible"]
      217 JUMPIFNOT                        R33 ; [+4]
      218 GETTABLEKS                       R33 R32 K12 ["name"]
      220 LOADB                            R34 1
      221 SETTABLE                         R34 R27 R33
      222 FORGLOOP                         R28 2 ; [-24]
      224 GETIMPORT                        R29 K16 [next]
      226 MOVE                             R30 R27
      227 CALL                             R29 1 1
      228 JUMPIFNOTEQKNIL                  R29 ; [+2]
      230 LOADB                            R28 0 +1
      231 LOADB                            R28 1
      232 GETIMPORT                        R29 K19 [table.create]
      234 GETTABLEKS                       R31 R0 K1 ["rowDefinitions"]
      236 LENGTH                           R30 R31
      237 CALL                             R29 1 1
      238 GETTABLEKS                       R30 R0 K1 ["rowDefinitions"]
      240 LOADNIL                          R31
      241 LOADNIL                          R32
      242 FORGPREP                         R30
      243 GETTABLEKS                       R35 R34 K13 ["internal"]
      245 JUMPIF                           R35 ; [+99]
      246 GETTABLEKS                       R36 R34 K12 ["name"]
      248 GETTABLE                         R35 R8 R36
      249 JUMPIF                           R35 ; [+1]
      250 GETUPVAL                         R35 2
      251 GETTABLEKS                       R36 R35 K14 ["visible"]
      253 JUMPIFNOT                        R36 ; [+91]
      254 GETUPVAL                         R37 3
      255 GETTABLEKS                       R37 R37 K10 ["FFlagAssistantAskInputExpandableRows"]
      257 JUMPIFNOT                        R37 ; [+3]
      258 GETTABLEKS                       R36 R34 K11 ["parentRow"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R36
      262 JUMPIFEQKNIL                     R36 ; [+5]
      264 GETTABLE                         R37 R27 R36
      265 JUMPIFNOT                        R37 ; [+79]
      266 GETTABLE                         R37 R2 R36
      267 JUMPIFNOT                        R37 ; [+77]
      268 MOVE                             R38 R29
      269 GETUPVAL                         R39 5
      270 GETUPVAL                         R40 6
      271 DUPTABLE                         R41 K35 [{"key", "rowDef", "value", "interactable", "active", "setValue", "getRowValue", "setRowValue", "reportBusy", "reportStatus", "registerFooterButton", "showDisclosureGutter", "isExpanded", "onToggleExpanded", "LayoutOrder"}]
      272 GETTABLEKS                       R42 R34 K12 ["name"]
      274 SETTABLEKS                       R42 R41 K20 ["key"]
      276 SETTABLEKS                       R34 R41 K21 ["rowDef"]
      278 GETTABLEKS                       R43 R34 K12 ["name"]
      280 GETTABLE                         R42 R6 R43
      281 SETTABLEKS                       R42 R41 K22 ["value"]
      283 GETTABLEKS                       R42 R35 K23 ["interactable"]
      285 SETTABLEKS                       R42 R41 K23 ["interactable"]
      287 GETTABLEKS                       R42 R35 K24 ["active"]
      289 SETTABLEKS                       R42 R41 K24 ["active"]
      291 NEWCLOSURE                       R42 P11
      292 CAPTURE                          VAL R21
      293 CAPTURE                          VAL R34
      294 SETTABLEKS                       R42 R41 K25 ["setValue"]
      296 SETTABLEKS                       R12 R41 K26 ["getRowValue"]
      298 SETTABLEKS                       R21 R41 K27 ["setRowValue"]
      300 NEWCLOSURE                       R42 P12
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R34
      303 SETTABLEKS                       R42 R41 K28 ["reportBusy"]
      305 NEWCLOSURE                       R42 P13
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R34
      308 SETTABLEKS                       R42 R41 K29 ["reportStatus"]
      310 SETTABLEKS                       R20 R41 K30 ["registerFooterButton"]
      312 SETTABLEKS                       R28 R41 K31 ["showDisclosureGutter"]
      314 GETTABLEKS                       R44 R34 K12 ["name"]
      316 GETTABLE                         R43 R2 R44
      317 JUMPIFEQKB                       R43 TRUE ; [+2]
      319 LOADB                            R42 0 +1
      320 LOADB                            R42 1
      321 SETTABLEKS                       R42 R41 K32 ["isExpanded"]
      323 GETTABLEKS                       R44 R34 K12 ["name"]
      325 GETTABLE                         R43 R26 R44
      326 JUMPIFNOT                        R43 ; [+6]
      327 JUMPIFNOTEQKNIL                  R36 ; [+5]
      329 NEWCLOSURE                       R42 P14
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R34
      332 JUMP                             ; [+1]
      333 LOADNIL                          R42
      334 SETTABLEKS                       R42 R41 K33 ["onToggleExpanded"]
      336 MOVE                             R42 R25
      337 CALL                             R42 0 1
      338 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      340 CALL                             R39 2 -1
      341 FASTCALL                         TABLE_INSERT ; [+2]
      342 GETIMPORT                        R37 K37 [table.insert]
      344 CALL                             R37 -1 0
      345 FORGLOOP                         R30 2 ; [-103]
      347 GETUPVAL                         R30 5
      348 GETUPVAL                         R31 7
      349 DUPTABLE                         R32 K41 [{["tag"] = "col gap-small size-full-0 auto-xy", ["GroupTransparency"], ["LayoutOrder"]}]
      350 GETTABLEKS                       R34 R0 K42 ["isDisabled"]
      352 JUMPIFNOT                        R34 ; [+2]
      353 LOADK                            R33 K43 [0.5]
      354 JUMP                             ; [+1]
      355 LOADNIL                          R33
      356 SETTABLEKS                       R33 R32 K40 ["GroupTransparency"]
      358 GETTABLEKS                       R33 R0 K34 ["LayoutOrder"]
      360 SETTABLEKS                       R33 R32 K34 ["LayoutOrder"]
      362 MOVE                             R33 R29
      363 CALL                             R30 3 -1
      364 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["TestIds"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Hooks"]
       40 GETTABLEKS                       R8 R8 K14 ["useLatest"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETIMPORT                        R9 K1 [script]
       47 GETTABLEKS                       R9 R9 K4 ["Parent"]
       49 GETTABLEKS                       R9 R9 K15 ["PropertyRowComponents"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETIMPORT                        R10 K1 [script]
       56 GETTABLEKS                       R10 R10 K4 ["Parent"]
       58 GETTABLEKS                       R10 R10 K16 ["PropertyRowTypes"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R2 K17 ["Icon"]
       63 GETTABLEKS                       R11 R2 K18 ["Text"]
       65 GETTABLEKS                       R12 R2 K19 ["View"]
       67 GETTABLEKS                       R13 R3 K20 ["createElement"]
       69 GETTABLEKS                       R14 R4 K21 ["createNextOrder"]
       71 GETTABLEKS                       R15 R9 K22 ["ROW_TYPES"]
       73 GETTABLEKS                       R16 R9 K23 ["ROW_ALIGN"]
       75 GETTABLEKS                       R17 R9 K24 ["ROW_VALUE_SIZE"]
       77 DUPTABLE                         R18 K30 [{["visible"] = True, ["interactable"] = True, ["enabled"] = True, ["active"] = True}]
       78 DUPCLOSURE                       R19 K31 [PROTO_0]
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R6
       82 DUPCLOSURE                       R20 K32 [PROTO_1]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R19
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R10
       96 DUPCLOSURE                       R21 K33 [PROTO_28]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R18
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R20
      104 CAPTURE                          VAL R12
      105 RETURN                           R21 1
