PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["datum"]
        3 GETTABLEKS                       R3 R3 K1 ["id"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADK                            R1 K2 ["Selected"]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K3 ["parent"]
       11 JUMPIFEQKNIL                     R1 ; [+13]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R4 R1 K0 ["datum"]
       16 GETTABLEKS                       R4 R4 K1 ["id"]
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
        2 GETTABLEKS                       R4 R0 K0 ["datum"]
        4 GETTABLEKS                       R4 R4 K1 ["id"]
        6 GETTABLE                         R2 R3 R4
        7 JUMPIFNOTEQKB                    R2 TRUE ; [+13]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["getExpandState"]
       12 GETTABLEKS                       R3 R0 K0 ["datum"]
       14 GETTABLEKS                       R3 R3 K1 ["id"]
       16 CALL                             R2 1 1
       17 JUMPIFEQKS                       R2 K3 ["Collapsed"] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["uiState"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETIMPORT                        R1 K3 [table.clone]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["uiState"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNthDescendant"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R5 R1 K1 ["datum"]
       13 GETTABLEKS                       R5 R5 K2 ["id"]
       15 GETTABLE                         R3 R4 R5
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADK                            R2 K3 ["Selected"]
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R1 K4 ["parent"]
       21 JUMPIFEQKNIL                     R3 ; [+13]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R6 R3 K1 ["datum"]
       26 GETTABLEKS                       R6 R6 K2 ["id"]
       28 GETTABLE                         R4 R5 R6
       29 JUMPIFNOT                        R4 ; [+2]
       30 LOADK                            R2 K5 ["ParentSelected"]
       31 RETURN                           R2 1
       32 GETTABLEKS                       R3 R3 K4 ["parent"]
       34 JUMPBACK                         ; [-14]
       35 LOADNIL                          R2
       36 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedIdsObservable"]
        3 GETTABLEKS                       R0 R0 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["selectedWithinIdsObservable"]
        9 GETTABLEKS                       R1 R1 K1 ["get"]
       11 CALL                             R1 0 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["focusedRootObservable"]
       20 GETTABLEKS                       R4 R4 K1 ["get"]
       22 CALL                             R4 0 1
       23 GETTABLEKS                       R4 R4 K4 ["children"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K5 ["hoveredObservable"]
       28 GETTABLEKS                       R5 R5 K1 ["get"]
       30 CALL                             R5 0 1
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K1 ["get"]
       34 CALL                             R6 0 1
       35 NEWTABLE                         R7 0 0
       37 LOADN                            R9 1
       38 LOADN                            R12 1
       39 GETUPVAL                         R14 2
       40 GETTABLEKS                       R14 R14 K6 ["explorerRowHeight"]
       42 IDIV                             R13 R6 R14
       43 ADD                              R11 R12 R13
       44 GETUPVAL                         R12 3
       45 GETTABLEKS                       R12 R12 K7 ["extraNodes"]
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
       59 GETUPVAL                         R12 5
       60 GETTABLEKS                       R12 R12 K12 ["getNthDescendant"]
       62 MOVE                             R13 R4
       63 MOVE                             R14 R11
       64 CALL                             R12 2 1
       65 JUMPIFNOTEQKNIL                  R12 ; [+9]
       67 GETUPVAL                         R15 6
       68 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       70 MOVE                             R14 R7
       71 GETIMPORT                        R13 K15 [table.insert]
       73 CALL                             R13 2 0
       74 JUMP                             ; [+258]
       75 GETTABLEKS                       R15 R12 K16 ["datum"]
       77 GETTABLEKS                       R15 R15 K17 ["id"]
       79 GETTABLE                         R14 R0 R15
       80 JUMPIFNOT                        R14 ; [+2]
       81 LOADK                            R13 K18 ["Selected"]
       82 JUMP                             ; [+16]
       83 GETTABLEKS                       R14 R12 K19 ["parent"]
       85 JUMPIFEQKNIL                     R14 ; [+12]
       87 GETTABLEKS                       R16 R14 K16 ["datum"]
       89 GETTABLEKS                       R16 R16 K17 ["id"]
       91 GETTABLE                         R15 R0 R16
       92 JUMPIFNOT                        R15 ; [+2]
       93 LOADK                            R13 K20 ["ParentSelected"]
       94 JUMP                             ; [+4]
       95 GETTABLEKS                       R14 R14 K19 ["parent"]
       97 JUMPBACK                         ; [-13]
       98 LOADNIL                          R13
       99 GETTABLEKS                       R15 R12 K16 ["datum"]
      101 GETTABLEKS                       R15 R15 K21 ["className"]
      103 GETTABLEKS                       R16 R12 K16 ["datum"]
      105 GETTABLEKS                       R16 R16 K22 ["name"]
      107 JUMPIFEQ                         R15 R16 ; [+2]
      109 LOADB                            R14 0 +1
      110 LOADB                            R14 1
      111 GETTABLEKS                       R15 R12 K16 ["datum"]
      113 GETTABLEKS                       R15 R15 K22 ["name"]
      115 NEWCLOSURE                       R16 P2
      116 CAPTURE                          VAL R12
      117 GETTABLEKS                       R17 R12 K23 ["uiState"]
      119 JUMPIFEQKNIL                     R17 ; [+7]
      121 GETTABLEKS                       R17 R12 K23 ["uiState"]
      123 GETTABLEKS                       R17 R17 K24 ["textWidth"]
      125 JUMPIFNOTEQKNIL                  R17 ; [+84]
      127 GETTABLEKS                       R17 R12 K16 ["datum"]
      129 GETTABLEKS                       R17 R17 K17 ["id"]
      131 GETUPVAL                         R18 2
      132 GETTABLEKS                       R18 R18 K25 ["nilId"]
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
      165 GETUPVAL                         R18 8
      166 GETTABLEKS                       R20 R12 K16 ["datum"]
      168 GETTABLEKS                       R20 R20 K22 ["name"]
      170 GETUPVAL                         R21 2
      171 GETTABLEKS                       R21 R21 K30 ["standardTextSize"]
      173 GETUPVAL                         R22 2
      174 GETTABLEKS                       R22 R22 K31 ["defaultFont"]
      176 GETIMPORT                        R23 K34 [Vector2.new]
      178 LOADK                            R24 K35 [Infinity]
      179 GETUPVAL                         R25 2
      180 GETTABLEKS                       R25 R25 K6 ["explorerRowHeight"]
      182 CALL                             R23 2 -1
      183 NAMECALL                         R18 R18 K36 ["GetTextSize"]
      185 CALL                             R18 -1 1
      186 GETTABLEKS                       R18 R18 K37 ["X"]
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
      214 GETTABLEKS                       R18 R12 K16 ["datum"]
      216 GETTABLEKS                       R18 R18 K38 ["isGhost"]
      218 JUMPIFNOTEQKB                    R18 TRUE ; [+9]
      220 GETUPVAL                         R17 0
      221 GETTABLEKS                       R17 R17 K39 ["isInstancePinned"]
      223 GETTABLEKS                       R18 R12 K16 ["datum"]
      225 GETTABLEKS                       R18 R18 K17 ["id"]
      227 CALL                             R17 1 1
      228 DUPTABLE                         R18 K46 [{"datum", "uiState", "depth", "hoverState", "selectionState", "isStreamingIn", "isSelectedWithin", "yPixels"}]
      229 GETTABLEKS                       R19 R12 K16 ["datum"]
      231 SETTABLEKS                       R19 R18 K16 ["datum"]
      233 GETIMPORT                        R19 K29 [table.freeze]
      235 DUPTABLE                         R20 K48 [{"textWidth", "isExpanded"}]
      236 GETTABLEKS                       R22 R12 K23 ["uiState"]
      238 JUMPIFNOT                        R22 ; [+5]
      239 GETTABLEKS                       R21 R12 K23 ["uiState"]
      241 GETTABLEKS                       R21 R21 K24 ["textWidth"]
      243 JUMPIF                           R21 ; [+1]
      244 LOADN                            R21 0
      245 SETTABLEKS                       R21 R20 K24 ["textWidth"]
      247 GETTABLEKS                       R22 R12 K23 ["uiState"]
      249 JUMPIFNOT                        R22 ; [+5]
      250 GETTABLEKS                       R21 R12 K23 ["uiState"]
      252 GETTABLEKS                       R21 R21 K47 ["isExpanded"]
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
      270 GETTABLEKS                       R21 R12 K16 ["datum"]
      272 GETTABLEKS                       R21 R21 K17 ["id"]
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
      287 JUMPIFNOT                        R19 ; [+3]
      288 DUPTABLE                         R19 K56 [{["kind"], ["segment"] = "Only"}]
      289 SETTABLEKS                       R13 R19 K53 ["kind"]
      291 SETTABLEKS                       R19 R18 K42 ["selectionState"]
      293 SETTABLEKS                       R17 R18 K43 ["isStreamingIn"]
      295 LOADB                            R19 0
      296 GETTABLEKS                       R21 R12 K16 ["datum"]
      298 GETTABLEKS                       R21 R21 K17 ["id"]
      300 GETTABLE                         R20 R1 R21
      301 JUMPIFNOTEQKB                    R20 TRUE ; [+13]
      303 GETUPVAL                         R20 0
      304 GETTABLEKS                       R20 R20 K57 ["getExpandState"]
      306 GETTABLEKS                       R21 R12 K16 ["datum"]
      308 GETTABLEKS                       R21 R21 K17 ["id"]
      310 CALL                             R20 1 1
      311 JUMPIFEQKS                       R20 K58 ["Collapsed"] ; [+2]
      313 LOADB                            R19 0 +1
      314 LOADB                            R19 1
      315 SETTABLEKS                       R19 R18 K44 ["isSelectedWithin"]
      317 SUBK                             R20 R11 K11 [1]
      318 GETUPVAL                         R21 2
      319 GETTABLEKS                       R21 R21 K6 ["explorerRowHeight"]
      321 MUL                              R19 R20 R21
      322 SETTABLEKS                       R19 R18 K45 ["yPixels"]
      324 MOVE                             R20 R7
      325 GETIMPORT                        R21 K29 [table.freeze]
      327 MOVE                             R22 R18
      328 CALL                             R21 1 -1
      329 FASTCALL                         TABLE_INSERT ; [+2]
      330 GETIMPORT                        R19 K15 [table.insert]
      332 CALL                             R19 -1 0
      333 FORNLOOP                         R9
      334 NEWCLOSURE                       R9 P3
      335 CAPTURE                          UPVAL U5
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R0
      338 JUMPIFNOTEQKN                    R8 K11 [1] ; [+3]
      340 LOADB                            R10 0
      341 JUMP                             ; [+39]
      342 SUBK                             R12 R8 K11 [1]
      343 GETUPVAL                         R13 5
      344 GETTABLEKS                       R13 R13 K12 ["getNthDescendant"]
      346 MOVE                             R14 R4
      347 MOVE                             R15 R12
      348 CALL                             R13 2 1
      349 JUMPIFNOTEQKNIL                  R13 ; [+3]
      351 LOADNIL                          R11
      352 JUMP                             ; [+24]
      353 GETTABLEKS                       R15 R13 K16 ["datum"]
      355 GETTABLEKS                       R15 R15 K17 ["id"]
      357 GETTABLE                         R14 R0 R15
      358 JUMPIFNOT                        R14 ; [+2]
      359 LOADK                            R11 K18 ["Selected"]
      360 JUMP                             ; [+16]
      361 GETTABLEKS                       R14 R13 K19 ["parent"]
      363 JUMPIFEQKNIL                     R14 ; [+12]
      365 GETTABLEKS                       R16 R14 K16 ["datum"]
      367 GETTABLEKS                       R16 R16 K17 ["id"]
      369 GETTABLE                         R15 R0 R16
      370 JUMPIFNOT                        R15 ; [+2]
      371 LOADK                            R11 K20 ["ParentSelected"]
      372 JUMP                             ; [+4]
      373 GETTABLEKS                       R14 R14 K19 ["parent"]
      375 JUMPBACK                         ; [-13]
      376 LOADNIL                          R11
      377 JUMPIFNOTEQKNIL                  R11 ; [+2]
      379 LOADB                            R10 0 +1
      380 LOADB                            R10 1
      381 MOVE                             R11 R7
      382 LOADNIL                          R12
      383 LOADNIL                          R13
      384 FORGPREP                         R11
      385 ADDK                             R17 R14 K11 [1]
      386 GETTABLE                         R16 R7 R17
      387 GETTABLEKS                       R17 R15 K42 ["selectionState"]
      389 JUMPIFNOTEQKNIL                  R17 ; [+3]
      391 LOADB                            R10 0
      392 JUMP                             ; [+78]
      393 LENGTH                           R19 R7
      394 JUMPIFNOTEQ                      R14 R19 ; [+38]
      396 GETUPVAL                         R20 4
      397 ADD                              R19 R8 R20
      398 GETUPVAL                         R20 5
      399 GETTABLEKS                       R20 R20 K12 ["getNthDescendant"]
      401 MOVE                             R21 R4
      402 MOVE                             R22 R19
      403 CALL                             R20 2 1
      404 JUMPIFNOTEQKNIL                  R20 ; [+3]
      406 LOADNIL                          R18
      407 JUMP                             ; [+35]
      408 GETTABLEKS                       R22 R20 K16 ["datum"]
      410 GETTABLEKS                       R22 R22 K17 ["id"]
      412 GETTABLE                         R21 R0 R22
      413 JUMPIFNOT                        R21 ; [+2]
      414 LOADK                            R18 K18 ["Selected"]
      415 JUMP                             ; [+27]
      416 GETTABLEKS                       R21 R20 K19 ["parent"]
      418 JUMPIFEQKNIL                     R21 ; [+12]
      420 GETTABLEKS                       R23 R21 K16 ["datum"]
      422 GETTABLEKS                       R23 R23 K17 ["id"]
      424 GETTABLE                         R22 R0 R23
      425 JUMPIFNOT                        R22 ; [+2]
      426 LOADK                            R18 K20 ["ParentSelected"]
      427 JUMP                             ; [+15]
      428 GETTABLEKS                       R21 R21 K19 ["parent"]
      430 JUMPBACK                         ; [-13]
      431 LOADNIL                          R18
      432 JUMP                             ; [+10]
      433 LOADB                            R18 0
      434 JUMPIFEQKNIL                     R16 ; [+8]
      436 GETTABLEKS                       R18 R16 K42 ["selectionState"]
      438 JUMPIFNOT                        R18 ; [+4]
      439 GETTABLEKS                       R18 R16 K42 ["selectionState"]
      441 GETTABLEKS                       R18 R18 K53 ["kind"]
      443 JUMPIFNOTEQKNIL                  R18 ; [+2]
      445 LOADB                            R17 0 +1
      446 LOADB                            R17 1
      447 JUMPIFNOT                        R10 ; [+7]
      448 JUMPIFNOT                        R17 ; [+6]
      449 GETTABLEKS                       R18 R15 K42 ["selectionState"]
      451 LOADK                            R19 K59 ["Middle"]
      452 SETTABLEKS                       R19 R18 K54 ["segment"]
      454 JUMP                             ; [+15]
      455 JUMPIF                           R10 ; [+7]
      456 JUMPIFNOT                        R17 ; [+6]
      457 GETTABLEKS                       R18 R15 K42 ["selectionState"]
      459 LOADK                            R19 K60 ["Top"]
      460 SETTABLEKS                       R19 R18 K54 ["segment"]
      462 JUMP                             ; [+7]
      463 JUMPIFNOT                        R10 ; [+6]
      464 JUMPIF                           R17 ; [+5]
      465 GETTABLEKS                       R18 R15 K42 ["selectionState"]
      467 LOADK                            R19 K61 ["Bottom"]
      468 SETTABLEKS                       R19 R18 K54 ["segment"]
      470 LOADB                            R10 1
      471 FORGLOOP                         R11 2 ; [-87]
      473 RETURN                           R7 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["observable"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["idle"] ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["logCounter"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 0
        8 LOADK                            R1 K2 ["queued"]
        9 SETUPVAL                         R1 0
       10 RETURN                           R0 0
       11 LOADK                            R1 K3 ["active"]
       12 SETUPVAL                         R1 0
       13 GETUPVAL                         R1 3
       14 CALL                             R1 0 1
       15 LENGTH                           R4 R1
       16 GETUPVAL                         R5 4
       17 JUMPIFEQ                         R4 R5 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       23 LOADK                            R4 K4 ["Amount of visible nodes changed"]
       24 GETIMPORT                        R2 K6 [assert]
       26 CALL                             R2 2 0
       27 NEWTABLE                         R2 0 0
       29 NEWTABLE                         R3 0 0
       31 MOVE                             R4 R1
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETTABLEKS                       R9 R8 K7 ["datum"]
       37 GETTABLEKS                       R9 R9 K8 ["id"]
       39 GETUPVAL                         R10 5
       40 GETTABLEKS                       R10 R10 K9 ["nilId"]
       42 JUMPIFEQ                         R9 R10 ; [+16]
       44 GETTABLEKS                       R11 R8 K7 ["datum"]
       46 GETTABLEKS                       R11 R11 K8 ["id"]
       48 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       50 MOVE                             R10 R2
       51 GETIMPORT                        R9 K12 [table.insert]
       53 CALL                             R9 2 0
       54 GETTABLEKS                       R9 R8 K7 ["datum"]
       56 GETTABLEKS                       R9 R9 K8 ["id"]
       58 SETTABLE                         R8 R3 R9
       59 FORGLOOP                         R4 2 ; [-25]
       61 GETUPVAL                         R4 6
       62 MOVE                             R5 R2
       63 GETUPVAL                         R6 7
       64 CALL                             R4 2 3
       65 NEWTABLE                         R7 0 0
       67 MOVE                             R8 R4
       68 LOADNIL                          R9
       69 LOADNIL                          R10
       70 FORGPREP                         R8
       71 GETTABLE                         R13 R5 R11
       72 GETUPVAL                         R14 5
       73 GETTABLEKS                       R14 R14 K9 ["nilId"]
       75 JUMPIFNOTEQ                      R13 R14 ; [+8]
       77 GETIMPORT                        R14 K14 [table.remove]
       79 MOVE                             R15 R5
       80 MOVE                             R16 R11
       81 CALL                             R14 2 0
       82 GETTABLE                         R13 R5 R11
       83 JUMPBACK                         ; [-12]
       84 JUMPIFNOTEQKNIL                  R13 ; [+56]
       86 GETIMPORT                        R14 K14 [table.remove]
       88 GETUPVAL                         R15 8
       89 CALL                             R14 1 1
       90 JUMPIFNOTEQKNIL                  R14 ; [+2]
       92 LOADB                            R16 0 +1
       93 LOADB                            R16 1
       94 FASTCALL2K                       ASSERT R16 K15 ; [+4]
       96 LOADK                            R17 K15 ["Couldn't get a new nil index"]
       97 GETIMPORT                        R15 K6 [assert]
       99 CALL                             R15 2 0
      100 GETUPVAL                         R16 9
      101 GETTABLE                         R15 R16 R14
      102 JUMPIFNOTEQKNIL                  R15 ; [+2]
      104 LOADB                            R17 0 +1
      105 LOADB                            R17 1
      106 FASTCALL2K                       ASSERT R17 K16 ; [+4]
      108 LOADK                            R18 K16 ["Couldn't find highest nil node"]
      109 GETIMPORT                        R16 K6 [assert]
      111 CALL                             R16 2 0
      112 GETTABLEKS                       R18 R15 K17 ["observable"]
      114 GETTABLEKS                       R18 R18 K18 ["get"]
      116 CALL                             R18 0 1
      117 GETTABLEKS                       R18 R18 K7 ["datum"]
      119 GETTABLEKS                       R18 R18 K8 ["id"]
      121 GETUPVAL                         R19 5
      122 GETTABLEKS                       R19 R19 K9 ["nilId"]
      124 JUMPIFEQ                         R18 R19 ; [+2]
      126 LOADB                            R17 0 +1
      127 LOADB                            R17 1
      128 FASTCALL2K                       ASSERT R17 K19 ; [+4]
      130 LOADK                            R18 K19 ["Highest nil node is not actually a nil node"]
      131 GETIMPORT                        R16 K6 [assert]
      133 CALL                             R16 2 0
      134 GETTABLEKS                       R16 R15 K20 ["set"]
      136 GETTABLE                         R17 R3 R12
      137 CALL                             R16 1 0
      138 GETUPVAL                         R16 10
      139 SETTABLE                         R14 R16 R12
      140 JUMP                             ; [+27]
      141 LOADB                            R14 1
      142 SETTABLE                         R14 R7 R13
      143 GETUPVAL                         R15 10
      144 GETTABLE                         R14 R15 R13
      145 JUMPIFNOTEQKNIL                  R14 ; [+11]
      147 GETIMPORT                        R15 K22 [error]
      149 LOADK                            R16 K23 ["Couldn't find visible node index of old ID that is being replaced (%* being replaced by %*, with a visibleNodeIndex of %*)"]
      150 MOVE                             R18 R13
      151 MOVE                             R19 R12
      152 MOVE                             R20 R14
      153 NAMECALL                         R16 R16 K24 ["format"]
      155 CALL                             R16 4 1
      156 CALL                             R15 1 0
      157 GETUPVAL                         R16 9
      158 GETTABLE                         R15 R16 R14
      159 GETTABLEKS                       R15 R15 K20 ["set"]
      161 GETTABLE                         R16 R3 R12
      162 CALL                             R15 1 0
      163 GETUPVAL                         R15 10
      164 LOADNIL                          R16
      165 SETTABLE                         R16 R15 R13
      166 GETUPVAL                         R15 10
      167 SETTABLE                         R14 R15 R12
      168 FORGLOOP                         R8 2 ; [-98]
      170 MOVE                             R8 R5
      171 LOADNIL                          R9
      172 LOADNIL                          R10
      173 FORGPREP                         R8
      174 GETUPVAL                         R13 5
      175 GETTABLEKS                       R13 R13 K9 ["nilId"]
      177 JUMPIFEQ                         R12 R13 ; [+36]
      179 GETTABLE                         R13 R7 R12
      180 JUMPIF                           R13 ; [+33]
      181 GETUPVAL                         R14 10
      182 GETTABLE                         R13 R14 R12
      183 JUMPIFNOTEQKNIL                  R13 ; [+14]
      185 GETIMPORT                        R14 K22 [error]
      187 LOADK                            R15 K25 ["Couldn't find visible node index of old ID that is being removed (%*)\ndatumIdToVisibleNodeIndex = %*"]
      188 MOVE                             R17 R12
      189 GETUPVAL                         R18 11
      190 GETUPVAL                         R20 10
      191 NAMECALL                         R18 R18 K26 ["JSONEncode"]
      193 CALL                             R18 2 1
      194 NAMECALL                         R15 R15 K24 ["format"]
      196 CALL                             R15 3 1
      197 CALL                             R14 1 0
      198 GETUPVAL                         R15 9
      199 GETTABLE                         R14 R15 R13
      200 GETTABLEKS                       R14 R14 K20 ["set"]
      202 GETUPVAL                         R15 12
      203 CALL                             R14 1 0
      204 GETUPVAL                         R14 10
      205 LOADNIL                          R15
      206 SETTABLE                         R15 R14 R12
      207 GETUPVAL                         R15 8
      208 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      210 MOVE                             R16 R13
      211 GETIMPORT                        R14 K12 [table.insert]
      213 CALL                             R14 2 0
      214 FORGLOOP                         R8 2 ; [-41]
      216 MOVE                             R8 R6
      217 LOADNIL                          R9
      218 LOADNIL                          R10
      219 FORGPREP                         R8
      220 GETUPVAL                         R14 10
      221 GETTABLE                         R13 R14 R12
      222 JUMPIFNOTEQKNIL                  R13 ; [+2]
      224 LOADB                            R15 0 +1
      225 LOADB                            R15 1
      226 FASTCALL2K                       ASSERT R15 K27 ; [+4]
      228 LOADK                            R16 K27 ["Couldn't find visible node index of ID we already saw"]
      229 GETIMPORT                        R14 K6 [assert]
      231 CALL                             R14 2 0
      232 GETUPVAL                         R15 9
      233 GETTABLE                         R14 R15 R13
      234 GETTABLE                         R15 R3 R12
      235 GETUPVAL                         R16 13
      236 GETTABLEKS                       R17 R14 K17 ["observable"]
      238 GETTABLEKS                       R17 R17 K18 ["get"]
      240 CALL                             R17 0 1
      241 MOVE                             R18 R15
      242 CALL                             R16 2 1
      243 JUMPIF                           R16 ; [+4]
      244 GETTABLEKS                       R16 R14 K20 ["set"]
      246 MOVE                             R17 R15
      247 CALL                             R16 1 0
      248 FORGLOOP                         R8 2 ; [-29]
      250 SETUPVAL                         R2 7
      251 GETUPVAL                         R8 14
      252 CALL                             R8 0 1
      253 JUMPIFNOT                        R8 ; [+73]
      254 GETUPVAL                         R8 9
      255 LOADNIL                          R9
      256 LOADNIL                          R10
      257 FORGPREP                         R8
      258 GETTABLEKS                       R13 R12 K17 ["observable"]
      260 GETTABLEKS                       R13 R13 K18 ["get"]
      262 CALL                             R13 0 1
      263 GETTABLEKS                       R14 R13 K7 ["datum"]
      265 GETTABLEKS                       R14 R14 K8 ["id"]
      267 GETUPVAL                         R15 5
      268 GETTABLEKS                       R15 R15 K9 ["nilId"]
      270 JUMPIFNOTEQ                      R14 R15 ; [+33]
      272 GETUPVAL                         R17 10
      273 GETTABLEKS                       R18 R13 K7 ["datum"]
      275 GETTABLEKS                       R18 R18 K8 ["id"]
      277 GETTABLE                         R16 R17 R18
      278 JUMPIFEQKNIL                     R16 ; [+2]
      280 LOADB                            R15 0 +1
      281 LOADB                            R15 1
      282 FASTCALL2K                       ASSERT R15 K28 ; [+4]
      284 LOADK                            R16 K28 ["datumIdToVisibleNodeIndex[nilId] was not nil"]
      285 GETIMPORT                        R14 K6 [assert]
      287 CALL                             R14 2 0
      288 GETIMPORT                        R16 K30 [table.find]
      290 GETUPVAL                         R17 8
      291 MOVE                             R18 R11
      292 CALL                             R16 2 1
      293 JUMPIFNOTEQKNIL                  R16 ; [+2]
      295 LOADB                            R15 0 +1
      296 LOADB                            R15 1
      297 FASTCALL2K                       ASSERT R15 K31 ; [+4]
      299 LOADK                            R16 K31 ["Couldn't find nil index in nilIndexes"]
      300 GETIMPORT                        R14 K6 [assert]
      302 CALL                             R14 2 0
      303 JUMP                             ; [+21]
      304 GETUPVAL                         R15 10
      305 GETTABLEKS                       R16 R13 K7 ["datum"]
      307 GETTABLEKS                       R16 R16 K8 ["id"]
      309 GETTABLE                         R14 R15 R16
      310 JUMPIFEQ                         R14 R11 ; [+14]
      312 GETIMPORT                        R15 K22 [error]
      314 LOADK                            R16 K32 ["Reported node index of %* is %*, but we found it at %*"]
      315 GETTABLEKS                       R18 R13 K7 ["datum"]
      317 GETTABLEKS                       R18 R18 K8 ["id"]
      319 MOVE                             R19 R14
      320 MOVE                             R20 R11
      321 NAMECALL                         R16 R16 K24 ["format"]
      323 CALL                             R16 4 1
      324 CALL                             R15 1 0
      325 FORGLOOP                         R8 2 ; [-68]
      327 GETUPVAL                         R8 15
      328 GETTABLEKS                       R8 R8 K33 ["setViewingInstances"]
      330 MOVE                             R9 R2
      331 CALL                             R8 1 0
      332 GETUPVAL                         R8 0
      333 JUMPIFNOTEQKS                    R8 K2 ["queued"] ; [+6]
      335 LOADK                            R8 K0 ["idle"]
      336 SETUPVAL                         R8 0
      337 GETUPVAL                         R8 16
      338 CALL                             R8 0 0
      339 RETURN                           R0 0
      340 LOADK                            R8 K0 ["idle"]
      341 SETUPVAL                         R8 0
      342 RETURN                           R0 0

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
       26 GETTABLEKS                       R11 R10 K0 ["datum"]
       28 GETTABLEKS                       R11 R11 K1 ["id"]
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R12 R12 K2 ["nilId"]
       33 JUMPIFNOTEQ                      R11 R12 ; [+9]
       35 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       37 MOVE                             R12 R4
       38 MOVE                             R13 R9
       39 GETIMPORT                        R11 K5 [table.insert]
       41 CALL                             R11 2 0
       42 JUMP                             ; [+15]
       43 GETTABLEKS                       R13 R10 K0 ["datum"]
       45 GETTABLEKS                       R13 R13 K1 ["id"]
       47 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       49 MOVE                             R12 R5
       50 GETIMPORT                        R11 K5 [table.insert]
       52 CALL                             R11 2 0
       53 GETTABLEKS                       R11 R10 K0 ["datum"]
       55 GETTABLEKS                       R11 R11 K1 ["id"]
       57 SETTABLE                         R9 R3 R11
       58 GETUPVAL                         R11 11
       59 GETTABLEKS                       R11 R11 K6 ["create"]
       61 MOVE                             R12 R10
       62 CALL                             R11 1 2
       63 DUPTABLE                         R13 K9 [{"observable", "set"}]
       64 SETTABLEKS                       R11 R13 K7 ["observable"]
       66 SETTABLEKS                       R12 R13 K8 ["set"]
       68 SETTABLE                         R13 R2 R9
       69 FORGLOOP                         R6 2 ; [-44]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K10 ["setViewingInstances"]
       74 MOVE                             R7 R5
       75 CALL                             R6 1 0
       76 GETUPVAL                         R6 12
       77 GETUPVAL                         R7 13
       78 MOVE                             R8 R2
       79 DUPCLOSURE                       R9 K11 [PROTO_5]
       80 CALL                             R7 2 -1
       81 CALL                             R6 -1 0
       82 LOADK                            R6 K12 ["idle"]
       83 NEWCLOSURE                       R7 P2
       84 CAPTURE                          REF R6
       85 CAPTURE                          UPVAL U14
       86 CAPTURE                          UPVAL U15
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          UPVAL U16
       91 CAPTURE                          REF R5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U17
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          UPVAL U18
       98 CAPTURE                          UPVAL U19
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          VAL R7
      101 NEWTABLE                         R8 0 5
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R9 R9 K13 ["hoveredObservable"]
      106 GETTABLEKS                       R9 R9 K14 ["changedSignal"]
      108 MOVE                             R11 R7
      109 NAMECALL                         R9 R9 K15 ["Connect"]
      111 CALL                             R9 2 1
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K16 ["focusedRootObservable"]
      115 GETTABLEKS                       R10 R10 K14 ["changedSignal"]
      117 MOVE                             R12 R7
      118 NAMECALL                         R10 R10 K15 ["Connect"]
      120 CALL                             R10 2 1
      121 GETUPVAL                         R11 0
      122 GETTABLEKS                       R11 R11 K17 ["selectedIdsObservable"]
      124 GETTABLEKS                       R11 R11 K14 ["changedSignal"]
      126 MOVE                             R13 R7
      127 NAMECALL                         R11 R11 K15 ["Connect"]
      129 CALL                             R11 2 1
      130 GETUPVAL                         R12 0
      131 GETTABLEKS                       R12 R12 K18 ["selectedWithinIdsObservable"]
      133 GETTABLEKS                       R12 R12 K14 ["changedSignal"]
      135 MOVE                             R14 R7
      136 NAMECALL                         R12 R12 K15 ["Connect"]
      138 CALL                             R12 2 1
      139 GETUPVAL                         R13 1
      140 GETTABLEKS                       R13 R13 K14 ["changedSignal"]
      142 MOVE                             R15 R7
      143 NAMECALL                         R13 R13 K15 ["Connect"]
      145 CALL                             R13 2 -1
      146 SETLIST                          R8 R9 -1 [1]
      148 GETUPVAL                         R9 9
      149 CALL                             R9 0 1
      150 JUMPIFNOT                        R9 ; [+12]
      151 MOVE                             R10 R8
      152 GETUPVAL                         R11 0
      153 GETTABLEKS                       R11 R11 K19 ["pinsUpdatedSignal"]
      155 MOVE                             R13 R7
      156 NAMECALL                         R11 R11 K15 ["Connect"]
      158 CALL                             R11 2 -1
      159 FASTCALL                         TABLE_INSERT ; [+2]
      160 GETIMPORT                        R9 K5 [table.insert]
      162 CALL                             R9 -1 0
      163 NEWCLOSURE                       R9 P3
      164 CAPTURE                          VAL R8
      165 CLOSEUPVALS                      R5
      166 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["AnalyticsContext"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["useContext"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["Context"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["useState"]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R10 3
       21 GETTABLEKS                       R10 R10 K4 ["explorerRowHeight"]
       23 DIV                              R9 R1 R10
       24 FASTCALL1                        MATH_CEIL R9 ; [+2]
       25 GETIMPORT                        R8 K7 [math.ceil]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R10 R4 K9 ["extraNodes"]
       30 MULK                             R9 R10 K8 [2]
       31 ADD                              R7 R8 R9
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K10 ["useEffect"]
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
       48 CAPTURE                          VAL R6
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U12
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          UPVAL U14
       54 CAPTURE                          UPVAL U15
       55 CAPTURE                          UPVAL U16
       56 NEWTABLE                         R10 0 7
       58 MOVE                             R11 R7
       59 MOVE                             R12 R2
       60 GETTABLEKS                       R13 R0 K11 ["hoveredObservable"]
       62 GETTABLEKS                       R14 R0 K12 ["focusedRootObservable"]
       64 GETTABLEKS                       R15 R0 K13 ["selectedIdsObservable"]
       66 GETTABLEKS                       R16 R0 K14 ["setViewingInstances"]
       68 GETTABLEKS                       R17 R3 K15 ["logCounter"]
       70 SETLIST                          R10 R11 7 [1]
       72 CALL                             R8 2 0
       73 RETURN                           R5 1

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
       21 GETTABLEKS                       R4 R2 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Util"]
       30 GETTABLEKS                       R5 R5 K14 ["Constants"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K13 ["Util"]
       37 GETTABLEKS                       R6 R6 K15 ["ExplorerNodeChildrenMutable"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R2 K13 ["Util"]
       44 GETTABLEKS                       R7 R7 K16 ["Observable"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R2 K11 ["Parent"]
       51 GETTABLEKS                       R8 R8 K17 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R2 K18 ["RpcTypes"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K10 [require]
       61 GETTABLEKS                       R10 R2 K19 ["Types"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K10 [require]
       66 GETTABLEKS                       R11 R2 K20 ["Components"]
       68 GETTABLEKS                       R11 R11 K21 ["Contexts"]
       70 GETTABLEKS                       R11 R11 K22 ["VirtualizedListContext"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K10 [require]
       75 GETTABLEKS                       R12 R2 K13 ["Util"]
       77 GETTABLEKS                       R12 R12 K23 ["deepEqual"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K10 [require]
       82 GETTABLEKS                       R13 R2 K13 ["Util"]
       84 GETTABLEKS                       R13 R13 K24 ["diffArray"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K10 [require]
       89 GETTABLEKS                       R14 R2 K13 ["Util"]
       91 GETTABLEKS                       R14 R14 K25 ["getExplorerNodeDepth"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K10 [require]
       96 GETTABLEKS                       R15 R2 K26 ["Flags"]
       98 GETTABLEKS                       R15 R15 K27 ["getFFlagDebugExplorerExpensiveSanityChecking"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K10 [require]
      103 GETTABLEKS                       R16 R2 K26 ["Flags"]
      105 GETTABLEKS                       R16 R16 K28 ["getFFlagExplorerStreaming"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K10 [require]
      110 GETTABLEKS                       R17 R2 K13 ["Util"]
      112 GETTABLEKS                       R17 R17 K29 ["mapValues"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K10 [require]
      117 GETTABLEKS                       R18 R2 K13 ["Util"]
      119 GETTABLEKS                       R18 R18 K30 ["profile"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K33 [table.freeze]
      124 DUPTABLE                         R19 K43 [{["datum"], ["uiState"], ["depth"] = 0, ["isSelectedWithin"] = False, ["isStreamingIn"] = False, ["yPixels"] = -1000}]
      125 GETIMPORT                        R20 K33 [table.freeze]
      127 DUPTABLE                         R21 K50 [{["id"], ["name"] = "", ["className"] = "Folder", ["hasChildren"] = False}]
      128 GETTABLEKS                       R22 R4 K51 ["nilId"]
      130 SETTABLEKS                       R22 R21 K44 ["id"]
      132 CALL                             R20 1 1
      133 SETTABLEKS                       R20 R19 K34 ["datum"]
      135 GETIMPORT                        R20 K33 [table.freeze]
      137 DUPTABLE                         R21 K55 [{["isExpanded"] = False, ["textWidth"] = -1}]
      138 CALL                             R20 1 1
      139 SETTABLEKS                       R20 R19 K35 ["uiState"]
      141 CALL                             R18 1 1
      142 DUPTABLE                         R19 K64 [{["eventName"] = "LuaExplorerUpdateObservablesRecursive", ["backends"], ["throttlingPercentage"], ["lastUpdated"] = "2025-06-25", ["description"] = "Tracks times updateObservables() is called recursively"}]
      143 NEWTABLE                         R20 0 1
      145 LOADK                            R21 K65 ["RobloxTelemetryCounter"]
      146 SETLIST                          R20 R21 1 [1]
      148 SETTABLEKS                       R20 R19 K58 ["backends"]
      150 GETIMPORT                        R20 K1 [game]
      152 LOADK                            R22 K66 ["LuaExplorerUpdateObservablesRecursiveThrottlingHundredths"]
      153 LOADN                            R23 10000
      154 NAMECALL                         R20 R20 K67 ["DefineFastInt"]
      156 CALL                             R20 3 1
      157 SETTABLEKS                       R20 R19 K59 ["throttlingPercentage"]
      159 NEWTABLE                         R20 0 0
      161 DUPCLOSURE                       R21 K68 [PROTO_9]
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R0
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R14
      179 MOVE                             R22 R17
      180 MOVE                             R23 R21
      181 CALL                             R22 1 -1
      182 RETURN                           R22 -1
