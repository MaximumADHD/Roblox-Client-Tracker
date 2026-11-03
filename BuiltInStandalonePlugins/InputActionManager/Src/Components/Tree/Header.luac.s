PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChildAdded"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onChildAdded"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOT                        R1 ; [+14]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["setSchemaVisible"]
       11 MOVE                             R3 R1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K3 ["schemas"]
       15 GETTABLE                         R5 R6 R1
       16 JUMPIFEQKB                       R5 FALSE ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 CALL                             R2 2 0
       21 RETURN                           R0 0
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R2 K5 [typeof]
       26 CALL                             R2 1 1
       27 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+33]
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+16]
       32 JUMPIFNOTEQKS                    R0 K7 ["PlayerScripts"] ; [+15]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K8 ["setBuiltinVisible"]
       37 MOVE                             R3 R0
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K9 ["builtin"]
       41 GETTABLE                         R5 R6 R0
       42 JUMPIFEQKB                       R5 FALSE ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 CALL                             R2 2 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R2 1
       49 GETTABLEKS                       R2 R2 K10 ["setContextVisible"]
       51 MOVE                             R3 R0
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K11 ["contexts"]
       55 GETTABLE                         R5 R6 R0
       56 JUMPIFEQKB                       R5 FALSE ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 CALL                             R2 2 0
       61 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["getContext"]
        6 GETUPVAL                         R4 4
        7 GETTABLEKS                       R4 R4 K1 ["contexts"]
        9 GETUPVAL                         R5 4
       10 GETTABLEKS                       R5 R5 K2 ["schemas"]
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R6 R6 K3 ["builtin"]
       15 GETUPVAL                         R8 5
       16 JUMPIFNOT                        R8 ; [+4]
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K4 ["datamodelType"]
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R7 K8 [Enum.StudioDataModelType.None]
       23 GETUPVAL                         R9 5
       24 JUMPIFNOT                        R9 ; [+4]
       25 GETUPVAL                         R8 5
       26 GETTABLEKS                       R8 R8 K9 ["createDefaultPlayerModule"]
       28 JUMP                             ; [+1]
       29 LOADB                            R8 1
       30 CALL                             R0 8 -1
       31 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["FilterInstances"]
        2 NEWTABLE                         R3 0 0
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 CALL                             R4 0 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["useContext"]
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R6 R6 K1 ["Context"]
       29 CALL                             R5 1 1
       30 GETUPVAL                         R7 6
       31 CALL                             R7 0 1
       32 NOT                              R6 R7
       33 JUMPIF                           R6 ; [+8]
       34 GETTABLEKS                       R7 R5 K2 ["datamodelType"]
       36 GETIMPORT                        R8 K6 [Enum.StudioDataModelType.Edit]
       38 JUMPIFEQ                         R7 R8 ; [+2]
       40 LOADB                            R6 0 +1
       41 LOADB                            R6 1
       42 GETUPVAL                         R7 7
       43 GETTABLEKS                       R7 R7 K7 ["createNextOrder"]
       45 CALL                             R7 0 1
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K8 ["useState"]
       49 LOADB                            R9 0
       50 CALL                             R8 1 2
       51 GETUPVAL                         R10 7
       52 GETTABLEKS                       R10 R10 K9 ["useToggleState"]
       54 LOADB                            R11 0
       55 CALL                             R10 1 1
       56 GETUPVAL                         R11 7
       57 GETTABLEKS                       R11 R11 K10 ["useEventCallback"]
       59 NEWCLOSURE                       R12 P0
       60 CAPTURE                          VAL R9
       61 CAPTURE                          UPVAL U8
       62 CALL                             R11 1 1
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       66 NEWCLOSURE                       R13 P1
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R14 0 1
       70 GETTABLEKS                       R15 R0 K12 ["onChildAdded"]
       72 SETLIST                          R14 R15 1 [1]
       74 CALL                             R12 2 1
       75 GETUPVAL                         R13 7
       76 GETTABLEKS                       R13 R13 K10 ["useEventCallback"]
       78 NEWCLOSURE                       R14 P2
       79 CAPTURE                          VAL R10
       80 CALL                             R13 1 1
       81 GETUPVAL                         R14 7
       82 GETTABLEKS                       R14 R14 K10 ["useEventCallback"]
       84 NEWCLOSURE                       R15 P3
       85 CAPTURE                          VAL R10
       86 CALL                             R14 1 1
       87 GETUPVAL                         R15 7
       88 GETTABLEKS                       R15 R15 K10 ["useEventCallback"]
       90 NEWCLOSURE                       R16 P4
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          VAL R2
       93 CAPTURE                          UPVAL U10
       94 CALL                             R15 1 1
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R16 R16 K13 ["useMemo"]
       98 NEWCLOSURE                       R17 P5
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R5
      105 NEWTABLE                         R18 0 8
      107 MOVE                             R19 R1
      108 MOVE                             R20 R4
      109 GETTABLEKS                       R21 R3 K14 ["getContext"]
      111 GETTABLEKS                       R22 R2 K15 ["contexts"]
      113 GETTABLEKS                       R23 R2 K16 ["schemas"]
      115 GETTABLEKS                       R24 R2 K17 ["builtin"]
      117 JUMPIFNOT                        R5 ; [+3]
      118 GETTABLEKS                       R25 R5 K2 ["datamodelType"]
      120 JUMP                             ; [+2]
      121 GETIMPORT                        R25 K19 [Enum.StudioDataModelType.None]
      123 JUMPIFNOT                        R5 ; [+3]
      124 GETTABLEKS                       R26 R5 K20 ["createDefaultPlayerModule"]
      126 JUMP                             ; [+1]
      127 LOADB                            R26 1
      128 SETLIST                          R18 R19 8 [1]
      130 CALL                             R16 2 1
      131 NEWTABLE                         R17 4 0
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R18 R18 K21 ["createElement"]
      136 GETUPVAL                         R19 12
      137 DUPTABLE                         R20 K27 [{["LayoutOrder"], ["onStateChanged"], ["tag"], ["testId"] = "header"}]
      138 MOVE                             R21 R7
      139 CALL                             R21 0 1
      140 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      142 SETTABLEKS                       R11 R20 K23 ["onStateChanged"]
      144 GETUPVAL                         R22 13
      145 CALL                             R22 0 1
      146 JUMPIFNOT                        R22 ; [+2]
      147 LOADK                            R21 K28 ["columns-tree row align-y-center padding-left-small padding-right-small gap-small"]
      148 JUMP                             ; [+1]
      149 LOADK                            R21 K29 ["columns-tree row align-y-center padding-left-small padding-right-small"]
      150 SETTABLEKS                       R21 R20 K24 ["tag"]
      152 DUPTABLE                         R21 K34 [{"TreeLabel", "AddContextButton", "ShowAll", "FilterButton"}]
      153 GETUPVAL                         R22 0
      154 GETTABLEKS                       R22 R22 K21 ["createElement"]
      156 GETUPVAL                         R23 14
      157 DUPTABLE                         R24 K37 [{["LayoutOrder"], ["tag"] = "grow padding-small text-body-medium text-align-x-left", ["Text"]}]
      158 MOVE                             R25 R7
      159 CALL                             R25 0 1
      160 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      162 LOADK                            R27 K38 ["Header"]
      163 LOADK                            R28 K1 ["Context"]
      164 NAMECALL                         R25 R1 K39 ["getText"]
      166 CALL                             R25 3 1
      167 SETTABLEKS                       R25 R24 K36 ["Text"]
      169 CALL                             R22 2 1
      170 SETTABLEKS                       R22 R21 K30 ["TreeLabel"]
      172 MOVE                             R22 R6
      173 JUMPIFNOT                        R22 ; [+34]
      174 MOVE                             R22 R8
      175 JUMPIFNOT                        R22 ; [+32]
      176 GETUPVAL                         R23 13
      177 CALL                             R23 0 1
      178 JUMPIFNOT                        R23 ; [+8]
      179 LOADB                            R22 0
      180 GETIMPORT                        R23 K41 [next]
      182 GETTABLEKS                       R24 R2 K42 ["instances"]
      184 CALL                             R23 1 1
      185 JUMPIFNOTEQKNIL                  R23 ; [+22]
      187 GETUPVAL                         R22 0
      188 GETTABLEKS                       R22 R22 K21 ["createElement"]
      190 GETUPVAL                         R23 15
      191 DUPTABLE                         R24 K48 [{["icon"] = "plus-small", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-add"}]
      192 MOVE                             R25 R7
      193 CALL                             R25 0 1
      194 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      196 SETTABLEKS                       R12 R24 K45 ["onActivated"]
      198 GETUPVAL                         R25 16
      199 GETTABLEKS                       R25 R25 K49 ["Enums"]
      201 GETTABLEKS                       R25 R25 K50 ["IconSize"]
      203 GETTABLEKS                       R25 R25 K51 ["Small"]
      205 SETTABLEKS                       R25 R24 K46 ["size"]
      207 CALL                             R22 2 1
      208 SETTABLEKS                       R22 R21 K31 ["AddContextButton"]
      210 GETUPVAL                         R23 13
      211 CALL                             R23 0 1
      212 JUMPIFNOT                        R23 ; [+39]
      213 GETIMPORT                        R23 K41 [next]
      215 GETTABLEKS                       R24 R2 K42 ["instances"]
      217 CALL                             R23 1 1
      218 JUMPIFEQKNIL                     R23 ; [+33]
      220 GETUPVAL                         R22 0
      221 GETTABLEKS                       R22 R22 K21 ["createElement"]
      223 GETUPVAL                         R23 17
      224 DUPTABLE                         R24 K55 [{["size"], ["LayoutOrder"], ["onActivated"], ["testId"] = "header-show-all", ["text"], ["variant"]}]
      225 GETUPVAL                         R25 18
      226 GETTABLEKS                       R25 R25 K51 ["Small"]
      228 SETTABLEKS                       R25 R24 K46 ["size"]
      230 MOVE                             R25 R7
      231 CALL                             R25 0 1
      232 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      234 DUPCLOSURE                       R25 K56 [PROTO_6]
      235 CAPTURE                          UPVAL U19
      236 SETTABLEKS                       R25 R24 K45 ["onActivated"]
      238 LOADK                            R27 K38 ["Header"]
      239 LOADK                            R28 K32 ["ShowAll"]
      240 NAMECALL                         R25 R1 K39 ["getText"]
      242 CALL                             R25 3 1
      243 SETTABLEKS                       R25 R24 K53 ["text"]
      245 GETUPVAL                         R25 20
      246 GETTABLEKS                       R25 R25 K57 ["Emphasis"]
      248 SETTABLEKS                       R25 R24 K54 ["variant"]
      250 CALL                             R22 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R22
      253 SETTABLEKS                       R22 R21 K32 ["ShowAll"]
      255 GETUPVAL                         R22 0
      256 GETTABLEKS                       R22 R22 K21 ["createElement"]
      258 GETUPVAL                         R23 21
      259 DUPTABLE                         R24 K65 [{["align"], ["isOpen"], ["items"], ["LayoutOrder"], ["maxHeight"], ["onActivated"], ["onPressedOutside"], ["side"], ["testId"] = "header-filter"}]
      260 GETUPVAL                         R25 22
      261 GETTABLEKS                       R25 R25 K66 ["Start"]
      263 SETTABLEKS                       R25 R24 K58 ["align"]
      265 GETTABLEKS                       R25 R10 K67 ["enabled"]
      267 SETTABLEKS                       R25 R24 K59 ["isOpen"]
      269 SETTABLEKS                       R16 R24 K60 ["items"]
      271 MOVE                             R25 R7
      272 CALL                             R25 0 1
      273 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      275 GETUPVAL                         R26 23
      276 CALL                             R26 0 1
      277 JUMPIFNOT                        R26 ; [+2]
      278 LOADN                            R25 300
      279 JUMP                             ; [+1]
      280 LOADNIL                          R25
      281 SETTABLEKS                       R25 R24 K61 ["maxHeight"]
      283 SETTABLEKS                       R15 R24 K45 ["onActivated"]
      285 SETTABLEKS                       R14 R24 K62 ["onPressedOutside"]
      287 GETUPVAL                         R25 24
      288 GETTABLEKS                       R25 R25 K68 ["Bottom"]
      290 SETTABLEKS                       R25 R24 K63 ["side"]
      292 DUPTABLE                         R25 K70 [{"Filter"}]
      293 GETUPVAL                         R26 0
      294 GETTABLEKS                       R26 R26 K21 ["createElement"]
      296 GETUPVAL                         R27 15
      297 DUPTABLE                         R28 K73 [{["icon"] = "three-bars-horizontal-narrowing", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-filter-button"}]
      298 MOVE                             R29 R7
      299 CALL                             R29 0 1
      300 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      302 SETTABLEKS                       R13 R28 K45 ["onActivated"]
      304 GETUPVAL                         R29 16
      305 GETTABLEKS                       R29 R29 K49 ["Enums"]
      307 GETTABLEKS                       R29 R29 K50 ["IconSize"]
      309 GETTABLEKS                       R29 R29 K51 ["Small"]
      311 SETTABLEKS                       R29 R28 K46 ["size"]
      313 CALL                             R26 2 1
      314 SETTABLEKS                       R26 R25 K69 ["Filter"]
      316 CALL                             R22 3 1
      317 SETTABLEKS                       R22 R21 K33 ["FilterButton"]
      319 CALL                             R18 3 1
      320 SETTABLEKS                       R18 R17 K74 ["TreeHeader"]
      322 GETUPVAL                         R18 0
      323 GETTABLEKS                       R18 R18 K21 ["createElement"]
      325 GETUPVAL                         R19 25
      326 DUPTABLE                         R20 K77 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      327 MOVE                             R21 R7
      328 CALL                             R21 0 1
      329 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      331 GETUPVAL                         R21 26
      332 GETTABLEKS                       R21 R21 K78 ["Vertical"]
      334 SETTABLEKS                       R21 R20 K75 ["orientation"]
      336 CALL                             R18 2 1
      337 SETTABLEKS                       R18 R17 K79 ["Divider"]
      339 GETTABLEKS                       R18 R5 K2 ["datamodelType"]
      341 GETIMPORT                        R19 K81 [Enum.StudioDataModelType.PlayClient]
      343 JUMPIFNOTEQ                      R18 R19 ; [+20]
      345 GETUPVAL                         R18 0
      346 GETTABLEKS                       R18 R18 K21 ["createElement"]
      348 GETUPVAL                         R19 14
      349 DUPTABLE                         R20 K84 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"] = "schema-State", ["Text"]}]
      350 MOVE                             R21 R7
      351 CALL                             R21 0 1
      352 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      354 LOADK                            R23 K38 ["Header"]
      355 LOADK                            R24 K85 ["State"]
      356 NAMECALL                         R21 R1 K39 ["getText"]
      358 CALL                             R21 3 1
      359 SETTABLEKS                       R21 R20 K36 ["Text"]
      361 CALL                             R18 2 1
      362 SETTABLEKS                       R18 R17 K85 ["State"]
      364 GETUPVAL                         R18 27
      365 CALL                             R18 0 3
      366 FORGPREP                         R18
      367 GETTABLEKS                       R24 R2 K16 ["schemas"]
      369 GETTABLE                         R23 R24 R22
      370 JUMPIFEQKB                       R23 FALSE ; [+26]
      372 GETUPVAL                         R23 0
      373 GETTABLEKS                       R23 R23 K21 ["createElement"]
      375 GETUPVAL                         R24 14
      376 DUPTABLE                         R25 K86 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"], ["Text"]}]
      377 MOVE                             R26 R7
      378 CALL                             R26 0 1
      379 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      381 LOADK                            R26 K87 ["schema-%*"]
      382 MOVE                             R28 R22
      383 NAMECALL                         R26 R26 K88 ["format"]
      385 CALL                             R26 2 1
      386 SETTABLEKS                       R26 R25 K25 ["testId"]
      388 LOADK                            R28 K89 ["Schema"]
      389 MOVE                             R29 R22
      390 NAMECALL                         R26 R1 K39 ["getText"]
      392 CALL                             R26 3 1
      393 SETTABLEKS                       R26 R25 K36 ["Text"]
      395 CALL                             R23 2 1
      396 SETTABLE                         R23 R17 R22
      397 FORGLOOP                         R18 2 ; [-31]
      399 GETUPVAL                         R18 0
      400 GETTABLEKS                       R18 R18 K21 ["createElement"]
      402 GETUPVAL                         R19 12
      403 DUPTABLE                         R20 K94 [{["layoutOrder"], ["tag"] = "col size-full-1000", ["ZIndex"] = 2}]
      404 GETTABLEKS                       R21 R0 K22 ["LayoutOrder"]
      406 SETTABLEKS                       R21 R20 K90 ["layoutOrder"]
      408 DUPTABLE                         R21 K95 [{"header", "Divider"}]
      409 GETUPVAL                         R22 0
      410 GETTABLEKS                       R22 R22 K21 ["createElement"]
      412 GETUPVAL                         R23 28
      413 DUPTABLE                         R24 K99 [{["LayoutOrder"], ["scrollingFrameRef"], ["scroll"], ["tag"] = "size-full-1000 auto-x"}]
      414 GETTABLEKS                       R25 R0 K22 ["LayoutOrder"]
      416 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      418 GETTABLEKS                       R25 R0 K96 ["scrollingFrameRef"]
      420 SETTABLEKS                       R25 R24 K96 ["scrollingFrameRef"]
      422 DUPTABLE                         R25 K105 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = False, ["scrollBarVisibility"]}]
      423 GETIMPORT                        R26 K108 [Enum.AutomaticSize.XY]
      425 SETTABLEKS                       R26 R25 K100 ["AutomaticCanvasSize"]
      427 GETIMPORT                        R26 K110 [Enum.ScrollingDirection.X]
      429 SETTABLEKS                       R26 R25 K101 ["ScrollingDirection"]
      431 GETUPVAL                         R26 29
      432 GETTABLEKS                       R26 R26 K18 ["None"]
      434 SETTABLEKS                       R26 R25 K104 ["scrollBarVisibility"]
      436 SETTABLEKS                       R25 R24 K97 ["scroll"]
      438 DUPTABLE                         R25 K112 [{"Children"}]
      439 GETUPVAL                         R26 0
      440 GETTABLEKS                       R26 R26 K21 ["createElement"]
      442 GETUPVAL                         R27 12
      443 DUPTABLE                         R28 K114 [{["tag"] = "row align-y-center size-full-1000 auto-x"}]
      444 MOVE                             R29 R17
      445 CALL                             R26 3 1
      446 SETTABLEKS                       R26 R25 K111 ["Children"]
      448 CALL                             R22 3 1
      449 SETTABLEKS                       R22 R21 K26 ["header"]
      451 GETUPVAL                         R22 0
      452 GETTABLEKS                       R22 R22 K21 ["createElement"]
      454 GETUPVAL                         R23 25
      455 DUPTABLE                         R24 K116 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      456 MOVE                             R25 R7
      457 CALL                             R25 0 1
      458 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      460 GETUPVAL                         R25 16
      461 GETTABLEKS                       R25 R25 K49 ["Enums"]
      463 GETTABLEKS                       R25 R25 K117 ["Orientation"]
      465 GETTABLEKS                       R25 R25 K118 ["Horizontal"]
      467 SETTABLEKS                       R25 R24 K75 ["orientation"]
      469 CALL                             R22 2 1
      470 SETTABLEKS                       R22 R21 K79 ["Divider"]
      472 CALL                             R18 3 -1
      473 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Packages"]
       13 GETTABLEKS                       R3 R3 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Packages"]
       34 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K13 ["Localization"]
       41 GETTABLEKS                       R7 R4 K14 ["Button"]
       43 GETTABLEKS                       R8 R4 K15 ["Enums"]
       45 GETTABLEKS                       R8 R8 K16 ["ButtonVariant"]
       47 GETTABLEKS                       R9 R4 K15 ["Enums"]
       49 GETTABLEKS                       R9 R9 K17 ["ControlState"]
       51 GETTABLEKS                       R10 R4 K18 ["Divider"]
       53 GETTABLEKS                       R11 R4 K19 ["IconButton"]
       55 GETTABLEKS                       R12 R4 K15 ["Enums"]
       57 GETTABLEKS                       R12 R12 K20 ["InputSize"]
       59 GETTABLEKS                       R13 R4 K21 ["Menu"]
       61 GETTABLEKS                       R14 R4 K15 ["Enums"]
       63 GETTABLEKS                       R14 R14 K22 ["PopoverAlign"]
       65 GETTABLEKS                       R15 R4 K15 ["Enums"]
       67 GETTABLEKS                       R15 R15 K23 ["PopoverSide"]
       69 GETTABLEKS                       R16 R4 K24 ["ScrollView"]
       71 GETTABLEKS                       R17 R4 K25 ["Text"]
       73 GETTABLEKS                       R18 R4 K26 ["View"]
       75 GETTABLEKS                       R19 R4 K15 ["Enums"]
       77 GETTABLEKS                       R19 R19 K27 ["Visibility"]
       79 GETTABLEKS                       R20 R4 K15 ["Enums"]
       81 GETTABLEKS                       R20 R20 K28 ["Orientation"]
       83 GETIMPORT                        R21 K6 [require]
       85 GETTABLEKS                       R22 R0 K29 ["Src"]
       87 GETTABLEKS                       R22 R22 K12 ["Contexts"]
       89 GETTABLEKS                       R22 R22 K30 ["FilterConfiguration"]
       91 CALL                             R21 1 1
       92 GETIMPORT                        R22 K6 [require]
       94 GETTABLEKS                       R23 R0 K29 ["Src"]
       96 GETTABLEKS                       R23 R23 K31 ["Util"]
       98 GETTABLEKS                       R23 R23 K32 ["Constants"]
      100 GETTABLEKS                       R23 R23 K33 ["FilterToSchema"]
      102 CALL                             R22 1 1
      103 GETIMPORT                        R23 K6 [require]
      105 GETTABLEKS                       R24 R0 K29 ["Src"]
      107 GETTABLEKS                       R24 R24 K34 ["Flags"]
      109 GETTABLEKS                       R24 R24 K35 ["getFFlagIAMSavedFilters"]
      111 CALL                             R23 1 1
      112 GETIMPORT                        R24 K6 [require]
      114 GETTABLEKS                       R25 R0 K29 ["Src"]
      116 GETTABLEKS                       R25 R25 K31 ["Util"]
      118 GETTABLEKS                       R25 R25 K36 ["Menus"]
      120 GETTABLEKS                       R25 R25 K37 ["getFilterMenu"]
      122 CALL                             R24 1 1
      123 GETIMPORT                        R25 K6 [require]
      125 GETTABLEKS                       R26 R0 K29 ["Src"]
      127 GETTABLEKS                       R26 R26 K31 ["Util"]
      129 GETTABLEKS                       R26 R26 K38 ["getSchemas"]
      131 CALL                             R25 1 1
      132 GETIMPORT                        R26 K6 [require]
      134 GETTABLEKS                       R27 R0 K29 ["Src"]
      136 GETTABLEKS                       R27 R27 K12 ["Contexts"]
      138 GETTABLEKS                       R27 R27 K39 ["InputConfiguration"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K6 [require]
      143 GETTABLEKS                       R28 R0 K29 ["Src"]
      145 GETTABLEKS                       R28 R28 K40 ["Hooks"]
      147 GETTABLEKS                       R28 R28 K41 ["Context"]
      149 GETTABLEKS                       R28 R28 K42 ["useContextOrder"]
      151 CALL                             R27 1 1
      152 GETIMPORT                        R28 K6 [require]
      154 GETTABLEKS                       R29 R0 K29 ["Src"]
      156 GETTABLEKS                       R29 R29 K12 ["Contexts"]
      158 GETTABLEKS                       R29 R29 K43 ["DatamodelConfiguration"]
      160 CALL                             R28 1 1
      161 GETIMPORT                        R29 K6 [require]
      163 GETTABLEKS                       R30 R0 K29 ["Src"]
      165 GETTABLEKS                       R30 R30 K44 ["Types"]
      167 CALL                             R29 1 1
      168 GETTABLEKS                       R30 R0 K29 ["Src"]
      170 GETTABLEKS                       R30 R30 K34 ["Flags"]
      172 GETIMPORT                        R31 K6 [require]
      174 GETTABLEKS                       R32 R30 K45 ["getFFlagIAMEditOnlyInEditDatamodel"]
      176 CALL                             R31 1 1
      177 GETIMPORT                        R32 K6 [require]
      179 GETTABLEKS                       R33 R30 K46 ["getFFlagIAMFilterScroll"]
      181 CALL                             R32 1 1
      182 GETIMPORT                        R33 K6 [require]
      184 GETTABLEKS                       R34 R30 K47 ["getFFlagIAMOpenFromProperties"]
      186 CALL                             R33 1 1
      187 DUPCLOSURE                       R34 K48 [PROTO_7]
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R26
      192 CAPTURE                          VAL R27
      193 CAPTURE                          VAL R28
      194 CAPTURE                          VAL R31
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R33
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R32
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R19
      218 RETURN                           R34 1
