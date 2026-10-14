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
       64 GETUPVAL                         R14 5
       65 CALL                             R14 0 1
       66 JUMPIFNOT                        R14 ; [+7]
       67 GETTABLEKS                       R14 R0 K9 ["anchorRef"]
       69 JUMPIFNOT                        R14 ; [+4]
       70 GETTABLEKS                       R14 R0 K9 ["anchorRef"]
       72 OR                               R13 R14 R12
       73 JUMP                             ; [+1]
       74 MOVE                             R13 R12
       75 GETUPVAL                         R14 6
       76 GETTABLEKS                       R14 R14 K10 ["useStagnatingState"]
       78 LOADB                            R15 0
       79 NEWTABLE                         R16 0 1
       81 GETTABLEKS                       R17 R0 K11 ["editMenu"]
       83 SETLIST                          R16 R17 1 [1]
       85 CALL                             R14 2 2
       86 GETUPVAL                         R16 6
       87 GETTABLEKS                       R16 R16 K10 ["useStagnatingState"]
       89 LOADB                            R17 0
       90 NEWTABLE                         R18 0 1
       92 GETTABLEKS                       R19 R0 K12 ["createMenu"]
       94 SETLIST                          R18 R19 1 [1]
       96 CALL                             R16 2 2
       97 GETUPVAL                         R18 1
       98 GETTABLEKS                       R18 R18 K13 ["useEffect"]
      100 NEWCLOSURE                       R19 P1
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R6
      104 NEWTABLE                         R20 0 1
      106 MOVE                             R21 R7
      107 SETLIST                          R20 R21 1 [1]
      109 CALL                             R18 2 0
      110 GETUPVAL                         R18 6
      111 GETTABLEKS                       R18 R18 K14 ["useEventCallback"]
      113 NEWCLOSURE                       R19 P2
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R8
      118 CALL                             R18 1 1
      119 GETUPVAL                         R19 6
      120 GETTABLEKS                       R19 R19 K14 ["useEventCallback"]
      122 NEWCLOSURE                       R20 P3
      123 CAPTURE                          VAL R5
      124 CALL                             R19 1 1
      125 GETUPVAL                         R20 6
      126 GETTABLEKS                       R20 R20 K14 ["useEventCallback"]
      128 NEWCLOSURE                       R21 P4
      129 CAPTURE                          VAL R10
      130 CAPTURE                          UPVAL U7
      131 CALL                             R20 1 1
      132 GETUPVAL                         R21 6
      133 GETTABLEKS                       R21 R21 K14 ["useEventCallback"]
      135 NEWCLOSURE                       R22 P5
      136 CAPTURE                          VAL R0
      137 CALL                             R21 1 1
      138 GETUPVAL                         R22 6
      139 GETTABLEKS                       R22 R22 K14 ["useEventCallback"]
      141 NEWCLOSURE                       R23 P6
      142 CAPTURE                          VAL R0
      143 CALL                             R22 1 1
      144 GETUPVAL                         R23 6
      145 GETTABLEKS                       R23 R23 K14 ["useEventCallback"]
      147 NEWCLOSURE                       R24 P7
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R22
      152 CALL                             R23 1 1
      153 GETUPVAL                         R24 6
      154 GETTABLEKS                       R24 R24 K14 ["useEventCallback"]
      156 NEWCLOSURE                       R25 P8
      157 CAPTURE                          VAL R17
      158 CALL                             R24 1 1
      159 GETUPVAL                         R25 6
      160 GETTABLEKS                       R25 R25 K14 ["useEventCallback"]
      162 NEWCLOSURE                       R26 P9
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R17
      165 CALL                             R25 1 1
      166 GETUPVAL                         R26 6
      167 GETTABLEKS                       R26 R26 K14 ["useEventCallback"]
      169 NEWCLOSURE                       R27 P10
      170 CAPTURE                          VAL R15
      171 CALL                             R26 1 1
      172 GETUPVAL                         R27 6
      173 GETTABLEKS                       R27 R27 K14 ["useEventCallback"]
      175 NEWCLOSURE                       R28 P11
      176 CAPTURE                          UPVAL U8
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R15
      180 CALL                             R27 1 1
      181 GETUPVAL                         R28 6
      182 GETTABLEKS                       R28 R28 K14 ["useEventCallback"]
      184 NEWCLOSURE                       R29 P12
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R17
      187 CALL                             R28 1 1
      188 GETUPVAL                         R29 6
      189 GETTABLEKS                       R29 R29 K15 ["createNextOrder"]
      191 CALL                             R29 0 1
      192 LOADN                            R32 1
      193 GETTABLEKS                       R30 R0 K16 ["depth"]
      195 LOADN                            R31 1
      196 FORNPREP                         R30
      197 LOADK                            R33 K17 ["DepthMarker%*"]
      198 MOVE                             R35 R32
      199 NAMECALL                         R33 R33 K18 ["format"]
      201 CALL                             R33 2 1
      202 GETUPVAL                         R34 1
      203 GETTABLEKS                       R34 R34 K19 ["createElement"]
      205 GETUPVAL                         R35 9
      206 DUPTABLE                         R36 K23 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      207 MOVE                             R37 R29
      208 CALL                             R37 0 1
      209 SETTABLEKS                       R37 R36 K20 ["LayoutOrder"]
      211 DUPTABLE                         R37 K25 [{"Divider"}]
      212 GETUPVAL                         R38 1
      213 GETTABLEKS                       R38 R38 K19 ["createElement"]
      215 GETUPVAL                         R39 10
      216 DUPTABLE                         R40 K28 [{["orientation"], ["tag"] = "auto-y"}]
      217 GETUPVAL                         R41 11
      218 GETTABLEKS                       R41 R41 K29 ["Enums"]
      220 GETTABLEKS                       R41 R41 K30 ["Orientation"]
      222 GETTABLEKS                       R41 R41 K31 ["Vertical"]
      224 SETTABLEKS                       R41 R40 K26 ["orientation"]
      226 CALL                             R38 2 1
      227 SETTABLEKS                       R38 R37 K24 ["Divider"]
      229 CALL                             R34 3 1
      230 SETTABLE                         R34 R2 R33
      231 FORNLOOP                         R30
      232 GETTABLEKS                       R31 R0 K12 ["createMenu"]
      234 AND                              R30 R31 R9
      235 GETUPVAL                         R31 1
      236 GETTABLEKS                       R31 R31 K19 ["createElement"]
      238 GETUPVAL                         R32 9
      239 DUPTABLE                         R33 K23 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      240 MOVE                             R34 R29
      241 CALL                             R34 0 1
      242 SETTABLEKS                       R34 R33 K20 ["LayoutOrder"]
      244 DUPTABLE                         R34 K33 [{"IconButton"}]
      245 GETTABLEKS                       R35 R0 K34 ["setExpanded"]
      247 JUMPIFNOT                        R35 ; [+32]
      248 GETUPVAL                         R35 1
      249 GETTABLEKS                       R35 R35 K19 ["createElement"]
      251 GETUPVAL                         R36 12
      252 DUPTABLE                         R37 K38 [{"icon", "onActivated", "size", "testId"}]
      253 GETTABLEKS                       R39 R0 K39 ["expanded"]
      255 JUMPIFNOT                        R39 ; [+2]
      256 LOADK                            R38 K40 ["icons/actions/truncationCollapse_small"]
      257 JUMP                             ; [+1]
      258 LOADK                            R38 K41 ["icons/actions/truncationExpand_small"]
      259 SETTABLEKS                       R38 R37 K8 ["icon"]
      261 SETTABLEKS                       R21 R37 K35 ["onActivated"]
      263 GETUPVAL                         R38 11
      264 GETTABLEKS                       R38 R38 K29 ["Enums"]
      266 GETTABLEKS                       R38 R38 K42 ["InputSize"]
      268 GETTABLEKS                       R38 R38 K43 ["XSmall"]
      270 SETTABLEKS                       R38 R37 K36 ["size"]
      272 LOADK                            R38 K44 ["expand-%*"]
      273 MOVE                             R40 R3
      274 NAMECALL                         R38 R38 K18 ["format"]
      276 CALL                             R38 2 1
      277 SETTABLEKS                       R38 R37 K37 ["testId"]
      279 CALL                             R35 2 1
      280 SETTABLEKS                       R35 R34 K32 ["IconButton"]
      282 CALL                             R31 3 1
      283 SETTABLEKS                       R31 R2 K45 ["ExpandButton"]
      285 DUPTABLE                         R31 K49 [{"ClassImage", "InstanceName", "AddButton"}]
      286 MOVE                             R32 R11
      287 JUMPIFNOT                        R32 ; [+35]
      288 GETUPVAL                         R32 1
      289 GETTABLEKS                       R32 R32 K19 ["createElement"]
      291 GETUPVAL                         R33 9
      292 DUPTABLE                         R34 K23 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      293 MOVE                             R35 R29
      294 CALL                             R35 0 1
      295 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      297 DUPTABLE                         R35 K51 [{"Image"}]
      298 GETUPVAL                         R36 1
      299 GETTABLEKS                       R36 R36 K19 ["createElement"]
      301 GETUPVAL                         R37 13
      302 DUPTABLE                         R38 K56 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["ScaleType"], ["tag"] = "icon spacer align-x-center align-y-center"}]
      303 GETTABLEKS                       R39 R11 K50 ["Image"]
      305 SETTABLEKS                       R39 R38 K50 ["Image"]
      307 GETTABLEKS                       R39 R11 K57 ["ImageRectOffset"]
      309 SETTABLEKS                       R39 R38 K52 ["imageRectOffset"]
      311 GETTABLEKS                       R39 R11 K58 ["ImageRectSize"]
      313 SETTABLEKS                       R39 R38 K53 ["imageRectSize"]
      315 GETIMPORT                        R39 K61 [Enum.ScaleType.Fit]
      317 SETTABLEKS                       R39 R38 K54 ["ScaleType"]
      319 CALL                             R36 2 1
      320 SETTABLEKS                       R36 R35 K50 ["Image"]
      322 CALL                             R32 3 1
      323 SETTABLEKS                       R32 R31 K46 ["ClassImage"]
      325 GETUPVAL                         R32 1
      326 GETTABLEKS                       R32 R32 K19 ["createElement"]
      328 GETUPVAL                         R33 9
      329 DUPTABLE                         R34 K63 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-left-small"}]
      330 MOVE                             R35 R29
      331 CALL                             R35 0 1
      332 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      334 DUPTABLE                         R35 K65 [{"Text"}]
      335 JUMPIFNOT                        R7 ; [+40]
      336 GETUPVAL                         R36 1
      337 GETTABLEKS                       R36 R36 K19 ["createElement"]
      339 GETUPVAL                         R37 14
      340 DUPTABLE                         R38 K74 [{["label"] = "", ["textBoxRef"], ["onChanged"], ["onFocusLost"], ["size"], ["testId"], ["text"], ["textInputType"], ["width"]}]
      341 SETTABLEKS                       R6 R38 K68 ["textBoxRef"]
      343 SETTABLEKS                       R19 R38 K69 ["onChanged"]
      345 SETTABLEKS                       R18 R38 K70 ["onFocusLost"]
      347 GETUPVAL                         R39 15
      348 GETTABLEKS                       R39 R39 K75 ["Small"]
      350 SETTABLEKS                       R39 R38 K36 ["size"]
      352 LOADK                            R39 K76 ["rename-%*"]
      353 MOVE                             R41 R3
      354 NAMECALL                         R39 R39 K18 ["format"]
      356 CALL                             R39 2 1
      357 SETTABLEKS                       R39 R38 K37 ["testId"]
      359 GETTABLEKS                       R39 R5 K77 ["current"]
      361 SETTABLEKS                       R39 R38 K71 ["text"]
      363 GETIMPORT                        R39 K80 [Enum.TextInputType.Default]
      365 SETTABLEKS                       R39 R38 K72 ["textInputType"]
      367 GETIMPORT                        R39 K83 [UDim.new]
      369 LOADN                            R40 1
      370 LOADN                            R41 -5
      371 CALL                             R39 2 1
      372 SETTABLEKS                       R39 R38 K73 ["width"]
      374 CALL                             R36 2 1
      375 JUMP                             ; [+10]
      376 GETUPVAL                         R36 1
      377 GETTABLEKS                       R36 R36 K19 ["createElement"]
      379 GETUPVAL                         R37 16
      380 DUPTABLE                         R38 K85 [{["tag"] = "label auto-xy text-body-medium", ["Text"]}]
      381 GETTABLEKS                       R39 R0 K2 ["name"]
      383 SETTABLEKS                       R39 R38 K64 ["Text"]
      385 CALL                             R36 2 1
      386 SETTABLEKS                       R36 R35 K64 ["Text"]
      388 CALL                             R32 3 1
      389 SETTABLEKS                       R32 R31 K47 ["InstanceName"]
      391 NOT                              R32 R1
      392 JUMPIFNOT                        R32 ; [+105]
      393 JUMPIF                           R16 ; [+2]
      394 MOVE                             R32 R30
      395 JUMPIFNOT                        R32 ; [+102]
      396 GETUPVAL                         R32 1
      397 GETTABLEKS                       R32 R32 K19 ["createElement"]
      399 GETUPVAL                         R33 9
      400 DUPTABLE                         R34 K87 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-small"}]
      401 MOVE                             R35 R29
      402 CALL                             R35 0 1
      403 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      405 DUPTABLE                         R35 K89 [{"PlusControl"}]
      406 GETTABLEKS                       R37 R0 K12 ["createMenu"]
      408 JUMPIFEQKNIL                     R37 ; [+62]
      410 GETUPVAL                         R36 1
      411 GETTABLEKS                       R36 R36 K19 ["createElement"]
      413 GETUPVAL                         R37 17
      414 DUPTABLE                         R38 K95 [{"align", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      415 GETUPVAL                         R39 18
      416 GETTABLEKS                       R39 R39 K96 ["Start"]
      418 SETTABLEKS                       R39 R38 K90 ["align"]
      420 SETTABLEKS                       R16 R38 K91 ["isOpen"]
      422 GETTABLEKS                       R39 R0 K12 ["createMenu"]
      424 SETTABLEKS                       R39 R38 K92 ["items"]
      426 SETTABLEKS                       R25 R38 K35 ["onActivated"]
      428 SETTABLEKS                       R24 R38 K93 ["onPressedOutside"]
      430 GETUPVAL                         R39 19
      431 GETTABLEKS                       R39 R39 K97 ["Right"]
      433 SETTABLEKS                       R39 R38 K94 ["side"]
      435 LOADK                            R39 K98 ["create-menu-%*"]
      436 MOVE                             R41 R3
      437 NAMECALL                         R39 R39 K18 ["format"]
      439 CALL                             R39 2 1
      440 SETTABLEKS                       R39 R38 K37 ["testId"]
      442 DUPTABLE                         R39 K100 [{"Plus"}]
      443 GETUPVAL                         R40 1
      444 GETTABLEKS                       R40 R40 K19 ["createElement"]
      446 GETUPVAL                         R41 12
      447 DUPTABLE                         R42 K102 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      448 SETTABLEKS                       R23 R42 K35 ["onActivated"]
      450 GETUPVAL                         R43 11
      451 GETTABLEKS                       R43 R43 K29 ["Enums"]
      453 GETTABLEKS                       R43 R43 K103 ["IconSize"]
      455 GETTABLEKS                       R43 R43 K75 ["Small"]
      457 SETTABLEKS                       R43 R42 K36 ["size"]
      459 LOADK                            R43 K104 ["add-%*"]
      460 MOVE                             R45 R3
      461 NAMECALL                         R43 R43 K18 ["format"]
      463 CALL                             R43 2 1
      464 SETTABLEKS                       R43 R42 K37 ["testId"]
      466 CALL                             R40 2 1
      467 SETTABLEKS                       R40 R39 K99 ["Plus"]
      469 CALL                             R36 3 1
      470 JUMP                             ; [+24]
      471 GETUPVAL                         R36 1
      472 GETTABLEKS                       R36 R36 K19 ["createElement"]
      474 GETUPVAL                         R37 12
      475 DUPTABLE                         R38 K102 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      476 SETTABLEKS                       R23 R38 K35 ["onActivated"]
      478 GETUPVAL                         R39 11
      479 GETTABLEKS                       R39 R39 K29 ["Enums"]
      481 GETTABLEKS                       R39 R39 K103 ["IconSize"]
      483 GETTABLEKS                       R39 R39 K75 ["Small"]
      485 SETTABLEKS                       R39 R38 K36 ["size"]
      487 LOADK                            R39 K104 ["add-%*"]
      488 MOVE                             R41 R3
      489 NAMECALL                         R39 R39 K18 ["format"]
      491 CALL                             R39 2 1
      492 SETTABLEKS                       R39 R38 K37 ["testId"]
      494 CALL                             R36 2 1
      495 SETTABLEKS                       R36 R35 K88 ["PlusControl"]
      497 CALL                             R32 3 1
      498 SETTABLEKS                       R32 R31 K48 ["AddButton"]
      500 GETTABLEKS                       R32 R0 K16 ["depth"]
      502 LOADN                            R33 0
      503 JUMPIFNOTLT                      R33 R32 ; [+41]
      505 GETUPVAL                         R32 1
      506 GETTABLEKS                       R32 R32 K19 ["createElement"]
      508 GETUPVAL                         R33 9
      509 DUPTABLE                         R34 K106 [{["LayoutOrder"], ["tag"] = "col align-y-center grow size-0-full"}]
      510 MOVE                             R35 R29
      511 CALL                             R35 0 1
      512 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      514 DUPTABLE                         R35 K108 [{"LabelContainer", "Divider"}]
      515 GETUPVAL                         R36 1
      516 GETTABLEKS                       R36 R36 K19 ["createElement"]
      518 GETUPVAL                         R37 9
      519 DUPTABLE                         R38 K111 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-full padding-right-small"}]
      520 MOVE                             R39 R31
      521 CALL                             R36 3 1
      522 SETTABLEKS                       R36 R35 K107 ["LabelContainer"]
      524 GETUPVAL                         R36 1
      525 GETTABLEKS                       R36 R36 K19 ["createElement"]
      527 GETUPVAL                         R37 10
      528 DUPTABLE                         R38 K114 [{["LayoutOrder"] = 2, ["orientation"], ["tag"] = "auto-x"}]
      529 GETUPVAL                         R39 11
      530 GETTABLEKS                       R39 R39 K29 ["Enums"]
      532 GETTABLEKS                       R39 R39 K30 ["Orientation"]
      534 GETTABLEKS                       R39 R39 K115 ["Horizontal"]
      536 SETTABLEKS                       R39 R38 K26 ["orientation"]
      538 CALL                             R36 2 1
      539 SETTABLEKS                       R36 R35 K24 ["Divider"]
      541 CALL                             R32 3 1
      542 SETTABLEKS                       R32 R2 K116 ["StackedInstanceLabel"]
      544 JUMP                             ; [+13]
      545 GETUPVAL                         R32 1
      546 GETTABLEKS                       R32 R32 K19 ["createElement"]
      548 GETUPVAL                         R33 9
      549 DUPTABLE                         R34 K118 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-right-small"}]
      550 MOVE                             R35 R29
      551 CALL                             R35 0 1
      552 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      554 MOVE                             R35 R31
      555 CALL                             R32 3 1
      556 SETTABLEKS                       R32 R2 K107 ["LabelContainer"]
      558 GETTABLEKS                       R33 R0 K11 ["editMenu"]
      560 JUMPIFNOT                        R33 ; [+31]
      561 GETUPVAL                         R32 1
      562 GETTABLEKS                       R32 R32 K19 ["createElement"]
      564 GETUPVAL                         R33 17
      565 DUPTABLE                         R34 K119 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      566 SETTABLEKS                       R13 R34 K9 ["anchorRef"]
      568 SETTABLEKS                       R14 R34 K91 ["isOpen"]
      570 GETTABLEKS                       R35 R0 K11 ["editMenu"]
      572 SETTABLEKS                       R35 R34 K92 ["items"]
      574 SETTABLEKS                       R27 R34 K35 ["onActivated"]
      576 SETTABLEKS                       R26 R34 K93 ["onPressedOutside"]
      578 GETUPVAL                         R35 19
      579 GETTABLEKS                       R35 R35 K97 ["Right"]
      581 SETTABLEKS                       R35 R34 K94 ["side"]
      583 LOADK                            R35 K120 ["edit-menu-%*"]
      584 MOVE                             R37 R3
      585 NAMECALL                         R35 R35 K18 ["format"]
      587 CALL                             R35 2 1
      588 SETTABLEKS                       R35 R34 K37 ["testId"]
      590 CALL                             R32 2 1
      591 JUMP                             ; [+1]
      592 LOADNIL                          R32
      593 SETTABLEKS                       R32 R2 K121 ["EditMenu"]
      595 GETUPVAL                         R32 1
      596 GETTABLEKS                       R32 R32 K19 ["createElement"]
      598 GETUPVAL                         R33 9
      599 DUPTABLE                         R34 K126 [{["LayoutOrder"] = -1, ["onStateChanged"], ["onSecondaryActivated"], ["ref"], ["tag"], ["testId"]}]
      600 SETTABLEKS                       R20 R34 K123 ["onStateChanged"]
      602 GETTABLEKS                       R36 R0 K11 ["editMenu"]
      604 JUMPIFEQKNIL                     R36 ; [+9]
      606 GETTABLEKS                       R37 R0 K11 ["editMenu"]
      608 LENGTH                           R36 R37
      609 LOADN                            R37 0
      610 JUMPIFNOTLT                      R37 R36 ; [+3]
      612 MOVE                             R35 R28
      613 JUMP                             ; [+1]
      614 LOADNIL                          R35
      615 SETTABLEKS                       R35 R34 K124 ["onSecondaryActivated"]
      617 SETTABLEKS                       R13 R34 K125 ["ref"]
      619 GETUPVAL                         R36 0
      620 CALL                             R36 0 1
      621 JUMPIFNOT                        R36 ; [+2]
      622 LOADK                            R35 K127 ["columns-tree"]
      623 JUMP                             ; [+1]
      624 LOADK                            R35 K128 ["columns-tree row align-y-center"]
      625 SETTABLEKS                       R35 R34 K21 ["tag"]
      627 GETTABLEKS                       R36 R0 K7 ["onCreated"]
      629 JUMPIFNOT                        R36 ; [+2]
      630 LOADK                            R35 K129 ["node-creating"]
      631 JUMP                             ; [+5]
      632 LOADK                            R35 K130 ["node-%*"]
      633 MOVE                             R37 R3
      634 NAMECALL                         R35 R35 K18 ["format"]
      636 CALL                             R35 2 1
      637 SETTABLEKS                       R35 R34 K37 ["testId"]
      639 GETUPVAL                         R36 0
      640 CALL                             R36 0 1
      641 JUMPIFNOT                        R36 ; [+17]
      642 DUPTABLE                         R35 K132 [{"Group"}]
      643 GETUPVAL                         R36 1
      644 GETTABLEKS                       R36 R36 K19 ["createElement"]
      646 GETUPVAL                         R37 9
      647 DUPTABLE                         R38 K135 [{["GroupTransparency"], ["tag"] = "row align-y-center size-full-full"}]
      648 JUMPIFNOT                        R1 ; [+2]
      649 LOADK                            R39 K136 [0.5]
      650 JUMP                             ; [+1]
      651 LOADN                            R39 0
      652 SETTABLEKS                       R39 R38 K133 ["GroupTransparency"]
      654 MOVE                             R39 R2
      655 CALL                             R36 3 1
      656 SETTABLEKS                       R36 R35 K131 ["Group"]
      658 JUMP                             ; [+1]
      659 MOVE                             R35 R2
      660 CALL                             R32 3 1
      661 RETURN                           R32 1

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
      118 GETTABLEKS                       R22 R22 K34 ["getFFlagIAMNodePropertyMenu"]
      120 CALL                             R21 1 1
      121 DUPCLOSURE                       R22 K35 [PROTO_13]
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R21
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 RETURN                           R22 1
