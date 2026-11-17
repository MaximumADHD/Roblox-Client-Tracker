PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onCreated"]
        5 JUMPIFEQKNIL                     R0 ; [+17]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+14]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 JUMPIFNOT                        R0 ; [+10]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["current"]
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R0 3
       18 GETTABLEKS                       R0 R0 K1 ["current"]
       20 NAMECALL                         R0 R0 K2 ["focus"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCreateMenuItemSelected"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["onCreateMenuItemSelected"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["disabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useContext"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 NOT                              R3 R4
       12 JUMPIF                           R3 ; [+8]
       13 GETTABLEKS                       R4 R2 K3 ["datamodelType"]
       15 GETIMPORT                        R5 K7 [Enum.StudioDataModelType.Edit]
       17 JUMPIFEQ                         R4 R5 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+6]
       24 GETTABLEKS                       R5 R0 K8 ["defaultPlayerScript"]
       26 JUMPIFEQKB                       R5 TRUE ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 JUMPIFNOT                        R3 ; [+4]
       31 JUMPIF                           R4 ; [+3]
       32 GETTABLEKS                       R5 R0 K9 ["createMenu"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 JUMPIFNOT                        R3 ; [+4]
       37 JUMPIF                           R4 ; [+3]
       38 GETTABLEKS                       R6 R0 K10 ["editMenu"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 NEWTABLE                         R7 4 0
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R10 0 1
       52 GETTABLEKS                       R11 R0 K12 ["name"]
       54 SETLIST                          R10 R11 1 [1]
       56 CALL                             R8 2 1
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K1 ["useContext"]
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K2 ["Context"]
       63 CALL                             R9 1 1
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K13 ["useRef"]
       67 GETTABLEKS                       R11 R0 K12 ["name"]
       69 CALL                             R10 1 1
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R11 R11 K13 ["useRef"]
       73 LOADNIL                          R12
       74 CALL                             R11 1 1
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K14 ["useState"]
       78 GETTABLEKS                       R14 R0 K15 ["onCreated"]
       80 JUMPIFNOTEQKNIL                  R14 ; [+2]
       82 LOADB                            R13 0 +1
       83 LOADB                            R13 1
       84 CALL                             R12 1 2
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K14 ["useState"]
       88 LOADB                            R15 0
       89 CALL                             R14 1 2
       90 GETUPVAL                         R16 5
       91 GETTABLEKS                       R17 R0 K16 ["icon"]
       93 CALL                             R16 1 1
       94 GETUPVAL                         R17 0
       95 GETTABLEKS                       R17 R17 K13 ["useRef"]
       97 LOADNIL                          R18
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R19 R0 K17 ["anchorRef"]
      101 JUMPIFNOT                        R19 ; [+4]
      102 GETTABLEKS                       R19 R0 K17 ["anchorRef"]
      104 OR                               R18 R19 R17
      105 JUMP                             ; [+1]
      106 MOVE                             R18 R17
      107 GETUPVAL                         R19 6
      108 GETTABLEKS                       R19 R19 K18 ["useStagnatingState"]
      110 LOADB                            R20 0
      111 NEWTABLE                         R21 0 1
      113 MOVE                             R22 R6
      114 SETLIST                          R21 R22 1 [1]
      116 CALL                             R19 2 2
      117 GETUPVAL                         R21 6
      118 GETTABLEKS                       R21 R21 K18 ["useStagnatingState"]
      120 LOADB                            R22 0
      121 NEWTABLE                         R23 0 1
      123 MOVE                             R24 R5
      124 SETLIST                          R23 R24 1 [1]
      126 CALL                             R21 2 2
      127 GETUPVAL                         R23 0
      128 GETTABLEKS                       R23 R23 K19 ["useEffect"]
      130 NEWCLOSURE                       R24 P1
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R11
      135 NEWTABLE                         R25 0 2
      137 MOVE                             R26 R3
      138 MOVE                             R27 R12
      139 SETLIST                          R25 R26 2 [1]
      141 CALL                             R23 2 0
      142 GETUPVAL                         R23 6
      143 GETTABLEKS                       R23 R23 K20 ["useEventCallback"]
      145 NEWCLOSURE                       R24 P2
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R13
      150 CALL                             R23 1 1
      151 GETUPVAL                         R24 6
      152 GETTABLEKS                       R24 R24 K20 ["useEventCallback"]
      154 NEWCLOSURE                       R25 P3
      155 CAPTURE                          VAL R10
      156 CALL                             R24 1 1
      157 GETUPVAL                         R25 7
      158 CALL                             R25 0 1
      159 JUMPIFNOT                        R25 ; [+13]
      160 GETUPVAL                         R25 0
      161 GETTABLEKS                       R25 R25 K19 ["useEffect"]
      163 NEWCLOSURE                       R26 P4
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R0
      166 NEWTABLE                         R27 0 1
      168 GETTABLEKS                       R28 R0 K12 ["name"]
      170 SETLIST                          R27 R28 1 [1]
      172 CALL                             R25 2 0
      173 GETUPVAL                         R25 6
      174 GETTABLEKS                       R25 R25 K20 ["useEventCallback"]
      176 NEWCLOSURE                       R26 P5
      177 CAPTURE                          VAL R15
      178 CAPTURE                          UPVAL U8
      179 CALL                             R25 1 1
      180 GETUPVAL                         R26 6
      181 GETTABLEKS                       R26 R26 K20 ["useEventCallback"]
      183 NEWCLOSURE                       R27 P6
      184 CAPTURE                          VAL R0
      185 CALL                             R26 1 1
      186 GETUPVAL                         R27 6
      187 GETTABLEKS                       R27 R27 K20 ["useEventCallback"]
      189 NEWCLOSURE                       R28 P7
      190 CAPTURE                          VAL R0
      191 CALL                             R27 1 1
      192 GETUPVAL                         R28 6
      193 GETTABLEKS                       R28 R28 K20 ["useEventCallback"]
      195 NEWCLOSURE                       R29 P8
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R27
      200 CALL                             R28 1 1
      201 GETUPVAL                         R29 6
      202 GETTABLEKS                       R29 R29 K20 ["useEventCallback"]
      204 NEWCLOSURE                       R30 P9
      205 CAPTURE                          VAL R22
      206 CALL                             R29 1 1
      207 GETUPVAL                         R30 6
      208 GETTABLEKS                       R30 R30 K20 ["useEventCallback"]
      210 NEWCLOSURE                       R31 P10
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R22
      213 CALL                             R30 1 1
      214 GETUPVAL                         R31 6
      215 GETTABLEKS                       R31 R31 K20 ["useEventCallback"]
      217 NEWCLOSURE                       R32 P11
      218 CAPTURE                          VAL R20
      219 CALL                             R31 1 1
      220 GETUPVAL                         R32 6
      221 GETTABLEKS                       R32 R32 K20 ["useEventCallback"]
      223 NEWCLOSURE                       R33 P12
      224 CAPTURE                          UPVAL U9
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R20
      228 CALL                             R32 1 1
      229 GETUPVAL                         R33 6
      230 GETTABLEKS                       R33 R33 K20 ["useEventCallback"]
      232 NEWCLOSURE                       R34 P13
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R22
      235 CALL                             R33 1 1
      236 GETUPVAL                         R34 6
      237 GETTABLEKS                       R34 R34 K21 ["createNextOrder"]
      239 CALL                             R34 0 1
      240 LOADN                            R37 1
      241 GETTABLEKS                       R35 R0 K22 ["depth"]
      243 LOADN                            R36 1
      244 FORNPREP                         R35
      245 LOADK                            R38 K23 ["DepthMarker%*"]
      246 MOVE                             R40 R37
      247 NAMECALL                         R38 R38 K24 ["format"]
      249 CALL                             R38 2 1
      250 GETUPVAL                         R39 0
      251 GETTABLEKS                       R39 R39 K25 ["createElement"]
      253 GETUPVAL                         R40 10
      254 DUPTABLE                         R41 K29 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      255 MOVE                             R42 R34
      256 CALL                             R42 0 1
      257 SETTABLEKS                       R42 R41 K26 ["LayoutOrder"]
      259 DUPTABLE                         R42 K31 [{"Divider"}]
      260 GETUPVAL                         R43 0
      261 GETTABLEKS                       R43 R43 K25 ["createElement"]
      263 GETUPVAL                         R44 11
      264 DUPTABLE                         R45 K34 [{["orientation"], ["tag"] = "auto-y"}]
      265 GETUPVAL                         R46 12
      266 GETTABLEKS                       R46 R46 K35 ["Enums"]
      268 GETTABLEKS                       R46 R46 K36 ["Orientation"]
      270 GETTABLEKS                       R46 R46 K37 ["Vertical"]
      272 SETTABLEKS                       R46 R45 K32 ["orientation"]
      274 CALL                             R43 2 1
      275 SETTABLEKS                       R43 R42 K30 ["Divider"]
      277 CALL                             R39 3 1
      278 SETTABLE                         R39 R7 R38
      279 FORNLOOP                         R35
      280 AND                              R35 R5 R14
      281 GETUPVAL                         R36 0
      282 GETTABLEKS                       R36 R36 K25 ["createElement"]
      284 GETUPVAL                         R37 10
      285 DUPTABLE                         R38 K29 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      286 MOVE                             R39 R34
      287 CALL                             R39 0 1
      288 SETTABLEKS                       R39 R38 K26 ["LayoutOrder"]
      290 DUPTABLE                         R39 K39 [{"IconButton"}]
      291 GETTABLEKS                       R40 R0 K40 ["setExpanded"]
      293 JUMPIFNOT                        R40 ; [+32]
      294 GETUPVAL                         R40 0
      295 GETTABLEKS                       R40 R40 K25 ["createElement"]
      297 GETUPVAL                         R41 13
      298 DUPTABLE                         R42 K44 [{"icon", "onActivated", "size", "testId"}]
      299 GETTABLEKS                       R44 R0 K45 ["expanded"]
      301 JUMPIFNOT                        R44 ; [+2]
      302 LOADK                            R43 K46 ["icons/actions/truncationCollapse_small"]
      303 JUMP                             ; [+1]
      304 LOADK                            R43 K47 ["icons/actions/truncationExpand_small"]
      305 SETTABLEKS                       R43 R42 K16 ["icon"]
      307 SETTABLEKS                       R26 R42 K41 ["onActivated"]
      309 GETUPVAL                         R43 12
      310 GETTABLEKS                       R43 R43 K35 ["Enums"]
      312 GETTABLEKS                       R43 R43 K48 ["InputSize"]
      314 GETTABLEKS                       R43 R43 K49 ["XSmall"]
      316 SETTABLEKS                       R43 R42 K42 ["size"]
      318 LOADK                            R43 K50 ["expand-%*"]
      319 MOVE                             R45 R8
      320 NAMECALL                         R43 R43 K24 ["format"]
      322 CALL                             R43 2 1
      323 SETTABLEKS                       R43 R42 K43 ["testId"]
      325 CALL                             R40 2 1
      326 SETTABLEKS                       R40 R39 K38 ["IconButton"]
      328 CALL                             R36 3 1
      329 SETTABLEKS                       R36 R7 K51 ["ExpandButton"]
      331 DUPTABLE                         R36 K55 [{"ClassImage", "InstanceName", "AddButton"}]
      332 MOVE                             R37 R16
      333 JUMPIFNOT                        R37 ; [+35]
      334 GETUPVAL                         R37 0
      335 GETTABLEKS                       R37 R37 K25 ["createElement"]
      337 GETUPVAL                         R38 10
      338 DUPTABLE                         R39 K29 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-left-small"}]
      339 MOVE                             R40 R34
      340 CALL                             R40 0 1
      341 SETTABLEKS                       R40 R39 K26 ["LayoutOrder"]
      343 DUPTABLE                         R40 K57 [{"Image"}]
      344 GETUPVAL                         R41 0
      345 GETTABLEKS                       R41 R41 K25 ["createElement"]
      347 GETUPVAL                         R42 14
      348 DUPTABLE                         R43 K62 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["ScaleType"], ["tag"] = "icon spacer align-x-center align-y-center"}]
      349 GETTABLEKS                       R44 R16 K56 ["Image"]
      351 SETTABLEKS                       R44 R43 K56 ["Image"]
      353 GETTABLEKS                       R44 R16 K63 ["ImageRectOffset"]
      355 SETTABLEKS                       R44 R43 K58 ["imageRectOffset"]
      357 GETTABLEKS                       R44 R16 K64 ["ImageRectSize"]
      359 SETTABLEKS                       R44 R43 K59 ["imageRectSize"]
      361 GETIMPORT                        R44 K66 [Enum.ScaleType.Fit]
      363 SETTABLEKS                       R44 R43 K60 ["ScaleType"]
      365 CALL                             R41 2 1
      366 SETTABLEKS                       R41 R40 K56 ["Image"]
      368 CALL                             R37 3 1
      369 SETTABLEKS                       R37 R36 K52 ["ClassImage"]
      371 GETUPVAL                         R37 0
      372 GETTABLEKS                       R37 R37 K25 ["createElement"]
      374 GETUPVAL                         R38 10
      375 DUPTABLE                         R39 K68 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-left-small"}]
      376 MOVE                             R40 R34
      377 CALL                             R40 0 1
      378 SETTABLEKS                       R40 R39 K26 ["LayoutOrder"]
      380 DUPTABLE                         R40 K70 [{"Text"}]
      381 JUMPIFNOT                        R3 ; [+41]
      382 JUMPIFNOT                        R12 ; [+40]
      383 GETUPVAL                         R41 0
      384 GETTABLEKS                       R41 R41 K25 ["createElement"]
      386 GETUPVAL                         R42 15
      387 DUPTABLE                         R43 K79 [{["label"] = "", ["textBoxRef"], ["onChanged"], ["onFocusLost"], ["size"], ["testId"], ["text"], ["textInputType"], ["width"]}]
      388 SETTABLEKS                       R11 R43 K73 ["textBoxRef"]
      390 SETTABLEKS                       R24 R43 K74 ["onChanged"]
      392 SETTABLEKS                       R23 R43 K75 ["onFocusLost"]
      394 GETUPVAL                         R44 16
      395 GETTABLEKS                       R44 R44 K80 ["Small"]
      397 SETTABLEKS                       R44 R43 K42 ["size"]
      399 LOADK                            R44 K81 ["rename-%*"]
      400 MOVE                             R46 R8
      401 NAMECALL                         R44 R44 K24 ["format"]
      403 CALL                             R44 2 1
      404 SETTABLEKS                       R44 R43 K43 ["testId"]
      406 GETTABLEKS                       R44 R10 K82 ["current"]
      408 SETTABLEKS                       R44 R43 K76 ["text"]
      410 GETIMPORT                        R44 K85 [Enum.TextInputType.Default]
      412 SETTABLEKS                       R44 R43 K77 ["textInputType"]
      414 GETIMPORT                        R44 K88 [UDim.new]
      416 LOADN                            R45 1
      417 LOADN                            R46 -5
      418 CALL                             R44 2 1
      419 SETTABLEKS                       R44 R43 K78 ["width"]
      421 CALL                             R41 2 1
      422 JUMP                             ; [+10]
      423 GETUPVAL                         R41 0
      424 GETTABLEKS                       R41 R41 K25 ["createElement"]
      426 GETUPVAL                         R42 17
      427 DUPTABLE                         R43 K90 [{["tag"] = "label auto-xy text-body-medium", ["Text"]}]
      428 GETTABLEKS                       R44 R0 K12 ["name"]
      430 SETTABLEKS                       R44 R43 K69 ["Text"]
      432 CALL                             R41 2 1
      433 SETTABLEKS                       R41 R40 K69 ["Text"]
      435 CALL                             R37 3 1
      436 SETTABLEKS                       R37 R36 K53 ["InstanceName"]
      438 NOT                              R37 R1
      439 JUMPIFNOT                        R37 ; [+101]
      440 JUMPIF                           R21 ; [+2]
      441 MOVE                             R37 R35
      442 JUMPIFNOT                        R37 ; [+98]
      443 GETUPVAL                         R37 0
      444 GETTABLEKS                       R37 R37 K25 ["createElement"]
      446 GETUPVAL                         R38 10
      447 DUPTABLE                         R39 K92 [{["LayoutOrder"], ["tag"] = "spacer align-x-center align-y-center padding-small"}]
      448 MOVE                             R40 R34
      449 CALL                             R40 0 1
      450 SETTABLEKS                       R40 R39 K26 ["LayoutOrder"]
      452 DUPTABLE                         R40 K94 [{"PlusControl"}]
      453 JUMPIFEQKNIL                     R5 ; [+60]
      455 GETUPVAL                         R41 0
      456 GETTABLEKS                       R41 R41 K25 ["createElement"]
      458 GETUPVAL                         R42 18
      459 DUPTABLE                         R43 K100 [{"align", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      460 GETUPVAL                         R44 19
      461 GETTABLEKS                       R44 R44 K101 ["Start"]
      463 SETTABLEKS                       R44 R43 K95 ["align"]
      465 SETTABLEKS                       R21 R43 K96 ["isOpen"]
      467 SETTABLEKS                       R5 R43 K97 ["items"]
      469 SETTABLEKS                       R30 R43 K41 ["onActivated"]
      471 SETTABLEKS                       R29 R43 K98 ["onPressedOutside"]
      473 GETUPVAL                         R44 20
      474 GETTABLEKS                       R44 R44 K102 ["Right"]
      476 SETTABLEKS                       R44 R43 K99 ["side"]
      478 LOADK                            R44 K103 ["create-menu-%*"]
      479 MOVE                             R46 R8
      480 NAMECALL                         R44 R44 K24 ["format"]
      482 CALL                             R44 2 1
      483 SETTABLEKS                       R44 R43 K43 ["testId"]
      485 DUPTABLE                         R44 K105 [{"Plus"}]
      486 GETUPVAL                         R45 0
      487 GETTABLEKS                       R45 R45 K25 ["createElement"]
      489 GETUPVAL                         R46 13
      490 DUPTABLE                         R47 K107 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      491 SETTABLEKS                       R28 R47 K41 ["onActivated"]
      493 GETUPVAL                         R48 12
      494 GETTABLEKS                       R48 R48 K35 ["Enums"]
      496 GETTABLEKS                       R48 R48 K108 ["IconSize"]
      498 GETTABLEKS                       R48 R48 K80 ["Small"]
      500 SETTABLEKS                       R48 R47 K42 ["size"]
      502 LOADK                            R48 K109 ["add-%*"]
      503 MOVE                             R50 R8
      504 NAMECALL                         R48 R48 K24 ["format"]
      506 CALL                             R48 2 1
      507 SETTABLEKS                       R48 R47 K43 ["testId"]
      509 CALL                             R45 2 1
      510 SETTABLEKS                       R45 R44 K104 ["Plus"]
      512 CALL                             R41 3 1
      513 JUMP                             ; [+24]
      514 GETUPVAL                         R41 0
      515 GETTABLEKS                       R41 R41 K25 ["createElement"]
      517 GETUPVAL                         R42 13
      518 DUPTABLE                         R43 K107 [{["icon"] = "plus-small", ["onActivated"], ["size"], ["testId"]}]
      519 SETTABLEKS                       R28 R43 K41 ["onActivated"]
      521 GETUPVAL                         R44 12
      522 GETTABLEKS                       R44 R44 K35 ["Enums"]
      524 GETTABLEKS                       R44 R44 K108 ["IconSize"]
      526 GETTABLEKS                       R44 R44 K80 ["Small"]
      528 SETTABLEKS                       R44 R43 K42 ["size"]
      530 LOADK                            R44 K109 ["add-%*"]
      531 MOVE                             R46 R8
      532 NAMECALL                         R44 R44 K24 ["format"]
      534 CALL                             R44 2 1
      535 SETTABLEKS                       R44 R43 K43 ["testId"]
      537 CALL                             R41 2 1
      538 SETTABLEKS                       R41 R40 K93 ["PlusControl"]
      540 CALL                             R37 3 1
      541 SETTABLEKS                       R37 R36 K54 ["AddButton"]
      543 GETTABLEKS                       R37 R0 K22 ["depth"]
      545 LOADN                            R38 0
      546 JUMPIFNOTLT                      R38 R37 ; [+41]
      548 GETUPVAL                         R37 0
      549 GETTABLEKS                       R37 R37 K25 ["createElement"]
      551 GETUPVAL                         R38 10
      552 DUPTABLE                         R39 K111 [{["LayoutOrder"], ["tag"] = "col align-y-center grow size-0-full"}]
      553 MOVE                             R40 R34
      554 CALL                             R40 0 1
      555 SETTABLEKS                       R40 R39 K26 ["LayoutOrder"]
      557 DUPTABLE                         R40 K113 [{"LabelContainer", "Divider"}]
      558 GETUPVAL                         R41 0
      559 GETTABLEKS                       R41 R41 K25 ["createElement"]
      561 GETUPVAL                         R42 10
      562 DUPTABLE                         R43 K116 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-full padding-right-small"}]
      563 MOVE                             R44 R36
      564 CALL                             R41 3 1
      565 SETTABLEKS                       R41 R40 K112 ["LabelContainer"]
      567 GETUPVAL                         R41 0
      568 GETTABLEKS                       R41 R41 K25 ["createElement"]
      570 GETUPVAL                         R42 11
      571 DUPTABLE                         R43 K119 [{["LayoutOrder"] = 2, ["orientation"], ["tag"] = "auto-x"}]
      572 GETUPVAL                         R44 12
      573 GETTABLEKS                       R44 R44 K35 ["Enums"]
      575 GETTABLEKS                       R44 R44 K36 ["Orientation"]
      577 GETTABLEKS                       R44 R44 K120 ["Horizontal"]
      579 SETTABLEKS                       R44 R43 K32 ["orientation"]
      581 CALL                             R41 2 1
      582 SETTABLEKS                       R41 R40 K30 ["Divider"]
      584 CALL                             R37 3 1
      585 SETTABLEKS                       R37 R7 K121 ["StackedInstanceLabel"]
      587 JUMP                             ; [+13]
      588 GETUPVAL                         R37 0
      589 GETTABLEKS                       R37 R37 K25 ["createElement"]
      591 GETUPVAL                         R38 10
      592 DUPTABLE                         R39 K123 [{["LayoutOrder"], ["tag"] = "row align-y-center grow size-0-full padding-right-small"}]
      593 MOVE                             R40 R34
      594 CALL                             R40 0 1
      595 SETTABLEKS                       R40 R39 K26 ["LayoutOrder"]
      597 MOVE                             R40 R36
      598 CALL                             R37 3 1
      599 SETTABLEKS                       R37 R7 K112 ["LabelContainer"]
      601 JUMPIFNOT                        R6 ; [+29]
      602 GETUPVAL                         R37 0
      603 GETTABLEKS                       R37 R37 K25 ["createElement"]
      605 GETUPVAL                         R38 18
      606 DUPTABLE                         R39 K124 [{"anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
      607 SETTABLEKS                       R18 R39 K17 ["anchorRef"]
      609 SETTABLEKS                       R19 R39 K96 ["isOpen"]
      611 SETTABLEKS                       R6 R39 K97 ["items"]
      613 SETTABLEKS                       R32 R39 K41 ["onActivated"]
      615 SETTABLEKS                       R31 R39 K98 ["onPressedOutside"]
      617 GETUPVAL                         R40 20
      618 GETTABLEKS                       R40 R40 K102 ["Right"]
      620 SETTABLEKS                       R40 R39 K99 ["side"]
      622 LOADK                            R40 K125 ["edit-menu-%*"]
      623 MOVE                             R42 R8
      624 NAMECALL                         R40 R40 K24 ["format"]
      626 CALL                             R40 2 1
      627 SETTABLEKS                       R40 R39 K43 ["testId"]
      629 CALL                             R37 2 1
      630 JUMP                             ; [+1]
      631 LOADNIL                          R37
      632 SETTABLEKS                       R37 R7 K126 ["EditMenu"]
      634 GETUPVAL                         R37 0
      635 GETTABLEKS                       R37 R37 K25 ["createElement"]
      637 GETUPVAL                         R38 10
      638 DUPTABLE                         R39 K132 [{["LayoutOrder"] = -1, ["onStateChanged"], ["onSecondaryActivated"], ["ref"], ["tag"] = "columns-tree", ["testId"]}]
      639 SETTABLEKS                       R25 R39 K128 ["onStateChanged"]
      641 JUMPIFEQKNIL                     R6 ; [+7]
      643 LENGTH                           R41 R6
      644 LOADN                            R42 0
      645 JUMPIFNOTLT                      R42 R41 ; [+3]
      647 MOVE                             R40 R33
      648 JUMP                             ; [+1]
      649 LOADNIL                          R40
      650 SETTABLEKS                       R40 R39 K129 ["onSecondaryActivated"]
      652 SETTABLEKS                       R18 R39 K130 ["ref"]
      654 GETTABLEKS                       R41 R0 K15 ["onCreated"]
      656 JUMPIFNOT                        R41 ; [+2]
      657 LOADK                            R40 K133 ["node-creating"]
      658 JUMP                             ; [+5]
      659 LOADK                            R40 K134 ["node-%*"]
      660 MOVE                             R42 R8
      661 NAMECALL                         R40 R40 K24 ["format"]
      663 CALL                             R40 2 1
      664 SETTABLEKS                       R40 R39 K43 ["testId"]
      666 DUPTABLE                         R40 K136 [{"Group"}]
      667 GETUPVAL                         R41 0
      668 GETTABLEKS                       R41 R41 K25 ["createElement"]
      670 GETUPVAL                         R42 10
      671 DUPTABLE                         R43 K139 [{["GroupTransparency"], ["tag"] = "row align-y-center size-full-full"}]
      672 JUMPIFNOT                        R1 ; [+2]
      673 LOADK                            R44 K140 [0.5]
      674 JUMP                             ; [+1]
      675 LOADN                            R44 0
      676 SETTABLEKS                       R44 R43 K137 ["GroupTransparency"]
      678 MOVE                             R44 R7
      679 CALL                             R41 3 1
      680 SETTABLEKS                       R41 R40 K135 ["Group"]
      682 CALL                             R37 3 1
      683 RETURN                           R37 1

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
       64 GETTABLEKS                       R16 R16 K24 ["DatamodelConfiguration"]
       66 CALL                             R15 1 1
       67 GETIMPORT                        R16 K5 [require]
       69 GETTABLEKS                       R17 R0 K22 ["Src"]
       71 GETTABLEKS                       R17 R17 K25 ["Flags"]
       73 GETTABLEKS                       R17 R17 K26 ["getFFlagIAMEditOnlyInEditDatamodel"]
       75 CALL                             R16 1 1
       76 GETIMPORT                        R17 K5 [require]
       78 GETTABLEKS                       R18 R0 K22 ["Src"]
       80 GETTABLEKS                       R18 R18 K23 ["Contexts"]
       82 GETTABLEKS                       R18 R18 K27 ["InputConfiguration"]
       84 CALL                             R17 1 1
       85 GETIMPORT                        R18 K5 [require]
       87 GETTABLEKS                       R19 R0 K22 ["Src"]
       89 GETTABLEKS                       R19 R19 K28 ["Util"]
       91 GETTABLEKS                       R19 R19 K29 ["Constants"]
       93 GETTABLEKS                       R19 R19 K30 ["MenuIdentifiers"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R0 K22 ["Src"]
      100 GETTABLEKS                       R20 R20 K31 ["Types"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R21 R0 K22 ["Src"]
      107 GETTABLEKS                       R21 R21 K28 ["Util"]
      109 GETTABLEKS                       R21 R21 K32 ["formatTestId"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R22 R0 K22 ["Src"]
      116 GETTABLEKS                       R22 R22 K33 ["Hooks"]
      118 GETTABLEKS                       R22 R22 K34 ["useIcon"]
      120 CALL                             R21 1 1
      121 GETIMPORT                        R22 K5 [require]
      123 GETTABLEKS                       R23 R0 K22 ["Src"]
      125 GETTABLEKS                       R23 R23 K25 ["Flags"]
      127 GETTABLEKS                       R23 R23 K35 ["getFFlagIAMResetPropertyEditorsOnPropertyChange"]
      129 CALL                             R22 1 1
      130 DUPCLOSURE                       R23 K36 [PROTO_14]
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R22
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R11
      152 RETURN                           R23 1
