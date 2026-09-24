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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["disabled"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 NEWTABLE                         R2 4 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R5 0 1
       17 GETTABLEKS                       R6 R0 K2 ["name"]
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K3 ["useContext"]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K4 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K5 ["useRef"]
       32 GETTABLEKS                       R6 R0 K2 ["name"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K5 ["useRef"]
       38 LOADNIL                          R7
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K6 ["useState"]
       43 GETTABLEKS                       R9 R0 K7 ["onCreated"]
       45 JUMPIFNOTEQKNIL                  R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 CALL                             R7 1 2
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K6 ["useState"]
       53 LOADB                            R10 0
       54 CALL                             R9 1 2
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R12 R0 K8 ["icon"]
       58 CALL                             R11 1 1
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R12 R12 K5 ["useRef"]
       62 LOADNIL                          R13
       63 CALL                             R12 1 1
       64 GETUPVAL                         R13 5
       65 GETTABLEKS                       R13 R13 K9 ["useStagnatingState"]
       67 LOADB                            R14 0
       68 NEWTABLE                         R15 0 1
       70 GETTABLEKS                       R16 R0 K10 ["editMenu"]
       72 SETLIST                          R15 R16 1 [1]
       74 CALL                             R13 2 2
       75 GETUPVAL                         R15 5
       76 GETTABLEKS                       R15 R15 K9 ["useStagnatingState"]
       78 LOADB                            R16 0
       79 NEWTABLE                         R17 0 1
       81 GETTABLEKS                       R18 R0 K11 ["createMenu"]
       83 SETLIST                          R17 R18 1 [1]
       85 CALL                             R15 2 2
       86 GETUPVAL                         R17 1
       87 GETTABLEKS                       R17 R17 K12 ["useEffect"]
       89 NEWCLOSURE                       R18 P1
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 NEWTABLE                         R19 0 1
       95 MOVE                             R20 R7
       96 SETLIST                          R19 R20 1 [1]
       98 CALL                             R17 2 0
       99 GETUPVAL                         R17 5
      100 GETTABLEKS                       R17 R17 K13 ["useEventCallback"]
      102 NEWCLOSURE                       R18 P2
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R8
      107 CALL                             R17 1 1
      108 GETUPVAL                         R18 5
      109 GETTABLEKS                       R18 R18 K13 ["useEventCallback"]
      111 NEWCLOSURE                       R19 P3
      112 CAPTURE                          VAL R5
      113 CALL                             R18 1 1
      114 GETUPVAL                         R19 5
      115 GETTABLEKS                       R19 R19 K13 ["useEventCallback"]
      117 NEWCLOSURE                       R20 P4
      118 CAPTURE                          VAL R10
      119 CAPTURE                          UPVAL U6
      120 CALL                             R19 1 1
      121 GETUPVAL                         R20 5
      122 GETTABLEKS                       R20 R20 K13 ["useEventCallback"]
      124 NEWCLOSURE                       R21 P5
      125 CAPTURE                          VAL R0
      126 CALL                             R20 1 1
      127 GETUPVAL                         R21 5
      128 GETTABLEKS                       R21 R21 K13 ["useEventCallback"]
      130 NEWCLOSURE                       R22 P6
      131 CAPTURE                          VAL R0
      132 CALL                             R21 1 1
      133 GETUPVAL                         R22 5
      134 GETTABLEKS                       R22 R22 K13 ["useEventCallback"]
      136 NEWCLOSURE                       R23 P7
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R21
      141 CALL                             R22 1 1
      142 GETUPVAL                         R23 5
      143 GETTABLEKS                       R23 R23 K13 ["useEventCallback"]
      145 NEWCLOSURE                       R24 P8
      146 CAPTURE                          VAL R16
      147 CALL                             R23 1 1
      148 GETUPVAL                         R24 5
      149 GETTABLEKS                       R24 R24 K13 ["useEventCallback"]
      151 NEWCLOSURE                       R25 P9
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R16
      154 CALL                             R24 1 1
      155 GETUPVAL                         R25 5
      156 GETTABLEKS                       R25 R25 K13 ["useEventCallback"]
      158 NEWCLOSURE                       R26 P10
      159 CAPTURE                          VAL R14
      160 CALL                             R25 1 1
      161 GETUPVAL                         R26 5
      162 GETTABLEKS                       R26 R26 K13 ["useEventCallback"]
      164 NEWCLOSURE                       R27 P11
      165 CAPTURE                          UPVAL U7
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R14
      169 CALL                             R26 1 1
      170 GETUPVAL                         R27 5
      171 GETTABLEKS                       R27 R27 K13 ["useEventCallback"]
      173 NEWCLOSURE                       R28 P12
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R16
      176 CALL                             R27 1 1
      177 GETUPVAL                         R28 5
      178 GETTABLEKS                       R28 R28 K14 ["createNextOrder"]
      180 CALL                             R28 0 1
      181 LOADN                            R31 1
      182 GETTABLEKS                       R29 R0 K15 ["depth"]
      184 LOADN                            R30 1
      185 FORNPREP                         R29
      186 LOADK                            R32 K16 ["DepthMarker%*"]
      187 MOVE                             R34 R31
      188 NAMECALL                         R32 R32 K17 ["format"]
      190 CALL                             R32 2 1
      191 GETUPVAL                         R33 1
      192 GETTABLEKS                       R33 R33 K18 ["createElement"]
      194 GETUPVAL                         R34 8
      195 DUPTABLE                         R35 K22 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      196 MOVE                             R36 R28
      197 CALL                             R36 0 1
      198 SETTABLEKS                       R36 R35 K19 ["LayoutOrder"]
      200 DUPTABLE                         R36 K24 [{"Divider"}]
      201 GETUPVAL                         R37 1
      202 GETTABLEKS                       R37 R37 K18 ["createElement"]
      204 GETUPVAL                         R38 9
      205 DUPTABLE                         R39 K27 [{["orientation"], ["tag"] = "auto-y"}]
      206 GETUPVAL                         R40 10
      207 GETTABLEKS                       R40 R40 K28 ["Enums"]
      209 GETTABLEKS                       R40 R40 K29 ["Orientation"]
      211 GETTABLEKS                       R40 R40 K30 ["Vertical"]
      213 SETTABLEKS                       R40 R39 K25 ["orientation"]
      215 CALL                             R37 2 1
      216 SETTABLEKS                       R37 R36 K23 ["Divider"]
      218 CALL                             R33 3 1
      219 SETTABLE                         R33 R2 R32
      220 FORNLOOP                         R29
      221 GETUPVAL                         R30 11
      222 CALL                             R30 0 1
      223 JUMPIFNOT                        R30 ; [+4]
      224 GETTABLEKS                       R30 R0 K11 ["createMenu"]
      226 AND                              R29 R30 R9
      227 JUMP                             ; [+6]
      228 LOADB                            R29 0
      229 GETTABLEKS                       R30 R0 K31 ["onCreateMenuItemSelected"]
      231 JUMPIFEQKNIL                     R30 ; [+2]
      233 MOVE                             R29 R9
      234 GETUPVAL                         R30 1
      235 GETTABLEKS                       R30 R30 K18 ["createElement"]
      237 GETUPVAL                         R31 8
      238 DUPTABLE                         R32 K22 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      239 MOVE                             R33 R28
      240 CALL                             R33 0 1
      241 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      243 DUPTABLE                         R33 K33 [{"IconButton"}]
      244 GETTABLEKS                       R34 R0 K34 ["setExpanded"]
      246 JUMPIFNOT                        R34 ; [+32]
      247 GETUPVAL                         R34 1
      248 GETTABLEKS                       R34 R34 K18 ["createElement"]
      250 GETUPVAL                         R35 12
      251 DUPTABLE                         R36 K38 [{"icon", "onActivated", "size", "testId"}]
      252 GETTABLEKS                       R38 R0 K39 ["expanded"]
      254 JUMPIFNOT                        R38 ; [+2]
      255 LOADK                            R37 K40 ["icons/actions/truncationCollapse_small"]
      256 JUMP                             ; [+1]
      257 LOADK                            R37 K41 ["icons/actions/truncationExpand_small"]
      258 SETTABLEKS                       R37 R36 K8 ["icon"]
      260 SETTABLEKS                       R20 R36 K35 ["onActivated"]
      262 GETUPVAL                         R37 10
      263 GETTABLEKS                       R37 R37 K28 ["Enums"]
      265 GETTABLEKS                       R37 R37 K42 ["InputSize"]
      267 GETTABLEKS                       R37 R37 K43 ["XSmall"]
      269 SETTABLEKS                       R37 R36 K36 ["size"]
      271 LOADK                            R37 K44 ["expand-%*"]
      272 MOVE                             R39 R3
      273 NAMECALL                         R37 R37 K17 ["format"]
      275 CALL                             R37 2 1
      276 SETTABLEKS                       R37 R36 K37 ["testId"]
      278 CALL                             R34 2 1
      279 SETTABLEKS                       R34 R33 K32 ["IconButton"]
      281 CALL                             R30 3 1
      282 SETTABLEKS                       R30 R2 K45 ["ExpandButton"]
      284 DUPTABLE                         R30 K49 [{"ClassImage", "InstanceName", "AddButton"}]
      285 MOVE                             R31 R11
      286 JUMPIFNOT                        R31 ; [+35]
      287 GETUPVAL                         R31 1
      288 GETTABLEKS                       R31 R31 K18 ["createElement"]
      290 GETUPVAL                         R32 8
      291 DUPTABLE                         R33 K22 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      292 MOVE                             R34 R28
      293 CALL                             R34 0 1
      294 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      296 DUPTABLE                         R34 K51 [{"Image"}]
      297 GETUPVAL                         R35 1
      298 GETTABLEKS                       R35 R35 K18 ["createElement"]
      300 GETUPVAL                         R36 13
      301 DUPTABLE                         R37 K56 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["ScaleType"], ["tag"] = "icon spacer align-x-center align-y-center"}]
      302 GETTABLEKS                       R38 R11 K50 ["Image"]
      304 SETTABLEKS                       R38 R37 K50 ["Image"]
      306 GETTABLEKS                       R38 R11 K57 ["ImageRectOffset"]
      308 SETTABLEKS                       R38 R37 K52 ["imageRectOffset"]
      310 GETTABLEKS                       R38 R11 K58 ["ImageRectSize"]
      312 SETTABLEKS                       R38 R37 K53 ["imageRectSize"]
      314 GETIMPORT                        R38 K61 [Enum.ScaleType.Fit]
      316 SETTABLEKS                       R38 R37 K54 ["ScaleType"]
      318 CALL                             R35 2 1
      319 SETTABLEKS                       R35 R34 K50 ["Image"]
      321 CALL                             R31 3 1
      322 SETTABLEKS                       R31 R30 K46 ["ClassImage"]
      324 GETUPVAL                         R31 1
      325 GETTABLEKS                       R31 R31 K18 ["createElement"]
      327 GETUPVAL                         R32 8
      328 DUPTABLE                         R33 K63 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-left-small"}]
      329 MOVE                             R34 R28
      330 CALL                             R34 0 1
      331 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      333 DUPTABLE                         R34 K65 [{"Text"}]
      334 JUMPIFNOT                        R7 ; [+40]
      335 GETUPVAL                         R35 1
      336 GETTABLEKS                       R35 R35 K18 ["createElement"]
      338 GETUPVAL                         R36 14
      339 DUPTABLE                         R37 K74 [{["label"] = "", ["textBoxRef"], ["onChanged"], ["onFocusLost"], ["size"], ["testId"], ["text"], ["textInputType"], ["width"]}]
      340 SETTABLEKS                       R6 R37 K68 ["textBoxRef"]
      342 SETTABLEKS                       R18 R37 K69 ["onChanged"]
      344 SETTABLEKS                       R17 R37 K70 ["onFocusLost"]
      346 GETUPVAL                         R38 15
      347 GETTABLEKS                       R38 R38 K75 ["Small"]
      349 SETTABLEKS                       R38 R37 K36 ["size"]
      351 LOADK                            R38 K76 ["rename-%*"]
      352 MOVE                             R40 R3
      353 NAMECALL                         R38 R38 K17 ["format"]
      355 CALL                             R38 2 1
      356 SETTABLEKS                       R38 R37 K37 ["testId"]
      358 GETTABLEKS                       R38 R5 K77 ["current"]
      360 SETTABLEKS                       R38 R37 K71 ["text"]
      362 GETIMPORT                        R38 K80 [Enum.TextInputType.Default]
      364 SETTABLEKS                       R38 R37 K72 ["textInputType"]
      366 GETIMPORT                        R38 K83 [UDim.new]
      368 LOADN                            R39 1
      369 LOADN                            R40 -5
      370 CALL                             R38 2 1
      371 SETTABLEKS                       R38 R37 K73 ["width"]
      373 CALL                             R35 2 1
      374 JUMP                             ; [+10]
      375 GETUPVAL                         R35 1
      376 GETTABLEKS                       R35 R35 K18 ["createElement"]
      378 GETUPVAL                         R36 16
      379 DUPTABLE                         R37 K85 [{["tag"] = "label auto-xy text-body-medium", ["Text"]}]
      380 GETTABLEKS                       R38 R0 K2 ["name"]
      382 SETTABLEKS                       R38 R37 K64 ["Text"]
      384 CALL                             R35 2 1
      385 SETTABLEKS                       R35 R34 K64 ["Text"]
      387 CALL                             R31 3 1
      388 SETTABLEKS                       R31 R30 K47 ["InstanceName"]
      390 NOT                              R31 R1
      391 JUMPIFNOT                        R31 ; [+105]
      392 JUMPIF                           R15 ; [+2]
      393 MOVE                             R31 R29
      394 JUMPIFNOT                        R31 ; [+102]
      395 GETUPVAL                         R31 1
      396 GETTABLEKS                       R31 R31 K18 ["createElement"]
      398 GETUPVAL                         R32 8
      399 DUPTABLE                         R33 K87 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-small"}]
      400 MOVE                             R34 R28
      401 CALL                             R34 0 1
      402 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      404 DUPTABLE                         R34 K89 [{"PlusControl"}]
      405 GETTABLEKS                       R36 R0 K11 ["createMenu"]
      407 JUMPIFEQKNIL                     R36 ; [+62]
      409 GETUPVAL                         R35 1
      410 GETTABLEKS                       R35 R35 K18 ["createElement"]
      412 GETUPVAL                         R36 17
      413 DUPTABLE                         R37 K95 [{"align", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      414 GETUPVAL                         R38 18
      415 GETTABLEKS                       R38 R38 K96 ["Start"]
      417 SETTABLEKS                       R38 R37 K90 ["align"]
      419 SETTABLEKS                       R15 R37 K91 ["isOpen"]
      421 GETTABLEKS                       R38 R0 K11 ["createMenu"]
      423 SETTABLEKS                       R38 R37 K92 ["items"]
      425 SETTABLEKS                       R24 R37 K35 ["onActivated"]
      427 SETTABLEKS                       R23 R37 K93 ["onPressedOutside"]
      429 GETUPVAL                         R38 19
      430 GETTABLEKS                       R38 R38 K97 ["Right"]
      432 SETTABLEKS                       R38 R37 K94 ["side"]
      434 LOADK                            R38 K98 ["create-menu-%*"]
      435 MOVE                             R40 R3
      436 NAMECALL                         R38 R38 K17 ["format"]
      438 CALL                             R38 2 1
      439 SETTABLEKS                       R38 R37 K37 ["testId"]
      441 DUPTABLE                         R38 K100 [{"Plus"}]
      442 GETUPVAL                         R39 1
      443 GETTABLEKS                       R39 R39 K18 ["createElement"]
      445 GETUPVAL                         R40 12
      446 DUPTABLE                         R41 K102 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      447 SETTABLEKS                       R22 R41 K35 ["onActivated"]
      449 GETUPVAL                         R42 10
      450 GETTABLEKS                       R42 R42 K28 ["Enums"]
      452 GETTABLEKS                       R42 R42 K103 ["IconSize"]
      454 GETTABLEKS                       R42 R42 K75 ["Small"]
      456 SETTABLEKS                       R42 R41 K36 ["size"]
      458 LOADK                            R42 K104 ["add-%*"]
      459 MOVE                             R44 R3
      460 NAMECALL                         R42 R42 K17 ["format"]
      462 CALL                             R42 2 1
      463 SETTABLEKS                       R42 R41 K37 ["testId"]
      465 CALL                             R39 2 1
      466 SETTABLEKS                       R39 R38 K99 ["Plus"]
      468 CALL                             R35 3 1
      469 JUMP                             ; [+24]
      470 GETUPVAL                         R35 1
      471 GETTABLEKS                       R35 R35 K18 ["createElement"]
      473 GETUPVAL                         R36 12
      474 DUPTABLE                         R37 K102 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      475 SETTABLEKS                       R22 R37 K35 ["onActivated"]
      477 GETUPVAL                         R38 10
      478 GETTABLEKS                       R38 R38 K28 ["Enums"]
      480 GETTABLEKS                       R38 R38 K103 ["IconSize"]
      482 GETTABLEKS                       R38 R38 K75 ["Small"]
      484 SETTABLEKS                       R38 R37 K36 ["size"]
      486 LOADK                            R38 K104 ["add-%*"]
      487 MOVE                             R40 R3
      488 NAMECALL                         R38 R38 K17 ["format"]
      490 CALL                             R38 2 1
      491 SETTABLEKS                       R38 R37 K37 ["testId"]
      493 CALL                             R35 2 1
      494 SETTABLEKS                       R35 R34 K88 ["PlusControl"]
      496 CALL                             R31 3 1
      497 SETTABLEKS                       R31 R30 K48 ["AddButton"]
      499 GETTABLEKS                       R31 R0 K15 ["depth"]
      501 LOADN                            R32 0
      502 JUMPIFNOTLT                      R32 R31 ; [+41]
      504 GETUPVAL                         R31 1
      505 GETTABLEKS                       R31 R31 K18 ["createElement"]
      507 GETUPVAL                         R32 8
      508 DUPTABLE                         R33 K106 [{["LayoutOrder"], ["tag"] = "col align-y-center grow size-0-full"}]
      509 MOVE                             R34 R28
      510 CALL                             R34 0 1
      511 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      513 DUPTABLE                         R34 K108 [{"LabelContainer", "Divider"}]
      514 GETUPVAL                         R35 1
      515 GETTABLEKS                       R35 R35 K18 ["createElement"]
      517 GETUPVAL                         R36 8
      518 DUPTABLE                         R37 K111 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-full padding-right-small"}]
      519 MOVE                             R38 R30
      520 CALL                             R35 3 1
      521 SETTABLEKS                       R35 R34 K107 ["LabelContainer"]
      523 GETUPVAL                         R35 1
      524 GETTABLEKS                       R35 R35 K18 ["createElement"]
      526 GETUPVAL                         R36 9
      527 DUPTABLE                         R37 K114 [{["LayoutOrder"] = 2, ["orientation"], ["tag"] = "auto-x"}]
      528 GETUPVAL                         R38 10
      529 GETTABLEKS                       R38 R38 K28 ["Enums"]
      531 GETTABLEKS                       R38 R38 K29 ["Orientation"]
      533 GETTABLEKS                       R38 R38 K115 ["Horizontal"]
      535 SETTABLEKS                       R38 R37 K25 ["orientation"]
      537 CALL                             R35 2 1
      538 SETTABLEKS                       R35 R34 K23 ["Divider"]
      540 CALL                             R31 3 1
      541 SETTABLEKS                       R31 R2 K116 ["StackedInstanceLabel"]
      543 JUMP                             ; [+13]
      544 GETUPVAL                         R31 1
      545 GETTABLEKS                       R31 R31 K18 ["createElement"]
      547 GETUPVAL                         R32 8
      548 DUPTABLE                         R33 K118 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-right-small"}]
      549 MOVE                             R34 R28
      550 CALL                             R34 0 1
      551 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      553 MOVE                             R34 R30
      554 CALL                             R31 3 1
      555 SETTABLEKS                       R31 R2 K107 ["LabelContainer"]
      557 GETTABLEKS                       R32 R0 K10 ["editMenu"]
      559 JUMPIFNOT                        R32 ; [+31]
      560 GETUPVAL                         R31 1
      561 GETTABLEKS                       R31 R31 K18 ["createElement"]
      563 GETUPVAL                         R32 17
      564 DUPTABLE                         R33 K120 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      565 SETTABLEKS                       R12 R33 K119 ["anchorRef"]
      567 SETTABLEKS                       R13 R33 K91 ["isOpen"]
      569 GETTABLEKS                       R34 R0 K10 ["editMenu"]
      571 SETTABLEKS                       R34 R33 K92 ["items"]
      573 SETTABLEKS                       R26 R33 K35 ["onActivated"]
      575 SETTABLEKS                       R25 R33 K93 ["onPressedOutside"]
      577 GETUPVAL                         R34 19
      578 GETTABLEKS                       R34 R34 K97 ["Right"]
      580 SETTABLEKS                       R34 R33 K94 ["side"]
      582 LOADK                            R34 K121 ["edit-menu-%*"]
      583 MOVE                             R36 R3
      584 NAMECALL                         R34 R34 K17 ["format"]
      586 CALL                             R34 2 1
      587 SETTABLEKS                       R34 R33 K37 ["testId"]
      589 CALL                             R31 2 1
      590 JUMP                             ; [+1]
      591 LOADNIL                          R31
      592 SETTABLEKS                       R31 R2 K122 ["EditMenu"]
      594 GETUPVAL                         R31 1
      595 GETTABLEKS                       R31 R31 K18 ["createElement"]
      597 GETUPVAL                         R32 8
      598 DUPTABLE                         R33 K127 [{["LayoutOrder"] = -1, ["onStateChanged"], ["onSecondaryActivated"], ["ref"], ["tag"], ["testId"]}]
      599 SETTABLEKS                       R19 R33 K124 ["onStateChanged"]
      601 GETTABLEKS                       R35 R0 K10 ["editMenu"]
      603 JUMPIFEQKNIL                     R35 ; [+9]
      605 GETTABLEKS                       R36 R0 K10 ["editMenu"]
      607 LENGTH                           R35 R36
      608 LOADN                            R36 0
      609 JUMPIFNOTLT                      R36 R35 ; [+3]
      611 MOVE                             R34 R27
      612 JUMP                             ; [+1]
      613 LOADNIL                          R34
      614 SETTABLEKS                       R34 R33 K125 ["onSecondaryActivated"]
      616 SETTABLEKS                       R12 R33 K126 ["ref"]
      618 GETUPVAL                         R35 0
      619 CALL                             R35 0 1
      620 JUMPIFNOT                        R35 ; [+2]
      621 LOADK                            R34 K128 ["columns-tree"]
      622 JUMP                             ; [+1]
      623 LOADK                            R34 K129 ["columns-tree row align-y-center"]
      624 SETTABLEKS                       R34 R33 K20 ["tag"]
      626 GETTABLEKS                       R35 R0 K7 ["onCreated"]
      628 JUMPIFNOT                        R35 ; [+2]
      629 LOADK                            R34 K130 ["node-creating"]
      630 JUMP                             ; [+5]
      631 LOADK                            R34 K131 ["node-%*"]
      632 MOVE                             R36 R3
      633 NAMECALL                         R34 R34 K17 ["format"]
      635 CALL                             R34 2 1
      636 SETTABLEKS                       R34 R33 K37 ["testId"]
      638 GETUPVAL                         R35 0
      639 CALL                             R35 0 1
      640 JUMPIFNOT                        R35 ; [+17]
      641 DUPTABLE                         R34 K133 [{"Group"}]
      642 GETUPVAL                         R35 1
      643 GETTABLEKS                       R35 R35 K18 ["createElement"]
      645 GETUPVAL                         R36 8
      646 DUPTABLE                         R37 K136 [{["GroupTransparency"], ["tag"] = "row align-y-center size-full-full"}]
      647 JUMPIFNOT                        R1 ; [+2]
      648 LOADK                            R38 K137 [0.5]
      649 JUMP                             ; [+1]
      650 LOADN                            R38 0
      651 SETTABLEKS                       R38 R37 K134 ["GroupTransparency"]
      653 MOVE                             R38 R2
      654 CALL                             R35 3 1
      655 SETTABLEKS                       R35 R34 K132 ["Group"]
      657 JUMP                             ; [+1]
      658 MOVE                             R34 R2
      659 CALL                             R31 3 1
      660 RETURN                           R31 1

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
      109 GETTABLEKS                       R21 R21 K33 ["getFFlagIAMBooleanProperties"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R22 R0 K22 ["Src"]
      116 GETTABLEKS                       R22 R22 K32 ["Flags"]
      118 GETTABLEKS                       R22 R22 K34 ["getFFlagIAMImprovedModifierMenu"]
      120 CALL                             R21 1 1
      121 DUPCLOSURE                       R22 K35 [PROTO_13]
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 RETURN                           R22 1
