PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["datum"]
        3 GETTABLEKS                       R3 R4 K1 ["id"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADK                            R1 K2 ["Selected"]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K3 ["parent"]
       11 JUMPIFEQKNIL                     R1 ; [+13]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R5 R1 K0 ["datum"]
       16 GETTABLEKS                       R4 R5 K1 ["id"]
       18 GETTABLE                         R2 R3 R4
       19 JUMPIFNOT                        R2 ; [+2]
       20 LOADK                            R2 K4 ["ParentSelected"]
       21 RETURN                           R2 1
       22 GETTABLEKS                       R1 R1 K3 ["parent"]
       24 JUMPBACK                         ; [-14]
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R5 R0 K0 ["datum"]
        4 GETTABLEKS                       R4 R5 K1 ["id"]
        6 GETTABLE                         R2 R3 R4
        7 JUMPIFNOTEQKB                    R2 TRUE ; [+13]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["getExpandState"]
       12 GETTABLEKS                       R4 R0 K0 ["datum"]
       14 GETTABLEKS                       R3 R4 K1 ["id"]
       16 CALL                             R2 1 1
       17 JUMPIFEQKS                       R2 K3 ["Collapsed"] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["uiState"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETIMPORT                        R1 K3 [table.clone]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["uiState"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+2]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R0 R1 K4 ["textWidth"]
       15 GETUPVAL                         R2 0
       16 GETIMPORT                        R3 K6 [table.freeze]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K0 ["uiState"]
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNthDescendant"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R6 R1 K1 ["datum"]
       13 GETTABLEKS                       R5 R6 K2 ["id"]
       15 GETTABLE                         R3 R4 R5
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADK                            R2 K3 ["Selected"]
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R1 K4 ["parent"]
       21 JUMPIFEQKNIL                     R3 ; [+13]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R7 R3 K1 ["datum"]
       26 GETTABLEKS                       R6 R7 K2 ["id"]
       28 GETTABLE                         R4 R5 R6
       29 JUMPIFNOT                        R4 ; [+2]
       30 LOADK                            R2 K5 ["ParentSelected"]
       31 RETURN                           R2 1
       32 GETTABLEKS                       R3 R3 K4 ["parent"]
       34 JUMPBACK                         ; [-14]
       35 LOADNIL                          R2
       36 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selectedIdsObservable"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["selectedWithinIdsObservable"]
        9 GETTABLEKS                       R1 R2 K1 ["get"]
       11 CALL                             R1 0 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K3 ["focusedRootObservable"]
       20 GETTABLEKS                       R5 R6 K1 ["get"]
       22 CALL                             R5 0 1
       23 GETTABLEKS                       R4 R5 K4 ["children"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K5 ["hoveredObservable"]
       28 GETTABLEKS                       R5 R6 K1 ["get"]
       30 CALL                             R5 0 1
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K1 ["get"]
       34 CALL                             R6 0 1
       35 NEWTABLE                         R7 0 0
       37 LOADN                            R9 1
       38 LOADN                            R12 1
       39 GETUPVAL                         R15 2
       40 GETTABLEKS                       R14 R15 K6 ["explorerRowHeight"]
       42 IDIV                             R13 R6 R14
       43 ADD                              R11 R12 R13
       44 GETUPVAL                         R13 3
       45 GETTABLEKS                       R12 R13 K7 ["extraNodes"]
       47 SUB                              R10 R11 R12
       48 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       50 GETIMPORT                        R8 K10 [math.max]
       52 CALL                             R8 2 1
       53 MOVE                             R11 R8
       54 GETUPVAL                         R13 4
       55 ADD                              R12 R8 R13
       56 SUBK                             R9 R12 K11 [1]
       57 LOADN                            R10 1
       58 FORNPREP                         R9
       59 GETUPVAL                         R13 5
       60 GETTABLEKS                       R12 R13 K12 ["getNthDescendant"]
       62 MOVE                             R13 R4
       63 MOVE                             R14 R11
       64 CALL                             R12 2 1
       65 JUMPIFNOTEQKNIL                  R12 ; [+9]
       67 GETUPVAL                         R15 6
       68 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       70 MOVE                             R14 R7
       71 GETIMPORT                        R13 K15 [table.insert]
       73 CALL                             R13 2 0
       74 JUMP                             ; [+261]
       75 GETTABLEKS                       R16 R12 K16 ["datum"]
       77 GETTABLEKS                       R15 R16 K17 ["id"]
       79 GETTABLE                         R14 R0 R15
       80 JUMPIFNOT                        R14 ; [+2]
       81 LOADK                            R13 K18 ["Selected"]
       82 JUMP                             ; [+16]
       83 GETTABLEKS                       R14 R12 K19 ["parent"]
       85 JUMPIFEQKNIL                     R14 ; [+12]
       87 GETTABLEKS                       R17 R14 K16 ["datum"]
       89 GETTABLEKS                       R16 R17 K17 ["id"]
       91 GETTABLE                         R15 R0 R16
       92 JUMPIFNOT                        R15 ; [+2]
       93 LOADK                            R13 K20 ["ParentSelected"]
       94 JUMP                             ; [+4]
       95 GETTABLEKS                       R14 R14 K19 ["parent"]
       97 JUMPBACK                         ; [-13]
       98 LOADNIL                          R13
       99 GETTABLEKS                       R16 R12 K16 ["datum"]
      101 GETTABLEKS                       R15 R16 K21 ["className"]
      103 GETTABLEKS                       R17 R12 K16 ["datum"]
      105 GETTABLEKS                       R16 R17 K22 ["name"]
      107 JUMPIFEQ                         R15 R16 ; [+2]
      109 LOADB                            R14 0 +1
      110 LOADB                            R14 1
      111 GETTABLEKS                       R16 R12 K16 ["datum"]
      113 GETTABLEKS                       R15 R16 K22 ["name"]
      115 NEWCLOSURE                       R16 P2
      116 CAPTURE                          VAL R12
      117 GETTABLEKS                       R17 R12 K23 ["uiState"]
      119 JUMPIFEQKNIL                     R17 ; [+7]
      121 GETTABLEKS                       R18 R12 K23 ["uiState"]
      123 GETTABLEKS                       R17 R18 K24 ["textWidth"]
      125 JUMPIFNOTEQKNIL                  R17 ; [+84]
      127 GETTABLEKS                       R18 R12 K16 ["datum"]
      129 GETTABLEKS                       R17 R18 K17 ["id"]
      131 GETUPVAL                         R19 2
      132 GETTABLEKS                       R18 R19 K25 ["nilId"]
      134 JUMPIFEQ                         R17 R18 ; [+75]
      136 LOADB                            R17 1
      137 JUMPIFNOT                        R14 ; [+26]
      138 GETUPVAL                         R19 7
      139 GETTABLE                         R18 R19 R15
      140 JUMPIFEQKNIL                     R18 ; [+23]
      142 LOADB                            R17 0
      143 GETUPVAL                         R19 7
      144 GETTABLE                         R18 R19 R15
      145 GETTABLEKS                       R20 R12 K23 ["uiState"]
      147 JUMPIFNOT                        R20 ; [+6]
      148 GETIMPORT                        R19 K27 [table.clone]
      150 GETTABLEKS                       R20 R12 K23 ["uiState"]
      152 CALL                             R19 1 1
      153 JUMP                             ; [+2]
      154 NEWTABLE                         R19 0 0
      156 SETTABLEKS                       R18 R19 K24 ["textWidth"]
      158 GETIMPORT                        R20 K29 [table.freeze]
      160 MOVE                             R21 R19
      161 CALL                             R20 1 1
      162 SETTABLEKS                       R20 R12 K23 ["uiState"]
      164 JUMPIFNOT                        R17 ; [+45]
      165 GETUPVAL                         R19 8
      166 GETTABLEKS                       R22 R12 K16 ["datum"]
      168 GETTABLEKS                       R21 R22 K22 ["name"]
      170 GETUPVAL                         R23 2
      171 GETTABLEKS                       R22 R23 K30 ["standardTextSize"]
      173 GETUPVAL                         R24 2
      174 GETTABLEKS                       R23 R24 K31 ["defaultFont"]
      176 GETIMPORT                        R24 K34 [Vector2.new]
      178 LOADK                            R25 K35 [∞]
      179 GETUPVAL                         R27 2
      180 GETTABLEKS                       R26 R27 K6 ["explorerRowHeight"]
      182 CALL                             R24 2 -1
      183 NAMECALL                         R19 R19 K36 ["GetTextSize"]
      185 CALL                             R19 -1 1
      186 GETTABLEKS                       R18 R19 K37 ["X"]
      188 GETTABLEKS                       R20 R12 K23 ["uiState"]
      190 JUMPIFNOT                        R20 ; [+6]
      191 GETIMPORT                        R19 K27 [table.clone]
      193 GETTABLEKS                       R20 R12 K23 ["uiState"]
      195 CALL                             R19 1 1
      196 JUMP                             ; [+2]
      197 NEWTABLE                         R19 0 0
      199 SETTABLEKS                       R18 R19 K24 ["textWidth"]
      201 GETIMPORT                        R20 K29 [table.freeze]
      203 MOVE                             R21 R19
      204 CALL                             R20 1 1
      205 SETTABLEKS                       R20 R12 K23 ["uiState"]
      207 JUMPIFNOT                        R14 ; [+2]
      208 GETUPVAL                         R19 7
      209 SETTABLE                         R18 R19 R15
      210 GETUPVAL                         R17 9
      211 CALL                             R17 0 1
      212 JUMPIFNOT                        R17 ; [+15]
      213 LOADB                            R17 0
      214 GETTABLEKS                       R19 R12 K16 ["datum"]
      216 GETTABLEKS                       R18 R19 K38 ["isGhost"]
      218 JUMPIFNOTEQKB                    R18 TRUE ; [+9]
      220 GETUPVAL                         R18 0
      221 GETTABLEKS                       R17 R18 K39 ["isInstancePinned"]
      223 GETTABLEKS                       R19 R12 K16 ["datum"]
      225 GETTABLEKS                       R18 R19 K17 ["id"]
      227 CALL                             R17 1 1
      228 DUPTABLE                         R18 K46 [{"datum", "uiState", "depth", "hoverState", "selectionState", "isStreamingIn", "isSelectedWithin", "yPixels"}]
      229 GETTABLEKS                       R19 R12 K16 ["datum"]
      231 SETTABLEKS                       R19 R18 K16 ["datum"]
      233 GETIMPORT                        R19 K29 [table.freeze]
      235 DUPTABLE                         R20 K48 [{"textWidth", "isExpanded"}]
      236 GETTABLEKS                       R22 R12 K23 ["uiState"]
      238 JUMPIFNOT                        R22 ; [+5]
      239 GETTABLEKS                       R22 R12 K23 ["uiState"]
      241 GETTABLEKS                       R21 R22 K24 ["textWidth"]
      243 JUMPIF                           R21 ; [+1]
      244 LOADN                            R21 0
      245 SETTABLEKS                       R21 R20 K24 ["textWidth"]
      247 GETTABLEKS                       R22 R12 K23 ["uiState"]
      249 JUMPIFNOT                        R22 ; [+5]
      250 GETTABLEKS                       R22 R12 K23 ["uiState"]
      252 GETTABLEKS                       R21 R22 K47 ["isExpanded"]
      254 JUMPIF                           R21 ; [+1]
      255 LOADB                            R21 0
      256 SETTABLEKS                       R21 R20 K47 ["isExpanded"]
      258 CALL                             R19 1 1
      259 SETTABLEKS                       R19 R18 K23 ["uiState"]
      261 GETUPVAL                         R19 10
      262 MOVE                             R20 R12
      263 CALL                             R19 1 1
      264 SETTABLEKS                       R19 R18 K40 ["depth"]
      266 JUMPIFEQKNIL                     R5 ; [+16]
      268 GETTABLEKS                       R20 R5 K49 ["instanceId"]
      270 GETTABLEKS                       R22 R12 K16 ["datum"]
      272 GETTABLEKS                       R21 R22 K17 ["id"]
      274 JUMPIFNOTEQ                      R20 R21 ; [+8]
      276 GETTABLEKS                       R20 R5 K50 ["hoveredWithin"]
      278 JUMPIFNOT                        R20 ; [+2]
      279 LOADK                            R19 K51 ["HoveredWithin"]
      280 JUMP                             ; [+3]
      281 LOADK                            R19 K52 ["Hovered"]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R19
      284 SETTABLEKS                       R19 R18 K41 ["hoverState"]
      286 MOVE                             R19 R13
      287 JUMPIFNOT                        R19 ; [+6]
      288 DUPTABLE                         R19 K55 [{"kind", "segment"}]
      289 SETTABLEKS                       R13 R19 K53 ["kind"]
      291 LOADK                            R20 K56 ["Only"]
      292 SETTABLEKS                       R20 R19 K54 ["segment"]
      294 SETTABLEKS                       R19 R18 K42 ["selectionState"]
      296 SETTABLEKS                       R17 R18 K43 ["isStreamingIn"]
      298 LOADB                            R19 0
      299 GETTABLEKS                       R22 R12 K16 ["datum"]
      301 GETTABLEKS                       R21 R22 K17 ["id"]
      303 GETTABLE                         R20 R1 R21
      304 JUMPIFNOTEQKB                    R20 TRUE ; [+13]
      306 GETUPVAL                         R21 0
      307 GETTABLEKS                       R20 R21 K57 ["getExpandState"]
      309 GETTABLEKS                       R22 R12 K16 ["datum"]
      311 GETTABLEKS                       R21 R22 K17 ["id"]
      313 CALL                             R20 1 1
      314 JUMPIFEQKS                       R20 K58 ["Collapsed"] ; [+2]
      316 LOADB                            R19 0 +1
      317 LOADB                            R19 1
      318 SETTABLEKS                       R19 R18 K44 ["isSelectedWithin"]
      320 SUBK                             R20 R11 K11 [1]
      321 GETUPVAL                         R22 2
      322 GETTABLEKS                       R21 R22 K6 ["explorerRowHeight"]
      324 MUL                              R19 R20 R21
      325 SETTABLEKS                       R19 R18 K45 ["yPixels"]
      327 MOVE                             R20 R7
      328 GETIMPORT                        R21 K29 [table.freeze]
      330 MOVE                             R22 R18
      331 CALL                             R21 1 -1
      332 FASTCALL                         TABLE_INSERT ; [+2]
      333 GETIMPORT                        R19 K15 [table.insert]
      335 CALL                             R19 -1 0
      336 FORNLOOP                         R9
      337 NEWCLOSURE                       R9 P3
      338 CAPTURE                          UPVAL U5
      339 CAPTURE                          VAL R4
      340 CAPTURE                          VAL R0
      341 JUMPIFNOTEQKN                    R8 K11 [1] ; [+3]
      343 LOADB                            R10 0
      344 JUMP                             ; [+39]
      345 SUBK                             R12 R8 K11 [1]
      346 GETUPVAL                         R14 5
      347 GETTABLEKS                       R13 R14 K12 ["getNthDescendant"]
      349 MOVE                             R14 R4
      350 MOVE                             R15 R12
      351 CALL                             R13 2 1
      352 JUMPIFNOTEQKNIL                  R13 ; [+3]
      354 LOADNIL                          R11
      355 JUMP                             ; [+24]
      356 GETTABLEKS                       R16 R13 K16 ["datum"]
      358 GETTABLEKS                       R15 R16 K17 ["id"]
      360 GETTABLE                         R14 R0 R15
      361 JUMPIFNOT                        R14 ; [+2]
      362 LOADK                            R11 K18 ["Selected"]
      363 JUMP                             ; [+16]
      364 GETTABLEKS                       R14 R13 K19 ["parent"]
      366 JUMPIFEQKNIL                     R14 ; [+12]
      368 GETTABLEKS                       R17 R14 K16 ["datum"]
      370 GETTABLEKS                       R16 R17 K17 ["id"]
      372 GETTABLE                         R15 R0 R16
      373 JUMPIFNOT                        R15 ; [+2]
      374 LOADK                            R11 K20 ["ParentSelected"]
      375 JUMP                             ; [+4]
      376 GETTABLEKS                       R14 R14 K19 ["parent"]
      378 JUMPBACK                         ; [-13]
      379 LOADNIL                          R11
      380 JUMPIFNOTEQKNIL                  R11 ; [+2]
      382 LOADB                            R10 0 +1
      383 LOADB                            R10 1
      384 MOVE                             R11 R7
      385 LOADNIL                          R12
      386 LOADNIL                          R13
      387 FORGPREP                         R11
      388 ADDK                             R17 R14 K11 [1]
      389 GETTABLE                         R16 R7 R17
      390 GETTABLEKS                       R17 R15 K42 ["selectionState"]
      392 JUMPIFNOTEQKNIL                  R17 ; [+3]
      394 LOADB                            R10 0
      395 JUMP                             ; [+78]
      396 LENGTH                           R19 R7
      397 JUMPIFNOTEQ                      R14 R19 ; [+38]
      399 GETUPVAL                         R20 4
      400 ADD                              R19 R8 R20
      401 GETUPVAL                         R21 5
      402 GETTABLEKS                       R20 R21 K12 ["getNthDescendant"]
      404 MOVE                             R21 R4
      405 MOVE                             R22 R19
      406 CALL                             R20 2 1
      407 JUMPIFNOTEQKNIL                  R20 ; [+3]
      409 LOADNIL                          R18
      410 JUMP                             ; [+35]
      411 GETTABLEKS                       R23 R20 K16 ["datum"]
      413 GETTABLEKS                       R22 R23 K17 ["id"]
      415 GETTABLE                         R21 R0 R22
      416 JUMPIFNOT                        R21 ; [+2]
      417 LOADK                            R18 K18 ["Selected"]
      418 JUMP                             ; [+27]
      419 GETTABLEKS                       R21 R20 K19 ["parent"]
      421 JUMPIFEQKNIL                     R21 ; [+12]
      423 GETTABLEKS                       R24 R21 K16 ["datum"]
      425 GETTABLEKS                       R23 R24 K17 ["id"]
      427 GETTABLE                         R22 R0 R23
      428 JUMPIFNOT                        R22 ; [+2]
      429 LOADK                            R18 K20 ["ParentSelected"]
      430 JUMP                             ; [+15]
      431 GETTABLEKS                       R21 R21 K19 ["parent"]
      433 JUMPBACK                         ; [-13]
      434 LOADNIL                          R18
      435 JUMP                             ; [+10]
      436 LOADB                            R18 0
      437 JUMPIFEQKNIL                     R16 ; [+8]
      439 GETTABLEKS                       R18 R16 K42 ["selectionState"]
      441 JUMPIFNOT                        R18 ; [+4]
      442 GETTABLEKS                       R19 R16 K42 ["selectionState"]
      444 GETTABLEKS                       R18 R19 K53 ["kind"]
      446 JUMPIFNOTEQKNIL                  R18 ; [+2]
      448 LOADB                            R17 0 +1
      449 LOADB                            R17 1
      450 JUMPIFNOT                        R10 ; [+7]
      451 JUMPIFNOT                        R17 ; [+6]
      452 GETTABLEKS                       R18 R15 K42 ["selectionState"]
      454 LOADK                            R19 K59 ["Middle"]
      455 SETTABLEKS                       R19 R18 K54 ["segment"]
      457 JUMP                             ; [+15]
      458 JUMPIF                           R10 ; [+7]
      459 JUMPIFNOT                        R17 ; [+6]
      460 GETTABLEKS                       R18 R15 K42 ["selectionState"]
      462 LOADK                            R19 K60 ["Top"]
      463 SETTABLEKS                       R19 R18 K54 ["segment"]
      465 JUMP                             ; [+7]
      466 JUMPIFNOT                        R10 ; [+6]
      467 JUMPIF                           R17 ; [+5]
      468 GETTABLEKS                       R18 R15 K42 ["selectionState"]
      470 LOADK                            R19 K61 ["Bottom"]
      471 SETTABLEKS                       R19 R18 K54 ["segment"]
      473 LOADB                            R10 1
      474 FORGLOOP                         R11 2 ; [-87]
      476 RETURN                           R7 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["observable"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKS                       R0 K0 ["idle"] ; [+9]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["logCounter"]
        8 GETUPVAL                         R1 3
        9 CALL                             R0 1 0
       10 LOADK                            R0 K2 ["queued"]
       11 SETUPVAL                         R0 1
       12 RETURN                           R0 0
       13 LOADK                            R0 K3 ["active"]
       14 SETUPVAL                         R0 1
       15 GETUPVAL                         R0 4
       16 CALL                             R0 0 1
       17 LENGTH                           R3 R0
       18 GETUPVAL                         R4 5
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       25 LOADK                            R3 K4 ["Amount of visible nodes changed"]
       26 GETIMPORT                        R1 K6 [assert]
       28 CALL                             R1 2 0
       29 NEWTABLE                         R1 0 0
       31 NEWTABLE                         R2 0 0
       33 MOVE                             R3 R0
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 GETTABLEKS                       R9 R7 K7 ["datum"]
       39 GETTABLEKS                       R8 R9 K8 ["id"]
       41 GETUPVAL                         R10 6
       42 GETTABLEKS                       R9 R10 K9 ["nilId"]
       44 JUMPIFEQ                         R8 R9 ; [+18]
       46 GETTABLEKS                       R11 R7 K7 ["datum"]
       48 GETTABLEKS                       R10 R11 K8 ["id"]
       50 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       52 MOVE                             R9 R1
       53 GETIMPORT                        R8 K12 [table.insert]
       55 CALL                             R8 2 0
       56 GETUPVAL                         R8 0
       57 JUMPIFNOT                        R8 ; [+5]
       58 GETTABLEKS                       R9 R7 K7 ["datum"]
       60 GETTABLEKS                       R8 R9 K8 ["id"]
       62 SETTABLE                         R7 R2 R8
       63 GETUPVAL                         R8 0
       64 JUMPIF                           R8 ; [+6]
       65 GETUPVAL                         R10 7
       66 GETTABLE                         R9 R10 R6
       67 GETTABLEKS                       R8 R9 K13 ["set"]
       69 MOVE                             R9 R7
       70 CALL                             R8 1 0
       71 FORGLOOP                         R3 2 ; [-35]
       73 GETUPVAL                         R3 0
       74 JUMPIFNOT                        R3 ; [+269]
       75 GETUPVAL                         R3 8
       76 MOVE                             R4 R1
       77 GETUPVAL                         R5 9
       78 CALL                             R3 2 3
       79 NEWTABLE                         R6 0 0
       81 MOVE                             R7 R3
       82 LOADNIL                          R8
       83 LOADNIL                          R9
       84 FORGPREP                         R7
       85 GETTABLE                         R12 R4 R10
       86 GETUPVAL                         R14 6
       87 GETTABLEKS                       R13 R14 K9 ["nilId"]
       89 JUMPIFNOTEQ                      R12 R13 ; [+8]
       91 GETIMPORT                        R13 K15 [table.remove]
       93 MOVE                             R14 R4
       94 MOVE                             R15 R10
       95 CALL                             R13 2 0
       96 GETTABLE                         R12 R4 R10
       97 JUMPBACK                         ; [-12]
       98 JUMPIFNOTEQKNIL                  R12 ; [+56]
      100 GETIMPORT                        R13 K15 [table.remove]
      102 GETUPVAL                         R14 10
      103 CALL                             R13 1 1
      104 JUMPIFNOTEQKNIL                  R13 ; [+2]
      106 LOADB                            R15 0 +1
      107 LOADB                            R15 1
      108 FASTCALL2K                       ASSERT R15 K16 ; [+4]
      110 LOADK                            R16 K16 ["Couldn't get a new nil index"]
      111 GETIMPORT                        R14 K6 [assert]
      113 CALL                             R14 2 0
      114 GETUPVAL                         R15 7
      115 GETTABLE                         R14 R15 R13
      116 JUMPIFNOTEQKNIL                  R14 ; [+2]
      118 LOADB                            R16 0 +1
      119 LOADB                            R16 1
      120 FASTCALL2K                       ASSERT R16 K17 ; [+4]
      122 LOADK                            R17 K17 ["Couldn't find highest nil node"]
      123 GETIMPORT                        R15 K6 [assert]
      125 CALL                             R15 2 0
      126 GETTABLEKS                       R20 R14 K18 ["observable"]
      128 GETTABLEKS                       R19 R20 K19 ["get"]
      130 CALL                             R19 0 1
      131 GETTABLEKS                       R18 R19 K7 ["datum"]
      133 GETTABLEKS                       R17 R18 K8 ["id"]
      135 GETUPVAL                         R19 6
      136 GETTABLEKS                       R18 R19 K9 ["nilId"]
      138 JUMPIFEQ                         R17 R18 ; [+2]
      140 LOADB                            R16 0 +1
      141 LOADB                            R16 1
      142 FASTCALL2K                       ASSERT R16 K20 ; [+4]
      144 LOADK                            R17 K20 ["Highest nil node is not actually a nil node"]
      145 GETIMPORT                        R15 K6 [assert]
      147 CALL                             R15 2 0
      148 GETTABLEKS                       R15 R14 K13 ["set"]
      150 GETTABLE                         R16 R2 R11
      151 CALL                             R15 1 0
      152 GETUPVAL                         R15 11
      153 SETTABLE                         R13 R15 R11
      154 JUMP                             ; [+28]
      155 LOADB                            R13 1
      156 SETTABLE                         R13 R6 R12
      157 GETUPVAL                         R14 11
      158 GETTABLE                         R13 R14 R12
      159 JUMPIFNOTEQKNIL                  R13 ; [+12]
      161 GETIMPORT                        R14 K22 [error]
      163 LOADK                            R16 K23 ["Couldn't find visible node index of old ID that is being replaced (%* being replaced by %*, with a visibleNodeIndex of %*)"]
      164 MOVE                             R18 R12
      165 MOVE                             R19 R11
      166 MOVE                             R20 R13
      167 NAMECALL                         R16 R16 K24 ["format"]
      169 CALL                             R16 4 1
      170 MOVE                             R15 R16
      171 CALL                             R14 1 0
      172 GETUPVAL                         R16 7
      173 GETTABLE                         R15 R16 R13
      174 GETTABLEKS                       R14 R15 K13 ["set"]
      176 GETTABLE                         R15 R2 R11
      177 CALL                             R14 1 0
      178 GETUPVAL                         R14 11
      179 LOADNIL                          R15
      180 SETTABLE                         R15 R14 R12
      181 GETUPVAL                         R14 11
      182 SETTABLE                         R13 R14 R11
      183 FORGLOOP                         R7 2 ; [-99]
      185 MOVE                             R7 R4
      186 LOADNIL                          R8
      187 LOADNIL                          R9
      188 FORGPREP                         R7
      189 GETUPVAL                         R13 6
      190 GETTABLEKS                       R12 R13 K9 ["nilId"]
      192 JUMPIFEQ                         R11 R12 ; [+37]
      194 GETTABLE                         R12 R6 R11
      195 JUMPIF                           R12 ; [+34]
      196 GETUPVAL                         R13 11
      197 GETTABLE                         R12 R13 R11
      198 JUMPIFNOTEQKNIL                  R12 ; [+15]
      200 GETIMPORT                        R13 K22 [error]
      202 LOADK                            R15 K25 ["Couldn't find visible node index of old ID that is being removed (%*)\ndatumIdToVisibleNodeIndex = %*"]
      203 MOVE                             R17 R11
      204 GETUPVAL                         R18 12
      205 GETUPVAL                         R20 11
      206 NAMECALL                         R18 R18 K26 ["JSONEncode"]
      208 CALL                             R18 2 1
      209 NAMECALL                         R15 R15 K24 ["format"]
      211 CALL                             R15 3 1
      212 MOVE                             R14 R15
      213 CALL                             R13 1 0
      214 GETUPVAL                         R15 7
      215 GETTABLE                         R14 R15 R12
      216 GETTABLEKS                       R13 R14 K13 ["set"]
      218 GETUPVAL                         R14 13
      219 CALL                             R13 1 0
      220 GETUPVAL                         R13 11
      221 LOADNIL                          R14
      222 SETTABLE                         R14 R13 R11
      223 GETUPVAL                         R14 10
      224 FASTCALL2                        TABLE_INSERT R14 R12 ; [+4]
      226 MOVE                             R15 R12
      227 GETIMPORT                        R13 K12 [table.insert]
      229 CALL                             R13 2 0
      230 FORGLOOP                         R7 2 ; [-42]
      232 MOVE                             R7 R5
      233 LOADNIL                          R8
      234 LOADNIL                          R9
      235 FORGPREP                         R7
      236 GETUPVAL                         R13 11
      237 GETTABLE                         R12 R13 R11
      238 JUMPIFNOTEQKNIL                  R12 ; [+2]
      240 LOADB                            R14 0 +1
      241 LOADB                            R14 1
      242 FASTCALL2K                       ASSERT R14 K27 ; [+4]
      244 LOADK                            R15 K27 ["Couldn't find visible node index of ID we already saw"]
      245 GETIMPORT                        R13 K6 [assert]
      247 CALL                             R13 2 0
      248 GETUPVAL                         R14 7
      249 GETTABLE                         R13 R14 R12
      250 GETTABLE                         R14 R2 R11
      251 GETUPVAL                         R15 14
      252 GETTABLEKS                       R17 R13 K18 ["observable"]
      254 GETTABLEKS                       R16 R17 K19 ["get"]
      256 CALL                             R16 0 1
      257 MOVE                             R17 R14
      258 CALL                             R15 2 1
      259 JUMPIF                           R15 ; [+4]
      260 GETTABLEKS                       R15 R13 K13 ["set"]
      262 MOVE                             R16 R14
      263 CALL                             R15 1 0
      264 FORGLOOP                         R7 2 ; [-29]
      266 SETUPVAL                         R1 9
      267 GETUPVAL                         R7 15
      268 CALL                             R7 0 1
      269 JUMPIFNOT                        R7 ; [+74]
      270 GETUPVAL                         R7 7
      271 LOADNIL                          R8
      272 LOADNIL                          R9
      273 FORGPREP                         R7
      274 GETTABLEKS                       R13 R11 K18 ["observable"]
      276 GETTABLEKS                       R12 R13 K19 ["get"]
      278 CALL                             R12 0 1
      279 GETTABLEKS                       R14 R12 K7 ["datum"]
      281 GETTABLEKS                       R13 R14 K8 ["id"]
      283 GETUPVAL                         R15 6
      284 GETTABLEKS                       R14 R15 K9 ["nilId"]
      286 JUMPIFNOTEQ                      R13 R14 ; [+33]
      288 GETUPVAL                         R16 11
      289 GETTABLEKS                       R18 R12 K7 ["datum"]
      291 GETTABLEKS                       R17 R18 K8 ["id"]
      293 GETTABLE                         R15 R16 R17
      294 JUMPIFEQKNIL                     R15 ; [+2]
      296 LOADB                            R14 0 +1
      297 LOADB                            R14 1
      298 FASTCALL2K                       ASSERT R14 K28 ; [+4]
      300 LOADK                            R15 K28 ["datumIdToVisibleNodeIndex[nilId] was not nil"]
      301 GETIMPORT                        R13 K6 [assert]
      303 CALL                             R13 2 0
      304 GETIMPORT                        R15 K30 [table.find]
      306 GETUPVAL                         R16 10
      307 MOVE                             R17 R10
      308 CALL                             R15 2 1
      309 JUMPIFNOTEQKNIL                  R15 ; [+2]
      311 LOADB                            R14 0 +1
      312 LOADB                            R14 1
      313 FASTCALL2K                       ASSERT R14 K31 ; [+4]
      315 LOADK                            R15 K31 ["Couldn't find nil index in nilIndexes"]
      316 GETIMPORT                        R13 K6 [assert]
      318 CALL                             R13 2 0
      319 JUMP                             ; [+22]
      320 GETUPVAL                         R14 11
      321 GETTABLEKS                       R16 R12 K7 ["datum"]
      323 GETTABLEKS                       R15 R16 K8 ["id"]
      325 GETTABLE                         R13 R14 R15
      326 JUMPIFEQ                         R13 R10 ; [+15]
      328 GETIMPORT                        R14 K22 [error]
      330 LOADK                            R16 K32 ["Reported node index of %* is %*, but we found it at %*"]
      331 GETTABLEKS                       R19 R12 K7 ["datum"]
      333 GETTABLEKS                       R18 R19 K8 ["id"]
      335 MOVE                             R19 R13
      336 MOVE                             R20 R10
      337 NAMECALL                         R16 R16 K24 ["format"]
      339 CALL                             R16 4 1
      340 MOVE                             R15 R16
      341 CALL                             R14 1 0
      342 FORGLOOP                         R7 2 ; [-69]
      344 GETUPVAL                         R4 16
      345 GETTABLEKS                       R3 R4 K33 ["setViewingInstances"]
      347 MOVE                             R4 R1
      348 CALL                             R3 1 0
      349 GETUPVAL                         R3 0
      350 JUMPIFNOT                        R3 ; [+10]
      351 GETUPVAL                         R3 1
      352 JUMPIFNOTEQKS                    R3 K2 ["queued"] ; [+6]
      354 LOADK                            R3 K0 ["idle"]
      355 SETUPVAL                         R3 1
      356 GETUPVAL                         R3 17
      357 CALL                             R3 0 0
      358 RETURN                           R0 0
      359 LOADK                            R3 K0 ["idle"]
      360 SETUPVAL                         R3 1
      361 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          UPVAL U10
       12 MOVE                             R1 R0
       13 CALL                             R1 0 1
       14 NEWTABLE                         R2 0 0
       16 NEWTABLE                         R3 0 0
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 0
       22 MOVE                             R6 R1
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 GETUPVAL                         R11 11
       27 JUMPIFNOT                        R11 ; [+33]
       28 GETTABLEKS                       R12 R10 K0 ["datum"]
       30 GETTABLEKS                       R11 R12 K1 ["id"]
       32 GETUPVAL                         R13 2
       33 GETTABLEKS                       R12 R13 K2 ["nilId"]
       35 JUMPIFNOTEQ                      R11 R12 ; [+9]
       37 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       39 MOVE                             R12 R4
       40 MOVE                             R13 R9
       41 GETIMPORT                        R11 K5 [table.insert]
       43 CALL                             R11 2 0
       44 JUMP                             ; [+35]
       45 GETTABLEKS                       R14 R10 K0 ["datum"]
       47 GETTABLEKS                       R13 R14 K1 ["id"]
       49 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       51 MOVE                             R12 R5
       52 GETIMPORT                        R11 K5 [table.insert]
       54 CALL                             R11 2 0
       55 GETTABLEKS                       R12 R10 K0 ["datum"]
       57 GETTABLEKS                       R11 R12 K1 ["id"]
       59 SETTABLE                         R9 R3 R11
       60 JUMP                             ; [+19]
       61 GETTABLEKS                       R12 R10 K0 ["datum"]
       63 GETTABLEKS                       R11 R12 K1 ["id"]
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R12 R13 K2 ["nilId"]
       68 JUMPIFEQ                         R11 R12 ; [+11]
       70 GETTABLEKS                       R14 R10 K0 ["datum"]
       72 GETTABLEKS                       R13 R14 K1 ["id"]
       74 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       76 MOVE                             R12 R5
       77 GETIMPORT                        R11 K5 [table.insert]
       79 CALL                             R11 2 0
       80 GETUPVAL                         R12 12
       81 GETTABLEKS                       R11 R12 K6 ["create"]
       83 MOVE                             R12 R10
       84 CALL                             R11 1 2
       85 DUPTABLE                         R13 K9 [{"observable", "set"}]
       86 SETTABLEKS                       R11 R13 K7 ["observable"]
       88 SETTABLEKS                       R12 R13 K8 ["set"]
       90 SETTABLE                         R13 R2 R9
       91 FORGLOOP                         R6 2 ; [-66]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R6 R7 K10 ["setViewingInstances"]
       96 MOVE                             R7 R5
       97 CALL                             R6 1 0
       98 GETUPVAL                         R6 13
       99 GETUPVAL                         R7 14
      100 MOVE                             R8 R2
      101 DUPCLOSURE                       R9 K11 [PROTO_5]
      102 CALL                             R7 2 -1
      103 CALL                             R6 -1 0
      104 LOADK                            R6 K12 ["idle"]
      105 NEWCLOSURE                       R7 P2
      106 CAPTURE                          UPVAL U11
      107 CAPTURE                          REF R6
      108 CAPTURE                          UPVAL U15
      109 CAPTURE                          UPVAL U16
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          VAL R2
      114 CAPTURE                          UPVAL U17
      115 CAPTURE                          REF R5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R3
      118 CAPTURE                          UPVAL U18
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U19
      121 CAPTURE                          UPVAL U20
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          VAL R7
      124 NEWTABLE                         R8 0 5
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R10 R11 K13 ["hoveredObservable"]
      129 GETTABLEKS                       R9 R10 K14 ["changedSignal"]
      131 MOVE                             R11 R7
      132 NAMECALL                         R9 R9 K15 ["Connect"]
      134 CALL                             R9 2 1
      135 GETUPVAL                         R12 0
      136 GETTABLEKS                       R11 R12 K16 ["focusedRootObservable"]
      138 GETTABLEKS                       R10 R11 K14 ["changedSignal"]
      140 MOVE                             R12 R7
      141 NAMECALL                         R10 R10 K15 ["Connect"]
      143 CALL                             R10 2 1
      144 GETUPVAL                         R13 0
      145 GETTABLEKS                       R12 R13 K17 ["selectedIdsObservable"]
      147 GETTABLEKS                       R11 R12 K14 ["changedSignal"]
      149 MOVE                             R13 R7
      150 NAMECALL                         R11 R11 K15 ["Connect"]
      152 CALL                             R11 2 1
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R13 R14 K18 ["selectedWithinIdsObservable"]
      156 GETTABLEKS                       R12 R13 K14 ["changedSignal"]
      158 MOVE                             R14 R7
      159 NAMECALL                         R12 R12 K15 ["Connect"]
      161 CALL                             R12 2 1
      162 GETUPVAL                         R14 1
      163 GETTABLEKS                       R13 R14 K14 ["changedSignal"]
      165 MOVE                             R15 R7
      166 NAMECALL                         R13 R13 K15 ["Connect"]
      168 CALL                             R13 2 -1
      169 SETLIST                          R8 R9 -1 [1]
      171 GETUPVAL                         R9 9
      172 CALL                             R9 0 1
      173 JUMPIFNOT                        R9 ; [+12]
      174 MOVE                             R10 R8
      175 GETUPVAL                         R12 0
      176 GETTABLEKS                       R11 R12 K19 ["pinsUpdatedSignal"]
      178 MOVE                             R13 R7
      179 NAMECALL                         R11 R11 K15 ["Connect"]
      181 CALL                             R11 2 -1
      182 FASTCALL                         TABLE_INSERT ; [+2]
      183 GETIMPORT                        R9 K5 [table.insert]
      185 CALL                             R9 -1 0
      186 NEWCLOSURE                       R9 P3
      187 CAPTURE                          VAL R8
      188 CLOSEUPVALS                      R5
      189 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useContext"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["AnalyticsContext"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["useContext"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["Context"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K3 ["useState"]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R11 3
       21 GETTABLEKS                       R10 R11 K4 ["explorerRowHeight"]
       23 DIV                              R9 R1 R10
       24 FASTCALL1                        MATH_CEIL R9 ; [+2]
       25 GETIMPORT                        R8 K7 [math.ceil]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R10 R4 K9 ["extraNodes"]
       30 MULK                             R9 R10 K8 [2]
       31 ADD                              R7 R8 R9
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R7
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          VAL R6
       50 CAPTURE                          UPVAL U12
       51 CAPTURE                          VAL R3
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          UPVAL U14
       54 CAPTURE                          UPVAL U15
       55 CAPTURE                          UPVAL U16
       56 CAPTURE                          UPVAL U17
       57 NEWTABLE                         R10 0 7
       59 MOVE                             R11 R7
       60 MOVE                             R12 R2
       61 GETTABLEKS                       R13 R0 K11 ["hoveredObservable"]
       63 GETTABLEKS                       R14 R0 K12 ["focusedRootObservable"]
       65 GETTABLEKS                       R15 R0 K13 ["selectedIdsObservable"]
       67 GETTABLEKS                       R16 R0 K14 ["setViewingInstances"]
       69 GETTABLEKS                       R17 R3 K15 ["logCounter"]
       71 SETLIST                          R10 R11 7 [1]
       73 CALL                             R8 2 0
       74 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["TextService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Explorer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K13 ["Util"]
       30 GETTABLEKS                       R5 R6 K14 ["Constants"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R2 K13 ["Util"]
       37 GETTABLEKS                       R6 R7 K15 ["ExplorerNodeChildrenMutable"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R8 R2 K13 ["Util"]
       44 GETTABLEKS                       R7 R8 K16 ["Observable"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R9 R2 K11 ["Parent"]
       51 GETTABLEKS                       R8 R9 K17 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R2 K18 ["RpcTypes"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K10 [require]
       61 GETTABLEKS                       R12 R2 K19 ["Components"]
       63 GETTABLEKS                       R11 R12 K20 ["Contexts"]
       65 GETTABLEKS                       R10 R11 K21 ["VirtualizedListContext"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K10 [require]
       70 GETTABLEKS                       R12 R2 K13 ["Util"]
       72 GETTABLEKS                       R11 R12 K22 ["deepEqual"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K10 [require]
       77 GETTABLEKS                       R13 R2 K13 ["Util"]
       79 GETTABLEKS                       R12 R13 K23 ["diffArray"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K10 [require]
       84 GETTABLEKS                       R14 R2 K13 ["Util"]
       86 GETTABLEKS                       R13 R14 K24 ["getExplorerNodeDepth"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K10 [require]
       91 GETTABLEKS                       R15 R2 K25 ["Flags"]
       93 GETTABLEKS                       R14 R15 K26 ["getFFlagDebugExplorerExpensiveSanityChecking"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K10 [require]
       98 GETTABLEKS                       R16 R2 K25 ["Flags"]
      100 GETTABLEKS                       R15 R16 K27 ["getFFlagExplorerEfficientVirtualizationDiffing"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K10 [require]
      105 GETTABLEKS                       R17 R2 K25 ["Flags"]
      107 GETTABLEKS                       R16 R17 K28 ["getFFlagExplorerStreaming"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K10 [require]
      112 GETTABLEKS                       R18 R2 K13 ["Util"]
      114 GETTABLEKS                       R17 R18 K29 ["mapValues"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K10 [require]
      119 GETTABLEKS                       R19 R2 K13 ["Util"]
      121 GETTABLEKS                       R18 R19 K30 ["profile"]
      123 CALL                             R17 1 1
      124 MOVE                             R18 R14
      125 CALL                             R18 0 1
      126 GETIMPORT                        R19 K33 [table.freeze]
      128 DUPTABLE                         R20 K40 [{"datum", "uiState", "depth", "isSelectedWithin", "isStreamingIn", "yPixels"}]
      129 GETIMPORT                        R21 K33 [table.freeze]
      131 DUPTABLE                         R22 K45 [{"id", "name", "className", "hasChildren"}]
      132 GETTABLEKS                       R23 R4 K46 ["nilId"]
      134 SETTABLEKS                       R23 R22 K41 ["id"]
      136 LOADK                            R23 K47 [""]
      137 SETTABLEKS                       R23 R22 K42 ["name"]
      139 LOADK                            R23 K48 ["Folder"]
      140 SETTABLEKS                       R23 R22 K43 ["className"]
      142 LOADB                            R23 0
      143 SETTABLEKS                       R23 R22 K44 ["hasChildren"]
      145 CALL                             R21 1 1
      146 SETTABLEKS                       R21 R20 K34 ["datum"]
      148 GETIMPORT                        R21 K33 [table.freeze]
      150 DUPTABLE                         R22 K51 [{"isExpanded", "textWidth"}]
      151 LOADB                            R23 0
      152 SETTABLEKS                       R23 R22 K49 ["isExpanded"]
      154 LOADN                            R23 255
      155 SETTABLEKS                       R23 R22 K50 ["textWidth"]
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K35 ["uiState"]
      160 LOADN                            R21 0
      161 SETTABLEKS                       R21 R20 K36 ["depth"]
      163 LOADB                            R21 0
      164 SETTABLEKS                       R21 R20 K37 ["isSelectedWithin"]
      166 LOADB                            R21 0
      167 SETTABLEKS                       R21 R20 K38 ["isStreamingIn"]
      169 LOADN                            R21 24
      170 SETTABLEKS                       R21 R20 K39 ["yPixels"]
      172 CALL                             R19 1 1
      173 DUPTABLE                         R20 K57 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
      174 LOADK                            R21 K58 ["LuaExplorerUpdateObservablesRecursive"]
      175 SETTABLEKS                       R21 R20 K52 ["eventName"]
      177 NEWTABLE                         R21 0 1
      179 LOADK                            R22 K59 ["RobloxTelemetryCounter"]
      180 SETLIST                          R21 R22 1 [1]
      182 SETTABLEKS                       R21 R20 K53 ["backends"]
      184 GETIMPORT                        R21 K1 [game]
      186 LOADK                            R23 K60 ["LuaExplorerUpdateObservablesRecursiveThrottlingHundredths"]
      187 LOADN                            R24 16
      188 NAMECALL                         R21 R21 K61 ["DefineFastInt"]
      190 CALL                             R21 3 1
      191 SETTABLEKS                       R21 R20 K54 ["throttlingPercentage"]
      193 LOADK                            R21 K62 ["2025-06-25"]
      194 SETTABLEKS                       R21 R20 K55 ["lastUpdated"]
      196 LOADK                            R21 K63 ["Tracks times updateObservables() is called recursively"]
      197 SETTABLEKS                       R21 R20 K56 ["description"]
      199 NEWTABLE                         R21 0 0
      201 DUPCLOSURE                       R22 K64 [PROTO_9]
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R13
      220 MOVE                             R23 R17
      221 MOVE                             R24 R22
      222 CALL                             R23 1 -1
      223 RETURN                           R23 -1
