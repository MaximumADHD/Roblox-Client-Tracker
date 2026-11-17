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
       27 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+30]
       29 JUMPIFNOTEQKS                    R0 K7 ["PlayerScripts"] ; [+15]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K8 ["setBuiltinVisible"]
       34 MOVE                             R3 R0
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K9 ["builtin"]
       38 GETTABLE                         R5 R6 R0
       39 JUMPIFEQKB                       R5 FALSE ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 CALL                             R2 2 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K10 ["setContextVisible"]
       48 MOVE                             R3 R0
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K11 ["contexts"]
       52 GETTABLE                         R5 R6 R0
       53 JUMPIFEQKB                       R5 FALSE ; [+2]
       55 LOADB                            R4 0 +1
       56 LOADB                            R4 1
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

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
       93 CALL                             R15 1 1
       94 GETUPVAL                         R16 0
       95 GETTABLEKS                       R16 R16 K13 ["useMemo"]
       97 NEWCLOSURE                       R17 P5
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 NEWTABLE                         R18 0 8
      106 MOVE                             R19 R1
      107 MOVE                             R20 R4
      108 GETTABLEKS                       R21 R3 K14 ["getContext"]
      110 GETTABLEKS                       R22 R2 K15 ["contexts"]
      112 GETTABLEKS                       R23 R2 K16 ["schemas"]
      114 GETTABLEKS                       R24 R2 K17 ["builtin"]
      116 JUMPIFNOT                        R5 ; [+3]
      117 GETTABLEKS                       R25 R5 K2 ["datamodelType"]
      119 JUMP                             ; [+2]
      120 GETIMPORT                        R25 K19 [Enum.StudioDataModelType.None]
      122 JUMPIFNOT                        R5 ; [+3]
      123 GETTABLEKS                       R26 R5 K20 ["createDefaultPlayerModule"]
      125 JUMP                             ; [+1]
      126 LOADB                            R26 1
      127 SETLIST                          R18 R19 8 [1]
      129 CALL                             R16 2 1
      130 NEWTABLE                         R17 4 0
      132 GETUPVAL                         R18 0
      133 GETTABLEKS                       R18 R18 K21 ["createElement"]
      135 GETUPVAL                         R19 11
      136 DUPTABLE                         R20 K28 [{["LayoutOrder"], ["onStateChanged"], ["tag"] = "columns-tree row align-y-center padding-left-small padding-right-small gap-small", ["testId"] = "header"}]
      137 MOVE                             R21 R7
      138 CALL                             R21 0 1
      139 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      141 SETTABLEKS                       R11 R20 K23 ["onStateChanged"]
      143 DUPTABLE                         R21 K33 [{"TreeLabel", "AddContextButton", "ShowAll", "FilterButton"}]
      144 GETUPVAL                         R22 0
      145 GETTABLEKS                       R22 R22 K21 ["createElement"]
      147 GETUPVAL                         R23 12
      148 DUPTABLE                         R24 K36 [{["LayoutOrder"], ["tag"] = "grow padding-small text-body-medium text-align-x-left", ["Text"]}]
      149 MOVE                             R25 R7
      150 CALL                             R25 0 1
      151 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      153 LOADK                            R27 K37 ["Header"]
      154 LOADK                            R28 K1 ["Context"]
      155 NAMECALL                         R25 R1 K38 ["getText"]
      157 CALL                             R25 3 1
      158 SETTABLEKS                       R25 R24 K35 ["Text"]
      160 CALL                             R22 2 1
      161 SETTABLEKS                       R22 R21 K29 ["TreeLabel"]
      163 MOVE                             R22 R6
      164 JUMPIFNOT                        R22 ; [+31]
      165 MOVE                             R22 R8
      166 JUMPIFNOT                        R22 ; [+29]
      167 LOADB                            R22 0
      168 GETIMPORT                        R23 K40 [next]
      170 GETTABLEKS                       R24 R2 K41 ["instances"]
      172 CALL                             R23 1 1
      173 JUMPIFNOTEQKNIL                  R23 ; [+22]
      175 GETUPVAL                         R22 0
      176 GETTABLEKS                       R22 R22 K21 ["createElement"]
      178 GETUPVAL                         R23 13
      179 DUPTABLE                         R24 K47 [{["icon"] = "plus-small", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-add"}]
      180 MOVE                             R25 R7
      181 CALL                             R25 0 1
      182 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      184 SETTABLEKS                       R12 R24 K44 ["onActivated"]
      186 GETUPVAL                         R25 14
      187 GETTABLEKS                       R25 R25 K48 ["Enums"]
      189 GETTABLEKS                       R25 R25 K49 ["IconSize"]
      191 GETTABLEKS                       R25 R25 K50 ["Small"]
      193 SETTABLEKS                       R25 R24 K45 ["size"]
      195 CALL                             R22 2 1
      196 SETTABLEKS                       R22 R21 K30 ["AddContextButton"]
      198 GETIMPORT                        R23 K40 [next]
      200 GETTABLEKS                       R24 R2 K41 ["instances"]
      202 CALL                             R23 1 1
      203 JUMPIFEQKNIL                     R23 ; [+33]
      205 GETUPVAL                         R22 0
      206 GETTABLEKS                       R22 R22 K21 ["createElement"]
      208 GETUPVAL                         R23 15
      209 DUPTABLE                         R24 K54 [{["size"], ["LayoutOrder"], ["onActivated"], ["testId"] = "header-show-all", ["text"], ["variant"]}]
      210 GETUPVAL                         R25 16
      211 GETTABLEKS                       R25 R25 K50 ["Small"]
      213 SETTABLEKS                       R25 R24 K45 ["size"]
      215 MOVE                             R25 R7
      216 CALL                             R25 0 1
      217 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      219 DUPCLOSURE                       R25 K55 [PROTO_6]
      220 CAPTURE                          UPVAL U17
      221 SETTABLEKS                       R25 R24 K44 ["onActivated"]
      223 LOADK                            R27 K37 ["Header"]
      224 LOADK                            R28 K31 ["ShowAll"]
      225 NAMECALL                         R25 R1 K38 ["getText"]
      227 CALL                             R25 3 1
      228 SETTABLEKS                       R25 R24 K52 ["text"]
      230 GETUPVAL                         R25 18
      231 GETTABLEKS                       R25 R25 K56 ["Emphasis"]
      233 SETTABLEKS                       R25 R24 K53 ["variant"]
      235 CALL                             R22 2 1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R22
      238 SETTABLEKS                       R22 R21 K31 ["ShowAll"]
      240 GETUPVAL                         R22 0
      241 GETTABLEKS                       R22 R22 K21 ["createElement"]
      243 GETUPVAL                         R23 19
      244 DUPTABLE                         R24 K65 [{["align"], ["isOpen"], ["items"], ["LayoutOrder"], ["maxHeight"] = 300, ["onActivated"], ["onPressedOutside"], ["side"], ["testId"] = "header-filter"}]
      245 GETUPVAL                         R25 20
      246 GETTABLEKS                       R25 R25 K66 ["Start"]
      248 SETTABLEKS                       R25 R24 K57 ["align"]
      250 GETTABLEKS                       R25 R10 K67 ["enabled"]
      252 SETTABLEKS                       R25 R24 K58 ["isOpen"]
      254 SETTABLEKS                       R16 R24 K59 ["items"]
      256 MOVE                             R25 R7
      257 CALL                             R25 0 1
      258 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      260 SETTABLEKS                       R15 R24 K44 ["onActivated"]
      262 SETTABLEKS                       R14 R24 K62 ["onPressedOutside"]
      264 GETUPVAL                         R25 21
      265 GETTABLEKS                       R25 R25 K68 ["Bottom"]
      267 SETTABLEKS                       R25 R24 K63 ["side"]
      269 DUPTABLE                         R25 K70 [{"Filter"}]
      270 GETUPVAL                         R26 0
      271 GETTABLEKS                       R26 R26 K21 ["createElement"]
      273 GETUPVAL                         R27 13
      274 DUPTABLE                         R28 K73 [{["icon"] = "three-bars-horizontal-narrowing", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-filter-button"}]
      275 MOVE                             R29 R7
      276 CALL                             R29 0 1
      277 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      279 SETTABLEKS                       R13 R28 K44 ["onActivated"]
      281 GETUPVAL                         R29 14
      282 GETTABLEKS                       R29 R29 K48 ["Enums"]
      284 GETTABLEKS                       R29 R29 K49 ["IconSize"]
      286 GETTABLEKS                       R29 R29 K50 ["Small"]
      288 SETTABLEKS                       R29 R28 K45 ["size"]
      290 CALL                             R26 2 1
      291 SETTABLEKS                       R26 R25 K69 ["Filter"]
      293 CALL                             R22 3 1
      294 SETTABLEKS                       R22 R21 K32 ["FilterButton"]
      296 CALL                             R18 3 1
      297 SETTABLEKS                       R18 R17 K74 ["TreeHeader"]
      299 GETUPVAL                         R18 0
      300 GETTABLEKS                       R18 R18 K21 ["createElement"]
      302 GETUPVAL                         R19 22
      303 DUPTABLE                         R20 K77 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      304 MOVE                             R21 R7
      305 CALL                             R21 0 1
      306 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      308 GETUPVAL                         R21 23
      309 GETTABLEKS                       R21 R21 K78 ["Vertical"]
      311 SETTABLEKS                       R21 R20 K75 ["orientation"]
      313 CALL                             R18 2 1
      314 SETTABLEKS                       R18 R17 K79 ["Divider"]
      316 GETTABLEKS                       R18 R5 K2 ["datamodelType"]
      318 GETIMPORT                        R19 K81 [Enum.StudioDataModelType.PlayClient]
      320 JUMPIFNOTEQ                      R18 R19 ; [+20]
      322 GETUPVAL                         R18 0
      323 GETTABLEKS                       R18 R18 K21 ["createElement"]
      325 GETUPVAL                         R19 12
      326 DUPTABLE                         R20 K84 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"] = "schema-State", ["Text"]}]
      327 MOVE                             R21 R7
      328 CALL                             R21 0 1
      329 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      331 LOADK                            R23 K37 ["Header"]
      332 LOADK                            R24 K85 ["State"]
      333 NAMECALL                         R21 R1 K38 ["getText"]
      335 CALL                             R21 3 1
      336 SETTABLEKS                       R21 R20 K35 ["Text"]
      338 CALL                             R18 2 1
      339 SETTABLEKS                       R18 R17 K85 ["State"]
      341 GETUPVAL                         R18 24
      342 CALL                             R18 0 3
      343 FORGPREP                         R18
      344 GETTABLEKS                       R24 R2 K16 ["schemas"]
      346 GETTABLE                         R23 R24 R22
      347 JUMPIFEQKB                       R23 FALSE ; [+26]
      349 GETUPVAL                         R23 0
      350 GETTABLEKS                       R23 R23 K21 ["createElement"]
      352 GETUPVAL                         R24 12
      353 DUPTABLE                         R25 K86 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"], ["Text"]}]
      354 MOVE                             R26 R7
      355 CALL                             R26 0 1
      356 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      358 LOADK                            R26 K87 ["schema-%*"]
      359 MOVE                             R28 R22
      360 NAMECALL                         R26 R26 K88 ["format"]
      362 CALL                             R26 2 1
      363 SETTABLEKS                       R26 R25 K26 ["testId"]
      365 LOADK                            R28 K89 ["Schema"]
      366 MOVE                             R29 R22
      367 NAMECALL                         R26 R1 K38 ["getText"]
      369 CALL                             R26 3 1
      370 SETTABLEKS                       R26 R25 K35 ["Text"]
      372 CALL                             R23 2 1
      373 SETTABLE                         R23 R17 R22
      374 FORGLOOP                         R18 2 ; [-31]
      376 GETUPVAL                         R18 0
      377 GETTABLEKS                       R18 R18 K21 ["createElement"]
      379 GETUPVAL                         R19 11
      380 DUPTABLE                         R20 K94 [{["layoutOrder"], ["tag"] = "col size-full-1000", ["ZIndex"] = 2}]
      381 GETTABLEKS                       R21 R0 K22 ["LayoutOrder"]
      383 SETTABLEKS                       R21 R20 K90 ["layoutOrder"]
      385 DUPTABLE                         R21 K95 [{"header", "Divider"}]
      386 GETUPVAL                         R22 0
      387 GETTABLEKS                       R22 R22 K21 ["createElement"]
      389 GETUPVAL                         R23 25
      390 DUPTABLE                         R24 K99 [{["LayoutOrder"], ["scrollingFrameRef"], ["scroll"], ["tag"] = "size-full-1000 auto-x"}]
      391 GETTABLEKS                       R25 R0 K22 ["LayoutOrder"]
      393 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      395 GETTABLEKS                       R25 R0 K96 ["scrollingFrameRef"]
      397 SETTABLEKS                       R25 R24 K96 ["scrollingFrameRef"]
      399 DUPTABLE                         R25 K105 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = False, ["scrollBarVisibility"]}]
      400 GETIMPORT                        R26 K108 [Enum.AutomaticSize.XY]
      402 SETTABLEKS                       R26 R25 K100 ["AutomaticCanvasSize"]
      404 GETIMPORT                        R26 K110 [Enum.ScrollingDirection.X]
      406 SETTABLEKS                       R26 R25 K101 ["ScrollingDirection"]
      408 GETUPVAL                         R26 26
      409 GETTABLEKS                       R26 R26 K18 ["None"]
      411 SETTABLEKS                       R26 R25 K104 ["scrollBarVisibility"]
      413 SETTABLEKS                       R25 R24 K97 ["scroll"]
      415 DUPTABLE                         R25 K112 [{"Children"}]
      416 GETUPVAL                         R26 0
      417 GETTABLEKS                       R26 R26 K21 ["createElement"]
      419 GETUPVAL                         R27 11
      420 DUPTABLE                         R28 K114 [{["tag"] = "row align-y-center size-full-1000 auto-x"}]
      421 MOVE                             R29 R17
      422 CALL                             R26 3 1
      423 SETTABLEKS                       R26 R25 K111 ["Children"]
      425 CALL                             R22 3 1
      426 SETTABLEKS                       R22 R21 K27 ["header"]
      428 GETUPVAL                         R22 0
      429 GETTABLEKS                       R22 R22 K21 ["createElement"]
      431 GETUPVAL                         R23 22
      432 DUPTABLE                         R24 K116 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      433 MOVE                             R25 R7
      434 CALL                             R25 0 1
      435 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      437 GETUPVAL                         R25 14
      438 GETTABLEKS                       R25 R25 K48 ["Enums"]
      440 GETTABLEKS                       R25 R25 K117 ["Orientation"]
      442 GETTABLEKS                       R25 R25 K118 ["Horizontal"]
      444 SETTABLEKS                       R25 R24 K75 ["orientation"]
      446 CALL                             R22 2 1
      447 SETTABLEKS                       R22 R21 K79 ["Divider"]
      449 CALL                             R18 3 -1
      450 RETURN                           R18 -1

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
      107 GETTABLEKS                       R24 R24 K31 ["Util"]
      109 GETTABLEKS                       R24 R24 K34 ["Menus"]
      111 GETTABLEKS                       R24 R24 K35 ["getFilterMenu"]
      113 CALL                             R23 1 1
      114 GETIMPORT                        R24 K6 [require]
      116 GETTABLEKS                       R25 R0 K29 ["Src"]
      118 GETTABLEKS                       R25 R25 K31 ["Util"]
      120 GETTABLEKS                       R25 R25 K36 ["getSchemas"]
      122 CALL                             R24 1 1
      123 GETIMPORT                        R25 K6 [require]
      125 GETTABLEKS                       R26 R0 K29 ["Src"]
      127 GETTABLEKS                       R26 R26 K12 ["Contexts"]
      129 GETTABLEKS                       R26 R26 K37 ["InputConfiguration"]
      131 CALL                             R25 1 1
      132 GETIMPORT                        R26 K6 [require]
      134 GETTABLEKS                       R27 R0 K29 ["Src"]
      136 GETTABLEKS                       R27 R27 K38 ["Hooks"]
      138 GETTABLEKS                       R27 R27 K39 ["Context"]
      140 GETTABLEKS                       R27 R27 K40 ["useContextOrder"]
      142 CALL                             R26 1 1
      143 GETIMPORT                        R27 K6 [require]
      145 GETTABLEKS                       R28 R0 K29 ["Src"]
      147 GETTABLEKS                       R28 R28 K12 ["Contexts"]
      149 GETTABLEKS                       R28 R28 K41 ["DatamodelConfiguration"]
      151 CALL                             R27 1 1
      152 GETIMPORT                        R28 K6 [require]
      154 GETTABLEKS                       R29 R0 K29 ["Src"]
      156 GETTABLEKS                       R29 R29 K42 ["Types"]
      158 CALL                             R28 1 1
      159 GETTABLEKS                       R29 R0 K29 ["Src"]
      161 GETTABLEKS                       R29 R29 K43 ["Flags"]
      163 GETIMPORT                        R30 K6 [require]
      165 GETTABLEKS                       R31 R29 K44 ["getFFlagIAMEditOnlyInEditDatamodel"]
      167 CALL                             R30 1 1
      168 DUPCLOSURE                       R31 K45 [PROTO_7]
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R26
      174 CAPTURE                          VAL R27
      175 CAPTURE                          VAL R30
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R19
      196 RETURN                           R31 1
