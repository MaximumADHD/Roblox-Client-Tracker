PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCreated"]
        3 JUMPIFEQKNIL                     R0 ; [+17]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+14]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 JUMPIFNOT                        R0 ; [+10]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["current"]
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K1 ["current"]
       18 NAMECALL                         R0 R0 K2 ["focus"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCreateMenuItemSelected"]
        3 JUMPIFEQKNIL                     R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["onCreateMenuItemSelected"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMenu"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected id to be a string or number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RENAME"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["onEditMenuItemSelected"]
       11 JUMPIFEQKNIL                     R1 ; [+6]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["onEditMenuItemSelected"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 3
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
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
       40 GETTABLEKS                       R10 R10 K2 ["useRef"]
       42 LOADNIL                          R11
       43 CALL                             R10 1 1
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R11 R11 K7 ["useStagnatingState"]
       47 LOADB                            R12 0
       48 NEWTABLE                         R13 0 1
       50 GETTABLEKS                       R14 R0 K8 ["editMenu"]
       52 SETLIST                          R13 R14 1 [1]
       54 CALL                             R11 2 2
       55 GETUPVAL                         R13 3
       56 GETTABLEKS                       R13 R13 K7 ["useStagnatingState"]
       58 LOADB                            R14 0
       59 NEWTABLE                         R15 0 1
       61 GETTABLEKS                       R16 R0 K9 ["createMenu"]
       63 SETLIST                          R15 R16 1 [1]
       65 CALL                             R13 2 2
       66 GETUPVAL                         R15 0
       67 GETTABLEKS                       R15 R15 K10 ["useEffect"]
       69 NEWCLOSURE                       R16 P0
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R17 0 1
       75 MOVE                             R18 R5
       76 SETLIST                          R17 R18 1 [1]
       78 CALL                             R15 2 0
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R15 R15 K11 ["useEventCallback"]
       82 NEWCLOSURE                       R16 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R6
       87 CALL                             R15 1 1
       88 GETUPVAL                         R16 3
       89 GETTABLEKS                       R16 R16 K11 ["useEventCallback"]
       91 NEWCLOSURE                       R17 P2
       92 CAPTURE                          VAL R3
       93 CALL                             R16 1 1
       94 GETUPVAL                         R17 3
       95 GETTABLEKS                       R17 R17 K11 ["useEventCallback"]
       97 NEWCLOSURE                       R18 P3
       98 CAPTURE                          VAL R8
       99 CAPTURE                          UPVAL U4
      100 CALL                             R17 1 1
      101 GETUPVAL                         R18 3
      102 GETTABLEKS                       R18 R18 K11 ["useEventCallback"]
      104 NEWCLOSURE                       R19 P4
      105 CAPTURE                          VAL R0
      106 CALL                             R18 1 1
      107 GETUPVAL                         R19 3
      108 GETTABLEKS                       R19 R19 K11 ["useEventCallback"]
      110 NEWCLOSURE                       R20 P5
      111 CAPTURE                          VAL R0
      112 CALL                             R19 1 1
      113 GETUPVAL                         R20 3
      114 GETTABLEKS                       R20 R20 K11 ["useEventCallback"]
      116 NEWCLOSURE                       R21 P6
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R19
      120 CALL                             R20 1 1
      121 GETUPVAL                         R21 3
      122 GETTABLEKS                       R21 R21 K11 ["useEventCallback"]
      124 NEWCLOSURE                       R22 P7
      125 CAPTURE                          VAL R14
      126 CALL                             R21 1 1
      127 GETUPVAL                         R22 3
      128 GETTABLEKS                       R22 R22 K11 ["useEventCallback"]
      130 NEWCLOSURE                       R23 P8
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R14
      133 CALL                             R22 1 1
      134 GETUPVAL                         R23 3
      135 GETTABLEKS                       R23 R23 K11 ["useEventCallback"]
      137 NEWCLOSURE                       R24 P9
      138 CAPTURE                          VAL R12
      139 CALL                             R23 1 1
      140 GETUPVAL                         R24 3
      141 GETTABLEKS                       R24 R24 K11 ["useEventCallback"]
      143 NEWCLOSURE                       R25 P10
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R12
      148 CALL                             R24 1 1
      149 GETUPVAL                         R25 3
      150 GETTABLEKS                       R25 R25 K11 ["useEventCallback"]
      152 NEWCLOSURE                       R26 P11
      153 CAPTURE                          VAL R12
      154 CALL                             R25 1 1
      155 GETUPVAL                         R26 3
      156 GETTABLEKS                       R26 R26 K12 ["createNextOrder"]
      158 CALL                             R26 0 1
      159 LOADN                            R29 1
      160 GETTABLEKS                       R27 R0 K13 ["depth"]
      162 LOADN                            R28 1
      163 FORNPREP                         R27
      164 LOADK                            R31 K14 ["DepthMarker%*"]
      165 MOVE                             R33 R29
      166 NAMECALL                         R31 R31 K15 ["format"]
      168 CALL                             R31 2 1
      169 MOVE                             R30 R31
      170 GETUPVAL                         R31 0
      171 GETTABLEKS                       R31 R31 K16 ["createElement"]
      173 GETUPVAL                         R32 6
      174 DUPTABLE                         R33 K19 [{"LayoutOrder", "tag"}]
      175 MOVE                             R34 R26
      176 CALL                             R34 0 1
      177 SETTABLEKS                       R34 R33 K17 ["LayoutOrder"]
      179 LOADK                            R34 K20 ["spacer align-y-center align-x-center padding-left-small"]
      180 SETTABLEKS                       R34 R33 K18 ["tag"]
      182 DUPTABLE                         R34 K22 [{"Divider"}]
      183 GETUPVAL                         R35 0
      184 GETTABLEKS                       R35 R35 K16 ["createElement"]
      186 GETUPVAL                         R36 7
      187 DUPTABLE                         R37 K24 [{"orientation", "tag"}]
      188 GETUPVAL                         R38 8
      189 GETTABLEKS                       R38 R38 K25 ["Enums"]
      191 GETTABLEKS                       R38 R38 K26 ["Orientation"]
      193 GETTABLEKS                       R38 R38 K27 ["Vertical"]
      195 SETTABLEKS                       R38 R37 K23 ["orientation"]
      197 LOADK                            R38 K28 ["auto-y"]
      198 SETTABLEKS                       R38 R37 K18 ["tag"]
      200 CALL                             R35 2 1
      201 SETTABLEKS                       R35 R34 K21 ["Divider"]
      203 CALL                             R31 3 1
      204 SETTABLE                         R31 R1 R30
      205 FORNLOOP                         R27
      206 GETTABLEKS                       R27 R0 K29 ["setExpanded"]
      208 JUMPIFNOT                        R27 ; [+52]
      209 GETUPVAL                         R27 0
      210 GETTABLEKS                       R27 R27 K16 ["createElement"]
      212 GETUPVAL                         R28 6
      213 DUPTABLE                         R29 K19 [{"LayoutOrder", "tag"}]
      214 MOVE                             R30 R26
      215 CALL                             R30 0 1
      216 SETTABLEKS                       R30 R29 K17 ["LayoutOrder"]
      218 LOADK                            R30 K20 ["spacer align-y-center align-x-center padding-left-small"]
      219 SETTABLEKS                       R30 R29 K18 ["tag"]
      221 DUPTABLE                         R30 K31 [{"IconButton"}]
      222 GETUPVAL                         R31 0
      223 GETTABLEKS                       R31 R31 K16 ["createElement"]
      225 GETUPVAL                         R32 9
      226 DUPTABLE                         R33 K35 [{"icon", "onActivated", "size", "testId"}]
      227 GETTABLEKS                       R35 R0 K36 ["expanded"]
      229 JUMPIFNOT                        R35 ; [+2]
      230 LOADK                            R34 K37 ["icons/actions/truncationCollapse_small"]
      231 JUMP                             ; [+1]
      232 LOADK                            R34 K38 ["icons/actions/truncationExpand_small"]
      233 SETTABLEKS                       R34 R33 K6 ["icon"]
      235 SETTABLEKS                       R18 R33 K32 ["onActivated"]
      237 GETUPVAL                         R34 8
      238 GETTABLEKS                       R34 R34 K25 ["Enums"]
      240 GETTABLEKS                       R34 R34 K39 ["InputSize"]
      242 GETTABLEKS                       R34 R34 K40 ["XSmall"]
      244 SETTABLEKS                       R34 R33 K33 ["size"]
      246 LOADK                            R35 K41 ["expand-%*"]
      247 GETTABLEKS                       R37 R0 K3 ["name"]
      249 NAMECALL                         R35 R35 K15 ["format"]
      251 CALL                             R35 2 1
      252 MOVE                             R34 R35
      253 SETTABLEKS                       R34 R33 K34 ["testId"]
      255 CALL                             R31 2 1
      256 SETTABLEKS                       R31 R30 K30 ["IconButton"]
      258 CALL                             R27 3 1
      259 SETTABLEKS                       R27 R1 K42 ["ExpandButton"]
      261 DUPTABLE                         R27 K46 [{"ClassImage", "InstanceName", "AddButton"}]
      262 MOVE                             R28 R9
      263 JUMPIFNOT                        R28 ; [+41]
      264 GETUPVAL                         R28 0
      265 GETTABLEKS                       R28 R28 K16 ["createElement"]
      267 GETUPVAL                         R29 6
      268 DUPTABLE                         R30 K19 [{"LayoutOrder", "tag"}]
      269 MOVE                             R31 R26
      270 CALL                             R31 0 1
      271 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      273 LOADK                            R31 K47 ["spacer align-y-center align-x-center"]
      274 SETTABLEKS                       R31 R30 K18 ["tag"]
      276 DUPTABLE                         R31 K49 [{"Image"}]
      277 GETUPVAL                         R32 0
      278 GETTABLEKS                       R32 R32 K16 ["createElement"]
      280 GETUPVAL                         R33 10
      281 DUPTABLE                         R34 K53 [{"Image", "imageRectOffset", "imageRectSize", "ScaleType", "tag"}]
      282 GETTABLEKS                       R35 R9 K48 ["Image"]
      284 SETTABLEKS                       R35 R34 K48 ["Image"]
      286 GETTABLEKS                       R35 R9 K54 ["ImageRectOffset"]
      288 SETTABLEKS                       R35 R34 K50 ["imageRectOffset"]
      290 GETTABLEKS                       R35 R9 K55 ["ImageRectSize"]
      292 SETTABLEKS                       R35 R34 K51 ["imageRectSize"]
      294 GETIMPORT                        R35 K58 [Enum.ScaleType.Fit]
      296 SETTABLEKS                       R35 R34 K52 ["ScaleType"]
      298 LOADK                            R35 K59 ["spacer icon align-y-center align-x-center"]
      299 SETTABLEKS                       R35 R34 K18 ["tag"]
      301 CALL                             R32 2 1
      302 SETTABLEKS                       R32 R31 K48 ["Image"]
      304 CALL                             R28 3 1
      305 SETTABLEKS                       R28 R27 K43 ["ClassImage"]
      307 GETUPVAL                         R28 0
      308 GETTABLEKS                       R28 R28 K16 ["createElement"]
      310 GETUPVAL                         R29 6
      311 DUPTABLE                         R30 K19 [{"LayoutOrder", "tag"}]
      312 MOVE                             R31 R26
      313 CALL                             R31 0 1
      314 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      316 LOADK                            R31 K60 ["row align-y-center grow size-0-full"]
      317 SETTABLEKS                       R31 R30 K18 ["tag"]
      319 DUPTABLE                         R31 K62 [{"Text"}]
      320 JUMPIFNOT                        R5 ; [+45]
      321 GETUPVAL                         R32 0
      322 GETTABLEKS                       R32 R32 K16 ["createElement"]
      324 GETUPVAL                         R33 11
      325 DUPTABLE                         R34 K70 [{"label", "textBoxRef", "onChanged", "onReturnPressed", "size", "testId", "text", "textInputType", "width"}]
      326 LOADK                            R35 K71 [""]
      327 SETTABLEKS                       R35 R34 K63 ["label"]
      329 SETTABLEKS                       R4 R34 K64 ["textBoxRef"]
      331 SETTABLEKS                       R16 R34 K65 ["onChanged"]
      333 SETTABLEKS                       R15 R34 K66 ["onReturnPressed"]
      335 GETUPVAL                         R35 12
      336 GETTABLEKS                       R35 R35 K72 ["Small"]
      338 SETTABLEKS                       R35 R34 K33 ["size"]
      340 LOADK                            R36 K73 ["rename-%*"]
      341 GETTABLEKS                       R38 R0 K3 ["name"]
      343 NAMECALL                         R36 R36 K15 ["format"]
      345 CALL                             R36 2 1
      346 MOVE                             R35 R36
      347 SETTABLEKS                       R35 R34 K34 ["testId"]
      349 GETTABLEKS                       R35 R3 K74 ["current"]
      351 SETTABLEKS                       R35 R34 K67 ["text"]
      353 GETIMPORT                        R35 K77 [Enum.TextInputType.Default]
      355 SETTABLEKS                       R35 R34 K68 ["textInputType"]
      357 GETIMPORT                        R35 K80 [UDim.new]
      359 LOADN                            R36 1
      360 LOADN                            R37 251
      361 CALL                             R35 2 1
      362 SETTABLEKS                       R35 R34 K69 ["width"]
      364 CALL                             R32 2 1
      365 JUMP                             ; [+13]
      366 GETUPVAL                         R32 0
      367 GETTABLEKS                       R32 R32 K16 ["createElement"]
      369 GETUPVAL                         R33 13
      370 DUPTABLE                         R34 K81 [{"tag", "Text"}]
      371 LOADK                            R35 K82 ["label text-body-medium auto-xy"]
      372 SETTABLEKS                       R35 R34 K18 ["tag"]
      374 GETTABLEKS                       R35 R0 K3 ["name"]
      376 SETTABLEKS                       R35 R34 K61 ["Text"]
      378 CALL                             R32 2 1
      379 SETTABLEKS                       R32 R31 K61 ["Text"]
      381 CALL                             R28 3 1
      382 SETTABLEKS                       R28 R27 K44 ["InstanceName"]
      384 JUMPIF                           R13 ; [+7]
      385 LOADB                            R28 0
      386 GETTABLEKS                       R29 R0 K83 ["onCreateMenuItemSelected"]
      388 JUMPIFEQKNIL                     R29 ; [+120]
      390 MOVE                             R28 R7
      391 JUMPIFNOT                        R28 ; [+117]
      392 GETUPVAL                         R28 0
      393 GETTABLEKS                       R28 R28 K16 ["createElement"]
      395 GETUPVAL                         R29 6
      396 DUPTABLE                         R30 K19 [{"LayoutOrder", "tag"}]
      397 MOVE                             R31 R26
      398 CALL                             R31 0 1
      399 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      401 LOADK                            R31 K84 ["spacer align-y-center align-x-center padding-small"]
      402 SETTABLEKS                       R31 R30 K18 ["tag"]
      404 DUPTABLE                         R31 K86 [{"PlusControl"}]
      405 GETTABLEKS                       R33 R0 K9 ["createMenu"]
      407 JUMPIFEQKNIL                     R33 ; [+69]
      409 GETUPVAL                         R32 0
      410 GETTABLEKS                       R32 R32 K16 ["createElement"]
      412 GETUPVAL                         R33 14
      413 DUPTABLE                         R34 K92 [{"align", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      414 GETUPVAL                         R35 15
      415 GETTABLEKS                       R35 R35 K93 ["Start"]
      417 SETTABLEKS                       R35 R34 K87 ["align"]
      419 SETTABLEKS                       R13 R34 K88 ["isOpen"]
      421 GETTABLEKS                       R35 R0 K9 ["createMenu"]
      423 SETTABLEKS                       R35 R34 K89 ["items"]
      425 SETTABLEKS                       R22 R34 K32 ["onActivated"]
      427 SETTABLEKS                       R21 R34 K90 ["onPressedOutside"]
      429 GETUPVAL                         R35 16
      430 GETTABLEKS                       R35 R35 K94 ["Right"]
      432 SETTABLEKS                       R35 R34 K91 ["side"]
      434 LOADK                            R36 K95 ["create-menu-%*"]
      435 GETTABLEKS                       R38 R0 K3 ["name"]
      437 NAMECALL                         R36 R36 K15 ["format"]
      439 CALL                             R36 2 1
      440 MOVE                             R35 R36
      441 SETTABLEKS                       R35 R34 K34 ["testId"]
      443 DUPTABLE                         R35 K97 [{"Plus"}]
      444 GETUPVAL                         R36 0
      445 GETTABLEKS                       R36 R36 K16 ["createElement"]
      447 GETUPVAL                         R37 9
      448 DUPTABLE                         R38 K35 [{"icon", "onActivated", "size", "testId"}]
      449 LOADK                            R39 K98 ["plus-small"]
      450 SETTABLEKS                       R39 R38 K6 ["icon"]
      452 SETTABLEKS                       R20 R38 K32 ["onActivated"]
      454 GETUPVAL                         R39 8
      455 GETTABLEKS                       R39 R39 K25 ["Enums"]
      457 GETTABLEKS                       R39 R39 K99 ["IconSize"]
      459 GETTABLEKS                       R39 R39 K72 ["Small"]
      461 SETTABLEKS                       R39 R38 K33 ["size"]
      463 LOADK                            R40 K100 ["add-%*"]
      464 GETTABLEKS                       R42 R0 K3 ["name"]
      466 NAMECALL                         R40 R40 K15 ["format"]
      468 CALL                             R40 2 1
      469 MOVE                             R39 R40
      470 SETTABLEKS                       R39 R38 K34 ["testId"]
      472 CALL                             R36 2 1
      473 SETTABLEKS                       R36 R35 K96 ["Plus"]
      475 CALL                             R32 3 1
      476 JUMP                             ; [+29]
      477 GETUPVAL                         R32 0
      478 GETTABLEKS                       R32 R32 K16 ["createElement"]
      480 GETUPVAL                         R33 9
      481 DUPTABLE                         R34 K35 [{"icon", "onActivated", "size", "testId"}]
      482 LOADK                            R35 K98 ["plus-small"]
      483 SETTABLEKS                       R35 R34 K6 ["icon"]
      485 SETTABLEKS                       R20 R34 K32 ["onActivated"]
      487 GETUPVAL                         R35 8
      488 GETTABLEKS                       R35 R35 K25 ["Enums"]
      490 GETTABLEKS                       R35 R35 K99 ["IconSize"]
      492 GETTABLEKS                       R35 R35 K72 ["Small"]
      494 SETTABLEKS                       R35 R34 K33 ["size"]
      496 LOADK                            R36 K100 ["add-%*"]
      497 GETTABLEKS                       R38 R0 K3 ["name"]
      499 NAMECALL                         R36 R36 K15 ["format"]
      501 CALL                             R36 2 1
      502 MOVE                             R35 R36
      503 SETTABLEKS                       R35 R34 K34 ["testId"]
      505 CALL                             R32 2 1
      506 SETTABLEKS                       R32 R31 K85 ["PlusControl"]
      508 CALL                             R28 3 1
      509 SETTABLEKS                       R28 R27 K45 ["AddButton"]
      511 GETTABLEKS                       R28 R0 K13 ["depth"]
      513 LOADN                            R29 0
      514 JUMPIFNOTLT                      R29 R28 ; [+56]
      516 GETUPVAL                         R28 0
      517 GETTABLEKS                       R28 R28 K16 ["createElement"]
      519 GETUPVAL                         R29 6
      520 DUPTABLE                         R30 K19 [{"LayoutOrder", "tag"}]
      521 MOVE                             R31 R26
      522 CALL                             R31 0 1
      523 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      525 LOADK                            R31 K101 ["col grow align-y-center size-0-full"]
      526 SETTABLEKS                       R31 R30 K18 ["tag"]
      528 DUPTABLE                         R31 K103 [{"LabelContainer", "Divider"}]
      529 GETUPVAL                         R32 0
      530 GETTABLEKS                       R32 R32 K16 ["createElement"]
      532 GETUPVAL                         R33 6
      533 DUPTABLE                         R34 K19 [{"LayoutOrder", "tag"}]
      534 LOADN                            R35 1
      535 SETTABLEKS                       R35 R34 K17 ["LayoutOrder"]
      537 LOADK                            R35 K104 ["row align-y-center size-full-full padding-right-small"]
      538 SETTABLEKS                       R35 R34 K18 ["tag"]
      540 MOVE                             R35 R27
      541 CALL                             R32 3 1
      542 SETTABLEKS                       R32 R31 K102 ["LabelContainer"]
      544 GETUPVAL                         R32 0
      545 GETTABLEKS                       R32 R32 K16 ["createElement"]
      547 GETUPVAL                         R33 7
      548 DUPTABLE                         R34 K105 [{"LayoutOrder", "orientation", "tag"}]
      549 LOADN                            R35 2
      550 SETTABLEKS                       R35 R34 K17 ["LayoutOrder"]
      552 GETUPVAL                         R35 8
      553 GETTABLEKS                       R35 R35 K25 ["Enums"]
      555 GETTABLEKS                       R35 R35 K26 ["Orientation"]
      557 GETTABLEKS                       R35 R35 K106 ["Horizontal"]
      559 SETTABLEKS                       R35 R34 K23 ["orientation"]
      561 LOADK                            R35 K107 ["auto-x"]
      562 SETTABLEKS                       R35 R34 K18 ["tag"]
      564 CALL                             R32 2 1
      565 SETTABLEKS                       R32 R31 K21 ["Divider"]
      567 CALL                             R28 3 1
      568 SETTABLEKS                       R28 R1 K108 ["StackedInstanceLabel"]
      570 JUMP                             ; [+16]
      571 GETUPVAL                         R28 0
      572 GETTABLEKS                       R28 R28 K16 ["createElement"]
      574 GETUPVAL                         R29 6
      575 DUPTABLE                         R30 K19 [{"LayoutOrder", "tag"}]
      576 MOVE                             R31 R26
      577 CALL                             R31 0 1
      578 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      580 LOADK                            R31 K109 ["row grow align-y-center size-0-full padding-right-small"]
      581 SETTABLEKS                       R31 R30 K18 ["tag"]
      583 MOVE                             R31 R27
      584 CALL                             R28 3 1
      585 SETTABLEKS                       R28 R1 K102 ["LabelContainer"]
      587 GETTABLEKS                       R29 R0 K8 ["editMenu"]
      589 JUMPIFNOT                        R29 ; [+33]
      590 GETUPVAL                         R28 0
      591 GETTABLEKS                       R28 R28 K16 ["createElement"]
      593 GETUPVAL                         R29 14
      594 DUPTABLE                         R30 K111 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      595 SETTABLEKS                       R10 R30 K110 ["anchorRef"]
      597 SETTABLEKS                       R11 R30 K88 ["isOpen"]
      599 GETTABLEKS                       R31 R0 K8 ["editMenu"]
      601 SETTABLEKS                       R31 R30 K89 ["items"]
      603 SETTABLEKS                       R24 R30 K32 ["onActivated"]
      605 SETTABLEKS                       R23 R30 K90 ["onPressedOutside"]
      607 GETUPVAL                         R31 16
      608 GETTABLEKS                       R31 R31 K94 ["Right"]
      610 SETTABLEKS                       R31 R30 K91 ["side"]
      612 LOADK                            R32 K112 ["edit-menu-%*"]
      613 GETTABLEKS                       R34 R0 K3 ["name"]
      615 NAMECALL                         R32 R32 K15 ["format"]
      617 CALL                             R32 2 1
      618 MOVE                             R31 R32
      619 SETTABLEKS                       R31 R30 K34 ["testId"]
      621 CALL                             R28 2 1
      622 JUMP                             ; [+1]
      623 LOADNIL                          R28
      624 SETTABLEKS                       R28 R1 K113 ["EditMenu"]
      626 GETUPVAL                         R28 0
      627 GETTABLEKS                       R28 R28 K16 ["createElement"]
      629 GETUPVAL                         R29 6
      630 DUPTABLE                         R30 K117 [{"LayoutOrder", "onStateChanged", "onSecondaryActivated", "ref", "tag", "testId"}]
      631 LOADN                            R31 255
      632 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      634 SETTABLEKS                       R17 R30 K114 ["onStateChanged"]
      636 GETTABLEKS                       R32 R0 K8 ["editMenu"]
      638 JUMPIFEQKNIL                     R32 ; [+9]
      640 GETTABLEKS                       R33 R0 K8 ["editMenu"]
      642 LENGTH                           R32 R33
      643 LOADN                            R33 0
      644 JUMPIFNOTLT                      R33 R32 ; [+3]
      646 MOVE                             R31 R25
      647 JUMP                             ; [+1]
      648 LOADNIL                          R31
      649 SETTABLEKS                       R31 R30 K115 ["onSecondaryActivated"]
      651 SETTABLEKS                       R10 R30 K116 ["ref"]
      653 LOADK                            R31 K118 ["columns-tree row align-y-center"]
      654 SETTABLEKS                       R31 R30 K18 ["tag"]
      656 GETTABLEKS                       R32 R0 K5 ["onCreated"]
      658 JUMPIFNOT                        R32 ; [+2]
      659 LOADK                            R31 K119 ["node-creating"]
      660 JUMP                             ; [+7]
      661 LOADK                            R32 K120 ["node-%*"]
      662 GETTABLEKS                       R34 R0 K3 ["name"]
      664 NAMECALL                         R32 R32 K15 ["format"]
      666 CALL                             R32 2 1
      667 MOVE                             R31 R32
      668 SETTABLEKS                       R31 R30 K34 ["testId"]
      670 MOVE                             R31 R1
      671 CALL                             R28 3 1
      672 RETURN                           R28 1

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
       42 GETTABLEKS                       R9 R3 K16 ["Menu"]
       44 GETTABLEKS                       R10 R3 K10 ["Enums"]
       46 GETTABLEKS                       R10 R10 K17 ["PopoverAlign"]
       48 GETTABLEKS                       R11 R3 K10 ["Enums"]
       50 GETTABLEKS                       R11 R11 K18 ["PopoverSide"]
       52 GETTABLEKS                       R12 R3 K19 ["Text"]
       54 GETTABLEKS                       R13 R3 K20 ["TextInput"]
       56 GETTABLEKS                       R14 R3 K21 ["View"]
       58 GETIMPORT                        R15 K5 [require]
       60 GETTABLEKS                       R16 R0 K22 ["Src"]
       62 GETTABLEKS                       R16 R16 K23 ["Contexts"]
       64 GETTABLEKS                       R16 R16 K24 ["DatamodelReference"]
       66 CALL                             R15 1 1
       67 GETIMPORT                        R16 K5 [require]
       69 GETTABLEKS                       R17 R0 K22 ["Src"]
       71 GETTABLEKS                       R17 R17 K25 ["Util"]
       73 GETTABLEKS                       R17 R17 K26 ["Constants"]
       75 GETTABLEKS                       R17 R17 K27 ["MenuIdentifiers"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K5 [require]
       80 GETTABLEKS                       R18 R0 K22 ["Src"]
       82 GETTABLEKS                       R18 R18 K28 ["Types"]
       84 CALL                             R17 1 1
       85 GETIMPORT                        R18 K5 [require]
       87 GETTABLEKS                       R19 R0 K22 ["Src"]
       89 GETTABLEKS                       R19 R19 K29 ["Hooks"]
       91 GETTABLEKS                       R19 R19 K30 ["useIcon"]
       93 CALL                             R18 1 1
       94 DUPCLOSURE                       R19 K31 [PROTO_12]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R11
      112 RETURN                           R19 1
