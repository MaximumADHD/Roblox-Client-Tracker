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
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["onCreateMenuItemSelected"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

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
      179 LOADK                            R31 K15 ["DepthMarker%*"]
      180 MOVE                             R33 R30
      181 NAMECALL                         R31 R31 K16 ["format"]
      183 CALL                             R31 2 1
      184 GETUPVAL                         R32 0
      185 GETTABLEKS                       R32 R32 K17 ["createElement"]
      187 GETUPVAL                         R33 7
      188 DUPTABLE                         R34 K21 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      189 MOVE                             R35 R27
      190 CALL                             R35 0 1
      191 SETTABLEKS                       R35 R34 K18 ["LayoutOrder"]
      193 DUPTABLE                         R35 K23 [{"Divider"}]
      194 GETUPVAL                         R36 0
      195 GETTABLEKS                       R36 R36 K17 ["createElement"]
      197 GETUPVAL                         R37 8
      198 DUPTABLE                         R38 K26 [{["orientation"], ["tag"] = "auto-y"}]
      199 GETUPVAL                         R39 9
      200 GETTABLEKS                       R39 R39 K27 ["Enums"]
      202 GETTABLEKS                       R39 R39 K28 ["Orientation"]
      204 GETTABLEKS                       R39 R39 K29 ["Vertical"]
      206 SETTABLEKS                       R39 R38 K24 ["orientation"]
      208 CALL                             R36 2 1
      209 SETTABLEKS                       R36 R35 K22 ["Divider"]
      211 CALL                             R32 3 1
      212 SETTABLE                         R32 R1 R31
      213 FORNLOOP                         R28
      214 GETUPVAL                         R29 10
      215 CALL                             R29 0 1
      216 JUMPIFNOT                        R29 ; [+4]
      217 GETTABLEKS                       R29 R0 K10 ["createMenu"]
      219 AND                              R28 R29 R8
      220 JUMP                             ; [+6]
      221 LOADB                            R28 0
      222 GETTABLEKS                       R29 R0 K30 ["onCreateMenuItemSelected"]
      224 JUMPIFEQKNIL                     R29 ; [+2]
      226 MOVE                             R28 R8
      227 GETUPVAL                         R29 0
      228 GETTABLEKS                       R29 R29 K17 ["createElement"]
      230 GETUPVAL                         R30 7
      231 DUPTABLE                         R31 K21 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      232 MOVE                             R32 R27
      233 CALL                             R32 0 1
      234 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      236 DUPTABLE                         R32 K32 [{"IconButton"}]
      237 GETTABLEKS                       R33 R0 K33 ["setExpanded"]
      239 JUMPIFNOT                        R33 ; [+32]
      240 GETUPVAL                         R33 0
      241 GETTABLEKS                       R33 R33 K17 ["createElement"]
      243 GETUPVAL                         R34 11
      244 DUPTABLE                         R35 K37 [{"icon", "onActivated", "size", "testId"}]
      245 GETTABLEKS                       R37 R0 K38 ["expanded"]
      247 JUMPIFNOT                        R37 ; [+2]
      248 LOADK                            R36 K39 ["icons/actions/truncationCollapse_small"]
      249 JUMP                             ; [+1]
      250 LOADK                            R36 K40 ["icons/actions/truncationExpand_small"]
      251 SETTABLEKS                       R36 R35 K7 ["icon"]
      253 SETTABLEKS                       R19 R35 K34 ["onActivated"]
      255 GETUPVAL                         R36 9
      256 GETTABLEKS                       R36 R36 K27 ["Enums"]
      258 GETTABLEKS                       R36 R36 K41 ["InputSize"]
      260 GETTABLEKS                       R36 R36 K42 ["XSmall"]
      262 SETTABLEKS                       R36 R35 K35 ["size"]
      264 LOADK                            R36 K43 ["expand-%*"]
      265 MOVE                             R38 R2
      266 NAMECALL                         R36 R36 K16 ["format"]
      268 CALL                             R36 2 1
      269 SETTABLEKS                       R36 R35 K36 ["testId"]
      271 CALL                             R33 2 1
      272 SETTABLEKS                       R33 R32 K31 ["IconButton"]
      274 CALL                             R29 3 1
      275 SETTABLEKS                       R29 R1 K44 ["ExpandButton"]
      277 DUPTABLE                         R29 K48 [{"ClassImage", "InstanceName", "AddButton"}]
      278 MOVE                             R30 R10
      279 JUMPIFNOT                        R30 ; [+35]
      280 GETUPVAL                         R30 0
      281 GETTABLEKS                       R30 R30 K17 ["createElement"]
      283 GETUPVAL                         R31 7
      284 DUPTABLE                         R32 K21 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      285 MOVE                             R33 R27
      286 CALL                             R33 0 1
      287 SETTABLEKS                       R33 R32 K18 ["LayoutOrder"]
      289 DUPTABLE                         R33 K50 [{"Image"}]
      290 GETUPVAL                         R34 0
      291 GETTABLEKS                       R34 R34 K17 ["createElement"]
      293 GETUPVAL                         R35 12
      294 DUPTABLE                         R36 K55 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["ScaleType"], ["tag"] = "icon spacer align-x-center align-y-center"}]
      295 GETTABLEKS                       R37 R10 K49 ["Image"]
      297 SETTABLEKS                       R37 R36 K49 ["Image"]
      299 GETTABLEKS                       R37 R10 K56 ["ImageRectOffset"]
      301 SETTABLEKS                       R37 R36 K51 ["imageRectOffset"]
      303 GETTABLEKS                       R37 R10 K57 ["ImageRectSize"]
      305 SETTABLEKS                       R37 R36 K52 ["imageRectSize"]
      307 GETIMPORT                        R37 K60 [Enum.ScaleType.Fit]
      309 SETTABLEKS                       R37 R36 K53 ["ScaleType"]
      311 CALL                             R34 2 1
      312 SETTABLEKS                       R34 R33 K49 ["Image"]
      314 CALL                             R30 3 1
      315 SETTABLEKS                       R30 R29 K45 ["ClassImage"]
      317 GETUPVAL                         R30 0
      318 GETTABLEKS                       R30 R30 K17 ["createElement"]
      320 GETUPVAL                         R31 7
      321 DUPTABLE                         R32 K62 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-left-small"}]
      322 MOVE                             R33 R27
      323 CALL                             R33 0 1
      324 SETTABLEKS                       R33 R32 K18 ["LayoutOrder"]
      326 DUPTABLE                         R33 K64 [{"Text"}]
      327 JUMPIFNOT                        R6 ; [+40]
      328 GETUPVAL                         R34 0
      329 GETTABLEKS                       R34 R34 K17 ["createElement"]
      331 GETUPVAL                         R35 13
      332 DUPTABLE                         R36 K73 [{["label"] = "", ["textBoxRef"], ["onChanged"], ["onFocusLost"], ["size"], ["testId"], ["text"], ["textInputType"], ["width"]}]
      333 SETTABLEKS                       R5 R36 K67 ["textBoxRef"]
      335 SETTABLEKS                       R17 R36 K68 ["onChanged"]
      337 SETTABLEKS                       R16 R36 K69 ["onFocusLost"]
      339 GETUPVAL                         R37 14
      340 GETTABLEKS                       R37 R37 K74 ["Small"]
      342 SETTABLEKS                       R37 R36 K35 ["size"]
      344 LOADK                            R37 K75 ["rename-%*"]
      345 MOVE                             R39 R2
      346 NAMECALL                         R37 R37 K16 ["format"]
      348 CALL                             R37 2 1
      349 SETTABLEKS                       R37 R36 K36 ["testId"]
      351 GETTABLEKS                       R37 R4 K76 ["current"]
      353 SETTABLEKS                       R37 R36 K70 ["text"]
      355 GETIMPORT                        R37 K79 [Enum.TextInputType.Default]
      357 SETTABLEKS                       R37 R36 K71 ["textInputType"]
      359 GETIMPORT                        R37 K82 [UDim.new]
      361 LOADN                            R38 1
      362 LOADN                            R39 -5
      363 CALL                             R37 2 1
      364 SETTABLEKS                       R37 R36 K72 ["width"]
      366 CALL                             R34 2 1
      367 JUMP                             ; [+10]
      368 GETUPVAL                         R34 0
      369 GETTABLEKS                       R34 R34 K17 ["createElement"]
      371 GETUPVAL                         R35 15
      372 DUPTABLE                         R36 K84 [{["tag"] = "label auto-xy text-body-medium", ["Text"]}]
      373 GETTABLEKS                       R37 R0 K1 ["name"]
      375 SETTABLEKS                       R37 R36 K63 ["Text"]
      377 CALL                             R34 2 1
      378 SETTABLEKS                       R34 R33 K63 ["Text"]
      380 CALL                             R30 3 1
      381 SETTABLEKS                       R30 R29 K46 ["InstanceName"]
      383 JUMPIF                           R14 ; [+2]
      384 MOVE                             R30 R28
      385 JUMPIFNOT                        R30 ; [+102]
      386 GETUPVAL                         R30 0
      387 GETTABLEKS                       R30 R30 K17 ["createElement"]
      389 GETUPVAL                         R31 7
      390 DUPTABLE                         R32 K86 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-small"}]
      391 MOVE                             R33 R27
      392 CALL                             R33 0 1
      393 SETTABLEKS                       R33 R32 K18 ["LayoutOrder"]
      395 DUPTABLE                         R33 K88 [{"PlusControl"}]
      396 GETTABLEKS                       R35 R0 K10 ["createMenu"]
      398 JUMPIFEQKNIL                     R35 ; [+62]
      400 GETUPVAL                         R34 0
      401 GETTABLEKS                       R34 R34 K17 ["createElement"]
      403 GETUPVAL                         R35 16
      404 DUPTABLE                         R36 K94 [{"align", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      405 GETUPVAL                         R37 17
      406 GETTABLEKS                       R37 R37 K95 ["Start"]
      408 SETTABLEKS                       R37 R36 K89 ["align"]
      410 SETTABLEKS                       R14 R36 K90 ["isOpen"]
      412 GETTABLEKS                       R37 R0 K10 ["createMenu"]
      414 SETTABLEKS                       R37 R36 K91 ["items"]
      416 SETTABLEKS                       R23 R36 K34 ["onActivated"]
      418 SETTABLEKS                       R22 R36 K92 ["onPressedOutside"]
      420 GETUPVAL                         R37 18
      421 GETTABLEKS                       R37 R37 K96 ["Right"]
      423 SETTABLEKS                       R37 R36 K93 ["side"]
      425 LOADK                            R37 K97 ["create-menu-%*"]
      426 MOVE                             R39 R2
      427 NAMECALL                         R37 R37 K16 ["format"]
      429 CALL                             R37 2 1
      430 SETTABLEKS                       R37 R36 K36 ["testId"]
      432 DUPTABLE                         R37 K99 [{"Plus"}]
      433 GETUPVAL                         R38 0
      434 GETTABLEKS                       R38 R38 K17 ["createElement"]
      436 GETUPVAL                         R39 11
      437 DUPTABLE                         R40 K101 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      438 SETTABLEKS                       R21 R40 K34 ["onActivated"]
      440 GETUPVAL                         R41 9
      441 GETTABLEKS                       R41 R41 K27 ["Enums"]
      443 GETTABLEKS                       R41 R41 K102 ["IconSize"]
      445 GETTABLEKS                       R41 R41 K74 ["Small"]
      447 SETTABLEKS                       R41 R40 K35 ["size"]
      449 LOADK                            R41 K103 ["add-%*"]
      450 MOVE                             R43 R2
      451 NAMECALL                         R41 R41 K16 ["format"]
      453 CALL                             R41 2 1
      454 SETTABLEKS                       R41 R40 K36 ["testId"]
      456 CALL                             R38 2 1
      457 SETTABLEKS                       R38 R37 K98 ["Plus"]
      459 CALL                             R34 3 1
      460 JUMP                             ; [+24]
      461 GETUPVAL                         R34 0
      462 GETTABLEKS                       R34 R34 K17 ["createElement"]
      464 GETUPVAL                         R35 11
      465 DUPTABLE                         R36 K101 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      466 SETTABLEKS                       R21 R36 K34 ["onActivated"]
      468 GETUPVAL                         R37 9
      469 GETTABLEKS                       R37 R37 K27 ["Enums"]
      471 GETTABLEKS                       R37 R37 K102 ["IconSize"]
      473 GETTABLEKS                       R37 R37 K74 ["Small"]
      475 SETTABLEKS                       R37 R36 K35 ["size"]
      477 LOADK                            R37 K103 ["add-%*"]
      478 MOVE                             R39 R2
      479 NAMECALL                         R37 R37 K16 ["format"]
      481 CALL                             R37 2 1
      482 SETTABLEKS                       R37 R36 K36 ["testId"]
      484 CALL                             R34 2 1
      485 SETTABLEKS                       R34 R33 K87 ["PlusControl"]
      487 CALL                             R30 3 1
      488 SETTABLEKS                       R30 R29 K47 ["AddButton"]
      490 GETTABLEKS                       R30 R0 K14 ["depth"]
      492 LOADN                            R31 0
      493 JUMPIFNOTLT                      R31 R30 ; [+41]
      495 GETUPVAL                         R30 0
      496 GETTABLEKS                       R30 R30 K17 ["createElement"]
      498 GETUPVAL                         R31 7
      499 DUPTABLE                         R32 K105 [{["LayoutOrder"], ["tag"] = "col align-y-center grow size-0-full"}]
      500 MOVE                             R33 R27
      501 CALL                             R33 0 1
      502 SETTABLEKS                       R33 R32 K18 ["LayoutOrder"]
      504 DUPTABLE                         R33 K107 [{"LabelContainer", "Divider"}]
      505 GETUPVAL                         R34 0
      506 GETTABLEKS                       R34 R34 K17 ["createElement"]
      508 GETUPVAL                         R35 7
      509 DUPTABLE                         R36 K110 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-full padding-right-small"}]
      510 MOVE                             R37 R29
      511 CALL                             R34 3 1
      512 SETTABLEKS                       R34 R33 K106 ["LabelContainer"]
      514 GETUPVAL                         R34 0
      515 GETTABLEKS                       R34 R34 K17 ["createElement"]
      517 GETUPVAL                         R35 8
      518 DUPTABLE                         R36 K113 [{["LayoutOrder"] = 2, ["orientation"], ["tag"] = "auto-x"}]
      519 GETUPVAL                         R37 9
      520 GETTABLEKS                       R37 R37 K27 ["Enums"]
      522 GETTABLEKS                       R37 R37 K28 ["Orientation"]
      524 GETTABLEKS                       R37 R37 K114 ["Horizontal"]
      526 SETTABLEKS                       R37 R36 K24 ["orientation"]
      528 CALL                             R34 2 1
      529 SETTABLEKS                       R34 R33 K22 ["Divider"]
      531 CALL                             R30 3 1
      532 SETTABLEKS                       R30 R1 K115 ["StackedInstanceLabel"]
      534 JUMP                             ; [+13]
      535 GETUPVAL                         R30 0
      536 GETTABLEKS                       R30 R30 K17 ["createElement"]
      538 GETUPVAL                         R31 7
      539 DUPTABLE                         R32 K117 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-right-small"}]
      540 MOVE                             R33 R27
      541 CALL                             R33 0 1
      542 SETTABLEKS                       R33 R32 K18 ["LayoutOrder"]
      544 MOVE                             R33 R29
      545 CALL                             R30 3 1
      546 SETTABLEKS                       R30 R1 K106 ["LabelContainer"]
      548 GETTABLEKS                       R31 R0 K9 ["editMenu"]
      550 JUMPIFNOT                        R31 ; [+31]
      551 GETUPVAL                         R30 0
      552 GETTABLEKS                       R30 R30 K17 ["createElement"]
      554 GETUPVAL                         R31 16
      555 DUPTABLE                         R32 K119 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      556 SETTABLEKS                       R11 R32 K118 ["anchorRef"]
      558 SETTABLEKS                       R12 R32 K90 ["isOpen"]
      560 GETTABLEKS                       R33 R0 K9 ["editMenu"]
      562 SETTABLEKS                       R33 R32 K91 ["items"]
      564 SETTABLEKS                       R25 R32 K34 ["onActivated"]
      566 SETTABLEKS                       R24 R32 K92 ["onPressedOutside"]
      568 GETUPVAL                         R33 18
      569 GETTABLEKS                       R33 R33 K96 ["Right"]
      571 SETTABLEKS                       R33 R32 K93 ["side"]
      573 LOADK                            R33 K120 ["edit-menu-%*"]
      574 MOVE                             R35 R2
      575 NAMECALL                         R33 R33 K16 ["format"]
      577 CALL                             R33 2 1
      578 SETTABLEKS                       R33 R32 K36 ["testId"]
      580 CALL                             R30 2 1
      581 JUMP                             ; [+1]
      582 LOADNIL                          R30
      583 SETTABLEKS                       R30 R1 K121 ["EditMenu"]
      585 GETUPVAL                         R30 0
      586 GETTABLEKS                       R30 R30 K17 ["createElement"]
      588 GETUPVAL                         R31 7
      589 DUPTABLE                         R32 K127 [{["LayoutOrder"] = -1, ["onStateChanged"], ["onSecondaryActivated"], ["ref"], ["tag"] = "columns-tree row align-y-center", ["testId"]}]
      590 SETTABLEKS                       R18 R32 K123 ["onStateChanged"]
      592 GETTABLEKS                       R34 R0 K9 ["editMenu"]
      594 JUMPIFEQKNIL                     R34 ; [+9]
      596 GETTABLEKS                       R35 R0 K9 ["editMenu"]
      598 LENGTH                           R34 R35
      599 LOADN                            R35 0
      600 JUMPIFNOTLT                      R35 R34 ; [+3]
      602 MOVE                             R33 R26
      603 JUMP                             ; [+1]
      604 LOADNIL                          R33
      605 SETTABLEKS                       R33 R32 K124 ["onSecondaryActivated"]
      607 SETTABLEKS                       R11 R32 K125 ["ref"]
      609 GETTABLEKS                       R34 R0 K6 ["onCreated"]
      611 JUMPIFNOT                        R34 ; [+2]
      612 LOADK                            R33 K128 ["node-creating"]
      613 JUMP                             ; [+5]
      614 LOADK                            R33 K129 ["node-%*"]
      615 MOVE                             R35 R2
      616 NAMECALL                         R33 R33 K16 ["format"]
      618 CALL                             R33 2 1
      619 SETTABLEKS                       R33 R32 K36 ["testId"]
      621 MOVE                             R33 R1
      622 CALL                             R30 3 1
      623 RETURN                           R30 1

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
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R21 R0 K22 ["Src"]
      107 GETTABLEKS                       R21 R21 K32 ["Flags"]
      109 GETTABLEKS                       R21 R21 K33 ["getFFlagIAMImprovedModifierMenu"]
      111 CALL                             R20 1 1
      112 DUPCLOSURE                       R21 K34 [PROTO_13]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R19
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R11
      132 RETURN                           R21 1
