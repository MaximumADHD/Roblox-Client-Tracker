PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["creating"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K1 ["current"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K1 ["current"]
       17 NAMECALL                         R0 R0 K2 ["focus"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onCreated"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["onCreated"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["inputType"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K1 ["current"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K3 ["parentUuid"]
       20 CALL                             R0 3 0
       21 JUMP                             ; [+21]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R0 R1 K4 ["onNameChanged"]
       25 JUMPIFNOT                        R0 ; [+17]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R0 R1 K1 ["current"]
       29 JUMPIFNOT                        R0 ; [+13]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R0 R1 K4 ["onNameChanged"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R1 R2 K2 ["inputType"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R2 R3 K1 ["current"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R3 R4 K5 ["uuid"]
       42 CALL                             R0 3 0
       43 GETUPVAL                         R0 2
       44 LOADB                            R1 0
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setExpanded"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["setExpanded"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["expanded"]
       10 NOT                              R1 R2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["uuid"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onChildAdded"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onChildAdded"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["inputType"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K2 ["uuid"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["useRef"]
        5 GETTABLEKS                       R3 R0 K1 ["name"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["useRef"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["useState"]
       16 GETTABLEKS                       R6 R0 K3 ["creating"]
       18 JUMPIFEQKB                       R6 TRUE ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 CALL                             R4 1 2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K2 ["useState"]
       26 LOADB                            R7 0
       27 CALL                             R6 1 2
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R9 R0 K4 ["inputType"]
       31 CALL                             R8 1 1
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 NEWTABLE                         R11 0 1
       41 MOVE                             R12 R4
       42 SETLIST                          R11 R12 1 [1]
       44 CALL                             R9 2 0
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 NEWTABLE                         R11 0 4
       54 GETTABLEKS                       R12 R0 K7 ["onNameChanged"]
       56 GETTABLEKS                       R13 R0 K4 ["inputType"]
       58 GETTABLEKS                       R14 R0 K8 ["uuid"]
       60 GETTABLEKS                       R15 R0 K9 ["onCreated"]
       62 SETLIST                          R11 R12 4 [1]
       64 CALL                             R9 2 1
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R10 R11 K10 ["useEventCallback"]
       68 NEWCLOSURE                       R11 P2
       69 CAPTURE                          VAL R2
       70 CALL                             R10 1 1
       71 GETUPVAL                         R12 2
       72 GETTABLEKS                       R11 R12 K10 ["useEventCallback"]
       74 NEWCLOSURE                       R12 P3
       75 CAPTURE                          VAL R5
       76 CALL                             R11 1 1
       77 GETUPVAL                         R13 2
       78 GETTABLEKS                       R12 R13 K10 ["useEventCallback"]
       80 NEWCLOSURE                       R13 P4
       81 CAPTURE                          VAL R7
       82 CAPTURE                          UPVAL U3
       83 CALL                             R12 1 1
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R13 R14 K6 ["useCallback"]
       87 NEWCLOSURE                       R14 P5
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R15 0 3
       91 GETTABLEKS                       R16 R0 K11 ["expanded"]
       93 GETTABLEKS                       R17 R0 K12 ["setExpanded"]
       95 GETTABLEKS                       R18 R0 K8 ["uuid"]
       97 SETLIST                          R15 R16 3 [1]
       99 CALL                             R13 2 1
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R14 R15 K6 ["useCallback"]
      103 NEWCLOSURE                       R15 P6
      104 CAPTURE                          VAL R0
      105 NEWTABLE                         R16 0 3
      107 GETTABLEKS                       R17 R0 K13 ["onChildAdded"]
      109 GETTABLEKS                       R18 R0 K4 ["inputType"]
      111 GETTABLEKS                       R19 R0 K8 ["uuid"]
      113 SETLIST                          R16 R17 3 [1]
      115 CALL                             R14 2 1
      116 GETUPVAL                         R16 2
      117 GETTABLEKS                       R15 R16 K14 ["createNextOrder"]
      119 CALL                             R15 0 1
      120 LOADN                            R18 1
      121 GETTABLEKS                       R16 R0 K15 ["depth"]
      123 LOADN                            R17 1
      124 FORNPREP                         R16
      125 LOADK                            R20 K16 ["DepthMarker%*"]
      126 MOVE                             R22 R18
      127 NAMECALL                         R20 R20 K17 ["format"]
      129 CALL                             R20 2 1
      130 MOVE                             R19 R20
      131 GETUPVAL                         R21 0
      132 GETTABLEKS                       R20 R21 K18 ["createElement"]
      134 GETUPVAL                         R21 4
      135 DUPTABLE                         R22 K21 [{"LayoutOrder", "tag"}]
      136 MOVE                             R23 R15
      137 CALL                             R23 0 1
      138 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      140 LOADK                            R23 K22 ["spacer align-y-center align-x-center"]
      141 SETTABLEKS                       R23 R22 K20 ["tag"]
      143 DUPTABLE                         R23 K24 [{"Divider"}]
      144 GETUPVAL                         R25 0
      145 GETTABLEKS                       R24 R25 K18 ["createElement"]
      147 GETUPVAL                         R25 5
      148 DUPTABLE                         R26 K26 [{"orientation", "tag"}]
      149 GETUPVAL                         R30 6
      150 GETTABLEKS                       R29 R30 K27 ["Enums"]
      152 GETTABLEKS                       R28 R29 K28 ["Orientation"]
      154 GETTABLEKS                       R27 R28 K29 ["Vertical"]
      156 SETTABLEKS                       R27 R26 K25 ["orientation"]
      158 LOADK                            R27 K30 ["auto-y"]
      159 SETTABLEKS                       R27 R26 K20 ["tag"]
      161 CALL                             R24 2 1
      162 SETTABLEKS                       R24 R23 K23 ["Divider"]
      164 CALL                             R20 3 1
      165 SETTABLE                         R20 R1 R19
      166 FORNLOOP                         R16
      167 GETTABLEKS                       R16 R0 K31 ["expandable"]
      169 JUMPIFNOT                        R16 ; [+55]
      170 GETTABLEKS                       R16 R0 K12 ["setExpanded"]
      172 JUMPIFNOT                        R16 ; [+52]
      173 GETUPVAL                         R17 0
      174 GETTABLEKS                       R16 R17 K18 ["createElement"]
      176 GETUPVAL                         R17 4
      177 DUPTABLE                         R18 K21 [{"LayoutOrder", "tag"}]
      178 MOVE                             R19 R15
      179 CALL                             R19 0 1
      180 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      182 LOADK                            R19 K32 ["spacer align-y-center align-x-center padding-left-small"]
      183 SETTABLEKS                       R19 R18 K20 ["tag"]
      185 DUPTABLE                         R19 K34 [{"IconButton"}]
      186 GETUPVAL                         R21 0
      187 GETTABLEKS                       R20 R21 K18 ["createElement"]
      189 GETUPVAL                         R21 7
      190 DUPTABLE                         R22 K39 [{"icon", "onActivated", "size", "testId"}]
      191 GETTABLEKS                       R24 R0 K11 ["expanded"]
      193 JUMPIFNOT                        R24 ; [+2]
      194 LOADK                            R23 K40 ["icons/actions/truncationCollapse_small"]
      195 JUMP                             ; [+1]
      196 LOADK                            R23 K41 ["icons/actions/truncationExpand_small"]
      197 SETTABLEKS                       R23 R22 K35 ["icon"]
      199 SETTABLEKS                       R13 R22 K36 ["onActivated"]
      201 GETUPVAL                         R26 6
      202 GETTABLEKS                       R25 R26 K27 ["Enums"]
      204 GETTABLEKS                       R24 R25 K42 ["IconSize"]
      206 GETTABLEKS                       R23 R24 K43 ["Small"]
      208 SETTABLEKS                       R23 R22 K37 ["size"]
      210 LOADK                            R24 K44 ["tree-node-expand-button-%*"]
      211 GETTABLEKS                       R26 R0 K1 ["name"]
      213 NAMECALL                         R24 R24 K17 ["format"]
      215 CALL                             R24 2 1
      216 MOVE                             R23 R24
      217 SETTABLEKS                       R23 R22 K38 ["testId"]
      219 CALL                             R20 2 1
      220 SETTABLEKS                       R20 R19 K33 ["IconButton"]
      222 CALL                             R16 3 1
      223 SETTABLEKS                       R16 R1 K45 ["ExpandButton"]
      225 DUPTABLE                         R16 K49 [{"ClassImage", "InstanceName", "AddButton"}]
      226 GETUPVAL                         R18 0
      227 GETTABLEKS                       R17 R18 K18 ["createElement"]
      229 GETUPVAL                         R18 4
      230 DUPTABLE                         R19 K21 [{"LayoutOrder", "tag"}]
      231 MOVE                             R20 R15
      232 CALL                             R20 0 1
      233 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      235 LOADK                            R20 K22 ["spacer align-y-center align-x-center"]
      236 SETTABLEKS                       R20 R19 K20 ["tag"]
      238 DUPTABLE                         R20 K51 [{"Image"}]
      239 GETUPVAL                         R22 0
      240 GETTABLEKS                       R21 R22 K18 ["createElement"]
      242 GETUPVAL                         R22 8
      243 DUPTABLE                         R23 K55 [{"Image", "imageRectOffset", "imageRectSize", "ScaleType", "tag"}]
      244 GETTABLEKS                       R24 R8 K50 ["Image"]
      246 SETTABLEKS                       R24 R23 K50 ["Image"]
      248 GETTABLEKS                       R24 R8 K56 ["ImageRectOffset"]
      250 SETTABLEKS                       R24 R23 K52 ["imageRectOffset"]
      252 GETTABLEKS                       R24 R8 K57 ["ImageRectSize"]
      254 SETTABLEKS                       R24 R23 K53 ["imageRectSize"]
      256 GETIMPORT                        R24 K60 [Enum.ScaleType.Fit]
      258 SETTABLEKS                       R24 R23 K54 ["ScaleType"]
      260 LOADK                            R24 K61 ["spacer icon align-y-center align-x-center"]
      261 SETTABLEKS                       R24 R23 K20 ["tag"]
      263 CALL                             R21 2 1
      264 SETTABLEKS                       R21 R20 K50 ["Image"]
      266 CALL                             R17 3 1
      267 SETTABLEKS                       R17 R16 K46 ["ClassImage"]
      269 GETUPVAL                         R18 0
      270 GETTABLEKS                       R17 R18 K18 ["createElement"]
      272 GETUPVAL                         R18 4
      273 DUPTABLE                         R19 K21 [{"LayoutOrder", "tag"}]
      274 MOVE                             R20 R15
      275 CALL                             R20 0 1
      276 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      278 LOADK                            R20 K62 ["row align-y-center grow size-0-full"]
      279 SETTABLEKS                       R20 R19 K20 ["tag"]
      281 DUPTABLE                         R20 K64 [{"Text"}]
      282 JUMPIFNOT                        R4 ; [+45]
      283 GETUPVAL                         R22 0
      284 GETTABLEKS                       R21 R22 K18 ["createElement"]
      286 GETUPVAL                         R22 9
      287 DUPTABLE                         R23 K72 [{"label", "textBoxRef", "onChanged", "onReturnPressed", "size", "testId", "text", "textInputType", "width"}]
      288 LOADK                            R24 K73 [""]
      289 SETTABLEKS                       R24 R23 K65 ["label"]
      291 SETTABLEKS                       R3 R23 K66 ["textBoxRef"]
      293 SETTABLEKS                       R10 R23 K67 ["onChanged"]
      295 SETTABLEKS                       R9 R23 K68 ["onReturnPressed"]
      297 GETUPVAL                         R25 10
      298 GETTABLEKS                       R24 R25 K43 ["Small"]
      300 SETTABLEKS                       R24 R23 K37 ["size"]
      302 LOADK                            R25 K74 ["tree-node-rename-input-%*"]
      303 GETTABLEKS                       R27 R0 K1 ["name"]
      305 NAMECALL                         R25 R25 K17 ["format"]
      307 CALL                             R25 2 1
      308 MOVE                             R24 R25
      309 SETTABLEKS                       R24 R23 K38 ["testId"]
      311 GETTABLEKS                       R24 R2 K75 ["current"]
      313 SETTABLEKS                       R24 R23 K69 ["text"]
      315 GETIMPORT                        R24 K78 [Enum.TextInputType.Default]
      317 SETTABLEKS                       R24 R23 K70 ["textInputType"]
      319 GETIMPORT                        R24 K81 [UDim.new]
      321 LOADN                            R25 1
      322 LOADN                            R26 251
      323 CALL                             R24 2 1
      324 SETTABLEKS                       R24 R23 K71 ["width"]
      326 CALL                             R21 2 1
      327 JUMP                             ; [+13]
      328 GETUPVAL                         R22 0
      329 GETTABLEKS                       R21 R22 K18 ["createElement"]
      331 GETUPVAL                         R22 11
      332 DUPTABLE                         R23 K82 [{"tag", "Text"}]
      333 LOADK                            R24 K83 ["label text-body-medium auto-xy"]
      334 SETTABLEKS                       R24 R23 K20 ["tag"]
      336 GETTABLEKS                       R24 R0 K1 ["name"]
      338 SETTABLEKS                       R24 R23 K63 ["Text"]
      340 CALL                             R21 2 1
      341 SETTABLEKS                       R21 R20 K63 ["Text"]
      343 CALL                             R17 3 1
      344 SETTABLEKS                       R17 R16 K47 ["InstanceName"]
      346 GETTABLEKS                       R17 R0 K13 ["onChildAdded"]
      348 JUMPIFNOT                        R17 ; [+47]
      349 MOVE                             R17 R6
      350 JUMPIFNOT                        R17 ; [+45]
      351 GETUPVAL                         R18 0
      352 GETTABLEKS                       R17 R18 K18 ["createElement"]
      354 GETUPVAL                         R18 4
      355 DUPTABLE                         R19 K21 [{"LayoutOrder", "tag"}]
      356 MOVE                             R20 R15
      357 CALL                             R20 0 1
      358 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      360 LOADK                            R20 K84 ["spacer align-y-center align-x-center padding-small"]
      361 SETTABLEKS                       R20 R19 K20 ["tag"]
      363 DUPTABLE                         R20 K34 [{"IconButton"}]
      364 GETUPVAL                         R22 0
      365 GETTABLEKS                       R21 R22 K18 ["createElement"]
      367 GETUPVAL                         R22 7
      368 DUPTABLE                         R23 K39 [{"icon", "onActivated", "size", "testId"}]
      369 LOADK                            R24 K85 ["plus-small"]
      370 SETTABLEKS                       R24 R23 K35 ["icon"]
      372 SETTABLEKS                       R14 R23 K36 ["onActivated"]
      374 GETUPVAL                         R27 6
      375 GETTABLEKS                       R26 R27 K27 ["Enums"]
      377 GETTABLEKS                       R25 R26 K42 ["IconSize"]
      379 GETTABLEKS                       R24 R25 K43 ["Small"]
      381 SETTABLEKS                       R24 R23 K37 ["size"]
      383 LOADK                            R25 K86 ["tree-node-add-button-%*"]
      384 GETTABLEKS                       R27 R0 K1 ["name"]
      386 NAMECALL                         R25 R25 K17 ["format"]
      388 CALL                             R25 2 1
      389 MOVE                             R24 R25
      390 SETTABLEKS                       R24 R23 K38 ["testId"]
      392 CALL                             R21 2 1
      393 SETTABLEKS                       R21 R20 K33 ["IconButton"]
      395 CALL                             R17 3 1
      396 SETTABLEKS                       R17 R16 K48 ["AddButton"]
      398 GETTABLEKS                       R17 R0 K15 ["depth"]
      400 LOADN                            R18 0
      401 JUMPIFNOTLT                      R18 R17 ; [+56]
      403 GETUPVAL                         R18 0
      404 GETTABLEKS                       R17 R18 K18 ["createElement"]
      406 GETUPVAL                         R18 4
      407 DUPTABLE                         R19 K21 [{"LayoutOrder", "tag"}]
      408 MOVE                             R20 R15
      409 CALL                             R20 0 1
      410 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      412 LOADK                            R20 K87 ["col grow align-y-center size-0-full"]
      413 SETTABLEKS                       R20 R19 K20 ["tag"]
      415 DUPTABLE                         R20 K89 [{"LabelContainer", "Divider"}]
      416 GETUPVAL                         R22 0
      417 GETTABLEKS                       R21 R22 K18 ["createElement"]
      419 GETUPVAL                         R22 4
      420 DUPTABLE                         R23 K21 [{"LayoutOrder", "tag"}]
      421 LOADN                            R24 1
      422 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      424 LOADK                            R24 K90 ["tree-row row align-y-center size-full-full padding-right-small"]
      425 SETTABLEKS                       R24 R23 K20 ["tag"]
      427 MOVE                             R24 R16
      428 CALL                             R21 3 1
      429 SETTABLEKS                       R21 R20 K88 ["LabelContainer"]
      431 GETUPVAL                         R22 0
      432 GETTABLEKS                       R21 R22 K18 ["createElement"]
      434 GETUPVAL                         R22 5
      435 DUPTABLE                         R23 K91 [{"LayoutOrder", "orientation", "tag"}]
      436 LOADN                            R24 2
      437 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      439 GETUPVAL                         R27 6
      440 GETTABLEKS                       R26 R27 K27 ["Enums"]
      442 GETTABLEKS                       R25 R26 K28 ["Orientation"]
      444 GETTABLEKS                       R24 R25 K92 ["Horizontal"]
      446 SETTABLEKS                       R24 R23 K25 ["orientation"]
      448 LOADK                            R24 K93 ["auto-x"]
      449 SETTABLEKS                       R24 R23 K20 ["tag"]
      451 CALL                             R21 2 1
      452 SETTABLEKS                       R21 R20 K23 ["Divider"]
      454 CALL                             R17 3 1
      455 SETTABLEKS                       R17 R1 K94 ["StackedInstanceLabel"]
      457 JUMP                             ; [+20]
      458 GETUPVAL                         R18 0
      459 GETTABLEKS                       R17 R18 K18 ["createElement"]
      461 GETUPVAL                         R18 4
      462 DUPTABLE                         R19 K21 [{"LayoutOrder", "tag"}]
      463 MOVE                             R20 R15
      464 CALL                             R20 0 1
      465 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      467 LOADK                            R20 K95 ["row grow align-y-center size-0-full padding-right-small"]
      468 SETTABLEKS                       R20 R19 K20 ["tag"]
      470 NEWTABLE                         R20 0 1
      472 MOVE                             R21 R16
      473 SETLIST                          R20 R21 1 [1]
      475 CALL                             R17 3 1
      476 SETTABLEKS                       R17 R1 K88 ["LabelContainer"]
      478 GETUPVAL                         R18 0
      479 GETTABLEKS                       R17 R18 K18 ["createElement"]
      481 GETUPVAL                         R18 4
      482 DUPTABLE                         R19 K97 [{"LayoutOrder", "onStateChanged", "onActivated", "tag", "testId"}]
      483 GETTABLEKS                       R20 R0 K19 ["LayoutOrder"]
      485 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      487 SETTABLEKS                       R12 R19 K96 ["onStateChanged"]
      489 JUMPIF                           R4 ; [+2]
      490 MOVE                             R20 R11
      491 JUMP                             ; [+1]
      492 LOADNIL                          R20
      493 SETTABLEKS                       R20 R19 K36 ["onActivated"]
      495 LOADK                            R20 K98 ["columns-tree row align-y-center tree-row"]
      496 SETTABLEKS                       R20 R19 K20 ["tag"]
      498 GETTABLEKS                       R21 R0 K3 ["creating"]
      500 JUMPIFNOT                        R21 ; [+2]
      501 LOADK                            R20 K99 ["node-creating"]
      502 JUMP                             ; [+7]
      503 LOADK                            R21 K100 ["node-%*"]
      504 GETTABLEKS                       R23 R0 K1 ["name"]
      506 NAMECALL                         R21 R21 K17 ["format"]
      508 CALL                             R21 2 1
      509 MOVE                             R20 R21
      510 SETTABLEKS                       R20 R19 K38 ["testId"]
      512 MOVE                             R20 R1
      513 CALL                             R17 3 -1
      514 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R5 K11 ["ControlState"]
       32 GETTABLEKS                       R5 R3 K12 ["Divider"]
       34 GETTABLEKS                       R6 R3 K13 ["IconButton"]
       36 GETTABLEKS                       R7 R3 K14 ["Image"]
       38 GETTABLEKS                       R9 R3 K10 ["Enums"]
       40 GETTABLEKS                       R8 R9 K15 ["InputSize"]
       42 GETTABLEKS                       R9 R3 K16 ["Text"]
       44 GETTABLEKS                       R10 R3 K17 ["TextInput"]
       46 GETTABLEKS                       R11 R3 K18 ["View"]
       48 GETIMPORT                        R12 K5 [require]
       50 GETTABLEKS                       R15 R0 K19 ["Src"]
       52 GETTABLEKS                       R14 R15 K20 ["Hooks"]
       54 GETTABLEKS                       R13 R14 K21 ["useIcon"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R15 R0 K19 ["Src"]
       61 GETTABLEKS                       R14 R15 K22 ["Types"]
       63 CALL                             R13 1 1
       64 DUPCLOSURE                       R14 K23 [PROTO_7]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 RETURN                           R14 1
