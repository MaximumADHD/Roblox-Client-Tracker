PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["type"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

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
        1 GETTABLEKS                       R2 R0 K0 ["uuid"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 4
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R8 R0 K0 ["uuid"]
       12 JUMPIFNOT                        R2 ; [+16]
       13 LOADB                            R9 1
       14 GETTABLEKS                       R12 R2 K1 ["Keycode"]
       16 LENGTH                           R11 R12
       17 GETTABLEKS                       R13 R2 K2 ["Composite"]
       19 LENGTH                           R12 R13
       20 ADD                              R10 R11 R12
       21 LOADN                            R11 1
       22 JUMPIFLT                         R11 R10 ; [+7]
       24 JUMPIFNOTEQKNIL                  R4 ; [+2]
       26 LOADB                            R9 0 +1
       27 LOADB                            R9 1
       28 JUMP                             ; [+1]
       29 LOADB                            R9 0
       30 CALL                             R7 2 2
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K3 ["useState"]
       34 LOADNIL                          R10
       35 CALL                             R9 1 2
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R11 R11 K4 ["useContext"]
       39 GETUPVAL                         R12 5
       40 GETTABLEKS                       R12 R12 K5 ["Context"]
       42 CALL                             R11 1 1
       43 GETUPVAL                         R12 4
       44 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       46 NEWCLOSURE                       R13 P0
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R1
       49 NEWTABLE                         R14 0 1
       51 MOVE                             R15 R1
       52 SETLIST                          R14 R15 1 [1]
       54 CALL                             R12 2 1
       55 GETUPVAL                         R13 4
       56 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       58 NEWCLOSURE                       R14 P1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 NEWTABLE                         R15 0 4
       67 MOVE                             R16 R1
       68 MOVE                             R17 R2
       69 MOVE                             R18 R11
       70 MOVE                             R19 R10
       71 SETLIST                          R15 R16 4 [1]
       73 CALL                             R13 2 1
       74 GETUPVAL                         R14 9
       75 GETTABLEKS                       R14 R14 K8 ["createNextOrder"]
       77 CALL                             R14 0 1
       78 JUMPIFEQKNIL                     R1 ; [+3]
       80 JUMPIFNOTEQKNIL                  R2 ; [+3]
       82 LOADNIL                          R15
       83 RETURN                           R15 1
       84 JUMPIFNOTEQKNIL                  R4 ; [+81]
       86 GETTABLEKS                       R16 R2 K1 ["Keycode"]
       88 LENGTH                           R15 R16
       89 LOADN                            R16 1
       90 JUMPIFNOTLE                      R15 R16 ; [+8]
       92 GETTABLEKS                       R16 R2 K2 ["Composite"]
       94 LENGTH                           R15 R16
       95 JUMPIFNOTEQKN                    R15 K9 [0] ; [+3]
       97 JUMPIFEQKNIL                     R9 ; [+3]
       99 JUMPIFNOTEQKS                    R9 K1 ["Keycode"] ; [+66]
      101 GETTABLEKS                       R16 R2 K1 ["Keycode"]
      103 GETTABLEN                        R15 R16 1
      104 JUMPIF                           R15 ; [+2]
      105 NEWTABLE                         R15 0 0
      107 GETUPVAL                         R16 4
      108 GETTABLEKS                       R16 R16 K10 ["createElement"]
      110 GETUPVAL                         R17 10
      111 DUPTABLE                         R18 K14 [{"LayoutOrder", "tag", "testId"}]
      112 GETTABLEKS                       R19 R0 K11 ["LayoutOrder"]
      114 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      116 LOADK                            R19 K15 ["size-full-0 auto-y col"]
      117 SETTABLEKS                       R19 R18 K12 ["tag"]
      119 LOADK                            R20 K16 ["action-%*"]
      120 GETTABLEKS                       R22 R1 K17 ["name"]
      122 NAMECALL                         R20 R20 K18 ["format"]
      124 CALL                             R20 2 1
      125 MOVE                             R19 R20
      126 SETTABLEKS                       R19 R18 K13 ["testId"]
      128 DUPTABLE                         R19 K20 [{"HeaderRow"}]
      129 GETUPVAL                         R20 4
      130 GETTABLEKS                       R20 R20 K10 ["createElement"]
      132 GETUPVAL                         R21 11
      133 DUPTABLE                         R22 K28 [{"action", "bindings", "isRoot", "createMenu", "index", "LayoutOrder", "name", "onBindingEditCommand", "onCreateMenuItemSelected"}]
      134 SETTABLEKS                       R1 R22 K21 ["action"]
      136 SETTABLEKS                       R15 R22 K22 ["bindings"]
      138 LOADB                            R23 1
      139 SETTABLEKS                       R23 R22 K23 ["isRoot"]
      141 SETTABLEKS                       R3 R22 K24 ["createMenu"]
      143 LOADN                            R23 1
      144 SETTABLEKS                       R23 R22 K25 ["index"]
      146 MOVE                             R23 R14
      147 CALL                             R23 0 1
      148 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
      150 GETTABLEKS                       R23 R1 K17 ["name"]
      152 SETTABLEKS                       R23 R22 K17 ["name"]
      154 NEWCLOSURE                       R23 P2
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R15
      157 SETTABLEKS                       R23 R22 K26 ["onBindingEditCommand"]
      159 SETTABLEKS                       R5 R22 K27 ["onCreateMenuItemSelected"]
      161 CALL                             R20 2 1
      162 SETTABLEKS                       R20 R19 K19 ["HeaderRow"]
      164 CALL                             R16 3 -1
      165 RETURN                           R16 -1
      166 JUMPIFNOTEQKNIL                  R4 ; [+87]
      168 GETTABLEKS                       R16 R2 K1 ["Keycode"]
      170 LENGTH                           R15 R16
      171 JUMPIFNOTEQKN                    R15 K9 [0] ; [+9]
      173 GETTABLEKS                       R16 R2 K2 ["Composite"]
      175 LENGTH                           R15 R16
      176 LOADN                            R16 1
      177 JUMPIFNOTLE                      R15 R16 ; [+3]
      179 JUMPIFEQKNIL                     R9 ; [+3]
      181 JUMPIFNOTEQKS                    R9 K2 ["Composite"] ; [+72]
      183 GETTABLEKS                       R17 R2 K2 ["Composite"]
      185 LENGTH                           R16 R17
      186 LOADN                            R17 0
      187 JUMPIFNOTLT                      R17 R16 ; [+5]
      189 GETTABLEKS                       R16 R2 K2 ["Composite"]
      191 GETTABLEN                        R15 R16 1
      192 JUMP                             ; [+2]
      193 NEWTABLE                         R15 0 0
      195 GETUPVAL                         R16 4
      196 GETTABLEKS                       R16 R16 K10 ["createElement"]
      198 GETUPVAL                         R17 10
      199 DUPTABLE                         R18 K14 [{"LayoutOrder", "tag", "testId"}]
      200 GETTABLEKS                       R19 R0 K11 ["LayoutOrder"]
      202 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      204 LOADK                            R19 K15 ["size-full-0 auto-y col"]
      205 SETTABLEKS                       R19 R18 K12 ["tag"]
      207 LOADK                            R20 K16 ["action-%*"]
      208 GETTABLEKS                       R22 R1 K17 ["name"]
      210 NAMECALL                         R20 R20 K18 ["format"]
      212 CALL                             R20 2 1
      213 MOVE                             R19 R20
      214 SETTABLEKS                       R19 R18 K13 ["testId"]
      216 DUPTABLE                         R19 K20 [{"HeaderRow"}]
      217 GETUPVAL                         R20 4
      218 GETTABLEKS                       R20 R20 K10 ["createElement"]
      220 GETUPVAL                         R21 12
      221 DUPTABLE                         R22 K28 [{"action", "bindings", "isRoot", "createMenu", "index", "LayoutOrder", "name", "onBindingEditCommand", "onCreateMenuItemSelected"}]
      222 SETTABLEKS                       R1 R22 K21 ["action"]
      224 SETTABLEKS                       R15 R22 K22 ["bindings"]
      226 LOADB                            R23 1
      227 SETTABLEKS                       R23 R22 K23 ["isRoot"]
      229 SETTABLEKS                       R3 R22 K24 ["createMenu"]
      231 LOADN                            R23 1
      232 SETTABLEKS                       R23 R22 K25 ["index"]
      234 MOVE                             R23 R14
      235 CALL                             R23 0 1
      236 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
      238 GETTABLEKS                       R23 R1 K17 ["name"]
      240 SETTABLEKS                       R23 R22 K17 ["name"]
      242 NEWCLOSURE                       R23 P3
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R15
      245 SETTABLEKS                       R23 R22 K26 ["onBindingEditCommand"]
      247 SETTABLEKS                       R5 R22 K27 ["onCreateMenuItemSelected"]
      249 CALL                             R20 2 1
      250 SETTABLEKS                       R20 R19 K19 ["HeaderRow"]
      252 CALL                             R16 3 -1
      253 RETURN                           R16 -1
      254 DUPTABLE                         R15 K31 [{"HeaderRow", "CreatingKeyBind", "CreatingComposite"}]
      255 GETUPVAL                         R16 4
      256 GETTABLEKS                       R16 R16 K10 ["createElement"]
      258 GETUPVAL                         R17 13
      259 DUPTABLE                         R18 K33 [{"bindings", "LayoutOrder", "nodeProps"}]
      260 GETTABLEKS                       R19 R2 K34 ["All"]
      262 SETTABLEKS                       R19 R18 K22 ["bindings"]
      264 MOVE                             R19 R14
      265 CALL                             R19 0 1
      266 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      268 DUPTABLE                         R19 K41 [{"action", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      269 SETTABLEKS                       R1 R19 K21 ["action"]
      271 SETTABLEKS                       R3 R19 K24 ["createMenu"]
      273 LOADN                            R20 1
      274 SETTABLEKS                       R20 R19 K35 ["depth"]
      276 SETTABLEKS                       R12 R19 K36 ["editMenu"]
      278 SETTABLEKS                       R7 R19 K37 ["expanded"]
      280 LOADK                            R20 K42 ["InputAction"]
      281 SETTABLEKS                       R20 R19 K38 ["icon"]
      283 GETTABLEKS                       R20 R1 K17 ["name"]
      285 SETTABLEKS                       R20 R19 K17 ["name"]
      287 SETTABLEKS                       R5 R19 K27 ["onCreateMenuItemSelected"]
      289 SETTABLEKS                       R13 R19 K39 ["onEditMenuItemSelected"]
      291 SETTABLEKS                       R8 R19 K40 ["setExpanded"]
      293 SETTABLEKS                       R19 R18 K32 ["nodeProps"]
      295 CALL                             R16 2 1
      296 SETTABLEKS                       R16 R15 K19 ["HeaderRow"]
      298 LOADB                            R16 0
      299 JUMPIFNOTEQKS                    R4 K1 ["Keycode"] ; [+34]
      301 GETUPVAL                         R16 4
      302 GETTABLEKS                       R16 R16 K10 ["createElement"]
      304 GETUPVAL                         R17 11
      305 DUPTABLE                         R18 K44 [{"action", "bindings", "index", "LayoutOrder", "nodeProps", "onCreated"}]
      306 SETTABLEKS                       R1 R18 K21 ["action"]
      308 NEWTABLE                         R19 0 0
      310 SETTABLEKS                       R19 R18 K22 ["bindings"]
      312 GETTABLEKS                       R21 R2 K1 ["Keycode"]
      314 LENGTH                           R20 R21
      315 ADDK                             R19 R20 K45 [1]
      316 SETTABLEKS                       R19 R18 K25 ["index"]
      318 MOVE                             R19 R14
      319 CALL                             R19 0 1
      320 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      322 DUPTABLE                         R19 K46 [{"depth", "icon"}]
      323 LOADN                            R20 3
      324 SETTABLEKS                       R20 R19 K35 ["depth"]
      326 LOADK                            R20 K47 ["InputBinding"]
      327 SETTABLEKS                       R20 R19 K38 ["icon"]
      329 SETTABLEKS                       R19 R18 K32 ["nodeProps"]
      331 SETTABLEKS                       R6 R18 K43 ["onCreated"]
      333 CALL                             R16 2 1
      334 SETTABLEKS                       R16 R15 K29 ["CreatingKeyBind"]
      336 LOADB                            R16 0
      337 JUMPIFNOTEQKS                    R4 K2 ["Composite"] ; [+34]
      339 GETUPVAL                         R16 4
      340 GETTABLEKS                       R16 R16 K10 ["createElement"]
      342 GETUPVAL                         R17 12
      343 DUPTABLE                         R18 K44 [{"action", "bindings", "index", "LayoutOrder", "nodeProps", "onCreated"}]
      344 SETTABLEKS                       R1 R18 K21 ["action"]
      346 NEWTABLE                         R19 0 0
      348 SETTABLEKS                       R19 R18 K22 ["bindings"]
      350 GETTABLEKS                       R21 R2 K2 ["Composite"]
      352 LENGTH                           R20 R21
      353 ADDK                             R19 R20 K45 [1]
      354 SETTABLEKS                       R19 R18 K25 ["index"]
      356 MOVE                             R19 R14
      357 CALL                             R19 0 1
      358 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      360 DUPTABLE                         R19 K46 [{"depth", "icon"}]
      361 LOADN                            R20 3
      362 SETTABLEKS                       R20 R19 K35 ["depth"]
      364 LOADK                            R20 K47 ["InputBinding"]
      365 SETTABLEKS                       R20 R19 K38 ["icon"]
      367 SETTABLEKS                       R19 R18 K32 ["nodeProps"]
      369 SETTABLEKS                       R6 R18 K43 ["onCreated"]
      371 CALL                             R16 2 1
      372 SETTABLEKS                       R16 R15 K30 ["CreatingComposite"]
      374 JUMPIFNOT                        R7 ; [+70]
      375 GETTABLEKS                       R16 R2 K1 ["Keycode"]
      377 LOADNIL                          R17
      378 LOADNIL                          R18
      379 FORGPREP                         R16
      380 LOADK                            R22 K48 ["Keycode_%*"]
      381 MOVE                             R24 R19
      382 NAMECALL                         R22 R22 K18 ["format"]
      384 CALL                             R22 2 1
      385 MOVE                             R21 R22
      386 GETUPVAL                         R22 4
      387 GETTABLEKS                       R22 R22 K10 ["createElement"]
      389 GETUPVAL                         R23 11
      390 DUPTABLE                         R24 K49 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand"}]
      391 SETTABLEKS                       R1 R24 K21 ["action"]
      393 SETTABLEKS                       R20 R24 K22 ["bindings"]
      395 SETTABLEKS                       R19 R24 K25 ["index"]
      397 MOVE                             R25 R14
      398 CALL                             R25 0 1
      399 SETTABLEKS                       R25 R24 K11 ["LayoutOrder"]
      401 NEWCLOSURE                       R25 P4
      402 CAPTURE                          VAL R13
      403 CAPTURE                          VAL R20
      404 SETTABLEKS                       R25 R24 K26 ["onBindingEditCommand"]
      406 CALL                             R22 2 1
      407 SETTABLE                         R22 R15 R21
      408 FORGLOOP                         R16 2 ; [-29]
      410 GETTABLEKS                       R16 R2 K2 ["Composite"]
      412 LOADNIL                          R17
      413 LOADNIL                          R18
      414 FORGPREP                         R16
      415 LOADK                            R22 K50 ["Composite_%*"]
      416 MOVE                             R24 R19
      417 NAMECALL                         R22 R22 K18 ["format"]
      419 CALL                             R22 2 1
      420 MOVE                             R21 R22
      421 GETUPVAL                         R22 4
      422 GETTABLEKS                       R22 R22 K10 ["createElement"]
      424 GETUPVAL                         R23 12
      425 DUPTABLE                         R24 K49 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand"}]
      426 SETTABLEKS                       R1 R24 K21 ["action"]
      428 SETTABLEKS                       R20 R24 K22 ["bindings"]
      430 SETTABLEKS                       R19 R24 K25 ["index"]
      432 MOVE                             R25 R14
      433 CALL                             R25 0 1
      434 SETTABLEKS                       R25 R24 K11 ["LayoutOrder"]
      436 NEWCLOSURE                       R25 P5
      437 CAPTURE                          VAL R13
      438 CAPTURE                          VAL R20
      439 SETTABLEKS                       R25 R24 K26 ["onBindingEditCommand"]
      441 CALL                             R22 2 1
      442 SETTABLE                         R22 R15 R21
      443 FORGLOOP                         R16 2 ; [-29]
      445 GETUPVAL                         R16 4
      446 GETTABLEKS                       R16 R16 K10 ["createElement"]
      448 GETUPVAL                         R17 10
      449 DUPTABLE                         R18 K14 [{"LayoutOrder", "tag", "testId"}]
      450 GETTABLEKS                       R19 R0 K11 ["LayoutOrder"]
      452 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      454 LOADK                            R19 K15 ["size-full-0 auto-y col"]
      455 SETTABLEKS                       R19 R18 K12 ["tag"]
      457 LOADK                            R20 K16 ["action-%*"]
      458 GETTABLEKS                       R22 R1 K17 ["name"]
      460 NAMECALL                         R20 R20 K18 ["format"]
      462 CALL                             R20 2 1
      463 MOVE                             R19 R20
      464 SETTABLEKS                       R19 R18 K13 ["testId"]
      466 MOVE                             R19 R15
      467 CALL                             R16 3 -1
      468 RETURN                           R16 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       36 GETTABLEKS                       R6 R6 K13 ["InputConfiguration"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Components"]
       45 GETTABLEKS                       R7 R7 K15 ["Table"]
       47 GETTABLEKS                       R7 R7 K16 ["Row"]
       49 GETTABLEKS                       R7 R7 K17 ["Summary"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R8 K14 ["Components"]
       58 GETTABLEKS                       R8 R8 K15 ["Table"]
       60 GETTABLEKS                       R8 R8 K18 ["CompositeBinding"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R0 K11 ["Src"]
       67 GETTABLEKS                       R9 R9 K14 ["Components"]
       69 GETTABLEKS                       R9 R9 K15 ["Table"]
       71 GETTABLEKS                       R9 R9 K19 ["KeycodeBinding"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K5 [require]
       76 GETTABLEKS                       R10 R0 K11 ["Src"]
       78 GETTABLEKS                       R10 R10 K20 ["Types"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K5 [require]
       83 GETTABLEKS                       R11 R0 K11 ["Src"]
       85 GETTABLEKS                       R11 R11 K21 ["Util"]
       87 GETTABLEKS                       R11 R11 K22 ["getSchemas"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K5 [require]
       92 GETTABLEKS                       R12 R0 K11 ["Src"]
       94 GETTABLEKS                       R12 R12 K21 ["Util"]
       96 GETTABLEKS                       R12 R12 K23 ["Menus"]
       98 GETTABLEKS                       R12 R12 K24 ["getSummaryMenu"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K5 [require]
      103 GETTABLEKS                       R13 R0 K11 ["Src"]
      105 GETTABLEKS                       R13 R13 K25 ["Hooks"]
      107 GETTABLEKS                       R13 R13 K26 ["Action"]
      109 GETTABLEKS                       R13 R13 K27 ["useAction"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K5 [require]
      114 GETTABLEKS                       R14 R0 K11 ["Src"]
      116 GETTABLEKS                       R14 R14 K25 ["Hooks"]
      118 GETTABLEKS                       R14 R14 K28 ["Binding"]
      120 GETTABLEKS                       R14 R14 K29 ["useBindings"]
      122 CALL                             R13 1 1
      123 GETIMPORT                        R14 K5 [require]
      125 GETTABLEKS                       R15 R0 K11 ["Src"]
      127 GETTABLEKS                       R15 R15 K25 ["Hooks"]
      129 GETTABLEKS                       R15 R15 K28 ["Binding"]
      131 GETTABLEKS                       R15 R15 K30 ["useCreateBinding"]
      133 CALL                             R14 1 1
      134 GETIMPORT                        R15 K5 [require]
      136 GETTABLEKS                       R16 R0 K11 ["Src"]
      138 GETTABLEKS                       R16 R16 K25 ["Hooks"]
      140 GETTABLEKS                       R16 R16 K31 ["useExpanded"]
      142 CALL                             R15 1 1
      143 GETIMPORT                        R16 K5 [require]
      145 GETTABLEKS                       R17 R0 K11 ["Src"]
      147 GETTABLEKS                       R17 R17 K21 ["Util"]
      149 GETTABLEKS                       R17 R17 K32 ["Constants"]
      151 GETTABLEKS                       R17 R17 K33 ["MenuIdentifiers"]
      153 CALL                             R16 1 1
      154 DUPCLOSURE                       R17 K34 [PROTO_6]
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R6
      169 RETURN                           R17 1
