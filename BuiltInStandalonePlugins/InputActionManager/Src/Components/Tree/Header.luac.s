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
       30 GETUPVAL                         R6 6
       31 GETTABLEKS                       R6 R6 K2 ["createNextOrder"]
       33 CALL                             R6 0 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K3 ["useState"]
       37 LOADB                            R8 0
       38 CALL                             R7 1 2
       39 GETUPVAL                         R9 6
       40 GETTABLEKS                       R9 R9 K4 ["useToggleState"]
       42 LOADB                            R10 0
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 6
       45 GETTABLEKS                       R10 R10 K5 ["useEventCallback"]
       47 NEWCLOSURE                       R11 P0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U7
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       54 NEWCLOSURE                       R12 P1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R13 0 1
       58 GETTABLEKS                       R14 R0 K7 ["onChildAdded"]
       60 SETLIST                          R13 R14 1 [1]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 6
       64 GETTABLEKS                       R12 R12 K5 ["useEventCallback"]
       66 NEWCLOSURE                       R13 P2
       67 CAPTURE                          VAL R9
       68 CALL                             R12 1 1
       69 GETUPVAL                         R13 6
       70 GETTABLEKS                       R13 R13 K5 ["useEventCallback"]
       72 NEWCLOSURE                       R14 P3
       73 CAPTURE                          VAL R9
       74 CALL                             R13 1 1
       75 GETUPVAL                         R14 6
       76 GETTABLEKS                       R14 R14 K5 ["useEventCallback"]
       78 NEWCLOSURE                       R15 P4
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R2
       81 CAPTURE                          UPVAL U9
       82 CALL                             R14 1 1
       83 GETUPVAL                         R15 0
       84 GETTABLEKS                       R15 R15 K8 ["useMemo"]
       86 NEWCLOSURE                       R16 P5
       87 CAPTURE                          UPVAL U10
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 NEWTABLE                         R17 0 8
       95 MOVE                             R18 R1
       96 MOVE                             R19 R4
       97 GETTABLEKS                       R20 R3 K9 ["getContext"]
       99 GETTABLEKS                       R21 R2 K10 ["contexts"]
      101 GETTABLEKS                       R22 R2 K11 ["schemas"]
      103 GETTABLEKS                       R23 R2 K12 ["builtin"]
      105 JUMPIFNOT                        R5 ; [+3]
      106 GETTABLEKS                       R24 R5 K13 ["datamodelType"]
      108 JUMP                             ; [+2]
      109 GETIMPORT                        R24 K17 [Enum.StudioDataModelType.None]
      111 JUMPIFNOT                        R5 ; [+3]
      112 GETTABLEKS                       R25 R5 K18 ["createDefaultPlayerModule"]
      114 JUMP                             ; [+1]
      115 LOADB                            R25 1
      116 SETLIST                          R17 R18 8 [1]
      118 CALL                             R15 2 1
      119 NEWTABLE                         R16 4 0
      121 GETUPVAL                         R17 0
      122 GETTABLEKS                       R17 R17 K19 ["createElement"]
      124 GETUPVAL                         R18 11
      125 DUPTABLE                         R19 K25 [{["LayoutOrder"], ["onStateChanged"], ["tag"], ["testId"] = "header"}]
      126 MOVE                             R20 R6
      127 CALL                             R20 0 1
      128 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      130 SETTABLEKS                       R10 R19 K21 ["onStateChanged"]
      132 GETUPVAL                         R21 12
      133 CALL                             R21 0 1
      134 JUMPIFNOT                        R21 ; [+2]
      135 LOADK                            R20 K26 ["columns-tree row align-y-center padding-left-small padding-right-small gap-small"]
      136 JUMP                             ; [+1]
      137 LOADK                            R20 K27 ["columns-tree row align-y-center padding-left-small padding-right-small"]
      138 SETTABLEKS                       R20 R19 K22 ["tag"]
      140 DUPTABLE                         R20 K32 [{"TreeLabel", "AddContextButton", "ShowAll", "FilterButton"}]
      141 GETUPVAL                         R21 0
      142 GETTABLEKS                       R21 R21 K19 ["createElement"]
      144 GETUPVAL                         R22 13
      145 DUPTABLE                         R23 K35 [{["LayoutOrder"], ["tag"] = "grow padding-small text-body-medium text-align-x-left", ["Text"]}]
      146 MOVE                             R24 R6
      147 CALL                             R24 0 1
      148 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      150 LOADK                            R26 K36 ["Header"]
      151 LOADK                            R27 K1 ["Context"]
      152 NAMECALL                         R24 R1 K37 ["getText"]
      154 CALL                             R24 3 1
      155 SETTABLEKS                       R24 R23 K34 ["Text"]
      157 CALL                             R21 2 1
      158 SETTABLEKS                       R21 R20 K28 ["TreeLabel"]
      160 MOVE                             R21 R7
      161 JUMPIFNOT                        R21 ; [+32]
      162 GETUPVAL                         R22 12
      163 CALL                             R22 0 1
      164 JUMPIFNOT                        R22 ; [+8]
      165 LOADB                            R21 0
      166 GETIMPORT                        R22 K39 [next]
      168 GETTABLEKS                       R23 R2 K40 ["instances"]
      170 CALL                             R22 1 1
      171 JUMPIFNOTEQKNIL                  R22 ; [+22]
      173 GETUPVAL                         R21 0
      174 GETTABLEKS                       R21 R21 K19 ["createElement"]
      176 GETUPVAL                         R22 14
      177 DUPTABLE                         R23 K46 [{["icon"] = "plus-small", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-add"}]
      178 MOVE                             R24 R6
      179 CALL                             R24 0 1
      180 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      182 SETTABLEKS                       R11 R23 K43 ["onActivated"]
      184 GETUPVAL                         R24 15
      185 GETTABLEKS                       R24 R24 K47 ["Enums"]
      187 GETTABLEKS                       R24 R24 K48 ["IconSize"]
      189 GETTABLEKS                       R24 R24 K49 ["Small"]
      191 SETTABLEKS                       R24 R23 K44 ["size"]
      193 CALL                             R21 2 1
      194 SETTABLEKS                       R21 R20 K29 ["AddContextButton"]
      196 GETUPVAL                         R22 12
      197 CALL                             R22 0 1
      198 JUMPIFNOT                        R22 ; [+39]
      199 GETIMPORT                        R22 K39 [next]
      201 GETTABLEKS                       R23 R2 K40 ["instances"]
      203 CALL                             R22 1 1
      204 JUMPIFEQKNIL                     R22 ; [+33]
      206 GETUPVAL                         R21 0
      207 GETTABLEKS                       R21 R21 K19 ["createElement"]
      209 GETUPVAL                         R22 16
      210 DUPTABLE                         R23 K53 [{["size"], ["LayoutOrder"], ["onActivated"], ["testId"] = "header-show-all", ["text"], ["variant"]}]
      211 GETUPVAL                         R24 17
      212 GETTABLEKS                       R24 R24 K49 ["Small"]
      214 SETTABLEKS                       R24 R23 K44 ["size"]
      216 MOVE                             R24 R6
      217 CALL                             R24 0 1
      218 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      220 DUPCLOSURE                       R24 K54 [PROTO_6]
      221 CAPTURE                          UPVAL U18
      222 SETTABLEKS                       R24 R23 K43 ["onActivated"]
      224 LOADK                            R26 K36 ["Header"]
      225 LOADK                            R27 K30 ["ShowAll"]
      226 NAMECALL                         R24 R1 K37 ["getText"]
      228 CALL                             R24 3 1
      229 SETTABLEKS                       R24 R23 K51 ["text"]
      231 GETUPVAL                         R24 19
      232 GETTABLEKS                       R24 R24 K55 ["Emphasis"]
      234 SETTABLEKS                       R24 R23 K52 ["variant"]
      236 CALL                             R21 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R21
      239 SETTABLEKS                       R21 R20 K30 ["ShowAll"]
      241 GETUPVAL                         R21 0
      242 GETTABLEKS                       R21 R21 K19 ["createElement"]
      244 GETUPVAL                         R22 20
      245 DUPTABLE                         R23 K63 [{["align"], ["isOpen"], ["items"], ["LayoutOrder"], ["maxHeight"], ["onActivated"], ["onPressedOutside"], ["side"], ["testId"] = "header-filter"}]
      246 GETUPVAL                         R24 21
      247 GETTABLEKS                       R24 R24 K64 ["Start"]
      249 SETTABLEKS                       R24 R23 K56 ["align"]
      251 GETTABLEKS                       R24 R9 K65 ["enabled"]
      253 SETTABLEKS                       R24 R23 K57 ["isOpen"]
      255 SETTABLEKS                       R15 R23 K58 ["items"]
      257 MOVE                             R24 R6
      258 CALL                             R24 0 1
      259 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      261 GETUPVAL                         R25 22
      262 CALL                             R25 0 1
      263 JUMPIFNOT                        R25 ; [+2]
      264 LOADN                            R24 300
      265 JUMP                             ; [+1]
      266 LOADNIL                          R24
      267 SETTABLEKS                       R24 R23 K59 ["maxHeight"]
      269 SETTABLEKS                       R14 R23 K43 ["onActivated"]
      271 SETTABLEKS                       R13 R23 K60 ["onPressedOutside"]
      273 GETUPVAL                         R24 23
      274 GETTABLEKS                       R24 R24 K66 ["Bottom"]
      276 SETTABLEKS                       R24 R23 K61 ["side"]
      278 DUPTABLE                         R24 K68 [{"Filter"}]
      279 GETUPVAL                         R25 0
      280 GETTABLEKS                       R25 R25 K19 ["createElement"]
      282 GETUPVAL                         R26 14
      283 DUPTABLE                         R27 K71 [{["icon"] = "three-bars-horizontal-narrowing", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-filter-button"}]
      284 MOVE                             R28 R6
      285 CALL                             R28 0 1
      286 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      288 SETTABLEKS                       R12 R27 K43 ["onActivated"]
      290 GETUPVAL                         R28 15
      291 GETTABLEKS                       R28 R28 K47 ["Enums"]
      293 GETTABLEKS                       R28 R28 K48 ["IconSize"]
      295 GETTABLEKS                       R28 R28 K49 ["Small"]
      297 SETTABLEKS                       R28 R27 K44 ["size"]
      299 CALL                             R25 2 1
      300 SETTABLEKS                       R25 R24 K67 ["Filter"]
      302 CALL                             R21 3 1
      303 SETTABLEKS                       R21 R20 K31 ["FilterButton"]
      305 CALL                             R17 3 1
      306 SETTABLEKS                       R17 R16 K72 ["TreeHeader"]
      308 GETUPVAL                         R17 0
      309 GETTABLEKS                       R17 R17 K19 ["createElement"]
      311 GETUPVAL                         R18 24
      312 DUPTABLE                         R19 K75 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      313 MOVE                             R20 R6
      314 CALL                             R20 0 1
      315 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      317 GETUPVAL                         R20 25
      318 GETTABLEKS                       R20 R20 K76 ["Vertical"]
      320 SETTABLEKS                       R20 R19 K73 ["orientation"]
      322 CALL                             R17 2 1
      323 SETTABLEKS                       R17 R16 K77 ["Divider"]
      325 GETTABLEKS                       R17 R5 K13 ["datamodelType"]
      327 GETIMPORT                        R18 K79 [Enum.StudioDataModelType.PlayClient]
      329 JUMPIFNOTEQ                      R17 R18 ; [+20]
      331 GETUPVAL                         R17 0
      332 GETTABLEKS                       R17 R17 K19 ["createElement"]
      334 GETUPVAL                         R18 13
      335 DUPTABLE                         R19 K82 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"] = "schema-State", ["Text"]}]
      336 MOVE                             R20 R6
      337 CALL                             R20 0 1
      338 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      340 LOADK                            R22 K36 ["Header"]
      341 LOADK                            R23 K83 ["State"]
      342 NAMECALL                         R20 R1 K37 ["getText"]
      344 CALL                             R20 3 1
      345 SETTABLEKS                       R20 R19 K34 ["Text"]
      347 CALL                             R17 2 1
      348 SETTABLEKS                       R17 R16 K83 ["State"]
      350 GETUPVAL                         R17 26
      351 CALL                             R17 0 3
      352 FORGPREP                         R17
      353 GETTABLEKS                       R23 R2 K11 ["schemas"]
      355 GETTABLE                         R22 R23 R21
      356 JUMPIFEQKB                       R22 FALSE ; [+26]
      358 GETUPVAL                         R22 0
      359 GETTABLEKS                       R22 R22 K19 ["createElement"]
      361 GETUPVAL                         R23 13
      362 DUPTABLE                         R24 K84 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"], ["Text"]}]
      363 MOVE                             R25 R6
      364 CALL                             R25 0 1
      365 SETTABLEKS                       R25 R24 K20 ["LayoutOrder"]
      367 LOADK                            R25 K85 ["schema-%*"]
      368 MOVE                             R27 R21
      369 NAMECALL                         R25 R25 K86 ["format"]
      371 CALL                             R25 2 1
      372 SETTABLEKS                       R25 R24 K23 ["testId"]
      374 LOADK                            R27 K87 ["Schema"]
      375 MOVE                             R28 R21
      376 NAMECALL                         R25 R1 K37 ["getText"]
      378 CALL                             R25 3 1
      379 SETTABLEKS                       R25 R24 K34 ["Text"]
      381 CALL                             R22 2 1
      382 SETTABLE                         R22 R16 R21
      383 FORGLOOP                         R17 2 ; [-31]
      385 GETUPVAL                         R17 0
      386 GETTABLEKS                       R17 R17 K19 ["createElement"]
      388 GETUPVAL                         R18 11
      389 DUPTABLE                         R19 K92 [{["layoutOrder"], ["tag"] = "col size-full-1000", ["ZIndex"] = 2}]
      390 GETTABLEKS                       R20 R0 K20 ["LayoutOrder"]
      392 SETTABLEKS                       R20 R19 K88 ["layoutOrder"]
      394 DUPTABLE                         R20 K93 [{"header", "Divider"}]
      395 GETUPVAL                         R21 0
      396 GETTABLEKS                       R21 R21 K19 ["createElement"]
      398 GETUPVAL                         R22 27
      399 DUPTABLE                         R23 K97 [{["LayoutOrder"], ["scrollingFrameRef"], ["scroll"], ["tag"] = "size-full-1000 auto-x"}]
      400 GETTABLEKS                       R24 R0 K20 ["LayoutOrder"]
      402 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      404 GETTABLEKS                       R24 R0 K94 ["scrollingFrameRef"]
      406 SETTABLEKS                       R24 R23 K94 ["scrollingFrameRef"]
      408 DUPTABLE                         R24 K103 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = False, ["scrollBarVisibility"]}]
      409 GETIMPORT                        R25 K106 [Enum.AutomaticSize.XY]
      411 SETTABLEKS                       R25 R24 K98 ["AutomaticCanvasSize"]
      413 GETIMPORT                        R25 K108 [Enum.ScrollingDirection.X]
      415 SETTABLEKS                       R25 R24 K99 ["ScrollingDirection"]
      417 GETUPVAL                         R25 28
      418 GETTABLEKS                       R25 R25 K16 ["None"]
      420 SETTABLEKS                       R25 R24 K102 ["scrollBarVisibility"]
      422 SETTABLEKS                       R24 R23 K95 ["scroll"]
      424 DUPTABLE                         R24 K110 [{"Children"}]
      425 GETUPVAL                         R25 0
      426 GETTABLEKS                       R25 R25 K19 ["createElement"]
      428 GETUPVAL                         R26 11
      429 DUPTABLE                         R27 K112 [{["tag"] = "row align-y-center size-full-1000 auto-x"}]
      430 MOVE                             R28 R16
      431 CALL                             R25 3 1
      432 SETTABLEKS                       R25 R24 K109 ["Children"]
      434 CALL                             R21 3 1
      435 SETTABLEKS                       R21 R20 K24 ["header"]
      437 GETUPVAL                         R21 0
      438 GETTABLEKS                       R21 R21 K19 ["createElement"]
      440 GETUPVAL                         R22 24
      441 DUPTABLE                         R23 K114 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      442 MOVE                             R24 R6
      443 CALL                             R24 0 1
      444 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      446 GETUPVAL                         R24 15
      447 GETTABLEKS                       R24 R24 K47 ["Enums"]
      449 GETTABLEKS                       R24 R24 K115 ["Orientation"]
      451 GETTABLEKS                       R24 R24 K116 ["Horizontal"]
      453 SETTABLEKS                       R24 R23 K73 ["orientation"]
      455 CALL                             R21 2 1
      456 SETTABLEKS                       R21 R20 K77 ["Divider"]
      458 CALL                             R17 3 -1
      459 RETURN                           R17 -1

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
      174 GETTABLEKS                       R32 R30 K45 ["getFFlagIAMFilterScroll"]
      176 CALL                             R31 1 1
      177 GETIMPORT                        R32 K6 [require]
      179 GETTABLEKS                       R33 R30 K46 ["getFFlagIAMOpenFromProperties"]
      181 CALL                             R32 1 1
      182 DUPCLOSURE                       R33 K47 [PROTO_7]
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R26
      187 CAPTURE                          VAL R27
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R32
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R31
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R19
      212 RETURN                           R33 1
