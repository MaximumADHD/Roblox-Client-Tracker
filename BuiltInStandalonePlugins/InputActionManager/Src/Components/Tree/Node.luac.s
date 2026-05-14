PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCreated"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["current"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K1 ["current"]
       17 NAMECALL                         R0 R0 K2 ["focus"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCreated"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["onCreated"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["current"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 DUPTABLE                         R0 K3 [{"name"}]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K1 ["current"]
       20 SETTABLEKS                       R1 R0 K2 ["name"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K4 ["context"]
       25 JUMPIFNOT                        R1 ; [+11]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K5 ["updateContext"]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K4 ["context"]
       32 GETTABLEKS                       R2 R2 K6 ["uuid"]
       34 MOVE                             R3 R0
       35 CALL                             R1 2 0
       36 JUMP                             ; [+14]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K7 ["action"]
       40 JUMPIFNOT                        R1 ; [+10]
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K8 ["updateAction"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K7 ["action"]
       47 GETTABLEKS                       R2 R2 K6 ["uuid"]
       49 MOVE                             R3 R0
       50 CALL                             R1 2 0
       51 GETUPVAL                         R1 3
       52 LOADB                            R2 0
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setExpanded"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["setExpanded"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["expanded"]
       10 NOT                              R1 R2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCreate"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onCreate"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useRef"]
       12 GETTABLEKS                       R4 R0 K3 ["name"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K2 ["useRef"]
       18 LOADNIL                          R5
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["useState"]
       23 GETTABLEKS                       R7 R0 K5 ["onCreated"]
       25 JUMPIFNOTEQKNIL                  R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 CALL                             R5 1 2
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K4 ["useState"]
       33 LOADB                            R8 0
       34 CALL                             R7 1 2
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R10 R0 K6 ["icon"]
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       42 NEWCLOSURE                       R11 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R12 0 1
       48 MOVE                             R13 R5
       49 SETLIST                          R12 R13 1 [1]
       51 CALL                             R10 2 0
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R10 R10 K8 ["useEventCallback"]
       55 NEWCLOSURE                       R11 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 CALL                             R10 1 1
       61 GETUPVAL                         R11 3
       62 GETTABLEKS                       R11 R11 K8 ["useEventCallback"]
       64 NEWCLOSURE                       R12 P2
       65 CAPTURE                          VAL R3
       66 CALL                             R11 1 1
       67 GETUPVAL                         R12 3
       68 GETTABLEKS                       R12 R12 K8 ["useEventCallback"]
       70 NEWCLOSURE                       R13 P3
       71 CAPTURE                          VAL R6
       72 CALL                             R12 1 1
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K8 ["useEventCallback"]
       76 NEWCLOSURE                       R14 P4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          UPVAL U4
       79 CALL                             R13 1 1
       80 GETUPVAL                         R14 3
       81 GETTABLEKS                       R14 R14 K8 ["useEventCallback"]
       83 NEWCLOSURE                       R15 P5
       84 CAPTURE                          VAL R0
       85 CALL                             R14 1 1
       86 GETUPVAL                         R15 3
       87 GETTABLEKS                       R15 R15 K8 ["useEventCallback"]
       89 NEWCLOSURE                       R16 P6
       90 CAPTURE                          VAL R0
       91 CALL                             R15 1 1
       92 GETUPVAL                         R16 3
       93 GETTABLEKS                       R16 R16 K9 ["createNextOrder"]
       95 CALL                             R16 0 1
       96 LOADN                            R19 1
       97 GETTABLEKS                       R17 R0 K10 ["depth"]
       99 LOADN                            R18 1
      100 FORNPREP                         R17
      101 LOADK                            R21 K11 ["DepthMarker%*"]
      102 MOVE                             R23 R19
      103 NAMECALL                         R21 R21 K12 ["format"]
      105 CALL                             R21 2 1
      106 MOVE                             R20 R21
      107 GETUPVAL                         R21 0
      108 GETTABLEKS                       R21 R21 K13 ["createElement"]
      110 GETUPVAL                         R22 5
      111 DUPTABLE                         R23 K16 [{"LayoutOrder", "tag"}]
      112 MOVE                             R24 R16
      113 CALL                             R24 0 1
      114 SETTABLEKS                       R24 R23 K14 ["LayoutOrder"]
      116 LOADK                            R24 K17 ["spacer align-y-center align-x-center padding-left-small"]
      117 SETTABLEKS                       R24 R23 K15 ["tag"]
      119 DUPTABLE                         R24 K19 [{"Divider"}]
      120 GETUPVAL                         R25 0
      121 GETTABLEKS                       R25 R25 K13 ["createElement"]
      123 GETUPVAL                         R26 6
      124 DUPTABLE                         R27 K21 [{"orientation", "tag"}]
      125 GETUPVAL                         R28 7
      126 GETTABLEKS                       R28 R28 K22 ["Enums"]
      128 GETTABLEKS                       R28 R28 K23 ["Orientation"]
      130 GETTABLEKS                       R28 R28 K24 ["Vertical"]
      132 SETTABLEKS                       R28 R27 K20 ["orientation"]
      134 LOADK                            R28 K25 ["auto-y"]
      135 SETTABLEKS                       R28 R27 K15 ["tag"]
      137 CALL                             R25 2 1
      138 SETTABLEKS                       R25 R24 K18 ["Divider"]
      140 CALL                             R21 3 1
      141 SETTABLE                         R21 R1 R20
      142 FORNLOOP                         R17
      143 GETTABLEKS                       R17 R0 K26 ["setExpanded"]
      145 JUMPIFNOT                        R17 ; [+52]
      146 GETUPVAL                         R17 0
      147 GETTABLEKS                       R17 R17 K13 ["createElement"]
      149 GETUPVAL                         R18 5
      150 DUPTABLE                         R19 K16 [{"LayoutOrder", "tag"}]
      151 MOVE                             R20 R16
      152 CALL                             R20 0 1
      153 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      155 LOADK                            R20 K17 ["spacer align-y-center align-x-center padding-left-small"]
      156 SETTABLEKS                       R20 R19 K15 ["tag"]
      158 DUPTABLE                         R20 K28 [{"IconButton"}]
      159 GETUPVAL                         R21 0
      160 GETTABLEKS                       R21 R21 K13 ["createElement"]
      162 GETUPVAL                         R22 8
      163 DUPTABLE                         R23 K32 [{"icon", "onActivated", "size", "testId"}]
      164 GETTABLEKS                       R25 R0 K33 ["expanded"]
      166 JUMPIFNOT                        R25 ; [+2]
      167 LOADK                            R24 K34 ["icons/actions/truncationCollapse_small"]
      168 JUMP                             ; [+1]
      169 LOADK                            R24 K35 ["icons/actions/truncationExpand_small"]
      170 SETTABLEKS                       R24 R23 K6 ["icon"]
      172 SETTABLEKS                       R14 R23 K29 ["onActivated"]
      174 GETUPVAL                         R24 7
      175 GETTABLEKS                       R24 R24 K22 ["Enums"]
      177 GETTABLEKS                       R24 R24 K36 ["IconSize"]
      179 GETTABLEKS                       R24 R24 K37 ["Small"]
      181 SETTABLEKS                       R24 R23 K30 ["size"]
      183 LOADK                            R25 K38 ["expand-%*"]
      184 GETTABLEKS                       R27 R0 K3 ["name"]
      186 NAMECALL                         R25 R25 K12 ["format"]
      188 CALL                             R25 2 1
      189 MOVE                             R24 R25
      190 SETTABLEKS                       R24 R23 K31 ["testId"]
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K27 ["IconButton"]
      195 CALL                             R17 3 1
      196 SETTABLEKS                       R17 R1 K39 ["ExpandButton"]
      198 DUPTABLE                         R17 K43 [{"ClassImage", "InstanceName", "AddButton"}]
      199 MOVE                             R18 R9
      200 JUMPIFNOT                        R18 ; [+41]
      201 GETUPVAL                         R18 0
      202 GETTABLEKS                       R18 R18 K13 ["createElement"]
      204 GETUPVAL                         R19 5
      205 DUPTABLE                         R20 K16 [{"LayoutOrder", "tag"}]
      206 MOVE                             R21 R16
      207 CALL                             R21 0 1
      208 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      210 LOADK                            R21 K44 ["spacer align-y-center align-x-center"]
      211 SETTABLEKS                       R21 R20 K15 ["tag"]
      213 DUPTABLE                         R21 K46 [{"Image"}]
      214 GETUPVAL                         R22 0
      215 GETTABLEKS                       R22 R22 K13 ["createElement"]
      217 GETUPVAL                         R23 9
      218 DUPTABLE                         R24 K50 [{"Image", "imageRectOffset", "imageRectSize", "ScaleType", "tag"}]
      219 GETTABLEKS                       R25 R9 K45 ["Image"]
      221 SETTABLEKS                       R25 R24 K45 ["Image"]
      223 GETTABLEKS                       R25 R9 K51 ["ImageRectOffset"]
      225 SETTABLEKS                       R25 R24 K47 ["imageRectOffset"]
      227 GETTABLEKS                       R25 R9 K52 ["ImageRectSize"]
      229 SETTABLEKS                       R25 R24 K48 ["imageRectSize"]
      231 GETIMPORT                        R25 K55 [Enum.ScaleType.Fit]
      233 SETTABLEKS                       R25 R24 K49 ["ScaleType"]
      235 LOADK                            R25 K56 ["spacer icon align-y-center align-x-center"]
      236 SETTABLEKS                       R25 R24 K15 ["tag"]
      238 CALL                             R22 2 1
      239 SETTABLEKS                       R22 R21 K45 ["Image"]
      241 CALL                             R18 3 1
      242 SETTABLEKS                       R18 R17 K40 ["ClassImage"]
      244 GETUPVAL                         R18 0
      245 GETTABLEKS                       R18 R18 K13 ["createElement"]
      247 GETUPVAL                         R19 5
      248 DUPTABLE                         R20 K16 [{"LayoutOrder", "tag"}]
      249 MOVE                             R21 R16
      250 CALL                             R21 0 1
      251 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      253 LOADK                            R21 K57 ["row align-y-center grow size-0-full"]
      254 SETTABLEKS                       R21 R20 K15 ["tag"]
      256 DUPTABLE                         R21 K59 [{"Text"}]
      257 JUMPIFNOT                        R5 ; [+45]
      258 GETUPVAL                         R22 0
      259 GETTABLEKS                       R22 R22 K13 ["createElement"]
      261 GETUPVAL                         R23 10
      262 DUPTABLE                         R24 K67 [{"label", "textBoxRef", "onChanged", "onReturnPressed", "size", "testId", "text", "textInputType", "width"}]
      263 LOADK                            R25 K68 [""]
      264 SETTABLEKS                       R25 R24 K60 ["label"]
      266 SETTABLEKS                       R4 R24 K61 ["textBoxRef"]
      268 SETTABLEKS                       R11 R24 K62 ["onChanged"]
      270 SETTABLEKS                       R10 R24 K63 ["onReturnPressed"]
      272 GETUPVAL                         R25 11
      273 GETTABLEKS                       R25 R25 K37 ["Small"]
      275 SETTABLEKS                       R25 R24 K30 ["size"]
      277 LOADK                            R26 K69 ["rename-%*"]
      278 GETTABLEKS                       R28 R0 K3 ["name"]
      280 NAMECALL                         R26 R26 K12 ["format"]
      282 CALL                             R26 2 1
      283 MOVE                             R25 R26
      284 SETTABLEKS                       R25 R24 K31 ["testId"]
      286 GETTABLEKS                       R25 R3 K70 ["current"]
      288 SETTABLEKS                       R25 R24 K64 ["text"]
      290 GETIMPORT                        R25 K73 [Enum.TextInputType.Default]
      292 SETTABLEKS                       R25 R24 K65 ["textInputType"]
      294 GETIMPORT                        R25 K76 [UDim.new]
      296 LOADN                            R26 1
      297 LOADN                            R27 251
      298 CALL                             R25 2 1
      299 SETTABLEKS                       R25 R24 K66 ["width"]
      301 CALL                             R22 2 1
      302 JUMP                             ; [+13]
      303 GETUPVAL                         R22 0
      304 GETTABLEKS                       R22 R22 K13 ["createElement"]
      306 GETUPVAL                         R23 12
      307 DUPTABLE                         R24 K77 [{"tag", "Text"}]
      308 LOADK                            R25 K78 ["label text-body-medium auto-xy"]
      309 SETTABLEKS                       R25 R24 K15 ["tag"]
      311 GETTABLEKS                       R25 R0 K3 ["name"]
      313 SETTABLEKS                       R25 R24 K58 ["Text"]
      315 CALL                             R22 2 1
      316 SETTABLEKS                       R22 R21 K58 ["Text"]
      318 CALL                             R18 3 1
      319 SETTABLEKS                       R18 R17 K41 ["InstanceName"]
      321 GETTABLEKS                       R18 R0 K79 ["onCreate"]
      323 JUMPIFNOT                        R18 ; [+47]
      324 MOVE                             R18 R7
      325 JUMPIFNOT                        R18 ; [+45]
      326 GETUPVAL                         R18 0
      327 GETTABLEKS                       R18 R18 K13 ["createElement"]
      329 GETUPVAL                         R19 5
      330 DUPTABLE                         R20 K16 [{"LayoutOrder", "tag"}]
      331 MOVE                             R21 R16
      332 CALL                             R21 0 1
      333 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      335 LOADK                            R21 K80 ["spacer align-y-center align-x-center padding-small"]
      336 SETTABLEKS                       R21 R20 K15 ["tag"]
      338 DUPTABLE                         R21 K28 [{"IconButton"}]
      339 GETUPVAL                         R22 0
      340 GETTABLEKS                       R22 R22 K13 ["createElement"]
      342 GETUPVAL                         R23 8
      343 DUPTABLE                         R24 K32 [{"icon", "onActivated", "size", "testId"}]
      344 LOADK                            R25 K81 ["plus-small"]
      345 SETTABLEKS                       R25 R24 K6 ["icon"]
      347 SETTABLEKS                       R15 R24 K29 ["onActivated"]
      349 GETUPVAL                         R25 7
      350 GETTABLEKS                       R25 R25 K22 ["Enums"]
      352 GETTABLEKS                       R25 R25 K36 ["IconSize"]
      354 GETTABLEKS                       R25 R25 K37 ["Small"]
      356 SETTABLEKS                       R25 R24 K30 ["size"]
      358 LOADK                            R26 K82 ["add-%*"]
      359 GETTABLEKS                       R28 R0 K3 ["name"]
      361 NAMECALL                         R26 R26 K12 ["format"]
      363 CALL                             R26 2 1
      364 MOVE                             R25 R26
      365 SETTABLEKS                       R25 R24 K31 ["testId"]
      367 CALL                             R22 2 1
      368 SETTABLEKS                       R22 R21 K27 ["IconButton"]
      370 CALL                             R18 3 1
      371 SETTABLEKS                       R18 R17 K42 ["AddButton"]
      373 GETTABLEKS                       R18 R0 K10 ["depth"]
      375 LOADN                            R19 0
      376 JUMPIFNOTLT                      R19 R18 ; [+56]
      378 GETUPVAL                         R18 0
      379 GETTABLEKS                       R18 R18 K13 ["createElement"]
      381 GETUPVAL                         R19 5
      382 DUPTABLE                         R20 K16 [{"LayoutOrder", "tag"}]
      383 MOVE                             R21 R16
      384 CALL                             R21 0 1
      385 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      387 LOADK                            R21 K83 ["col grow align-y-center size-0-full"]
      388 SETTABLEKS                       R21 R20 K15 ["tag"]
      390 DUPTABLE                         R21 K85 [{"LabelContainer", "Divider"}]
      391 GETUPVAL                         R22 0
      392 GETTABLEKS                       R22 R22 K13 ["createElement"]
      394 GETUPVAL                         R23 5
      395 DUPTABLE                         R24 K16 [{"LayoutOrder", "tag"}]
      396 LOADN                            R25 1
      397 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      399 LOADK                            R25 K86 ["tree-row row align-y-center size-full-full padding-right-small"]
      400 SETTABLEKS                       R25 R24 K15 ["tag"]
      402 MOVE                             R25 R17
      403 CALL                             R22 3 1
      404 SETTABLEKS                       R22 R21 K84 ["LabelContainer"]
      406 GETUPVAL                         R22 0
      407 GETTABLEKS                       R22 R22 K13 ["createElement"]
      409 GETUPVAL                         R23 6
      410 DUPTABLE                         R24 K87 [{"LayoutOrder", "orientation", "tag"}]
      411 LOADN                            R25 2
      412 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      414 GETUPVAL                         R25 7
      415 GETTABLEKS                       R25 R25 K22 ["Enums"]
      417 GETTABLEKS                       R25 R25 K23 ["Orientation"]
      419 GETTABLEKS                       R25 R25 K88 ["Horizontal"]
      421 SETTABLEKS                       R25 R24 K20 ["orientation"]
      423 LOADK                            R25 K89 ["auto-x"]
      424 SETTABLEKS                       R25 R24 K15 ["tag"]
      426 CALL                             R22 2 1
      427 SETTABLEKS                       R22 R21 K18 ["Divider"]
      429 CALL                             R18 3 1
      430 SETTABLEKS                       R18 R1 K90 ["StackedInstanceLabel"]
      432 JUMP                             ; [+16]
      433 GETUPVAL                         R18 0
      434 GETTABLEKS                       R18 R18 K13 ["createElement"]
      436 GETUPVAL                         R19 5
      437 DUPTABLE                         R20 K16 [{"LayoutOrder", "tag"}]
      438 MOVE                             R21 R16
      439 CALL                             R21 0 1
      440 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      442 LOADK                            R21 K91 ["row grow align-y-center size-0-full padding-right-small"]
      443 SETTABLEKS                       R21 R20 K15 ["tag"]
      445 MOVE                             R21 R17
      446 CALL                             R18 3 1
      447 SETTABLEKS                       R18 R1 K84 ["LabelContainer"]
      449 GETUPVAL                         R18 0
      450 GETTABLEKS                       R18 R18 K13 ["createElement"]
      452 GETUPVAL                         R19 5
      453 DUPTABLE                         R20 K93 [{"LayoutOrder", "onStateChanged", "onActivated", "tag", "testId"}]
      454 GETTABLEKS                       R21 R0 K14 ["LayoutOrder"]
      456 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      458 SETTABLEKS                       R13 R20 K92 ["onStateChanged"]
      460 JUMPIF                           R5 ; [+2]
      461 MOVE                             R21 R12
      462 JUMP                             ; [+1]
      463 LOADNIL                          R21
      464 SETTABLEKS                       R21 R20 K29 ["onActivated"]
      466 LOADK                            R21 K94 ["columns-tree row align-y-center"]
      467 SETTABLEKS                       R21 R20 K15 ["tag"]
      469 GETTABLEKS                       R22 R0 K5 ["onCreated"]
      471 JUMPIFNOT                        R22 ; [+2]
      472 LOADK                            R21 K95 ["node-creating"]
      473 JUMP                             ; [+7]
      474 LOADK                            R22 K96 ["node-%*"]
      475 GETTABLEKS                       R24 R0 K3 ["name"]
      477 NAMECALL                         R22 R22 K12 ["format"]
      479 CALL                             R22 2 1
      480 MOVE                             R21 R22
      481 SETTABLEKS                       R21 R20 K31 ["testId"]
      483 MOVE                             R21 R1
      484 CALL                             R18 3 -1
      485 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
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
       28 GETTABLEKS                       R4 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["ControlState"]
       32 GETTABLEKS                       R5 R3 K12 ["Divider"]
       34 GETTABLEKS                       R6 R3 K13 ["IconButton"]
       36 GETTABLEKS                       R7 R3 K14 ["Image"]
       38 GETTABLEKS                       R8 R3 K10 ["Enums"]
       40 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       42 GETTABLEKS                       R9 R3 K16 ["Text"]
       44 GETTABLEKS                       R10 R3 K17 ["TextInput"]
       46 GETTABLEKS                       R11 R3 K18 ["View"]
       48 GETIMPORT                        R12 K5 [require]
       50 GETTABLEKS                       R13 R0 K19 ["Src"]
       52 GETTABLEKS                       R13 R13 K20 ["Contexts"]
       54 GETTABLEKS                       R13 R13 K21 ["DatamodelReference"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K19 ["Src"]
       61 GETTABLEKS                       R14 R14 K22 ["Types"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R15 R0 K19 ["Src"]
       68 GETTABLEKS                       R15 R15 K23 ["Hooks"]
       70 GETTABLEKS                       R15 R15 K24 ["useIcon"]
       72 CALL                             R14 1 1
       73 DUPCLOSURE                       R15 K25 [PROTO_7]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R9
       87 RETURN                           R15 1
