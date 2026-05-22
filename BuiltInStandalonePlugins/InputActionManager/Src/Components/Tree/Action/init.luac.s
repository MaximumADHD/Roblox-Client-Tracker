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
       23 GETTABLEKS                       R2 R2 K6 ["ROW_USE_COMPOUND_DIRECTION"]
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
       44 LOADK                            R3 K9 ["CompoundDirection"]
       45 CALL                             R2 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 2
       48 GETTABLEKS                       R2 R2 K10 ["ROW_USE_KEY_CODE"]
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
       69 LOADK                            R3 K11 ["KeyCode"]
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
      104 LOADK                            R3 K11 ["KeyCode"]
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
        3 LOADK                            R3 K1 ["InputAction"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 4
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R8 R0 K0 ["uuid"]
       13 JUMPIFNOT                        R2 ; [+16]
       14 LOADB                            R9 1
       15 GETTABLEKS                       R12 R2 K2 ["KeyCode"]
       17 LENGTH                           R11 R12
       18 GETTABLEKS                       R13 R2 K3 ["CompoundDirection"]
       20 LENGTH                           R12 R13
       21 ADD                              R10 R11 R12
       22 LOADN                            R11 1
       23 JUMPIFLT                         R11 R10 ; [+7]
       25 JUMPIFNOTEQKNIL                  R4 ; [+2]
       27 LOADB                            R9 0 +1
       28 LOADB                            R9 1
       29 JUMP                             ; [+1]
       30 LOADB                            R9 0
       31 CALL                             R7 2 2
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R9 R9 K4 ["useState"]
       35 LOADNIL                          R10
       36 CALL                             R9 1 2
       37 GETUPVAL                         R11 4
       38 GETTABLEKS                       R11 R11 K5 ["useContext"]
       40 GETUPVAL                         R12 5
       41 GETTABLEKS                       R12 R12 K6 ["Context"]
       43 CALL                             R11 1 1
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K7 ["useMemo"]
       47 NEWCLOSURE                       R13 P0
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R14 0 1
       52 MOVE                             R15 R1
       53 SETLIST                          R14 R15 1 [1]
       55 CALL                             R12 2 1
       56 GETUPVAL                         R13 4
       57 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       59 NEWCLOSURE                       R14 P1
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R10
       66 NEWTABLE                         R15 0 4
       68 MOVE                             R16 R1
       69 MOVE                             R17 R2
       70 MOVE                             R18 R11
       71 MOVE                             R19 R10
       72 SETLIST                          R15 R16 4 [1]
       74 CALL                             R13 2 1
       75 GETUPVAL                         R14 9
       76 GETTABLEKS                       R14 R14 K9 ["createNextOrder"]
       78 CALL                             R14 0 1
       79 JUMPIFEQKNIL                     R1 ; [+3]
       81 JUMPIFNOTEQKNIL                  R2 ; [+3]
       83 LOADNIL                          R15
       84 RETURN                           R15 1
       85 JUMPIFNOTEQKNIL                  R4 ; [+81]
       87 GETTABLEKS                       R16 R2 K2 ["KeyCode"]
       89 LENGTH                           R15 R16
       90 LOADN                            R16 1
       91 JUMPIFNOTLE                      R15 R16 ; [+8]
       93 GETTABLEKS                       R16 R2 K3 ["CompoundDirection"]
       95 LENGTH                           R15 R16
       96 JUMPIFNOTEQKN                    R15 K10 [0] ; [+3]
       98 JUMPIFEQKNIL                     R9 ; [+3]
      100 JUMPIFNOTEQKS                    R9 K2 ["KeyCode"] ; [+66]
      102 GETTABLEKS                       R16 R2 K2 ["KeyCode"]
      104 GETTABLEN                        R15 R16 1
      105 JUMPIF                           R15 ; [+2]
      106 NEWTABLE                         R15 0 0
      108 GETUPVAL                         R16 4
      109 GETTABLEKS                       R16 R16 K11 ["createElement"]
      111 GETUPVAL                         R17 10
      112 DUPTABLE                         R18 K15 [{"LayoutOrder", "tag", "testId"}]
      113 GETTABLEKS                       R19 R0 K12 ["LayoutOrder"]
      115 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      117 LOADK                            R19 K16 ["size-full-0 auto-y col"]
      118 SETTABLEKS                       R19 R18 K13 ["tag"]
      120 LOADK                            R20 K17 ["action-%*"]
      121 GETTABLEKS                       R22 R1 K18 ["name"]
      123 NAMECALL                         R20 R20 K19 ["format"]
      125 CALL                             R20 2 1
      126 MOVE                             R19 R20
      127 SETTABLEKS                       R19 R18 K14 ["testId"]
      129 DUPTABLE                         R19 K21 [{"HeaderRow"}]
      130 GETUPVAL                         R20 4
      131 GETTABLEKS                       R20 R20 K11 ["createElement"]
      133 GETUPVAL                         R21 11
      134 DUPTABLE                         R22 K29 [{"action", "bindings", "isRoot", "createMenu", "index", "LayoutOrder", "name", "onBindingEditCommand", "onCreateMenuItemSelected"}]
      135 SETTABLEKS                       R1 R22 K22 ["action"]
      137 SETTABLEKS                       R15 R22 K23 ["bindings"]
      139 LOADB                            R23 1
      140 SETTABLEKS                       R23 R22 K24 ["isRoot"]
      142 SETTABLEKS                       R3 R22 K25 ["createMenu"]
      144 LOADN                            R23 1
      145 SETTABLEKS                       R23 R22 K26 ["index"]
      147 MOVE                             R23 R14
      148 CALL                             R23 0 1
      149 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      151 GETTABLEKS                       R23 R1 K18 ["name"]
      153 SETTABLEKS                       R23 R22 K18 ["name"]
      155 NEWCLOSURE                       R23 P2
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R15
      158 SETTABLEKS                       R23 R22 K27 ["onBindingEditCommand"]
      160 SETTABLEKS                       R5 R22 K28 ["onCreateMenuItemSelected"]
      162 CALL                             R20 2 1
      163 SETTABLEKS                       R20 R19 K20 ["HeaderRow"]
      165 CALL                             R16 3 -1
      166 RETURN                           R16 -1
      167 JUMPIFNOTEQKNIL                  R4 ; [+87]
      169 GETTABLEKS                       R16 R2 K2 ["KeyCode"]
      171 LENGTH                           R15 R16
      172 JUMPIFNOTEQKN                    R15 K10 [0] ; [+9]
      174 GETTABLEKS                       R16 R2 K3 ["CompoundDirection"]
      176 LENGTH                           R15 R16
      177 LOADN                            R16 1
      178 JUMPIFNOTLE                      R15 R16 ; [+3]
      180 JUMPIFEQKNIL                     R9 ; [+3]
      182 JUMPIFNOTEQKS                    R9 K3 ["CompoundDirection"] ; [+72]
      184 GETTABLEKS                       R17 R2 K3 ["CompoundDirection"]
      186 LENGTH                           R16 R17
      187 LOADN                            R17 0
      188 JUMPIFNOTLT                      R17 R16 ; [+5]
      190 GETTABLEKS                       R16 R2 K3 ["CompoundDirection"]
      192 GETTABLEN                        R15 R16 1
      193 JUMP                             ; [+2]
      194 NEWTABLE                         R15 0 0
      196 GETUPVAL                         R16 4
      197 GETTABLEKS                       R16 R16 K11 ["createElement"]
      199 GETUPVAL                         R17 10
      200 DUPTABLE                         R18 K15 [{"LayoutOrder", "tag", "testId"}]
      201 GETTABLEKS                       R19 R0 K12 ["LayoutOrder"]
      203 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      205 LOADK                            R19 K16 ["size-full-0 auto-y col"]
      206 SETTABLEKS                       R19 R18 K13 ["tag"]
      208 LOADK                            R20 K17 ["action-%*"]
      209 GETTABLEKS                       R22 R1 K18 ["name"]
      211 NAMECALL                         R20 R20 K19 ["format"]
      213 CALL                             R20 2 1
      214 MOVE                             R19 R20
      215 SETTABLEKS                       R19 R18 K14 ["testId"]
      217 DUPTABLE                         R19 K21 [{"HeaderRow"}]
      218 GETUPVAL                         R20 4
      219 GETTABLEKS                       R20 R20 K11 ["createElement"]
      221 GETUPVAL                         R21 12
      222 DUPTABLE                         R22 K29 [{"action", "bindings", "isRoot", "createMenu", "index", "LayoutOrder", "name", "onBindingEditCommand", "onCreateMenuItemSelected"}]
      223 SETTABLEKS                       R1 R22 K22 ["action"]
      225 SETTABLEKS                       R15 R22 K23 ["bindings"]
      227 LOADB                            R23 1
      228 SETTABLEKS                       R23 R22 K24 ["isRoot"]
      230 SETTABLEKS                       R3 R22 K25 ["createMenu"]
      232 LOADN                            R23 1
      233 SETTABLEKS                       R23 R22 K26 ["index"]
      235 MOVE                             R23 R14
      236 CALL                             R23 0 1
      237 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      239 GETTABLEKS                       R23 R1 K18 ["name"]
      241 SETTABLEKS                       R23 R22 K18 ["name"]
      243 NEWCLOSURE                       R23 P3
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R15
      246 SETTABLEKS                       R23 R22 K27 ["onBindingEditCommand"]
      248 SETTABLEKS                       R5 R22 K28 ["onCreateMenuItemSelected"]
      250 CALL                             R20 2 1
      251 SETTABLEKS                       R20 R19 K20 ["HeaderRow"]
      253 CALL                             R16 3 -1
      254 RETURN                           R16 -1
      255 DUPTABLE                         R15 K32 [{"HeaderRow", "CreatingKeyBind", "CreatingKeyCompoundDirection"}]
      256 GETUPVAL                         R16 4
      257 GETTABLEKS                       R16 R16 K11 ["createElement"]
      259 GETUPVAL                         R17 13
      260 DUPTABLE                         R18 K34 [{"bindings", "LayoutOrder", "nodeProps"}]
      261 GETTABLEKS                       R19 R2 K35 ["All"]
      263 SETTABLEKS                       R19 R18 K23 ["bindings"]
      265 MOVE                             R19 R14
      266 CALL                             R19 0 1
      267 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      269 DUPTABLE                         R19 K42 [{"action", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      270 SETTABLEKS                       R1 R19 K22 ["action"]
      272 SETTABLEKS                       R3 R19 K25 ["createMenu"]
      274 LOADN                            R20 1
      275 SETTABLEKS                       R20 R19 K36 ["depth"]
      277 SETTABLEKS                       R12 R19 K37 ["editMenu"]
      279 SETTABLEKS                       R7 R19 K38 ["expanded"]
      281 LOADK                            R20 K1 ["InputAction"]
      282 SETTABLEKS                       R20 R19 K39 ["icon"]
      284 GETTABLEKS                       R20 R1 K18 ["name"]
      286 SETTABLEKS                       R20 R19 K18 ["name"]
      288 SETTABLEKS                       R5 R19 K28 ["onCreateMenuItemSelected"]
      290 SETTABLEKS                       R13 R19 K40 ["onEditMenuItemSelected"]
      292 SETTABLEKS                       R8 R19 K41 ["setExpanded"]
      294 SETTABLEKS                       R19 R18 K33 ["nodeProps"]
      296 CALL                             R16 2 1
      297 SETTABLEKS                       R16 R15 K20 ["HeaderRow"]
      299 LOADB                            R16 0
      300 JUMPIFNOTEQKS                    R4 K2 ["KeyCode"] ; [+34]
      302 GETUPVAL                         R16 4
      303 GETTABLEKS                       R16 R16 K11 ["createElement"]
      305 GETUPVAL                         R17 11
      306 DUPTABLE                         R18 K44 [{"action", "bindings", "index", "LayoutOrder", "nodeProps", "onCreated"}]
      307 SETTABLEKS                       R1 R18 K22 ["action"]
      309 NEWTABLE                         R19 0 0
      311 SETTABLEKS                       R19 R18 K23 ["bindings"]
      313 GETTABLEKS                       R21 R2 K2 ["KeyCode"]
      315 LENGTH                           R20 R21
      316 ADDK                             R19 R20 K45 [1]
      317 SETTABLEKS                       R19 R18 K26 ["index"]
      319 MOVE                             R19 R14
      320 CALL                             R19 0 1
      321 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      323 DUPTABLE                         R19 K46 [{"depth", "icon"}]
      324 LOADN                            R20 3
      325 SETTABLEKS                       R20 R19 K36 ["depth"]
      327 LOADK                            R20 K47 ["InputBinding"]
      328 SETTABLEKS                       R20 R19 K39 ["icon"]
      330 SETTABLEKS                       R19 R18 K33 ["nodeProps"]
      332 SETTABLEKS                       R6 R18 K43 ["onCreated"]
      334 CALL                             R16 2 1
      335 SETTABLEKS                       R16 R15 K30 ["CreatingKeyBind"]
      337 LOADB                            R16 0
      338 JUMPIFNOTEQKS                    R4 K3 ["CompoundDirection"] ; [+34]
      340 GETUPVAL                         R16 4
      341 GETTABLEKS                       R16 R16 K11 ["createElement"]
      343 GETUPVAL                         R17 12
      344 DUPTABLE                         R18 K44 [{"action", "bindings", "index", "LayoutOrder", "nodeProps", "onCreated"}]
      345 SETTABLEKS                       R1 R18 K22 ["action"]
      347 NEWTABLE                         R19 0 0
      349 SETTABLEKS                       R19 R18 K23 ["bindings"]
      351 GETTABLEKS                       R21 R2 K3 ["CompoundDirection"]
      353 LENGTH                           R20 R21
      354 ADDK                             R19 R20 K45 [1]
      355 SETTABLEKS                       R19 R18 K26 ["index"]
      357 MOVE                             R19 R14
      358 CALL                             R19 0 1
      359 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      361 DUPTABLE                         R19 K46 [{"depth", "icon"}]
      362 LOADN                            R20 3
      363 SETTABLEKS                       R20 R19 K36 ["depth"]
      365 LOADK                            R20 K47 ["InputBinding"]
      366 SETTABLEKS                       R20 R19 K39 ["icon"]
      368 SETTABLEKS                       R19 R18 K33 ["nodeProps"]
      370 SETTABLEKS                       R6 R18 K43 ["onCreated"]
      372 CALL                             R16 2 1
      373 SETTABLEKS                       R16 R15 K31 ["CreatingKeyCompoundDirection"]
      375 JUMPIFNOT                        R7 ; [+70]
      376 GETTABLEKS                       R16 R2 K2 ["KeyCode"]
      378 LOADNIL                          R17
      379 LOADNIL                          R18
      380 FORGPREP                         R16
      381 LOADK                            R22 K48 ["KeyCode_%*"]
      382 MOVE                             R24 R19
      383 NAMECALL                         R22 R22 K19 ["format"]
      385 CALL                             R22 2 1
      386 MOVE                             R21 R22
      387 GETUPVAL                         R22 4
      388 GETTABLEKS                       R22 R22 K11 ["createElement"]
      390 GETUPVAL                         R23 11
      391 DUPTABLE                         R24 K49 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand"}]
      392 SETTABLEKS                       R1 R24 K22 ["action"]
      394 SETTABLEKS                       R20 R24 K23 ["bindings"]
      396 SETTABLEKS                       R19 R24 K26 ["index"]
      398 MOVE                             R25 R14
      399 CALL                             R25 0 1
      400 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      402 NEWCLOSURE                       R25 P4
      403 CAPTURE                          VAL R13
      404 CAPTURE                          VAL R20
      405 SETTABLEKS                       R25 R24 K27 ["onBindingEditCommand"]
      407 CALL                             R22 2 1
      408 SETTABLE                         R22 R15 R21
      409 FORGLOOP                         R16 2 ; [-29]
      411 GETTABLEKS                       R16 R2 K3 ["CompoundDirection"]
      413 LOADNIL                          R17
      414 LOADNIL                          R18
      415 FORGPREP                         R16
      416 LOADK                            R22 K50 ["CompoundDirection_%*"]
      417 MOVE                             R24 R19
      418 NAMECALL                         R22 R22 K19 ["format"]
      420 CALL                             R22 2 1
      421 MOVE                             R21 R22
      422 GETUPVAL                         R22 4
      423 GETTABLEKS                       R22 R22 K11 ["createElement"]
      425 GETUPVAL                         R23 12
      426 DUPTABLE                         R24 K49 [{"action", "bindings", "index", "LayoutOrder", "onBindingEditCommand"}]
      427 SETTABLEKS                       R1 R24 K22 ["action"]
      429 SETTABLEKS                       R20 R24 K23 ["bindings"]
      431 SETTABLEKS                       R19 R24 K26 ["index"]
      433 MOVE                             R25 R14
      434 CALL                             R25 0 1
      435 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      437 NEWCLOSURE                       R25 P5
      438 CAPTURE                          VAL R13
      439 CAPTURE                          VAL R20
      440 SETTABLEKS                       R25 R24 K27 ["onBindingEditCommand"]
      442 CALL                             R22 2 1
      443 SETTABLE                         R22 R15 R21
      444 FORGLOOP                         R16 2 ; [-29]
      446 GETUPVAL                         R16 4
      447 GETTABLEKS                       R16 R16 K11 ["createElement"]
      449 GETUPVAL                         R17 10
      450 DUPTABLE                         R18 K15 [{"LayoutOrder", "tag", "testId"}]
      451 GETTABLEKS                       R19 R0 K12 ["LayoutOrder"]
      453 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      455 LOADK                            R19 K16 ["size-full-0 auto-y col"]
      456 SETTABLEKS                       R19 R18 K13 ["tag"]
      458 LOADK                            R20 K17 ["action-%*"]
      459 GETTABLEKS                       R22 R1 K18 ["name"]
      461 NAMECALL                         R20 R20 K19 ["format"]
      463 CALL                             R20 2 1
      464 MOVE                             R19 R20
      465 SETTABLEKS                       R19 R18 K14 ["testId"]
      467 MOVE                             R19 R15
      468 CALL                             R16 3 -1
      469 RETURN                           R16 -1

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
       36 GETTABLEKS                       R6 R6 K13 ["DatamodelReference"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Components"]
       45 GETTABLEKS                       R7 R7 K15 ["Tree"]
       47 GETTABLEKS                       R7 R7 K16 ["Action"]
       49 GETTABLEKS                       R7 R7 K17 ["SummaryRow"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R8 K14 ["Components"]
       58 GETTABLEKS                       R8 R8 K15 ["Tree"]
       60 GETTABLEKS                       R8 R8 K16 ["Action"]
       62 GETTABLEKS                       R8 R8 K18 ["CompoundDirectionBinding"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R9 R0 K11 ["Src"]
       69 GETTABLEKS                       R9 R9 K14 ["Components"]
       71 GETTABLEKS                       R9 R9 K15 ["Tree"]
       73 GETTABLEKS                       R9 R9 K16 ["Action"]
       75 GETTABLEKS                       R9 R9 K19 ["KeyCodeBinding"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K5 [require]
       80 GETTABLEKS                       R10 R0 K11 ["Src"]
       82 GETTABLEKS                       R10 R10 K20 ["Types"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R11 R0 K11 ["Src"]
       89 GETTABLEKS                       R11 R11 K21 ["Util"]
       91 GETTABLEKS                       R11 R11 K22 ["getSchemas"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K5 [require]
       96 GETTABLEKS                       R12 R0 K11 ["Src"]
       98 GETTABLEKS                       R12 R12 K21 ["Util"]
      100 GETTABLEKS                       R12 R12 K23 ["getSummaryMenu"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K5 [require]
      105 GETTABLEKS                       R13 R0 K11 ["Src"]
      107 GETTABLEKS                       R13 R13 K24 ["Hooks"]
      109 GETTABLEKS                       R13 R13 K25 ["useBindings"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K5 [require]
      114 GETTABLEKS                       R14 R0 K11 ["Src"]
      116 GETTABLEKS                       R14 R14 K24 ["Hooks"]
      118 GETTABLEKS                       R14 R14 K26 ["useCreateBinding"]
      120 CALL                             R13 1 1
      121 GETIMPORT                        R14 K5 [require]
      123 GETTABLEKS                       R15 R0 K11 ["Src"]
      125 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      127 GETTABLEKS                       R15 R15 K27 ["useExpanded"]
      129 CALL                             R14 1 1
      130 GETIMPORT                        R15 K5 [require]
      132 GETTABLEKS                       R16 R0 K11 ["Src"]
      134 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      136 GETTABLEKS                       R16 R16 K28 ["useItem"]
      138 CALL                             R15 1 1
      139 GETIMPORT                        R16 K5 [require]
      141 GETTABLEKS                       R17 R0 K11 ["Src"]
      143 GETTABLEKS                       R17 R17 K21 ["Util"]
      145 GETTABLEKS                       R17 R17 K29 ["Constants"]
      147 GETTABLEKS                       R17 R17 K30 ["MenuIdentifiers"]
      149 CALL                             R16 1 1
      150 DUPCLOSURE                       R17 K31 [PROTO_6]
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R6
      165 RETURN                           R17 1
