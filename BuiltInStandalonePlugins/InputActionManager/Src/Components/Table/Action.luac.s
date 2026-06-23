PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["type"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K1 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       18 LOADK                            R4 K3 ["Expected id to be a string"]
       19 GETIMPORT                        R2 K5 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K6 ["ROW_USE_COMPOSITE"]
       25 JUMPIFNOTEQ                      R0 R2 ; [+21]
       27 JUMPIFEQKNIL                     R1 ; [+19]
       29 GETUPVAL                         R2 3
       30 CALL                             R2 0 3
       31 FORGPREP                         R2
       32 GETTABLE                         R7 R1 R6
       33 JUMPIFNOT                        R7 ; [+7]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R8 R8 K7 ["updateBinding"]
       37 GETTABLEKS                       R9 R7 K8 ["uuid"]
       39 LOADNIL                          R10
       40 CALL                             R8 2 0
       41 FORGLOOP                         R2 2 ; [-10]
       43 GETUPVAL                         R2 5
       44 LOADK                            R3 K9 ["Composite"]
       45 CALL                             R2 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 2
       48 GETTABLEKS                       R2 R2 K10 ["ROW_USE_KEYCODE"]
       50 JUMPIFNOTEQ                      R0 R2 ; [+21]
       52 JUMPIFEQKNIL                     R1 ; [+19]
       54 GETUPVAL                         R2 3
       55 CALL                             R2 0 3
       56 FORGPREP                         R2
       57 GETTABLE                         R7 R1 R6
       58 JUMPIFNOT                        R7 ; [+7]
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R8 R8 K7 ["updateBinding"]
       62 GETTABLEKS                       R9 R7 K8 ["uuid"]
       64 LOADNIL                          R10
       65 CALL                             R8 2 0
       66 FORGLOOP                         R2 2 ; [-10]
       68 GETUPVAL                         R2 5
       69 LOADK                            R3 K11 ["Keycode"]
       70 CALL                             R2 1 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R2 2
       73 GETTABLEKS                       R2 R2 K12 ["DELETE"]
       75 JUMPIFNOTEQ                      R0 R2 ; [+10]
       77 GETUPVAL                         R2 4
       78 GETTABLEKS                       R2 R2 K13 ["updateAction"]
       80 GETUPVAL                         R3 0
       81 GETTABLEKS                       R3 R3 K8 ["uuid"]
       83 LOADNIL                          R4
       84 CALL                             R2 2 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R2 2
       87 GETTABLEKS                       R2 R2 K14 ["EDIT_ACTION_BOOL"]
       89 JUMPIFNOTEQ                      R0 R2 ; [+17]
       91 GETUPVAL                         R2 4
       92 GETTABLEKS                       R2 R2 K13 ["updateAction"]
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K8 ["uuid"]
       97 DUPTABLE                         R4 K16 [{"type"}]
       98 GETIMPORT                        R5 K20 [Enum.InputActionType.Bool]
      100 SETTABLEKS                       R5 R4 K15 ["type"]
      102 CALL                             R2 2 0
      103 GETUPVAL                         R2 5
      104 LOADK                            R3 K11 ["Keycode"]
      105 CALL                             R2 1 0
      106 RETURN                           R0 0
      107 GETUPVAL                         R2 2
      108 GETTABLEKS                       R2 R2 K21 ["EDIT_ACTION_DIRECTION1D"]
      110 JUMPIFNOTEQ                      R0 R2 ; [+14]
      112 GETUPVAL                         R2 4
      113 GETTABLEKS                       R2 R2 K13 ["updateAction"]
      115 GETUPVAL                         R3 0
      116 GETTABLEKS                       R3 R3 K8 ["uuid"]
      118 DUPTABLE                         R4 K16 [{"type"}]
      119 GETIMPORT                        R5 K23 [Enum.InputActionType.Direction1D]
      121 SETTABLEKS                       R5 R4 K15 ["type"]
      123 CALL                             R2 2 0
      124 RETURN                           R0 0
      125 GETUPVAL                         R2 2
      126 GETTABLEKS                       R2 R2 K24 ["EDIT_ACTION_DIRECTION2D"]
      128 JUMPIFNOTEQ                      R0 R2 ; [+14]
      130 GETUPVAL                         R2 4
      131 GETTABLEKS                       R2 R2 K13 ["updateAction"]
      133 GETUPVAL                         R3 0
      134 GETTABLEKS                       R3 R3 K8 ["uuid"]
      136 DUPTABLE                         R4 K16 [{"type"}]
      137 GETIMPORT                        R5 K26 [Enum.InputActionType.Direction2D]
      139 SETTABLEKS                       R5 R4 K15 ["type"]
      141 CALL                             R2 2 0
      142 RETURN                           R0 0
      143 GETUPVAL                         R2 2
      144 GETTABLEKS                       R2 R2 K27 ["EDIT_ACTION_DIRECTION3D"]
      146 JUMPIFNOTEQ                      R0 R2 ; [+14]
      148 GETUPVAL                         R2 4
      149 GETTABLEKS                       R2 R2 K13 ["updateAction"]
      151 GETUPVAL                         R3 0
      152 GETTABLEKS                       R3 R3 K8 ["uuid"]
      154 DUPTABLE                         R4 K16 [{"type"}]
      155 GETIMPORT                        R5 K29 [Enum.InputActionType.Direction3D]
      157 SETTABLEKS                       R5 R4 K15 ["type"]
      159 CALL                             R2 2 0
      160 RETURN                           R0 0
      161 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R0 K2 ["uuid"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 4
       15 CALL                             R4 0 4
       16 GETUPVAL                         R8 5
       17 GETTABLEKS                       R9 R0 K2 ["uuid"]
       19 JUMPIFNOT                        R3 ; [+16]
       20 LOADB                            R10 1
       21 GETTABLEKS                       R13 R3 K3 ["Keycode"]
       23 LENGTH                           R12 R13
       24 GETTABLEKS                       R14 R3 K4 ["Composite"]
       26 LENGTH                           R13 R14
       27 ADD                              R11 R12 R13
       28 LOADN                            R12 1
       29 JUMPIFLT                         R12 R11 ; [+7]
       31 JUMPIFNOTEQKNIL                  R5 ; [+2]
       33 LOADB                            R10 0 +1
       34 LOADB                            R10 1
       35 JUMP                             ; [+1]
       36 LOADB                            R10 0
       37 CALL                             R8 2 2
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K5 ["useState"]
       41 LOADNIL                          R11
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K0 ["useContext"]
       46 GETUPVAL                         R13 6
       47 GETTABLEKS                       R13 R13 K1 ["Context"]
       49 CALL                             R12 1 1
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K6 ["useMemo"]
       53 NEWCLOSURE                       R14 P0
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R15 0 2
       59 MOVE                             R16 R1
       60 MOVE                             R17 R2
       61 SETLIST                          R15 R16 2 [1]
       63 CALL                             R13 2 1
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R14 R14 K7 ["useCallback"]
       67 NEWCLOSURE                       R15 P1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R11
       74 NEWTABLE                         R16 0 4
       76 MOVE                             R17 R2
       77 MOVE                             R18 R3
       78 MOVE                             R19 R12
       79 MOVE                             R20 R11
       80 SETLIST                          R16 R17 4 [1]
       82 CALL                             R14 2 1
       83 GETUPVAL                         R15 10
       84 GETTABLEKS                       R15 R15 K8 ["createNextOrder"]
       86 CALL                             R15 0 1
       87 JUMPIFEQKNIL                     R2 ; [+3]
       89 JUMPIFNOTEQKNIL                  R3 ; [+3]
       91 LOADNIL                          R16
       92 RETURN                           R16 1
       93 JUMPIFNOTEQKNIL                  R5 ; [+81]
       95 GETTABLEKS                       R17 R3 K3 ["Keycode"]
       97 LENGTH                           R16 R17
       98 LOADN                            R17 1
       99 JUMPIFNOTLE                      R16 R17 ; [+8]
      101 GETTABLEKS                       R17 R3 K4 ["Composite"]
      103 LENGTH                           R16 R17
      104 JUMPIFNOTEQKN                    R16 K9 [0] ; [+3]
      106 JUMPIFEQKNIL                     R10 ; [+3]
      108 JUMPIFNOTEQKS                    R10 K3 ["Keycode"] ; [+66]
      110 GETTABLEKS                       R17 R3 K3 ["Keycode"]
      112 GETTABLEN                        R16 R17 1
      113 JUMPIF                           R16 ; [+2]
      114 NEWTABLE                         R16 0 0
      116 GETUPVAL                         R17 0
      117 GETTABLEKS                       R17 R17 K10 ["createElement"]
      119 GETUPVAL                         R18 11
      120 DUPTABLE                         R19 K14 [{"LayoutOrder", "tag", "testId"}]
      121 GETTABLEKS                       R20 R0 K11 ["LayoutOrder"]
      123 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      125 LOADK                            R20 K15 ["size-full-0 auto-y col"]
      126 SETTABLEKS                       R20 R19 K12 ["tag"]
      128 LOADK                            R21 K16 ["action-%*"]
      129 GETTABLEKS                       R23 R2 K17 ["name"]
      131 NAMECALL                         R21 R21 K18 ["format"]
      133 CALL                             R21 2 1
      134 MOVE                             R20 R21
      135 SETTABLEKS                       R20 R19 K13 ["testId"]
      137 DUPTABLE                         R20 K20 [{"HeaderRow"}]
      138 GETUPVAL                         R21 0
      139 GETTABLEKS                       R21 R21 K10 ["createElement"]
      141 GETUPVAL                         R22 12
      142 DUPTABLE                         R23 K28 [{"action", "bindings", "isRoot", "createMenu", "index", "LayoutOrder", "name", "onBindingEditCommand", "onCreateMenuItemSelected"}]
      143 SETTABLEKS                       R2 R23 K21 ["action"]
      145 SETTABLEKS                       R16 R23 K22 ["bindings"]
      147 LOADB                            R24 1
      148 SETTABLEKS                       R24 R23 K23 ["isRoot"]
      150 SETTABLEKS                       R4 R23 K24 ["createMenu"]
      152 LOADN                            R24 1
      153 SETTABLEKS                       R24 R23 K25 ["index"]
      155 MOVE                             R24 R15
      156 CALL                             R24 0 1
      157 SETTABLEKS                       R24 R23 K11 ["LayoutOrder"]
      159 GETTABLEKS                       R24 R2 K17 ["name"]
      161 SETTABLEKS                       R24 R23 K17 ["name"]
      163 NEWCLOSURE                       R24 P2
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R16
      166 SETTABLEKS                       R24 R23 K26 ["onBindingEditCommand"]
      168 SETTABLEKS                       R6 R23 K27 ["onCreateMenuItemSelected"]
      170 CALL                             R21 2 1
      171 SETTABLEKS                       R21 R20 K19 ["HeaderRow"]
      173 CALL                             R17 3 -1
      174 RETURN                           R17 -1
      175 JUMPIFNOTEQKNIL                  R5 ; [+87]
      177 GETTABLEKS                       R17 R3 K3 ["Keycode"]
      179 LENGTH                           R16 R17
      180 JUMPIFNOTEQKN                    R16 K9 [0] ; [+9]
      182 GETTABLEKS                       R17 R3 K4 ["Composite"]
      184 LENGTH                           R16 R17
      185 LOADN                            R17 1
      186 JUMPIFNOTLE                      R16 R17 ; [+3]
      188 JUMPIFEQKNIL                     R10 ; [+3]
      190 JUMPIFNOTEQKS                    R10 K4 ["Composite"] ; [+72]
      192 GETTABLEKS                       R18 R3 K4 ["Composite"]
      194 LENGTH                           R17 R18
      195 LOADN                            R18 0
      196 JUMPIFNOTLT                      R18 R17 ; [+5]
      198 GETTABLEKS                       R17 R3 K4 ["Composite"]
      200 GETTABLEN                        R16 R17 1
      201 JUMP                             ; [+2]
      202 NEWTABLE                         R16 0 0
      204 GETUPVAL                         R17 0
      205 GETTABLEKS                       R17 R17 K10 ["createElement"]
      207 GETUPVAL                         R18 11
      208 DUPTABLE                         R19 K14 [{"LayoutOrder", "tag", "testId"}]
      209 GETTABLEKS                       R20 R0 K11 ["LayoutOrder"]
      211 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      213 LOADK                            R20 K15 ["size-full-0 auto-y col"]
      214 SETTABLEKS                       R20 R19 K12 ["tag"]
      216 LOADK                            R21 K16 ["action-%*"]
      217 GETTABLEKS                       R23 R2 K17 ["name"]
      219 NAMECALL                         R21 R21 K18 ["format"]
      221 CALL                             R21 2 1
      222 MOVE                             R20 R21
      223 SETTABLEKS                       R20 R19 K13 ["testId"]
      225 DUPTABLE                         R20 K20 [{"HeaderRow"}]
      226 GETUPVAL                         R21 0
      227 GETTABLEKS                       R21 R21 K10 ["createElement"]
      229 GETUPVAL                         R22 13
      230 DUPTABLE                         R23 K28 [{"action", "bindings", "isRoot", "createMenu", "index", "LayoutOrder", "name", "onBindingEditCommand", "onCreateMenuItemSelected"}]
      231 SETTABLEKS                       R2 R23 K21 ["action"]
      233 SETTABLEKS                       R16 R23 K22 ["bindings"]
      235 LOADB                            R24 1
      236 SETTABLEKS                       R24 R23 K23 ["isRoot"]
      238 SETTABLEKS                       R4 R23 K24 ["createMenu"]
      240 LOADN                            R24 1
      241 SETTABLEKS                       R24 R23 K25 ["index"]
      243 MOVE                             R24 R15
      244 CALL                             R24 0 1
      245 SETTABLEKS                       R24 R23 K11 ["LayoutOrder"]
      247 GETTABLEKS                       R24 R2 K17 ["name"]
      249 SETTABLEKS                       R24 R23 K17 ["name"]
      251 NEWCLOSURE                       R24 P3
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R16
      254 SETTABLEKS                       R24 R23 K26 ["onBindingEditCommand"]
      256 SETTABLEKS                       R6 R23 K27 ["onCreateMenuItemSelected"]
      258 CALL                             R21 2 1
      259 SETTABLEKS                       R21 R20 K19 ["HeaderRow"]
      261 CALL                             R17 3 -1
      262 RETURN                           R17 -1
      263 DUPTABLE                         R16 K31 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      264 GETUPVAL                         R17 0
      265 GETTABLEKS                       R17 R17 K10 ["createElement"]
      267 GETUPVAL                         R18 14
      268 DUPTABLE                         R19 K33 [{"bindings", "LayoutOrder", "nodeProps"}]
      269 GETTABLEKS                       R20 R3 K34 ["All"]
      271 SETTABLEKS                       R20 R19 K22 ["bindings"]
      273 MOVE                             R20 R15
      274 CALL                             R20 0 1
      275 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      277 DUPTABLE                         R20 K41 [{"action", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      278 SETTABLEKS                       R2 R20 K21 ["action"]
      280 SETTABLEKS                       R4 R20 K24 ["createMenu"]
      282 LOADN                            R21 1
      283 SETTABLEKS                       R21 R20 K35 ["depth"]
      285 SETTABLEKS                       R13 R20 K36 ["editMenu"]
      287 SETTABLEKS                       R8 R20 K37 ["expanded"]
      289 LOADK                            R21 K42 ["InputAction"]
      290 SETTABLEKS                       R21 R20 K38 ["icon"]
      292 GETTABLEKS                       R21 R2 K17 ["name"]
      294 SETTABLEKS                       R21 R20 K17 ["name"]
      296 SETTABLEKS                       R6 R20 K27 ["onCreateMenuItemSelected"]
      298 SETTABLEKS                       R14 R20 K39 ["onEditMenuItemSelected"]
      300 SETTABLEKS                       R9 R20 K40 ["setExpanded"]
      302 SETTABLEKS                       R20 R19 K32 ["nodeProps"]
      304 CALL                             R17 2 1
      305 SETTABLEKS                       R17 R16 K19 ["HeaderRow"]
      307 LOADB                            R17 0
      308 JUMPIFNOTEQKS                    R5 K3 ["Keycode"] ; [+34]
      310 GETUPVAL                         R17 0
      311 GETTABLEKS                       R17 R17 K10 ["createElement"]
      313 GETUPVAL                         R18 12
      314 DUPTABLE                         R19 K44 [{"action", "bindings", "index", "LayoutOrder", "nodeProps", "onCreated"}]
      315 SETTABLEKS                       R2 R19 K21 ["action"]
      317 NEWTABLE                         R20 0 0
      319 SETTABLEKS                       R20 R19 K22 ["bindings"]
      321 GETTABLEKS                       R22 R3 K3 ["Keycode"]
      323 LENGTH                           R21 R22
      324 ADDK                             R20 R21 K45 [1]
      325 SETTABLEKS                       R20 R19 K25 ["index"]
      327 MOVE                             R20 R15
      328 CALL                             R20 0 1
      329 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      331 DUPTABLE                         R20 K46 [{"depth", "icon"}]
      332 LOADN                            R21 3
      333 SETTABLEKS                       R21 R20 K35 ["depth"]
      335 LOADK                            R21 K47 ["InputBinding"]
      336 SETTABLEKS                       R21 R20 K38 ["icon"]
      338 SETTABLEKS                       R20 R19 K32 ["nodeProps"]
      340 SETTABLEKS                       R7 R19 K43 ["onCreated"]
      342 CALL                             R17 2 1
      343 SETTABLEKS                       R17 R16 K29 ["CreatingKeyBind"]
      345 LOADB                            R17 0
      346 JUMPIFNOTEQKS                    R5 K4 ["Composite"] ; [+34]
      348 GETUPVAL                         R17 0
      349 GETTABLEKS                       R17 R17 K10 ["createElement"]
      351 GETUPVAL                         R18 13
      352 DUPTABLE                         R19 K44 [{"action", "bindings", "index", "LayoutOrder", "nodeProps", "onCreated"}]
      353 SETTABLEKS                       R2 R19 K21 ["action"]
      355 NEWTABLE                         R20 0 0
      357 SETTABLEKS                       R20 R19 K22 ["bindings"]
      359 GETTABLEKS                       R22 R3 K4 ["Composite"]
      361 LENGTH                           R21 R22
      362 ADDK                             R20 R21 K45 [1]
      363 SETTABLEKS                       R20 R19 K25 ["index"]
      365 MOVE                             R20 R15
      366 CALL                             R20 0 1
      367 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      369 DUPTABLE                         R20 K46 [{"depth", "icon"}]
      370 LOADN                            R21 3
      371 SETTABLEKS                       R21 R20 K35 ["depth"]
      373 LOADK                            R21 K47 ["InputBinding"]
      374 SETTABLEKS                       R21 R20 K38 ["icon"]
      376 SETTABLEKS                       R20 R19 K32 ["nodeProps"]
      378 SETTABLEKS                       R7 R19 K43 ["onCreated"]
      380 CALL                             R17 2 1
      381 SETTABLEKS                       R17 R16 K30 ["CreatingComposite"]
      383 JUMPIFNOT                        R8 ; [+92]
      384 GETTABLEKS                       R17 R3 K3 ["Keycode"]
      386 LOADNIL                          R18
      387 LOADNIL                          R19
      388 FORGPREP                         R17
      389 LOADK                            R23 K48 ["Keycode_%*"]
      390 MOVE                             R25 R20
      391 NAMECALL                         R23 R23 K18 ["format"]
      393 CALL                             R23 2 1
      394 MOVE                             R22 R23
      395 GETUPVAL                         R23 0
      396 GETTABLEKS                       R23 R23 K10 ["createElement"]
      398 GETUPVAL                         R24 12
      399 DUPTABLE                         R25 K50 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings"}]
      400 SETTABLEKS                       R2 R25 K21 ["action"]
      402 SETTABLEKS                       R21 R25 K22 ["bindings"]
      404 SETTABLEKS                       R20 R25 K25 ["index"]
      406 MOVE                             R26 R15
      407 CALL                             R26 0 1
      408 SETTABLEKS                       R26 R25 K11 ["LayoutOrder"]
      410 NEWCLOSURE                       R26 P4
      411 CAPTURE                          VAL R14
      412 CAPTURE                          VAL R21
      413 SETTABLEKS                       R26 R25 K26 ["onBindingEditCommand"]
      415 LOADN                            R27 1
      416 JUMPIFNOTLT                      R27 R20 ; [+6]
      418 GETTABLEKS                       R27 R3 K3 ["Keycode"]
      420 SUBK                             R28 R20 K45 [1]
      421 GETTABLE                         R26 R27 R28
      422 JUMP                             ; [+1]
      423 LOADNIL                          R26
      424 SETTABLEKS                       R26 R25 K49 ["previousBindings"]
      426 CALL                             R23 2 1
      427 SETTABLE                         R23 R16 R22
      428 FORGLOOP                         R17 2 ; [-40]
      430 GETTABLEKS                       R17 R3 K4 ["Composite"]
      432 LOADNIL                          R18
      433 LOADNIL                          R19
      434 FORGPREP                         R17
      435 LOADK                            R23 K51 ["Composite_%*"]
      436 MOVE                             R25 R20
      437 NAMECALL                         R23 R23 K18 ["format"]
      439 CALL                             R23 2 1
      440 MOVE                             R22 R23
      441 GETUPVAL                         R23 0
      442 GETTABLEKS                       R23 R23 K10 ["createElement"]
      444 GETUPVAL                         R24 13
      445 DUPTABLE                         R25 K50 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand", "previousBindings"}]
      446 SETTABLEKS                       R2 R25 K21 ["action"]
      448 SETTABLEKS                       R21 R25 K22 ["bindings"]
      450 SETTABLEKS                       R20 R25 K25 ["index"]
      452 MOVE                             R26 R15
      453 CALL                             R26 0 1
      454 SETTABLEKS                       R26 R25 K11 ["LayoutOrder"]
      456 NEWCLOSURE                       R26 P5
      457 CAPTURE                          VAL R14
      458 CAPTURE                          VAL R21
      459 SETTABLEKS                       R26 R25 K26 ["onBindingEditCommand"]
      461 LOADN                            R27 1
      462 JUMPIFNOTLT                      R27 R20 ; [+6]
      464 GETTABLEKS                       R27 R3 K4 ["Composite"]
      466 SUBK                             R28 R20 K45 [1]
      467 GETTABLE                         R26 R27 R28
      468 JUMP                             ; [+1]
      469 LOADNIL                          R26
      470 SETTABLEKS                       R26 R25 K49 ["previousBindings"]
      472 CALL                             R23 2 1
      473 SETTABLE                         R23 R16 R22
      474 FORGLOOP                         R17 2 ; [-40]
      476 GETUPVAL                         R17 0
      477 GETTABLEKS                       R17 R17 K10 ["createElement"]
      479 GETUPVAL                         R18 11
      480 DUPTABLE                         R19 K14 [{"LayoutOrder", "tag", "testId"}]
      481 GETTABLEKS                       R20 R0 K11 ["LayoutOrder"]
      483 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      485 LOADK                            R20 K15 ["size-full-0 auto-y col"]
      486 SETTABLEKS                       R20 R19 K12 ["tag"]
      488 LOADK                            R21 K16 ["action-%*"]
      489 GETTABLEKS                       R23 R2 K17 ["name"]
      491 NAMECALL                         R21 R21 K18 ["format"]
      493 CALL                             R21 2 1
      494 MOVE                             R20 R21
      495 SETTABLEKS                       R20 R19 K13 ["testId"]
      497 MOVE                             R20 R16
      498 CALL                             R17 3 -1
      499 RETURN                           R17 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R3 K13 ["View"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Src"]
       45 GETTABLEKS                       R8 R8 K11 ["Contexts"]
       47 GETTABLEKS                       R8 R8 K15 ["InputConfiguration"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K14 ["Src"]
       54 GETTABLEKS                       R9 R9 K16 ["Components"]
       56 GETTABLEKS                       R9 R9 K17 ["Table"]
       58 GETTABLEKS                       R9 R9 K18 ["Row"]
       60 GETTABLEKS                       R9 R9 K19 ["Summary"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K14 ["Src"]
       67 GETTABLEKS                       R10 R10 K16 ["Components"]
       69 GETTABLEKS                       R10 R10 K17 ["Table"]
       71 GETTABLEKS                       R10 R10 K20 ["CompositeBinding"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K14 ["Src"]
       78 GETTABLEKS                       R11 R11 K16 ["Components"]
       80 GETTABLEKS                       R11 R11 K17 ["Table"]
       82 GETTABLEKS                       R11 R11 K21 ["KeycodeBinding"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K14 ["Src"]
       89 GETTABLEKS                       R12 R12 K22 ["Types"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K14 ["Src"]
       96 GETTABLEKS                       R13 R13 K23 ["Util"]
       98 GETTABLEKS                       R13 R13 K24 ["getSchemas"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K14 ["Src"]
      105 GETTABLEKS                       R14 R14 K23 ["Util"]
      107 GETTABLEKS                       R14 R14 K25 ["Menus"]
      109 GETTABLEKS                       R14 R14 K26 ["getSummaryMenu"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K14 ["Src"]
      116 GETTABLEKS                       R15 R15 K27 ["Hooks"]
      118 GETTABLEKS                       R15 R15 K28 ["Action"]
      120 GETTABLEKS                       R15 R15 K29 ["useAction"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K14 ["Src"]
      127 GETTABLEKS                       R16 R16 K27 ["Hooks"]
      129 GETTABLEKS                       R16 R16 K30 ["Binding"]
      131 GETTABLEKS                       R16 R16 K31 ["useBindings"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K14 ["Src"]
      138 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      140 GETTABLEKS                       R17 R17 K30 ["Binding"]
      142 GETTABLEKS                       R17 R17 K32 ["useCreateBinding"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R18 R0 K14 ["Src"]
      149 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      151 GETTABLEKS                       R18 R18 K33 ["useExpanded"]
      153 CALL                             R17 1 1
      154 GETIMPORT                        R18 K5 [require]
      156 GETTABLEKS                       R19 R0 K14 ["Src"]
      158 GETTABLEKS                       R19 R19 K23 ["Util"]
      160 GETTABLEKS                       R19 R19 K34 ["Constants"]
      162 GETTABLEKS                       R19 R19 K35 ["MenuIdentifiers"]
      164 CALL                             R18 1 1
      165 DUPCLOSURE                       R19 K36 [PROTO_6]
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R8
      181 RETURN                           R19 1
