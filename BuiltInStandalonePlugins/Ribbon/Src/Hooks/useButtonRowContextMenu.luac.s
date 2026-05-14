PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MoveControl"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MoveControl"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 GETTABLEKS                       R1 R1 K0 ["Type"]
        5 JUMPIFEQKS                       R1 K1 ["Separator"] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RemoveControlFromTab"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["join"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{"Category", "ItemId"}]
        5 LOADK                            R6 K4 ["Widgets"]
        6 SETTABLEKS                       R6 R5 K1 ["Category"]
        8 LOADK                            R6 K5 ["Mezzanine"]
        9 SETTABLEKS                       R6 R5 K2 ["ItemId"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K6 ["ActiveTabState"]
       15 JUMPIFNOT                        R5 ; [+6]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K6 ["ActiveTabState"]
       19 GETTABLEKS                       R4 R4 K7 ["Identifier"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 JUMPIFNOTEQKNIL                  R4 ; [+6]
       25 GETIMPORT                        R5 K9 [warn]
       27 LOADK                            R6 K10 ["Cannot open context menu with no active tab"]
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 LOADNIL                          R5
       31 GETTABLEKS                       R6 R4 K11 ["Type"]
       33 JUMPIFNOTEQKS                    R6 K12 ["BuiltIn"] ; [+107]
       35 NEWTABLE                         R6 0 5
       37 DUPTABLE                         R7 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
       38 LOADK                            R8 K17 ["ManageTabs"]
       39 SETTABLEKS                       R8 R7 K13 ["Id"]
       41 LOADK                            R8 K18 ["Option"]
       42 SETTABLEKS                       R8 R7 K11 ["Type"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K0 ["join"]
       47 GETUPVAL                         R9 1
       48 DUPTABLE                         R10 K3 [{"Category", "ItemId"}]
       49 LOADK                            R11 K19 ["Actions"]
       50 SETTABLEKS                       R11 R10 K1 ["Category"]
       52 LOADK                            R11 K17 ["ManageTabs"]
       53 SETTABLEKS                       R11 R10 K2 ["ItemId"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K14 ["Action"]
       58 LOADB                            R8 1
       59 SETTABLEKS                       R8 R7 K15 ["ReserveCheckmarkSpace"]
       61 DUPTABLE                         R8 K20 [{"Type"}]
       62 LOADK                            R9 K21 ["Separator"]
       63 SETTABLEKS                       R9 R8 K11 ["Type"]
       65 DUPTABLE                         R9 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
       66 LOADK                            R10 K22 ["DockUndockRibbon"]
       67 SETTABLEKS                       R10 R9 K13 ["Id"]
       69 LOADK                            R10 K18 ["Option"]
       70 SETTABLEKS                       R10 R9 K11 ["Type"]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K0 ["join"]
       75 GETUPVAL                         R11 1
       76 DUPTABLE                         R12 K3 [{"Category", "ItemId"}]
       77 LOADK                            R13 K19 ["Actions"]
       78 SETTABLEKS                       R13 R12 K1 ["Category"]
       80 LOADK                            R13 K22 ["DockUndockRibbon"]
       81 SETTABLEKS                       R13 R12 K2 ["ItemId"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K14 ["Action"]
       86 LOADB                            R10 1
       87 SETTABLEKS                       R10 R9 K15 ["ReserveCheckmarkSpace"]
       89 DUPTABLE                         R10 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
       90 LOADK                            R11 K23 ["CompactDensity"]
       91 SETTABLEKS                       R11 R10 K13 ["Id"]
       93 LOADK                            R11 K18 ["Option"]
       94 SETTABLEKS                       R11 R10 K11 ["Type"]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K0 ["join"]
       99 GETUPVAL                         R12 1
      100 DUPTABLE                         R13 K3 [{"Category", "ItemId"}]
      101 LOADK                            R14 K19 ["Actions"]
      102 SETTABLEKS                       R14 R13 K1 ["Category"]
      104 LOADK                            R14 K23 ["CompactDensity"]
      105 SETTABLEKS                       R14 R13 K2 ["ItemId"]
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K14 ["Action"]
      110 LOADB                            R11 1
      111 SETTABLEKS                       R11 R10 K15 ["ReserveCheckmarkSpace"]
      113 DUPTABLE                         R11 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
      114 LOADK                            R12 K24 ["ShowHideLabels"]
      115 SETTABLEKS                       R12 R11 K13 ["Id"]
      117 LOADK                            R12 K18 ["Option"]
      118 SETTABLEKS                       R12 R11 K11 ["Type"]
      120 GETUPVAL                         R12 0
      121 GETTABLEKS                       R12 R12 K0 ["join"]
      123 GETUPVAL                         R13 1
      124 DUPTABLE                         R14 K3 [{"Category", "ItemId"}]
      125 LOADK                            R15 K19 ["Actions"]
      126 SETTABLEKS                       R15 R14 K1 ["Category"]
      128 LOADK                            R15 K24 ["ShowHideLabels"]
      129 SETTABLEKS                       R15 R14 K2 ["ItemId"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K14 ["Action"]
      134 LOADB                            R12 1
      135 SETTABLEKS                       R12 R11 K15 ["ReserveCheckmarkSpace"]
      137 SETLIST                          R6 R7 5 [1]
      139 MOVE                             R5 R6
      140 JUMP                             ; [+315]
      141 GETUPVAL                         R6 3
      142 MOVE                             R7 R4
      143 CALL                             R6 1 1
      144 GETUPVAL                         R8 2
      145 GETTABLEKS                       R8 R8 K25 ["Definition"]
      147 GETTABLEKS                       R8 R8 K26 ["TabControls"]
      149 GETTABLE                         R7 R8 R6
      150 GETTABLEKS                       R7 R7 K27 ["Controls"]
      152 JUMPIFEQKNIL                     R1 ; [+137]
      154 GETTABLEKS                       R8 R1 K28 ["self"]
      156 GETTABLEKS                       R9 R1 K29 ["left"]
      158 GETTABLEKS                       R10 R1 K30 ["right"]
      160 GETIMPORT                        R11 K33 [table.create]
      162 LOADN                            R12 4
      163 CALL                             R11 1 1
      164 MOVE                             R5 R11
      165 JUMPIFNOT                        R9 ; [+31]
      166 DUPTABLE                         R13 K37 [{"Id", "Enabled", "Type", "Text", "OnSelect"}]
      167 LOADK                            R14 K38 ["MoveLeft"]
      168 SETTABLEKS                       R14 R13 K13 ["Id"]
      170 LOADB                            R14 1
      171 SETTABLEKS                       R14 R13 K34 ["Enabled"]
      173 LOADK                            R14 K18 ["Option"]
      174 SETTABLEKS                       R14 R13 K11 ["Type"]
      176 GETUPVAL                         R14 4
      177 LOADK                            R16 K39 ["Plugin"]
      178 LOADK                            R17 K38 ["MoveLeft"]
      179 NAMECALL                         R14 R14 K40 ["getText"]
      181 CALL                             R14 3 1
      182 SETTABLEKS                       R14 R13 K35 ["Text"]
      184 NEWCLOSURE                       R14 P0
      185 CAPTURE                          UPVAL U2
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R9
      189 SETTABLEKS                       R14 R13 K36 ["OnSelect"]
      191 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      193 MOVE                             R12 R5
      194 GETIMPORT                        R11 K42 [table.insert]
      196 CALL                             R11 2 0
      197 JUMPIFNOT                        R10 ; [+31]
      198 DUPTABLE                         R13 K37 [{"Id", "Enabled", "Type", "Text", "OnSelect"}]
      199 LOADK                            R14 K43 ["MoveRight"]
      200 SETTABLEKS                       R14 R13 K13 ["Id"]
      202 LOADB                            R14 1
      203 SETTABLEKS                       R14 R13 K34 ["Enabled"]
      205 LOADK                            R14 K18 ["Option"]
      206 SETTABLEKS                       R14 R13 K11 ["Type"]
      208 GETUPVAL                         R14 4
      209 LOADK                            R16 K39 ["Plugin"]
      210 LOADK                            R17 K43 ["MoveRight"]
      211 NAMECALL                         R14 R14 K40 ["getText"]
      213 CALL                             R14 3 1
      214 SETTABLEKS                       R14 R13 K35 ["Text"]
      216 NEWCLOSURE                       R14 P1
      217 CAPTURE                          UPVAL U2
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R10
      221 SETTABLEKS                       R14 R13 K36 ["OnSelect"]
      223 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      225 MOVE                             R12 R5
      226 GETIMPORT                        R11 K42 [table.insert]
      228 CALL                             R11 2 0
      229 JUMPIF                           R9 ; [+1]
      230 JUMPIFNOT                        R10 ; [+10]
      231 DUPTABLE                         R13 K20 [{"Type"}]
      232 LOADK                            R14 K21 ["Separator"]
      233 SETTABLEKS                       R14 R13 K11 ["Type"]
      235 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      237 MOVE                             R12 R5
      238 GETIMPORT                        R11 K42 [table.insert]
      240 CALL                             R11 2 0
      241 GETIMPORT                        R11 K45 [pcall]
      243 NEWCLOSURE                       R12 P2
      244 CAPTURE                          VAL R7
      245 CAPTURE                          VAL R8
      246 CALL                             R11 1 2
      247 JUMPIFNOT                        R11 ; [+2]
      248 MOVE                             R13 R12
      249 JUMPIF                           R13 ; [+1]
      250 LOADB                            R13 0
      251 DUPTABLE                         R16 K37 [{"Id", "Enabled", "Type", "Text", "OnSelect"}]
      252 LOADK                            R17 K46 ["Delete"]
      253 SETTABLEKS                       R17 R16 K13 ["Id"]
      255 LOADB                            R17 1
      256 SETTABLEKS                       R17 R16 K34 ["Enabled"]
      258 LOADK                            R17 K18 ["Option"]
      259 SETTABLEKS                       R17 R16 K11 ["Type"]
      261 JUMPIFNOT                        R13 ; [+7]
      262 GETUPVAL                         R17 4
      263 LOADK                            R19 K39 ["Plugin"]
      264 LOADK                            R20 K47 ["DeleteSeparator"]
      265 NAMECALL                         R17 R17 K40 ["getText"]
      267 CALL                             R17 3 1
      268 JUMP                             ; [+6]
      269 GETUPVAL                         R17 4
      270 LOADK                            R19 K39 ["Plugin"]
      271 LOADK                            R20 K48 ["DeleteTool"]
      272 NAMECALL                         R17 R17 K40 ["getText"]
      274 CALL                             R17 3 1
      275 SETTABLEKS                       R17 R16 K35 ["Text"]
      277 NEWCLOSURE                       R17 P3
      278 CAPTURE                          UPVAL U2
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R8
      281 SETTABLEKS                       R17 R16 K36 ["OnSelect"]
      283 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
      285 MOVE                             R15 R5
      286 GETIMPORT                        R14 K42 [table.insert]
      288 CALL                             R14 2 0
      289 JUMP                             ; [+166]
      290 NEWTABLE                         R8 0 8
      292 DUPTABLE                         R9 K50 [{"Id", "Enabled", "Type", "Action", "TextOnly", "ReserveCheckmarkSpace"}]
      293 LOADK                            R10 K51 ["AddTools"]
      294 SETTABLEKS                       R10 R9 K13 ["Id"]
      296 LOADB                            R10 1
      297 SETTABLEKS                       R10 R9 K34 ["Enabled"]
      299 LOADK                            R10 K18 ["Option"]
      300 SETTABLEKS                       R10 R9 K11 ["Type"]
      302 GETUPVAL                         R10 0
      303 GETTABLEKS                       R10 R10 K0 ["join"]
      305 GETUPVAL                         R11 1
      306 DUPTABLE                         R12 K3 [{"Category", "ItemId"}]
      307 LOADK                            R13 K19 ["Actions"]
      308 SETTABLEKS                       R13 R12 K1 ["Category"]
      310 LOADK                            R13 K51 ["AddTools"]
      311 SETTABLEKS                       R13 R12 K2 ["ItemId"]
      313 CALL                             R10 2 1
      314 SETTABLEKS                       R10 R9 K14 ["Action"]
      316 LOADB                            R10 1
      317 SETTABLEKS                       R10 R9 K49 ["TextOnly"]
      319 LOADB                            R10 1
      320 SETTABLEKS                       R10 R9 K15 ["ReserveCheckmarkSpace"]
      322 DUPTABLE                         R10 K52 [{"Id", "Enabled", "Type", "Action", "ReserveCheckmarkSpace"}]
      323 LOADK                            R11 K53 ["AddSeparator"]
      324 SETTABLEKS                       R11 R10 K13 ["Id"]
      326 LOADB                            R11 1
      327 SETTABLEKS                       R11 R10 K34 ["Enabled"]
      329 LOADK                            R11 K18 ["Option"]
      330 SETTABLEKS                       R11 R10 K11 ["Type"]
      332 GETUPVAL                         R11 0
      333 GETTABLEKS                       R11 R11 K0 ["join"]
      335 GETUPVAL                         R12 1
      336 DUPTABLE                         R13 K3 [{"Category", "ItemId"}]
      337 LOADK                            R14 K19 ["Actions"]
      338 SETTABLEKS                       R14 R13 K1 ["Category"]
      340 LOADK                            R14 K53 ["AddSeparator"]
      341 SETTABLEKS                       R14 R13 K2 ["ItemId"]
      343 CALL                             R11 2 1
      344 SETTABLEKS                       R11 R10 K14 ["Action"]
      346 LOADB                            R11 1
      347 SETTABLEKS                       R11 R10 K15 ["ReserveCheckmarkSpace"]
      349 DUPTABLE                         R11 K20 [{"Type"}]
      350 LOADK                            R12 K21 ["Separator"]
      351 SETTABLEKS                       R12 R11 K11 ["Type"]
      353 DUPTABLE                         R12 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
      354 LOADK                            R13 K17 ["ManageTabs"]
      355 SETTABLEKS                       R13 R12 K13 ["Id"]
      357 LOADK                            R13 K18 ["Option"]
      358 SETTABLEKS                       R13 R12 K11 ["Type"]
      360 GETUPVAL                         R13 0
      361 GETTABLEKS                       R13 R13 K0 ["join"]
      363 GETUPVAL                         R14 1
      364 DUPTABLE                         R15 K3 [{"Category", "ItemId"}]
      365 LOADK                            R16 K19 ["Actions"]
      366 SETTABLEKS                       R16 R15 K1 ["Category"]
      368 LOADK                            R16 K17 ["ManageTabs"]
      369 SETTABLEKS                       R16 R15 K2 ["ItemId"]
      371 CALL                             R13 2 1
      372 SETTABLEKS                       R13 R12 K14 ["Action"]
      374 LOADB                            R13 1
      375 SETTABLEKS                       R13 R12 K15 ["ReserveCheckmarkSpace"]
      377 DUPTABLE                         R13 K20 [{"Type"}]
      378 LOADK                            R14 K21 ["Separator"]
      379 SETTABLEKS                       R14 R13 K11 ["Type"]
      381 DUPTABLE                         R14 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
      382 LOADK                            R15 K22 ["DockUndockRibbon"]
      383 SETTABLEKS                       R15 R14 K13 ["Id"]
      385 LOADK                            R15 K18 ["Option"]
      386 SETTABLEKS                       R15 R14 K11 ["Type"]
      388 GETUPVAL                         R15 0
      389 GETTABLEKS                       R15 R15 K0 ["join"]
      391 GETUPVAL                         R16 1
      392 DUPTABLE                         R17 K3 [{"Category", "ItemId"}]
      393 LOADK                            R18 K19 ["Actions"]
      394 SETTABLEKS                       R18 R17 K1 ["Category"]
      396 LOADK                            R18 K22 ["DockUndockRibbon"]
      397 SETTABLEKS                       R18 R17 K2 ["ItemId"]
      399 CALL                             R15 2 1
      400 SETTABLEKS                       R15 R14 K14 ["Action"]
      402 LOADB                            R15 1
      403 SETTABLEKS                       R15 R14 K15 ["ReserveCheckmarkSpace"]
      405 DUPTABLE                         R15 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
      406 LOADK                            R16 K23 ["CompactDensity"]
      407 SETTABLEKS                       R16 R15 K13 ["Id"]
      409 LOADK                            R16 K18 ["Option"]
      410 SETTABLEKS                       R16 R15 K11 ["Type"]
      412 GETUPVAL                         R16 0
      413 GETTABLEKS                       R16 R16 K0 ["join"]
      415 GETUPVAL                         R17 1
      416 DUPTABLE                         R18 K3 [{"Category", "ItemId"}]
      417 LOADK                            R19 K19 ["Actions"]
      418 SETTABLEKS                       R19 R18 K1 ["Category"]
      420 LOADK                            R19 K23 ["CompactDensity"]
      421 SETTABLEKS                       R19 R18 K2 ["ItemId"]
      423 CALL                             R16 2 1
      424 SETTABLEKS                       R16 R15 K14 ["Action"]
      426 LOADB                            R16 1
      427 SETTABLEKS                       R16 R15 K15 ["ReserveCheckmarkSpace"]
      429 DUPTABLE                         R16 K16 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
      430 LOADK                            R17 K24 ["ShowHideLabels"]
      431 SETTABLEKS                       R17 R16 K13 ["Id"]
      433 LOADK                            R17 K18 ["Option"]
      434 SETTABLEKS                       R17 R16 K11 ["Type"]
      436 GETUPVAL                         R17 0
      437 GETTABLEKS                       R17 R17 K0 ["join"]
      439 GETUPVAL                         R18 1
      440 DUPTABLE                         R19 K3 [{"Category", "ItemId"}]
      441 LOADK                            R20 K19 ["Actions"]
      442 SETTABLEKS                       R20 R19 K1 ["Category"]
      444 LOADK                            R20 K24 ["ShowHideLabels"]
      445 SETTABLEKS                       R20 R19 K2 ["ItemId"]
      447 CALL                             R17 2 1
      448 SETTABLEKS                       R17 R16 K14 ["Action"]
      450 LOADB                            R17 1
      451 SETTABLEKS                       R17 R16 K15 ["ReserveCheckmarkSpace"]
      453 SETLIST                          R8 R9 8 [1]
      455 MOVE                             R5 R8
      456 DUPTABLE                         R6 K55 [{"Type", "Children"}]
      457 LOADK                            R7 K56 ["Column"]
      458 SETTABLEKS                       R7 R6 K11 ["Type"]
      460 SETTABLEKS                       R5 R6 K54 ["Children"]
      462 GETTABLEKS                       R7 R0 K57 ["Position"]
      464 MOVE                             R8 R2
      465 JUMPIF                           R8 ; [+7]
      466 GETIMPORT                        R8 K60 [Vector2.new]
      468 GETTABLEKS                       R9 R7 K61 ["X"]
      470 GETTABLEKS                       R10 R7 K62 ["Y"]
      472 CALL                             R8 2 1
      473 GETUPVAL                         R9 5
      474 NEWTABLE                         R10 0 1
      476 MOVE                             R11 R6
      477 SETLIST                          R10 R11 1 [1]
      479 MOVE                             R11 R3
      480 DUPTABLE                         R12 K66 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      481 GETIMPORT                        R13 K60 [Vector2.new]
      483 LOADN                            R14 0
      484 LOADN                            R15 0
      485 CALL                             R13 2 1
      486 SETTABLEKS                       R13 R12 K63 ["SubjectAnchorPoint"]
      488 GETIMPORT                        R13 K60 [Vector2.new]
      490 LOADN                            R14 0
      491 LOADN                            R15 0
      492 CALL                             R13 2 1
      493 SETTABLEKS                       R13 R12 K64 ["TargetAnchorPoint"]
      495 SETTABLEKS                       R8 R12 K65 ["Offset"]
      497 CALL                             R9 3 0
      498 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 5
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 2
       20 MOVE                             R7 R3
       21 MOVE                             R8 R2
       22 SETLIST                          R6 R7 2 [1]
       24 CALL                             R4 2 1
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R5 K12 ["Localization"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Packages"]
       33 GETTABLEKS                       R7 R7 K13 ["StudioFoundation"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K14 ["Util"]
       38 GETTABLEKS                       R7 R7 K15 ["StudioUri"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K14 ["Util"]
       46 GETTABLEKS                       R9 R9 K17 ["controlsIdentifierToString"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Src"]
       53 GETTABLEKS                       R10 R10 K18 ["Types"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Src"]
       60 GETTABLEKS                       R11 R11 K19 ["Contexts"]
       62 GETTABLEKS                       R11 R11 K20 ["RibbonDefinition"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K16 ["Src"]
       69 GETTABLEKS                       R12 R12 K21 ["Components"]
       71 GETTABLEKS                       R12 R12 K22 ["ControlsView"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K16 ["Src"]
       78 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       80 GETTABLEKS                       R13 R13 K24 ["useMenu"]
       82 CALL                             R12 1 1
       83 DUPCLOSURE                       R13 K25 [PROTO_5]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 RETURN                           R13 1
