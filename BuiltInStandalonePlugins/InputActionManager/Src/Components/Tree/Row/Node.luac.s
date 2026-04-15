PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onCreated"]
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
        3 JUMPIFNOT                        R0 ; [+23]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+19]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["onCreated"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["itemType"]
       14 DUPTABLE                         R2 K5 [{"name", "parentUuid"}]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K1 ["current"]
       18 SETTABLEKS                       R3 R2 K3 ["name"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K6 ["uuid"]
       23 SETTABLEKS                       R3 R2 K4 ["parentUuid"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R0 R1 K6 ["uuid"]
       30 JUMPIFNOT                        R0 ; [+50]
       31 DUPTABLE                         R0 K7 [{"name"}]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R1 R2 K1 ["current"]
       35 SETTABLEKS                       R1 R0 K3 ["name"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R1 R2 K2 ["itemType"]
       40 JUMPIFNOTEQKS                    R1 K8 ["InputContext"] ; [+10]
       42 GETUPVAL                         R2 2
       43 GETTABLEKS                       R1 R2 K9 ["updateContext"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R2 R3 K6 ["uuid"]
       48 MOVE                             R3 R0
       49 CALL                             R1 2 0
       50 JUMP                             ; [+27]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R1 R2 K2 ["itemType"]
       54 JUMPIFNOTEQKS                    R1 K10 ["InputAction"] ; [+10]
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R1 R2 K11 ["updateAction"]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R2 R3 K6 ["uuid"]
       62 MOVE                             R3 R0
       63 CALL                             R1 2 0
       64 JUMP                             ; [+13]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R1 R2 K2 ["itemType"]
       68 JUMPIFNOTEQKS                    R1 K12 ["InputBinding"] ; [+9]
       70 GETUPVAL                         R2 2
       71 GETTABLEKS                       R1 R2 K13 ["updateBinding"]
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R2 R3 K6 ["uuid"]
       76 MOVE                             R3 R0
       77 CALL                             R1 2 0
       78 GETUPVAL                         R1 3
       79 LOADB                            R2 0
       80 CALL                             R1 1 0
       81 RETURN                           R0 0

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
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["setExpanded"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["expanded"]
       10 NOT                              R1 R2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onCreate"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["uuid"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["onCreate"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["itemType"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K1 ["uuid"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 4 0
        2 GETTABLEKS                       R3 R0 K0 ["name"]
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R0 K0 ["name"]
        7 JUMP                             ; [+10]
        8 GETTABLEKS                       R3 R0 K1 ["item"]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R3 R0 K1 ["item"]
       13 GETTABLEKS                       R2 R3 K0 ["name"]
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R2 R0 K2 ["itemType"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K3 ["useContext"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K5 ["useRef"]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K5 ["useRef"]
       33 LOADNIL                          R6
       34 CALL                             R5 1 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K6 ["useState"]
       38 GETTABLEKS                       R8 R0 K7 ["onCreated"]
       40 JUMPIFNOTEQKNIL                  R8 ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 CALL                             R6 1 2
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K6 ["useState"]
       48 LOADB                            R9 0
       49 CALL                             R8 1 2
       50 GETUPVAL                         R10 2
       51 GETTABLEKS                       R11 R0 K2 ["itemType"]
       53 CALL                             R10 1 1
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K8 ["useEffect"]
       57 NEWCLOSURE                       R12 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 NEWTABLE                         R13 0 1
       63 MOVE                             R14 R6
       64 SETLIST                          R13 R14 1 [1]
       66 CALL                             R11 2 0
       67 GETUPVAL                         R12 3
       68 GETTABLEKS                       R11 R12 K9 ["useEventCallback"]
       70 NEWCLOSURE                       R12 P1
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CALL                             R11 1 1
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R12 R13 K9 ["useEventCallback"]
       79 NEWCLOSURE                       R13 P2
       80 CAPTURE                          VAL R4
       81 CALL                             R12 1 1
       82 GETUPVAL                         R14 3
       83 GETTABLEKS                       R13 R14 K9 ["useEventCallback"]
       85 NEWCLOSURE                       R14 P3
       86 CAPTURE                          VAL R7
       87 CALL                             R13 1 1
       88 GETUPVAL                         R15 3
       89 GETTABLEKS                       R14 R15 K9 ["useEventCallback"]
       91 NEWCLOSURE                       R15 P4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          UPVAL U4
       94 CALL                             R14 1 1
       95 GETUPVAL                         R16 3
       96 GETTABLEKS                       R15 R16 K9 ["useEventCallback"]
       98 NEWCLOSURE                       R16 P5
       99 CAPTURE                          VAL R0
      100 CALL                             R15 1 1
      101 GETUPVAL                         R17 3
      102 GETTABLEKS                       R16 R17 K9 ["useEventCallback"]
      104 NEWCLOSURE                       R17 P6
      105 CAPTURE                          VAL R0
      106 CALL                             R16 1 1
      107 GETUPVAL                         R18 3
      108 GETTABLEKS                       R17 R18 K10 ["createNextOrder"]
      110 CALL                             R17 0 1
      111 LOADN                            R20 1
      112 GETTABLEKS                       R18 R0 K11 ["depth"]
      114 LOADN                            R19 1
      115 FORNPREP                         R18
      116 LOADK                            R22 K12 ["DepthMarker%*"]
      117 MOVE                             R24 R20
      118 NAMECALL                         R22 R22 K13 ["format"]
      120 CALL                             R22 2 1
      121 MOVE                             R21 R22
      122 GETUPVAL                         R23 0
      123 GETTABLEKS                       R22 R23 K14 ["createElement"]
      125 GETUPVAL                         R23 5
      126 DUPTABLE                         R24 K17 [{"LayoutOrder", "tag"}]
      127 MOVE                             R25 R17
      128 CALL                             R25 0 1
      129 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      131 LOADK                            R25 K18 ["spacer align-y-center align-x-center"]
      132 SETTABLEKS                       R25 R24 K16 ["tag"]
      134 DUPTABLE                         R25 K20 [{"Divider"}]
      135 GETUPVAL                         R27 0
      136 GETTABLEKS                       R26 R27 K14 ["createElement"]
      138 GETUPVAL                         R27 6
      139 DUPTABLE                         R28 K22 [{"orientation", "tag"}]
      140 GETUPVAL                         R32 7
      141 GETTABLEKS                       R31 R32 K23 ["Enums"]
      143 GETTABLEKS                       R30 R31 K24 ["Orientation"]
      145 GETTABLEKS                       R29 R30 K25 ["Vertical"]
      147 SETTABLEKS                       R29 R28 K21 ["orientation"]
      149 LOADK                            R29 K26 ["auto-y"]
      150 SETTABLEKS                       R29 R28 K16 ["tag"]
      152 CALL                             R26 2 1
      153 SETTABLEKS                       R26 R25 K19 ["Divider"]
      155 CALL                             R22 3 1
      156 SETTABLE                         R22 R1 R21
      157 FORNLOOP                         R18
      158 GETTABLEKS                       R18 R0 K27 ["setExpanded"]
      160 JUMPIFNOT                        R18 ; [+51]
      161 GETUPVAL                         R19 0
      162 GETTABLEKS                       R18 R19 K14 ["createElement"]
      164 GETUPVAL                         R19 5
      165 DUPTABLE                         R20 K17 [{"LayoutOrder", "tag"}]
      166 MOVE                             R21 R17
      167 CALL                             R21 0 1
      168 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      170 LOADK                            R21 K28 ["spacer align-y-center align-x-center padding-left-small"]
      171 SETTABLEKS                       R21 R20 K16 ["tag"]
      173 DUPTABLE                         R21 K30 [{"IconButton"}]
      174 GETUPVAL                         R23 0
      175 GETTABLEKS                       R22 R23 K14 ["createElement"]
      177 GETUPVAL                         R23 8
      178 DUPTABLE                         R24 K35 [{"icon", "onActivated", "size", "testId"}]
      179 GETTABLEKS                       R26 R0 K36 ["expanded"]
      181 JUMPIFNOT                        R26 ; [+2]
      182 LOADK                            R25 K37 ["icons/actions/truncationCollapse_small"]
      183 JUMP                             ; [+1]
      184 LOADK                            R25 K38 ["icons/actions/truncationExpand_small"]
      185 SETTABLEKS                       R25 R24 K31 ["icon"]
      187 SETTABLEKS                       R15 R24 K32 ["onActivated"]
      189 GETUPVAL                         R28 7
      190 GETTABLEKS                       R27 R28 K23 ["Enums"]
      192 GETTABLEKS                       R26 R27 K39 ["IconSize"]
      194 GETTABLEKS                       R25 R26 K40 ["Small"]
      196 SETTABLEKS                       R25 R24 K33 ["size"]
      198 LOADK                            R26 K41 ["expand-%*"]
      199 MOVE                             R28 R2
      200 NAMECALL                         R26 R26 K13 ["format"]
      202 CALL                             R26 2 1
      203 MOVE                             R25 R26
      204 SETTABLEKS                       R25 R24 K34 ["testId"]
      206 CALL                             R22 2 1
      207 SETTABLEKS                       R22 R21 K29 ["IconButton"]
      209 CALL                             R18 3 1
      210 SETTABLEKS                       R18 R1 K42 ["ExpandButton"]
      212 DUPTABLE                         R18 K46 [{"ClassImage", "InstanceName", "AddButton"}]
      213 GETUPVAL                         R20 0
      214 GETTABLEKS                       R19 R20 K14 ["createElement"]
      216 GETUPVAL                         R20 5
      217 DUPTABLE                         R21 K17 [{"LayoutOrder", "tag"}]
      218 MOVE                             R22 R17
      219 CALL                             R22 0 1
      220 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      222 LOADK                            R22 K18 ["spacer align-y-center align-x-center"]
      223 SETTABLEKS                       R22 R21 K16 ["tag"]
      225 DUPTABLE                         R22 K48 [{"Image"}]
      226 GETUPVAL                         R24 0
      227 GETTABLEKS                       R23 R24 K14 ["createElement"]
      229 GETUPVAL                         R24 9
      230 DUPTABLE                         R25 K52 [{"Image", "imageRectOffset", "imageRectSize", "ScaleType", "tag"}]
      231 GETTABLEKS                       R26 R10 K47 ["Image"]
      233 SETTABLEKS                       R26 R25 K47 ["Image"]
      235 GETTABLEKS                       R26 R10 K53 ["ImageRectOffset"]
      237 SETTABLEKS                       R26 R25 K49 ["imageRectOffset"]
      239 GETTABLEKS                       R26 R10 K54 ["ImageRectSize"]
      241 SETTABLEKS                       R26 R25 K50 ["imageRectSize"]
      243 GETIMPORT                        R26 K57 [Enum.ScaleType.Fit]
      245 SETTABLEKS                       R26 R25 K51 ["ScaleType"]
      247 LOADK                            R26 K58 ["spacer icon align-y-center align-x-center"]
      248 SETTABLEKS                       R26 R25 K16 ["tag"]
      250 CALL                             R23 2 1
      251 SETTABLEKS                       R23 R22 K47 ["Image"]
      253 CALL                             R19 3 1
      254 SETTABLEKS                       R19 R18 K43 ["ClassImage"]
      256 GETUPVAL                         R20 0
      257 GETTABLEKS                       R19 R20 K14 ["createElement"]
      259 GETUPVAL                         R20 5
      260 DUPTABLE                         R21 K17 [{"LayoutOrder", "tag"}]
      261 MOVE                             R22 R17
      262 CALL                             R22 0 1
      263 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      265 LOADK                            R22 K59 ["row align-y-center grow size-0-full"]
      266 SETTABLEKS                       R22 R21 K16 ["tag"]
      268 DUPTABLE                         R22 K61 [{"Text"}]
      269 JUMPIFNOT                        R6 ; [+44]
      270 GETUPVAL                         R24 0
      271 GETTABLEKS                       R23 R24 K14 ["createElement"]
      273 GETUPVAL                         R24 10
      274 DUPTABLE                         R25 K69 [{"label", "textBoxRef", "onChanged", "onReturnPressed", "size", "testId", "text", "textInputType", "width"}]
      275 LOADK                            R26 K70 [""]
      276 SETTABLEKS                       R26 R25 K62 ["label"]
      278 SETTABLEKS                       R5 R25 K63 ["textBoxRef"]
      280 SETTABLEKS                       R12 R25 K64 ["onChanged"]
      282 SETTABLEKS                       R11 R25 K65 ["onReturnPressed"]
      284 GETUPVAL                         R27 11
      285 GETTABLEKS                       R26 R27 K40 ["Small"]
      287 SETTABLEKS                       R26 R25 K33 ["size"]
      289 LOADK                            R27 K71 ["rename-%*"]
      290 MOVE                             R29 R2
      291 NAMECALL                         R27 R27 K13 ["format"]
      293 CALL                             R27 2 1
      294 MOVE                             R26 R27
      295 SETTABLEKS                       R26 R25 K34 ["testId"]
      297 GETTABLEKS                       R26 R4 K72 ["current"]
      299 SETTABLEKS                       R26 R25 K66 ["text"]
      301 GETIMPORT                        R26 K75 [Enum.TextInputType.Default]
      303 SETTABLEKS                       R26 R25 K67 ["textInputType"]
      305 GETIMPORT                        R26 K78 [UDim.new]
      307 LOADN                            R27 1
      308 LOADN                            R28 251
      309 CALL                             R26 2 1
      310 SETTABLEKS                       R26 R25 K68 ["width"]
      312 CALL                             R23 2 1
      313 JUMP                             ; [+11]
      314 GETUPVAL                         R24 0
      315 GETTABLEKS                       R23 R24 K14 ["createElement"]
      317 GETUPVAL                         R24 12
      318 DUPTABLE                         R25 K79 [{"tag", "Text"}]
      319 LOADK                            R26 K80 ["label text-body-medium auto-xy"]
      320 SETTABLEKS                       R26 R25 K16 ["tag"]
      322 SETTABLEKS                       R2 R25 K60 ["Text"]
      324 CALL                             R23 2 1
      325 SETTABLEKS                       R23 R22 K60 ["Text"]
      327 CALL                             R19 3 1
      328 SETTABLEKS                       R19 R18 K44 ["InstanceName"]
      330 GETTABLEKS                       R19 R0 K81 ["onCreate"]
      332 JUMPIFNOT                        R19 ; [+46]
      333 MOVE                             R19 R8
      334 JUMPIFNOT                        R19 ; [+44]
      335 GETUPVAL                         R20 0
      336 GETTABLEKS                       R19 R20 K14 ["createElement"]
      338 GETUPVAL                         R20 5
      339 DUPTABLE                         R21 K17 [{"LayoutOrder", "tag"}]
      340 MOVE                             R22 R17
      341 CALL                             R22 0 1
      342 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      344 LOADK                            R22 K82 ["spacer align-y-center align-x-center padding-small"]
      345 SETTABLEKS                       R22 R21 K16 ["tag"]
      347 DUPTABLE                         R22 K30 [{"IconButton"}]
      348 GETUPVAL                         R24 0
      349 GETTABLEKS                       R23 R24 K14 ["createElement"]
      351 GETUPVAL                         R24 8
      352 DUPTABLE                         R25 K35 [{"icon", "onActivated", "size", "testId"}]
      353 LOADK                            R26 K83 ["plus-small"]
      354 SETTABLEKS                       R26 R25 K31 ["icon"]
      356 SETTABLEKS                       R16 R25 K32 ["onActivated"]
      358 GETUPVAL                         R29 7
      359 GETTABLEKS                       R28 R29 K23 ["Enums"]
      361 GETTABLEKS                       R27 R28 K39 ["IconSize"]
      363 GETTABLEKS                       R26 R27 K40 ["Small"]
      365 SETTABLEKS                       R26 R25 K33 ["size"]
      367 LOADK                            R27 K84 ["add-%*"]
      368 MOVE                             R29 R2
      369 NAMECALL                         R27 R27 K13 ["format"]
      371 CALL                             R27 2 1
      372 MOVE                             R26 R27
      373 SETTABLEKS                       R26 R25 K34 ["testId"]
      375 CALL                             R23 2 1
      376 SETTABLEKS                       R23 R22 K29 ["IconButton"]
      378 CALL                             R19 3 1
      379 SETTABLEKS                       R19 R18 K45 ["AddButton"]
      381 GETTABLEKS                       R19 R0 K11 ["depth"]
      383 LOADN                            R20 0
      384 JUMPIFNOTLT                      R20 R19 ; [+56]
      386 GETUPVAL                         R20 0
      387 GETTABLEKS                       R19 R20 K14 ["createElement"]
      389 GETUPVAL                         R20 5
      390 DUPTABLE                         R21 K17 [{"LayoutOrder", "tag"}]
      391 MOVE                             R22 R17
      392 CALL                             R22 0 1
      393 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      395 LOADK                            R22 K85 ["col grow align-y-center size-0-full"]
      396 SETTABLEKS                       R22 R21 K16 ["tag"]
      398 DUPTABLE                         R22 K87 [{"LabelContainer", "Divider"}]
      399 GETUPVAL                         R24 0
      400 GETTABLEKS                       R23 R24 K14 ["createElement"]
      402 GETUPVAL                         R24 5
      403 DUPTABLE                         R25 K17 [{"LayoutOrder", "tag"}]
      404 LOADN                            R26 1
      405 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      407 LOADK                            R26 K88 ["tree-row row align-y-center size-full-full padding-right-small"]
      408 SETTABLEKS                       R26 R25 K16 ["tag"]
      410 MOVE                             R26 R18
      411 CALL                             R23 3 1
      412 SETTABLEKS                       R23 R22 K86 ["LabelContainer"]
      414 GETUPVAL                         R24 0
      415 GETTABLEKS                       R23 R24 K14 ["createElement"]
      417 GETUPVAL                         R24 6
      418 DUPTABLE                         R25 K89 [{"LayoutOrder", "orientation", "tag"}]
      419 LOADN                            R26 2
      420 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      422 GETUPVAL                         R29 7
      423 GETTABLEKS                       R28 R29 K23 ["Enums"]
      425 GETTABLEKS                       R27 R28 K24 ["Orientation"]
      427 GETTABLEKS                       R26 R27 K90 ["Horizontal"]
      429 SETTABLEKS                       R26 R25 K21 ["orientation"]
      431 LOADK                            R26 K91 ["auto-x"]
      432 SETTABLEKS                       R26 R25 K16 ["tag"]
      434 CALL                             R23 2 1
      435 SETTABLEKS                       R23 R22 K19 ["Divider"]
      437 CALL                             R19 3 1
      438 SETTABLEKS                       R19 R1 K92 ["StackedInstanceLabel"]
      440 JUMP                             ; [+20]
      441 GETUPVAL                         R20 0
      442 GETTABLEKS                       R19 R20 K14 ["createElement"]
      444 GETUPVAL                         R20 5
      445 DUPTABLE                         R21 K17 [{"LayoutOrder", "tag"}]
      446 MOVE                             R22 R17
      447 CALL                             R22 0 1
      448 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      450 LOADK                            R22 K93 ["row grow align-y-center size-0-full padding-right-small"]
      451 SETTABLEKS                       R22 R21 K16 ["tag"]
      453 NEWTABLE                         R22 0 1
      455 MOVE                             R23 R18
      456 SETLIST                          R22 R23 1 [1]
      458 CALL                             R19 3 1
      459 SETTABLEKS                       R19 R1 K86 ["LabelContainer"]
      461 GETUPVAL                         R20 0
      462 GETTABLEKS                       R19 R20 K14 ["createElement"]
      464 GETUPVAL                         R20 5
      465 DUPTABLE                         R21 K95 [{"LayoutOrder", "onStateChanged", "onActivated", "tag", "testId"}]
      466 GETTABLEKS                       R22 R0 K15 ["LayoutOrder"]
      468 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      470 SETTABLEKS                       R14 R21 K94 ["onStateChanged"]
      472 JUMPIF                           R6 ; [+2]
      473 MOVE                             R22 R13
      474 JUMP                             ; [+1]
      475 LOADNIL                          R22
      476 SETTABLEKS                       R22 R21 K32 ["onActivated"]
      478 LOADK                            R22 K96 ["columns-tree row align-y-center"]
      479 SETTABLEKS                       R22 R21 K16 ["tag"]
      481 GETTABLEKS                       R23 R0 K7 ["onCreated"]
      483 JUMPIFNOT                        R23 ; [+2]
      484 LOADK                            R22 K97 ["node-creating"]
      485 JUMP                             ; [+6]
      486 LOADK                            R23 K98 ["node-%*"]
      487 MOVE                             R25 R2
      488 NAMECALL                         R23 R23 K13 ["format"]
      490 CALL                             R23 2 1
      491 MOVE                             R22 R23
      492 SETTABLEKS                       R22 R21 K34 ["testId"]
      494 MOVE                             R22 R1
      495 CALL                             R19 3 -1
      496 RETURN                           R19 -1

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
       52 GETTABLEKS                       R14 R15 K20 ["Contexts"]
       54 GETTABLEKS                       R13 R14 K21 ["DatamodelReference"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R15 R0 K19 ["Src"]
       61 GETTABLEKS                       R14 R15 K22 ["Types"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R17 R0 K19 ["Src"]
       68 GETTABLEKS                       R16 R17 K23 ["Hooks"]
       70 GETTABLEKS                       R15 R16 K24 ["useIcon"]
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
