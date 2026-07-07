PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCreateMenuItemSelected"]
        3 JUMPIFEQKNIL                     R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["onCreateMenuItemSelected"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMenu"]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R4 0 1
       10 GETTABLEKS                       R5 R0 K1 ["name"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K2 ["useContext"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["useRef"]
       25 GETTABLEKS                       R5 R0 K1 ["name"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K4 ["useRef"]
       31 LOADNIL                          R6
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K5 ["useState"]
       36 GETTABLEKS                       R8 R0 K6 ["onCreated"]
       38 JUMPIFNOTEQKNIL                  R8 ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 CALL                             R6 1 2
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K5 ["useState"]
       46 LOADB                            R9 0
       47 CALL                             R8 1 2
       48 GETUPVAL                         R10 3
       49 GETTABLEKS                       R11 R0 K7 ["icon"]
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K4 ["useRef"]
       55 LOADNIL                          R12
       56 CALL                             R11 1 1
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R12 R12 K8 ["useStagnatingState"]
       60 LOADB                            R13 0
       61 NEWTABLE                         R14 0 1
       63 GETTABLEKS                       R15 R0 K9 ["editMenu"]
       65 SETLIST                          R14 R15 1 [1]
       67 CALL                             R12 2 2
       68 GETUPVAL                         R14 4
       69 GETTABLEKS                       R14 R14 K8 ["useStagnatingState"]
       71 LOADB                            R15 0
       72 NEWTABLE                         R16 0 1
       74 GETTABLEKS                       R17 R0 K10 ["createMenu"]
       76 SETLIST                          R16 R17 1 [1]
       78 CALL                             R14 2 2
       79 GETUPVAL                         R16 0
       80 GETTABLEKS                       R16 R16 K11 ["useEffect"]
       82 NEWCLOSURE                       R17 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 NEWTABLE                         R18 0 1
       88 MOVE                             R19 R6
       89 SETLIST                          R18 R19 1 [1]
       91 CALL                             R16 2 0
       92 GETUPVAL                         R16 4
       93 GETTABLEKS                       R16 R16 K12 ["useEventCallback"]
       95 NEWCLOSURE                       R17 P2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R7
      100 CALL                             R16 1 1
      101 GETUPVAL                         R17 4
      102 GETTABLEKS                       R17 R17 K12 ["useEventCallback"]
      104 NEWCLOSURE                       R18 P3
      105 CAPTURE                          VAL R4
      106 CALL                             R17 1 1
      107 GETUPVAL                         R18 4
      108 GETTABLEKS                       R18 R18 K12 ["useEventCallback"]
      110 NEWCLOSURE                       R19 P4
      111 CAPTURE                          VAL R9
      112 CAPTURE                          UPVAL U5
      113 CALL                             R18 1 1
      114 GETUPVAL                         R19 4
      115 GETTABLEKS                       R19 R19 K12 ["useEventCallback"]
      117 NEWCLOSURE                       R20 P5
      118 CAPTURE                          VAL R0
      119 CALL                             R19 1 1
      120 GETUPVAL                         R20 4
      121 GETTABLEKS                       R20 R20 K12 ["useEventCallback"]
      123 NEWCLOSURE                       R21 P6
      124 CAPTURE                          VAL R0
      125 CALL                             R20 1 1
      126 GETUPVAL                         R21 4
      127 GETTABLEKS                       R21 R21 K12 ["useEventCallback"]
      129 NEWCLOSURE                       R22 P7
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R20
      134 CALL                             R21 1 1
      135 GETUPVAL                         R22 4
      136 GETTABLEKS                       R22 R22 K12 ["useEventCallback"]
      138 NEWCLOSURE                       R23 P8
      139 CAPTURE                          VAL R15
      140 CALL                             R22 1 1
      141 GETUPVAL                         R23 4
      142 GETTABLEKS                       R23 R23 K12 ["useEventCallback"]
      144 NEWCLOSURE                       R24 P9
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R15
      147 CALL                             R23 1 1
      148 GETUPVAL                         R24 4
      149 GETTABLEKS                       R24 R24 K12 ["useEventCallback"]
      151 NEWCLOSURE                       R25 P10
      152 CAPTURE                          VAL R13
      153 CALL                             R24 1 1
      154 GETUPVAL                         R25 4
      155 GETTABLEKS                       R25 R25 K12 ["useEventCallback"]
      157 NEWCLOSURE                       R26 P11
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R13
      162 CALL                             R25 1 1
      163 GETUPVAL                         R26 4
      164 GETTABLEKS                       R26 R26 K12 ["useEventCallback"]
      166 NEWCLOSURE                       R27 P12
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R15
      169 CALL                             R26 1 1
      170 GETUPVAL                         R27 4
      171 GETTABLEKS                       R27 R27 K13 ["createNextOrder"]
      173 CALL                             R27 0 1
      174 LOADN                            R30 1
      175 GETTABLEKS                       R28 R0 K14 ["depth"]
      177 LOADN                            R29 1
      178 FORNPREP                         R28
      179 LOADK                            R32 K15 ["DepthMarker%*"]
      180 MOVE                             R34 R30
      181 NAMECALL                         R32 R32 K16 ["format"]
      183 CALL                             R32 2 1
      184 MOVE                             R31 R32
      185 GETUPVAL                         R32 0
      186 GETTABLEKS                       R32 R32 K17 ["createElement"]
      188 GETUPVAL                         R33 7
      189 DUPTABLE                         R34 K21 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      190 MOVE                             R35 R27
      191 CALL                             R35 0 1
      192 SETTABLEKS                       R35 R34 K18 ["LayoutOrder"]
      194 DUPTABLE                         R35 K23 [{"Divider"}]
      195 GETUPVAL                         R36 0
      196 GETTABLEKS                       R36 R36 K17 ["createElement"]
      198 GETUPVAL                         R37 8
      199 DUPTABLE                         R38 K26 [{["orientation"], ["tag"] = "auto-y"}]
      200 GETUPVAL                         R39 9
      201 GETTABLEKS                       R39 R39 K27 ["Enums"]
      203 GETTABLEKS                       R39 R39 K28 ["Orientation"]
      205 GETTABLEKS                       R39 R39 K29 ["Vertical"]
      207 SETTABLEKS                       R39 R38 K24 ["orientation"]
      209 CALL                             R36 2 1
      210 SETTABLEKS                       R36 R35 K22 ["Divider"]
      212 CALL                             R32 3 1
      213 SETTABLE                         R32 R1 R31
      214 FORNLOOP                         R28
      215 GETUPVAL                         R28 0
      216 GETTABLEKS                       R28 R28 K17 ["createElement"]
      218 GETUPVAL                         R29 7
      219 DUPTABLE                         R30 K21 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      220 MOVE                             R31 R27
      221 CALL                             R31 0 1
      222 SETTABLEKS                       R31 R30 K18 ["LayoutOrder"]
      224 DUPTABLE                         R31 K31 [{"IconButton"}]
      225 GETTABLEKS                       R32 R0 K32 ["setExpanded"]
      227 JUMPIFNOT                        R32 ; [+33]
      228 GETUPVAL                         R32 0
      229 GETTABLEKS                       R32 R32 K17 ["createElement"]
      231 GETUPVAL                         R33 10
      232 DUPTABLE                         R34 K36 [{"icon", "onActivated", "size", "testId"}]
      233 GETTABLEKS                       R36 R0 K37 ["expanded"]
      235 JUMPIFNOT                        R36 ; [+2]
      236 LOADK                            R35 K38 ["icons/actions/truncationCollapse_small"]
      237 JUMP                             ; [+1]
      238 LOADK                            R35 K39 ["icons/actions/truncationExpand_small"]
      239 SETTABLEKS                       R35 R34 K7 ["icon"]
      241 SETTABLEKS                       R19 R34 K33 ["onActivated"]
      243 GETUPVAL                         R35 9
      244 GETTABLEKS                       R35 R35 K27 ["Enums"]
      246 GETTABLEKS                       R35 R35 K40 ["InputSize"]
      248 GETTABLEKS                       R35 R35 K41 ["XSmall"]
      250 SETTABLEKS                       R35 R34 K34 ["size"]
      252 LOADK                            R36 K42 ["expand-%*"]
      253 MOVE                             R38 R2
      254 NAMECALL                         R36 R36 K16 ["format"]
      256 CALL                             R36 2 1
      257 MOVE                             R35 R36
      258 SETTABLEKS                       R35 R34 K35 ["testId"]
      260 CALL                             R32 2 1
      261 SETTABLEKS                       R32 R31 K30 ["IconButton"]
      263 CALL                             R28 3 1
      264 SETTABLEKS                       R28 R1 K43 ["ExpandButton"]
      266 DUPTABLE                         R28 K47 [{"ClassImage", "InstanceName", "AddButton"}]
      267 MOVE                             R29 R10
      268 JUMPIFNOT                        R29 ; [+35]
      269 GETUPVAL                         R29 0
      270 GETTABLEKS                       R29 R29 K17 ["createElement"]
      272 GETUPVAL                         R30 7
      273 DUPTABLE                         R31 K21 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      274 MOVE                             R32 R27
      275 CALL                             R32 0 1
      276 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      278 DUPTABLE                         R32 K49 [{"Image"}]
      279 GETUPVAL                         R33 0
      280 GETTABLEKS                       R33 R33 K17 ["createElement"]
      282 GETUPVAL                         R34 11
      283 DUPTABLE                         R35 K54 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["ScaleType"], ["tag"] = "icon spacer align-x-center align-y-center"}]
      284 GETTABLEKS                       R36 R10 K48 ["Image"]
      286 SETTABLEKS                       R36 R35 K48 ["Image"]
      288 GETTABLEKS                       R36 R10 K55 ["ImageRectOffset"]
      290 SETTABLEKS                       R36 R35 K50 ["imageRectOffset"]
      292 GETTABLEKS                       R36 R10 K56 ["ImageRectSize"]
      294 SETTABLEKS                       R36 R35 K51 ["imageRectSize"]
      296 GETIMPORT                        R36 K59 [Enum.ScaleType.Fit]
      298 SETTABLEKS                       R36 R35 K52 ["ScaleType"]
      300 CALL                             R33 2 1
      301 SETTABLEKS                       R33 R32 K48 ["Image"]
      303 CALL                             R29 3 1
      304 SETTABLEKS                       R29 R28 K44 ["ClassImage"]
      306 GETUPVAL                         R29 0
      307 GETTABLEKS                       R29 R29 K17 ["createElement"]
      309 GETUPVAL                         R30 7
      310 DUPTABLE                         R31 K61 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-left-small"}]
      311 MOVE                             R32 R27
      312 CALL                             R32 0 1
      313 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      315 DUPTABLE                         R32 K63 [{"Text"}]
      316 JUMPIFNOT                        R6 ; [+41]
      317 GETUPVAL                         R33 0
      318 GETTABLEKS                       R33 R33 K17 ["createElement"]
      320 GETUPVAL                         R34 12
      321 DUPTABLE                         R35 K72 [{["label"] = "", ["textBoxRef"], ["onChanged"], ["onFocusLost"], ["size"], ["testId"], ["text"], ["textInputType"], ["width"]}]
      322 SETTABLEKS                       R5 R35 K66 ["textBoxRef"]
      324 SETTABLEKS                       R17 R35 K67 ["onChanged"]
      326 SETTABLEKS                       R16 R35 K68 ["onFocusLost"]
      328 GETUPVAL                         R36 13
      329 GETTABLEKS                       R36 R36 K73 ["Small"]
      331 SETTABLEKS                       R36 R35 K34 ["size"]
      333 LOADK                            R37 K74 ["rename-%*"]
      334 MOVE                             R39 R2
      335 NAMECALL                         R37 R37 K16 ["format"]
      337 CALL                             R37 2 1
      338 MOVE                             R36 R37
      339 SETTABLEKS                       R36 R35 K35 ["testId"]
      341 GETTABLEKS                       R36 R4 K75 ["current"]
      343 SETTABLEKS                       R36 R35 K69 ["text"]
      345 GETIMPORT                        R36 K78 [Enum.TextInputType.Default]
      347 SETTABLEKS                       R36 R35 K70 ["textInputType"]
      349 GETIMPORT                        R36 K81 [UDim.new]
      351 LOADN                            R37 1
      352 LOADN                            R38 -5
      353 CALL                             R36 2 1
      354 SETTABLEKS                       R36 R35 K71 ["width"]
      356 CALL                             R33 2 1
      357 JUMP                             ; [+10]
      358 GETUPVAL                         R33 0
      359 GETTABLEKS                       R33 R33 K17 ["createElement"]
      361 GETUPVAL                         R34 14
      362 DUPTABLE                         R35 K83 [{["tag"] = "label auto-xy text-body-medium", ["Text"]}]
      363 GETTABLEKS                       R36 R0 K1 ["name"]
      365 SETTABLEKS                       R36 R35 K62 ["Text"]
      367 CALL                             R33 2 1
      368 SETTABLEKS                       R33 R32 K62 ["Text"]
      370 CALL                             R29 3 1
      371 SETTABLEKS                       R29 R28 K45 ["InstanceName"]
      373 JUMPIF                           R14 ; [+7]
      374 LOADB                            R29 0
      375 GETTABLEKS                       R30 R0 K84 ["onCreateMenuItemSelected"]
      377 JUMPIFEQKNIL                     R30 ; [+108]
      379 MOVE                             R29 R8
      380 JUMPIFNOT                        R29 ; [+105]
      381 GETUPVAL                         R29 0
      382 GETTABLEKS                       R29 R29 K17 ["createElement"]
      384 GETUPVAL                         R30 7
      385 DUPTABLE                         R31 K86 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-small"}]
      386 MOVE                             R32 R27
      387 CALL                             R32 0 1
      388 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      390 DUPTABLE                         R32 K88 [{"PlusControl"}]
      391 GETTABLEKS                       R34 R0 K10 ["createMenu"]
      393 JUMPIFEQKNIL                     R34 ; [+64]
      395 GETUPVAL                         R33 0
      396 GETTABLEKS                       R33 R33 K17 ["createElement"]
      398 GETUPVAL                         R34 15
      399 DUPTABLE                         R35 K94 [{"align", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      400 GETUPVAL                         R36 16
      401 GETTABLEKS                       R36 R36 K95 ["Start"]
      403 SETTABLEKS                       R36 R35 K89 ["align"]
      405 SETTABLEKS                       R14 R35 K90 ["isOpen"]
      407 GETTABLEKS                       R36 R0 K10 ["createMenu"]
      409 SETTABLEKS                       R36 R35 K91 ["items"]
      411 SETTABLEKS                       R23 R35 K33 ["onActivated"]
      413 SETTABLEKS                       R22 R35 K92 ["onPressedOutside"]
      415 GETUPVAL                         R36 17
      416 GETTABLEKS                       R36 R36 K96 ["Right"]
      418 SETTABLEKS                       R36 R35 K93 ["side"]
      420 LOADK                            R37 K97 ["create-menu-%*"]
      421 MOVE                             R39 R2
      422 NAMECALL                         R37 R37 K16 ["format"]
      424 CALL                             R37 2 1
      425 MOVE                             R36 R37
      426 SETTABLEKS                       R36 R35 K35 ["testId"]
      428 DUPTABLE                         R36 K99 [{"Plus"}]
      429 GETUPVAL                         R37 0
      430 GETTABLEKS                       R37 R37 K17 ["createElement"]
      432 GETUPVAL                         R38 10
      433 DUPTABLE                         R39 K101 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      434 SETTABLEKS                       R21 R39 K33 ["onActivated"]
      436 GETUPVAL                         R40 9
      437 GETTABLEKS                       R40 R40 K27 ["Enums"]
      439 GETTABLEKS                       R40 R40 K102 ["IconSize"]
      441 GETTABLEKS                       R40 R40 K73 ["Small"]
      443 SETTABLEKS                       R40 R39 K34 ["size"]
      445 LOADK                            R41 K103 ["add-%*"]
      446 MOVE                             R43 R2
      447 NAMECALL                         R41 R41 K16 ["format"]
      449 CALL                             R41 2 1
      450 MOVE                             R40 R41
      451 SETTABLEKS                       R40 R39 K35 ["testId"]
      453 CALL                             R37 2 1
      454 SETTABLEKS                       R37 R36 K98 ["Plus"]
      456 CALL                             R33 3 1
      457 JUMP                             ; [+25]
      458 GETUPVAL                         R33 0
      459 GETTABLEKS                       R33 R33 K17 ["createElement"]
      461 GETUPVAL                         R34 10
      462 DUPTABLE                         R35 K101 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      463 SETTABLEKS                       R21 R35 K33 ["onActivated"]
      465 GETUPVAL                         R36 9
      466 GETTABLEKS                       R36 R36 K27 ["Enums"]
      468 GETTABLEKS                       R36 R36 K102 ["IconSize"]
      470 GETTABLEKS                       R36 R36 K73 ["Small"]
      472 SETTABLEKS                       R36 R35 K34 ["size"]
      474 LOADK                            R37 K103 ["add-%*"]
      475 MOVE                             R39 R2
      476 NAMECALL                         R37 R37 K16 ["format"]
      478 CALL                             R37 2 1
      479 MOVE                             R36 R37
      480 SETTABLEKS                       R36 R35 K35 ["testId"]
      482 CALL                             R33 2 1
      483 SETTABLEKS                       R33 R32 K87 ["PlusControl"]
      485 CALL                             R29 3 1
      486 SETTABLEKS                       R29 R28 K46 ["AddButton"]
      488 GETTABLEKS                       R29 R0 K14 ["depth"]
      490 LOADN                            R30 0
      491 JUMPIFNOTLT                      R30 R29 ; [+41]
      493 GETUPVAL                         R29 0
      494 GETTABLEKS                       R29 R29 K17 ["createElement"]
      496 GETUPVAL                         R30 7
      497 DUPTABLE                         R31 K105 [{["LayoutOrder"], ["tag"] = "col align-y-center grow size-0-full"}]
      498 MOVE                             R32 R27
      499 CALL                             R32 0 1
      500 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      502 DUPTABLE                         R32 K107 [{"LabelContainer", "Divider"}]
      503 GETUPVAL                         R33 0
      504 GETTABLEKS                       R33 R33 K17 ["createElement"]
      506 GETUPVAL                         R34 7
      507 DUPTABLE                         R35 K110 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-full padding-right-small"}]
      508 MOVE                             R36 R28
      509 CALL                             R33 3 1
      510 SETTABLEKS                       R33 R32 K106 ["LabelContainer"]
      512 GETUPVAL                         R33 0
      513 GETTABLEKS                       R33 R33 K17 ["createElement"]
      515 GETUPVAL                         R34 8
      516 DUPTABLE                         R35 K113 [{["LayoutOrder"] = 2, ["orientation"], ["tag"] = "auto-x"}]
      517 GETUPVAL                         R36 9
      518 GETTABLEKS                       R36 R36 K27 ["Enums"]
      520 GETTABLEKS                       R36 R36 K28 ["Orientation"]
      522 GETTABLEKS                       R36 R36 K114 ["Horizontal"]
      524 SETTABLEKS                       R36 R35 K24 ["orientation"]
      526 CALL                             R33 2 1
      527 SETTABLEKS                       R33 R32 K22 ["Divider"]
      529 CALL                             R29 3 1
      530 SETTABLEKS                       R29 R1 K115 ["StackedInstanceLabel"]
      532 JUMP                             ; [+13]
      533 GETUPVAL                         R29 0
      534 GETTABLEKS                       R29 R29 K17 ["createElement"]
      536 GETUPVAL                         R30 7
      537 DUPTABLE                         R31 K117 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-right-small"}]
      538 MOVE                             R32 R27
      539 CALL                             R32 0 1
      540 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      542 MOVE                             R32 R28
      543 CALL                             R29 3 1
      544 SETTABLEKS                       R29 R1 K106 ["LabelContainer"]
      546 GETTABLEKS                       R30 R0 K9 ["editMenu"]
      548 JUMPIFNOT                        R30 ; [+32]
      549 GETUPVAL                         R29 0
      550 GETTABLEKS                       R29 R29 K17 ["createElement"]
      552 GETUPVAL                         R30 15
      553 DUPTABLE                         R31 K119 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      554 SETTABLEKS                       R11 R31 K118 ["anchorRef"]
      556 SETTABLEKS                       R12 R31 K90 ["isOpen"]
      558 GETTABLEKS                       R32 R0 K9 ["editMenu"]
      560 SETTABLEKS                       R32 R31 K91 ["items"]
      562 SETTABLEKS                       R25 R31 K33 ["onActivated"]
      564 SETTABLEKS                       R24 R31 K92 ["onPressedOutside"]
      566 GETUPVAL                         R32 17
      567 GETTABLEKS                       R32 R32 K96 ["Right"]
      569 SETTABLEKS                       R32 R31 K93 ["side"]
      571 LOADK                            R33 K120 ["edit-menu-%*"]
      572 MOVE                             R35 R2
      573 NAMECALL                         R33 R33 K16 ["format"]
      575 CALL                             R33 2 1
      576 MOVE                             R32 R33
      577 SETTABLEKS                       R32 R31 K35 ["testId"]
      579 CALL                             R29 2 1
      580 JUMP                             ; [+1]
      581 LOADNIL                          R29
      582 SETTABLEKS                       R29 R1 K121 ["EditMenu"]
      584 GETUPVAL                         R29 0
      585 GETTABLEKS                       R29 R29 K17 ["createElement"]
      587 GETUPVAL                         R30 7
      588 DUPTABLE                         R31 K127 [{["LayoutOrder"] = -1, ["onStateChanged"], ["onSecondaryActivated"], ["ref"], ["tag"] = "columns-tree row align-y-center", ["testId"]}]
      589 SETTABLEKS                       R18 R31 K123 ["onStateChanged"]
      591 GETTABLEKS                       R33 R0 K9 ["editMenu"]
      593 JUMPIFEQKNIL                     R33 ; [+9]
      595 GETTABLEKS                       R34 R0 K9 ["editMenu"]
      597 LENGTH                           R33 R34
      598 LOADN                            R34 0
      599 JUMPIFNOTLT                      R34 R33 ; [+3]
      601 MOVE                             R32 R26
      602 JUMP                             ; [+1]
      603 LOADNIL                          R32
      604 SETTABLEKS                       R32 R31 K124 ["onSecondaryActivated"]
      606 SETTABLEKS                       R11 R31 K125 ["ref"]
      608 GETTABLEKS                       R33 R0 K6 ["onCreated"]
      610 JUMPIFNOT                        R33 ; [+2]
      611 LOADK                            R32 K128 ["node-creating"]
      612 JUMP                             ; [+6]
      613 LOADK                            R33 K129 ["node-%*"]
      614 MOVE                             R35 R2
      615 NAMECALL                         R33 R33 K16 ["format"]
      617 CALL                             R33 2 1
      618 MOVE                             R32 R33
      619 SETTABLEKS                       R32 R31 K35 ["testId"]
      621 MOVE                             R32 R1
      622 CALL                             R29 3 1
      623 RETURN                           R29 1

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
       64 GETTABLEKS                       R16 R16 K24 ["InputConfiguration"]
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
       89 GETTABLEKS                       R19 R19 K25 ["Util"]
       91 GETTABLEKS                       R19 R19 K29 ["formatTestId"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K5 [require]
       96 GETTABLEKS                       R20 R0 K22 ["Src"]
       98 GETTABLEKS                       R20 R20 K30 ["Hooks"]
      100 GETTABLEKS                       R20 R20 K31 ["useIcon"]
      102 CALL                             R19 1 1
      103 DUPCLOSURE                       R20 K32 [PROTO_13]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R19
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R11
      122 RETURN                           R20 1
