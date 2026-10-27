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
        0 GETTABLEKS                       R1 R0 K0 ["disabled"]
        2 NEWTABLE                         R2 4 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R0 K2 ["name"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useContext"]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K4 ["Context"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K5 ["useRef"]
       27 GETTABLEKS                       R6 R0 K2 ["name"]
       29 CALL                             R5 1 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K5 ["useRef"]
       33 LOADNIL                          R7
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K6 ["useState"]
       38 GETTABLEKS                       R9 R0 K7 ["onCreated"]
       40 JUMPIFNOTEQKNIL                  R9 ; [+2]
       42 LOADB                            R8 0 +1
       43 LOADB                            R8 1
       44 CALL                             R7 1 2
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K6 ["useState"]
       48 LOADB                            R10 0
       49 CALL                             R9 1 2
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R12 R0 K8 ["icon"]
       53 CALL                             R11 1 1
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R12 R12 K5 ["useRef"]
       57 LOADNIL                          R13
       58 CALL                             R12 1 1
       59 GETTABLEKS                       R14 R0 K9 ["anchorRef"]
       61 JUMPIFNOT                        R14 ; [+4]
       62 GETTABLEKS                       R14 R0 K9 ["anchorRef"]
       64 OR                               R13 R14 R12
       65 JUMP                             ; [+1]
       66 MOVE                             R13 R12
       67 GETUPVAL                         R14 4
       68 GETTABLEKS                       R14 R14 K10 ["useStagnatingState"]
       70 LOADB                            R15 0
       71 NEWTABLE                         R16 0 1
       73 GETTABLEKS                       R17 R0 K11 ["editMenu"]
       75 SETLIST                          R16 R17 1 [1]
       77 CALL                             R14 2 2
       78 GETUPVAL                         R16 4
       79 GETTABLEKS                       R16 R16 K10 ["useStagnatingState"]
       81 LOADB                            R17 0
       82 NEWTABLE                         R18 0 1
       84 GETTABLEKS                       R19 R0 K12 ["createMenu"]
       86 SETLIST                          R18 R19 1 [1]
       88 CALL                             R16 2 2
       89 GETUPVAL                         R18 0
       90 GETTABLEKS                       R18 R18 K13 ["useEffect"]
       92 NEWCLOSURE                       R19 P1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R6
       96 NEWTABLE                         R20 0 1
       98 MOVE                             R21 R7
       99 SETLIST                          R20 R21 1 [1]
      101 CALL                             R18 2 0
      102 GETUPVAL                         R18 4
      103 GETTABLEKS                       R18 R18 K14 ["useEventCallback"]
      105 NEWCLOSURE                       R19 P2
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 CALL                             R18 1 1
      111 GETUPVAL                         R19 4
      112 GETTABLEKS                       R19 R19 K14 ["useEventCallback"]
      114 NEWCLOSURE                       R20 P3
      115 CAPTURE                          VAL R5
      116 CALL                             R19 1 1
      117 GETUPVAL                         R20 4
      118 GETTABLEKS                       R20 R20 K14 ["useEventCallback"]
      120 NEWCLOSURE                       R21 P4
      121 CAPTURE                          VAL R10
      122 CAPTURE                          UPVAL U5
      123 CALL                             R20 1 1
      124 GETUPVAL                         R21 4
      125 GETTABLEKS                       R21 R21 K14 ["useEventCallback"]
      127 NEWCLOSURE                       R22 P5
      128 CAPTURE                          VAL R0
      129 CALL                             R21 1 1
      130 GETUPVAL                         R22 4
      131 GETTABLEKS                       R22 R22 K14 ["useEventCallback"]
      133 NEWCLOSURE                       R23 P6
      134 CAPTURE                          VAL R0
      135 CALL                             R22 1 1
      136 GETUPVAL                         R23 4
      137 GETTABLEKS                       R23 R23 K14 ["useEventCallback"]
      139 NEWCLOSURE                       R24 P7
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R22
      144 CALL                             R23 1 1
      145 GETUPVAL                         R24 4
      146 GETTABLEKS                       R24 R24 K14 ["useEventCallback"]
      148 NEWCLOSURE                       R25 P8
      149 CAPTURE                          VAL R17
      150 CALL                             R24 1 1
      151 GETUPVAL                         R25 4
      152 GETTABLEKS                       R25 R25 K14 ["useEventCallback"]
      154 NEWCLOSURE                       R26 P9
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R17
      157 CALL                             R25 1 1
      158 GETUPVAL                         R26 4
      159 GETTABLEKS                       R26 R26 K14 ["useEventCallback"]
      161 NEWCLOSURE                       R27 P10
      162 CAPTURE                          VAL R15
      163 CALL                             R26 1 1
      164 GETUPVAL                         R27 4
      165 GETTABLEKS                       R27 R27 K14 ["useEventCallback"]
      167 NEWCLOSURE                       R28 P11
      168 CAPTURE                          UPVAL U6
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R0
      171 CAPTURE                          VAL R15
      172 CALL                             R27 1 1
      173 GETUPVAL                         R28 4
      174 GETTABLEKS                       R28 R28 K14 ["useEventCallback"]
      176 NEWCLOSURE                       R29 P12
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R17
      179 CALL                             R28 1 1
      180 GETUPVAL                         R29 4
      181 GETTABLEKS                       R29 R29 K15 ["createNextOrder"]
      183 CALL                             R29 0 1
      184 LOADN                            R32 1
      185 GETTABLEKS                       R30 R0 K16 ["depth"]
      187 LOADN                            R31 1
      188 FORNPREP                         R30
      189 LOADK                            R33 K17 ["DepthMarker%*"]
      190 MOVE                             R35 R32
      191 NAMECALL                         R33 R33 K18 ["format"]
      193 CALL                             R33 2 1
      194 GETUPVAL                         R34 0
      195 GETTABLEKS                       R34 R34 K19 ["createElement"]
      197 GETUPVAL                         R35 7
      198 DUPTABLE                         R36 K23 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      199 MOVE                             R37 R29
      200 CALL                             R37 0 1
      201 SETTABLEKS                       R37 R36 K20 ["LayoutOrder"]
      203 DUPTABLE                         R37 K25 [{"Divider"}]
      204 GETUPVAL                         R38 0
      205 GETTABLEKS                       R38 R38 K19 ["createElement"]
      207 GETUPVAL                         R39 8
      208 DUPTABLE                         R40 K28 [{["orientation"], ["tag"] = "auto-y"}]
      209 GETUPVAL                         R41 9
      210 GETTABLEKS                       R41 R41 K29 ["Enums"]
      212 GETTABLEKS                       R41 R41 K30 ["Orientation"]
      214 GETTABLEKS                       R41 R41 K31 ["Vertical"]
      216 SETTABLEKS                       R41 R40 K26 ["orientation"]
      218 CALL                             R38 2 1
      219 SETTABLEKS                       R38 R37 K24 ["Divider"]
      221 CALL                             R34 3 1
      222 SETTABLE                         R34 R2 R33
      223 FORNLOOP                         R30
      224 GETTABLEKS                       R31 R0 K12 ["createMenu"]
      226 AND                              R30 R31 R9
      227 GETUPVAL                         R31 0
      228 GETTABLEKS                       R31 R31 K19 ["createElement"]
      230 GETUPVAL                         R32 7
      231 DUPTABLE                         R33 K23 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      232 MOVE                             R34 R29
      233 CALL                             R34 0 1
      234 SETTABLEKS                       R34 R33 K20 ["LayoutOrder"]
      236 DUPTABLE                         R34 K33 [{"IconButton"}]
      237 GETTABLEKS                       R35 R0 K34 ["setExpanded"]
      239 JUMPIFNOT                        R35 ; [+32]
      240 GETUPVAL                         R35 0
      241 GETTABLEKS                       R35 R35 K19 ["createElement"]
      243 GETUPVAL                         R36 10
      244 DUPTABLE                         R37 K38 [{"icon", "onActivated", "size", "testId"}]
      245 GETTABLEKS                       R39 R0 K39 ["expanded"]
      247 JUMPIFNOT                        R39 ; [+2]
      248 LOADK                            R38 K40 ["icons/actions/truncationCollapse_small"]
      249 JUMP                             ; [+1]
      250 LOADK                            R38 K41 ["icons/actions/truncationExpand_small"]
      251 SETTABLEKS                       R38 R37 K8 ["icon"]
      253 SETTABLEKS                       R21 R37 K35 ["onActivated"]
      255 GETUPVAL                         R38 9
      256 GETTABLEKS                       R38 R38 K29 ["Enums"]
      258 GETTABLEKS                       R38 R38 K42 ["InputSize"]
      260 GETTABLEKS                       R38 R38 K43 ["XSmall"]
      262 SETTABLEKS                       R38 R37 K36 ["size"]
      264 LOADK                            R38 K44 ["expand-%*"]
      265 MOVE                             R40 R3
      266 NAMECALL                         R38 R38 K18 ["format"]
      268 CALL                             R38 2 1
      269 SETTABLEKS                       R38 R37 K37 ["testId"]
      271 CALL                             R35 2 1
      272 SETTABLEKS                       R35 R34 K32 ["IconButton"]
      274 CALL                             R31 3 1
      275 SETTABLEKS                       R31 R2 K45 ["ExpandButton"]
      277 DUPTABLE                         R31 K49 [{"ClassImage", "InstanceName", "AddButton"}]
      278 MOVE                             R32 R11
      279 JUMPIFNOT                        R32 ; [+35]
      280 GETUPVAL                         R32 0
      281 GETTABLEKS                       R32 R32 K19 ["createElement"]
      283 GETUPVAL                         R33 7
      284 DUPTABLE                         R34 K23 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      285 MOVE                             R35 R29
      286 CALL                             R35 0 1
      287 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      289 DUPTABLE                         R35 K51 [{"Image"}]
      290 GETUPVAL                         R36 0
      291 GETTABLEKS                       R36 R36 K19 ["createElement"]
      293 GETUPVAL                         R37 11
      294 DUPTABLE                         R38 K56 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["ScaleType"], ["tag"] = "icon spacer align-x-center align-y-center"}]
      295 GETTABLEKS                       R39 R11 K50 ["Image"]
      297 SETTABLEKS                       R39 R38 K50 ["Image"]
      299 GETTABLEKS                       R39 R11 K57 ["ImageRectOffset"]
      301 SETTABLEKS                       R39 R38 K52 ["imageRectOffset"]
      303 GETTABLEKS                       R39 R11 K58 ["ImageRectSize"]
      305 SETTABLEKS                       R39 R38 K53 ["imageRectSize"]
      307 GETIMPORT                        R39 K61 [Enum.ScaleType.Fit]
      309 SETTABLEKS                       R39 R38 K54 ["ScaleType"]
      311 CALL                             R36 2 1
      312 SETTABLEKS                       R36 R35 K50 ["Image"]
      314 CALL                             R32 3 1
      315 SETTABLEKS                       R32 R31 K46 ["ClassImage"]
      317 GETUPVAL                         R32 0
      318 GETTABLEKS                       R32 R32 K19 ["createElement"]
      320 GETUPVAL                         R33 7
      321 DUPTABLE                         R34 K63 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-left-small"}]
      322 MOVE                             R35 R29
      323 CALL                             R35 0 1
      324 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      326 DUPTABLE                         R35 K65 [{"Text"}]
      327 JUMPIFNOT                        R7 ; [+40]
      328 GETUPVAL                         R36 0
      329 GETTABLEKS                       R36 R36 K19 ["createElement"]
      331 GETUPVAL                         R37 12
      332 DUPTABLE                         R38 K74 [{["label"] = "", ["textBoxRef"], ["onChanged"], ["onFocusLost"], ["size"], ["testId"], ["text"], ["textInputType"], ["width"]}]
      333 SETTABLEKS                       R6 R38 K68 ["textBoxRef"]
      335 SETTABLEKS                       R19 R38 K69 ["onChanged"]
      337 SETTABLEKS                       R18 R38 K70 ["onFocusLost"]
      339 GETUPVAL                         R39 13
      340 GETTABLEKS                       R39 R39 K75 ["Small"]
      342 SETTABLEKS                       R39 R38 K36 ["size"]
      344 LOADK                            R39 K76 ["rename-%*"]
      345 MOVE                             R41 R3
      346 NAMECALL                         R39 R39 K18 ["format"]
      348 CALL                             R39 2 1
      349 SETTABLEKS                       R39 R38 K37 ["testId"]
      351 GETTABLEKS                       R39 R5 K77 ["current"]
      353 SETTABLEKS                       R39 R38 K71 ["text"]
      355 GETIMPORT                        R39 K80 [Enum.TextInputType.Default]
      357 SETTABLEKS                       R39 R38 K72 ["textInputType"]
      359 GETIMPORT                        R39 K83 [UDim.new]
      361 LOADN                            R40 1
      362 LOADN                            R41 -5
      363 CALL                             R39 2 1
      364 SETTABLEKS                       R39 R38 K73 ["width"]
      366 CALL                             R36 2 1
      367 JUMP                             ; [+10]
      368 GETUPVAL                         R36 0
      369 GETTABLEKS                       R36 R36 K19 ["createElement"]
      371 GETUPVAL                         R37 14
      372 DUPTABLE                         R38 K85 [{["tag"] = "label auto-xy text-body-medium", ["Text"]}]
      373 GETTABLEKS                       R39 R0 K2 ["name"]
      375 SETTABLEKS                       R39 R38 K64 ["Text"]
      377 CALL                             R36 2 1
      378 SETTABLEKS                       R36 R35 K64 ["Text"]
      380 CALL                             R32 3 1
      381 SETTABLEKS                       R32 R31 K47 ["InstanceName"]
      383 NOT                              R32 R1
      384 JUMPIFNOT                        R32 ; [+105]
      385 JUMPIF                           R16 ; [+2]
      386 MOVE                             R32 R30
      387 JUMPIFNOT                        R32 ; [+102]
      388 GETUPVAL                         R32 0
      389 GETTABLEKS                       R32 R32 K19 ["createElement"]
      391 GETUPVAL                         R33 7
      392 DUPTABLE                         R34 K87 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-small"}]
      393 MOVE                             R35 R29
      394 CALL                             R35 0 1
      395 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      397 DUPTABLE                         R35 K89 [{"PlusControl"}]
      398 GETTABLEKS                       R37 R0 K12 ["createMenu"]
      400 JUMPIFEQKNIL                     R37 ; [+62]
      402 GETUPVAL                         R36 0
      403 GETTABLEKS                       R36 R36 K19 ["createElement"]
      405 GETUPVAL                         R37 15
      406 DUPTABLE                         R38 K95 [{"align", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      407 GETUPVAL                         R39 16
      408 GETTABLEKS                       R39 R39 K96 ["Start"]
      410 SETTABLEKS                       R39 R38 K90 ["align"]
      412 SETTABLEKS                       R16 R38 K91 ["isOpen"]
      414 GETTABLEKS                       R39 R0 K12 ["createMenu"]
      416 SETTABLEKS                       R39 R38 K92 ["items"]
      418 SETTABLEKS                       R25 R38 K35 ["onActivated"]
      420 SETTABLEKS                       R24 R38 K93 ["onPressedOutside"]
      422 GETUPVAL                         R39 17
      423 GETTABLEKS                       R39 R39 K97 ["Right"]
      425 SETTABLEKS                       R39 R38 K94 ["side"]
      427 LOADK                            R39 K98 ["create-menu-%*"]
      428 MOVE                             R41 R3
      429 NAMECALL                         R39 R39 K18 ["format"]
      431 CALL                             R39 2 1
      432 SETTABLEKS                       R39 R38 K37 ["testId"]
      434 DUPTABLE                         R39 K100 [{"Plus"}]
      435 GETUPVAL                         R40 0
      436 GETTABLEKS                       R40 R40 K19 ["createElement"]
      438 GETUPVAL                         R41 10
      439 DUPTABLE                         R42 K102 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      440 SETTABLEKS                       R23 R42 K35 ["onActivated"]
      442 GETUPVAL                         R43 9
      443 GETTABLEKS                       R43 R43 K29 ["Enums"]
      445 GETTABLEKS                       R43 R43 K103 ["IconSize"]
      447 GETTABLEKS                       R43 R43 K75 ["Small"]
      449 SETTABLEKS                       R43 R42 K36 ["size"]
      451 LOADK                            R43 K104 ["add-%*"]
      452 MOVE                             R45 R3
      453 NAMECALL                         R43 R43 K18 ["format"]
      455 CALL                             R43 2 1
      456 SETTABLEKS                       R43 R42 K37 ["testId"]
      458 CALL                             R40 2 1
      459 SETTABLEKS                       R40 R39 K99 ["Plus"]
      461 CALL                             R36 3 1
      462 JUMP                             ; [+24]
      463 GETUPVAL                         R36 0
      464 GETTABLEKS                       R36 R36 K19 ["createElement"]
      466 GETUPVAL                         R37 10
      467 DUPTABLE                         R38 K102 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      468 SETTABLEKS                       R23 R38 K35 ["onActivated"]
      470 GETUPVAL                         R39 9
      471 GETTABLEKS                       R39 R39 K29 ["Enums"]
      473 GETTABLEKS                       R39 R39 K103 ["IconSize"]
      475 GETTABLEKS                       R39 R39 K75 ["Small"]
      477 SETTABLEKS                       R39 R38 K36 ["size"]
      479 LOADK                            R39 K104 ["add-%*"]
      480 MOVE                             R41 R3
      481 NAMECALL                         R39 R39 K18 ["format"]
      483 CALL                             R39 2 1
      484 SETTABLEKS                       R39 R38 K37 ["testId"]
      486 CALL                             R36 2 1
      487 SETTABLEKS                       R36 R35 K88 ["PlusControl"]
      489 CALL                             R32 3 1
      490 SETTABLEKS                       R32 R31 K48 ["AddButton"]
      492 GETTABLEKS                       R32 R0 K16 ["depth"]
      494 LOADN                            R33 0
      495 JUMPIFNOTLT                      R33 R32 ; [+41]
      497 GETUPVAL                         R32 0
      498 GETTABLEKS                       R32 R32 K19 ["createElement"]
      500 GETUPVAL                         R33 7
      501 DUPTABLE                         R34 K106 [{["LayoutOrder"], ["tag"] = "col align-y-center grow size-0-full"}]
      502 MOVE                             R35 R29
      503 CALL                             R35 0 1
      504 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      506 DUPTABLE                         R35 K108 [{"LabelContainer", "Divider"}]
      507 GETUPVAL                         R36 0
      508 GETTABLEKS                       R36 R36 K19 ["createElement"]
      510 GETUPVAL                         R37 7
      511 DUPTABLE                         R38 K111 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-full padding-right-small"}]
      512 MOVE                             R39 R31
      513 CALL                             R36 3 1
      514 SETTABLEKS                       R36 R35 K107 ["LabelContainer"]
      516 GETUPVAL                         R36 0
      517 GETTABLEKS                       R36 R36 K19 ["createElement"]
      519 GETUPVAL                         R37 8
      520 DUPTABLE                         R38 K114 [{["LayoutOrder"] = 2, ["orientation"], ["tag"] = "auto-x"}]
      521 GETUPVAL                         R39 9
      522 GETTABLEKS                       R39 R39 K29 ["Enums"]
      524 GETTABLEKS                       R39 R39 K30 ["Orientation"]
      526 GETTABLEKS                       R39 R39 K115 ["Horizontal"]
      528 SETTABLEKS                       R39 R38 K26 ["orientation"]
      530 CALL                             R36 2 1
      531 SETTABLEKS                       R36 R35 K24 ["Divider"]
      533 CALL                             R32 3 1
      534 SETTABLEKS                       R32 R2 K116 ["StackedInstanceLabel"]
      536 JUMP                             ; [+13]
      537 GETUPVAL                         R32 0
      538 GETTABLEKS                       R32 R32 K19 ["createElement"]
      540 GETUPVAL                         R33 7
      541 DUPTABLE                         R34 K118 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-right-small"}]
      542 MOVE                             R35 R29
      543 CALL                             R35 0 1
      544 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      546 MOVE                             R35 R31
      547 CALL                             R32 3 1
      548 SETTABLEKS                       R32 R2 K107 ["LabelContainer"]
      550 GETTABLEKS                       R33 R0 K11 ["editMenu"]
      552 JUMPIFNOT                        R33 ; [+31]
      553 GETUPVAL                         R32 0
      554 GETTABLEKS                       R32 R32 K19 ["createElement"]
      556 GETUPVAL                         R33 15
      557 DUPTABLE                         R34 K119 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      558 SETTABLEKS                       R13 R34 K9 ["anchorRef"]
      560 SETTABLEKS                       R14 R34 K91 ["isOpen"]
      562 GETTABLEKS                       R35 R0 K11 ["editMenu"]
      564 SETTABLEKS                       R35 R34 K92 ["items"]
      566 SETTABLEKS                       R27 R34 K35 ["onActivated"]
      568 SETTABLEKS                       R26 R34 K93 ["onPressedOutside"]
      570 GETUPVAL                         R35 17
      571 GETTABLEKS                       R35 R35 K97 ["Right"]
      573 SETTABLEKS                       R35 R34 K94 ["side"]
      575 LOADK                            R35 K120 ["edit-menu-%*"]
      576 MOVE                             R37 R3
      577 NAMECALL                         R35 R35 K18 ["format"]
      579 CALL                             R35 2 1
      580 SETTABLEKS                       R35 R34 K37 ["testId"]
      582 CALL                             R32 2 1
      583 JUMP                             ; [+1]
      584 LOADNIL                          R32
      585 SETTABLEKS                       R32 R2 K121 ["EditMenu"]
      587 GETUPVAL                         R32 0
      588 GETTABLEKS                       R32 R32 K19 ["createElement"]
      590 GETUPVAL                         R33 7
      591 DUPTABLE                         R34 K127 [{["LayoutOrder"] = -1, ["onStateChanged"], ["onSecondaryActivated"], ["ref"], ["tag"] = "columns-tree", ["testId"]}]
      592 SETTABLEKS                       R20 R34 K123 ["onStateChanged"]
      594 GETTABLEKS                       R36 R0 K11 ["editMenu"]
      596 JUMPIFEQKNIL                     R36 ; [+9]
      598 GETTABLEKS                       R37 R0 K11 ["editMenu"]
      600 LENGTH                           R36 R37
      601 LOADN                            R37 0
      602 JUMPIFNOTLT                      R37 R36 ; [+3]
      604 MOVE                             R35 R28
      605 JUMP                             ; [+1]
      606 LOADNIL                          R35
      607 SETTABLEKS                       R35 R34 K124 ["onSecondaryActivated"]
      609 SETTABLEKS                       R13 R34 K125 ["ref"]
      611 GETTABLEKS                       R36 R0 K7 ["onCreated"]
      613 JUMPIFNOT                        R36 ; [+2]
      614 LOADK                            R35 K128 ["node-creating"]
      615 JUMP                             ; [+5]
      616 LOADK                            R35 K129 ["node-%*"]
      617 MOVE                             R37 R3
      618 NAMECALL                         R35 R35 K18 ["format"]
      620 CALL                             R35 2 1
      621 SETTABLEKS                       R35 R34 K37 ["testId"]
      623 DUPTABLE                         R35 K131 [{"Group"}]
      624 GETUPVAL                         R36 0
      625 GETTABLEKS                       R36 R36 K19 ["createElement"]
      627 GETUPVAL                         R37 7
      628 DUPTABLE                         R38 K134 [{["GroupTransparency"], ["tag"] = "row align-y-center size-full-full"}]
      629 JUMPIFNOT                        R1 ; [+2]
      630 LOADK                            R39 K135 [0.5]
      631 JUMP                             ; [+1]
      632 LOADN                            R39 0
      633 SETTABLEKS                       R39 R38 K132 ["GroupTransparency"]
      635 MOVE                             R39 R2
      636 CALL                             R36 3 1
      637 SETTABLEKS                       R36 R35 K130 ["Group"]
      639 CALL                             R32 3 1
      640 RETURN                           R32 1

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
