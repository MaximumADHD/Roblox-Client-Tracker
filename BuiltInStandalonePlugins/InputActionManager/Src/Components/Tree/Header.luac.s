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
       27 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+14]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K7 ["setContextVisible"]
       32 MOVE                             R3 R0
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K8 ["contexts"]
       36 GETTABLE                         R5 R6 R0
       37 JUMPIFEQKB                       R5 FALSE ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

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
       12 GETUPVAL                         R7 5
       13 JUMPIFNOT                        R7 ; [+4]
       14 GETUPVAL                         R6 5
       15 GETTABLEKS                       R6 R6 K3 ["datamodelType"]
       17 JUMP                             ; [+2]
       18 GETIMPORT                        R6 K7 [Enum.StudioDataModelType.None]
       20 GETUPVAL                         R8 5
       21 JUMPIFNOT                        R8 ; [+4]
       22 GETUPVAL                         R7 5
       23 GETTABLEKS                       R7 R7 K8 ["createDefaultPlayerModule"]
       25 JUMP                             ; [+1]
       26 LOADB                            R7 1
       27 CALL                             R0 7 -1
       28 RETURN                           R0 -1

PROTO_6:
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
       81 CALL                             R14 1 1
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K8 ["useMemo"]
       85 NEWCLOSURE                       R16 P5
       86 CAPTURE                          UPVAL U9
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R5
       92 NEWTABLE                         R17 0 7
       94 MOVE                             R18 R1
       95 MOVE                             R19 R4
       96 GETTABLEKS                       R20 R3 K9 ["getContext"]
       98 GETTABLEKS                       R21 R2 K10 ["contexts"]
      100 GETTABLEKS                       R22 R2 K11 ["schemas"]
      102 JUMPIFNOT                        R5 ; [+3]
      103 GETTABLEKS                       R23 R5 K12 ["datamodelType"]
      105 JUMP                             ; [+2]
      106 GETIMPORT                        R23 K16 [Enum.StudioDataModelType.None]
      108 JUMPIFNOT                        R5 ; [+3]
      109 GETTABLEKS                       R24 R5 K17 ["createDefaultPlayerModule"]
      111 JUMP                             ; [+1]
      112 LOADB                            R24 1
      113 SETLIST                          R17 R18 7 [1]
      115 CALL                             R15 2 1
      116 NEWTABLE                         R16 4 0
      118 GETUPVAL                         R17 0
      119 GETTABLEKS                       R17 R17 K18 ["createElement"]
      121 GETUPVAL                         R18 10
      122 DUPTABLE                         R19 K25 [{["LayoutOrder"], ["onStateChanged"], ["tag"] = "columns-tree row align-y-center padding-left-small padding-right-small", ["testId"] = "header"}]
      123 MOVE                             R20 R6
      124 CALL                             R20 0 1
      125 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      127 SETTABLEKS                       R10 R19 K20 ["onStateChanged"]
      129 DUPTABLE                         R20 K29 [{"TreeLabel", "AddContextButton", "FilterButton"}]
      130 GETUPVAL                         R21 0
      131 GETTABLEKS                       R21 R21 K18 ["createElement"]
      133 GETUPVAL                         R22 11
      134 DUPTABLE                         R23 K32 [{["LayoutOrder"], ["tag"] = "grow padding-small text-body-medium text-align-x-left", ["Text"]}]
      135 MOVE                             R24 R6
      136 CALL                             R24 0 1
      137 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      139 LOADK                            R26 K33 ["Header"]
      140 LOADK                            R27 K1 ["Context"]
      141 NAMECALL                         R24 R1 K34 ["getText"]
      143 CALL                             R24 3 1
      144 SETTABLEKS                       R24 R23 K31 ["Text"]
      146 CALL                             R21 2 1
      147 SETTABLEKS                       R21 R20 K26 ["TreeLabel"]
      149 MOVE                             R21 R7
      150 JUMPIFNOT                        R21 ; [+21]
      151 GETUPVAL                         R21 0
      152 GETTABLEKS                       R21 R21 K18 ["createElement"]
      154 GETUPVAL                         R22 12
      155 DUPTABLE                         R23 K40 [{["icon"] = "plus-small", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-add"}]
      156 MOVE                             R24 R6
      157 CALL                             R24 0 1
      158 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      160 SETTABLEKS                       R11 R23 K37 ["onActivated"]
      162 GETUPVAL                         R24 13
      163 GETTABLEKS                       R24 R24 K41 ["Enums"]
      165 GETTABLEKS                       R24 R24 K42 ["IconSize"]
      167 GETTABLEKS                       R24 R24 K43 ["Small"]
      169 SETTABLEKS                       R24 R23 K38 ["size"]
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K27 ["AddContextButton"]
      174 GETUPVAL                         R21 0
      175 GETTABLEKS                       R21 R21 K18 ["createElement"]
      177 GETUPVAL                         R22 14
      178 DUPTABLE                         R23 K50 [{["align"], ["isOpen"], ["items"], ["LayoutOrder"], ["onActivated"], ["onPressedOutside"], ["side"], ["testId"] = "header-filter"}]
      179 GETUPVAL                         R24 15
      180 GETTABLEKS                       R24 R24 K51 ["Start"]
      182 SETTABLEKS                       R24 R23 K44 ["align"]
      184 GETTABLEKS                       R24 R9 K52 ["enabled"]
      186 SETTABLEKS                       R24 R23 K45 ["isOpen"]
      188 SETTABLEKS                       R15 R23 K46 ["items"]
      190 MOVE                             R24 R6
      191 CALL                             R24 0 1
      192 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      194 SETTABLEKS                       R14 R23 K37 ["onActivated"]
      196 SETTABLEKS                       R13 R23 K47 ["onPressedOutside"]
      198 GETUPVAL                         R24 16
      199 GETTABLEKS                       R24 R24 K53 ["Bottom"]
      201 SETTABLEKS                       R24 R23 K48 ["side"]
      203 DUPTABLE                         R24 K55 [{"Filter"}]
      204 GETUPVAL                         R25 0
      205 GETTABLEKS                       R25 R25 K18 ["createElement"]
      207 GETUPVAL                         R26 12
      208 DUPTABLE                         R27 K58 [{["icon"] = "three-bars-horizontal-narrowing", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-filter-button"}]
      209 MOVE                             R28 R6
      210 CALL                             R28 0 1
      211 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      213 SETTABLEKS                       R12 R27 K37 ["onActivated"]
      215 GETUPVAL                         R28 13
      216 GETTABLEKS                       R28 R28 K41 ["Enums"]
      218 GETTABLEKS                       R28 R28 K42 ["IconSize"]
      220 GETTABLEKS                       R28 R28 K43 ["Small"]
      222 SETTABLEKS                       R28 R27 K38 ["size"]
      224 CALL                             R25 2 1
      225 SETTABLEKS                       R25 R24 K54 ["Filter"]
      227 CALL                             R21 3 1
      228 SETTABLEKS                       R21 R20 K28 ["FilterButton"]
      230 CALL                             R17 3 1
      231 SETTABLEKS                       R17 R16 K59 ["TreeHeader"]
      233 GETUPVAL                         R17 0
      234 GETTABLEKS                       R17 R17 K18 ["createElement"]
      236 GETUPVAL                         R18 17
      237 DUPTABLE                         R19 K62 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      238 MOVE                             R20 R6
      239 CALL                             R20 0 1
      240 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      242 GETUPVAL                         R20 18
      243 GETTABLEKS                       R20 R20 K63 ["Vertical"]
      245 SETTABLEKS                       R20 R19 K60 ["orientation"]
      247 CALL                             R17 2 1
      248 SETTABLEKS                       R17 R16 K64 ["Divider"]
      250 GETTABLEKS                       R17 R5 K12 ["datamodelType"]
      252 GETIMPORT                        R18 K66 [Enum.StudioDataModelType.PlayClient]
      254 JUMPIFNOTEQ                      R17 R18 ; [+20]
      256 GETUPVAL                         R17 0
      257 GETTABLEKS                       R17 R17 K18 ["createElement"]
      259 GETUPVAL                         R18 11
      260 DUPTABLE                         R19 K69 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"] = "schema-State", ["Text"]}]
      261 MOVE                             R20 R6
      262 CALL                             R20 0 1
      263 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      265 LOADK                            R22 K33 ["Header"]
      266 LOADK                            R23 K70 ["State"]
      267 NAMECALL                         R20 R1 K34 ["getText"]
      269 CALL                             R20 3 1
      270 SETTABLEKS                       R20 R19 K31 ["Text"]
      272 CALL                             R17 2 1
      273 SETTABLEKS                       R17 R16 K70 ["State"]
      275 GETUPVAL                         R17 19
      276 CALL                             R17 0 3
      277 FORGPREP                         R17
      278 GETTABLEKS                       R23 R2 K11 ["schemas"]
      280 GETTABLE                         R22 R23 R21
      281 JUMPIFEQKB                       R22 FALSE ; [+26]
      283 GETUPVAL                         R22 0
      284 GETTABLEKS                       R22 R22 K18 ["createElement"]
      286 GETUPVAL                         R23 11
      287 DUPTABLE                         R24 K71 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"], ["Text"]}]
      288 MOVE                             R25 R6
      289 CALL                             R25 0 1
      290 SETTABLEKS                       R25 R24 K19 ["LayoutOrder"]
      292 LOADK                            R25 K72 ["schema-%*"]
      293 MOVE                             R27 R21
      294 NAMECALL                         R25 R25 K73 ["format"]
      296 CALL                             R25 2 1
      297 SETTABLEKS                       R25 R24 K23 ["testId"]
      299 LOADK                            R27 K74 ["Schema"]
      300 MOVE                             R28 R21
      301 NAMECALL                         R25 R1 K34 ["getText"]
      303 CALL                             R25 3 1
      304 SETTABLEKS                       R25 R24 K31 ["Text"]
      306 CALL                             R22 2 1
      307 SETTABLE                         R22 R16 R21
      308 FORGLOOP                         R17 2 ; [-31]
      310 GETUPVAL                         R17 0
      311 GETTABLEKS                       R17 R17 K18 ["createElement"]
      313 GETUPVAL                         R18 10
      314 DUPTABLE                         R19 K79 [{["layoutOrder"], ["tag"] = "col size-full-1000", ["ZIndex"] = 2}]
      315 GETTABLEKS                       R20 R0 K19 ["LayoutOrder"]
      317 SETTABLEKS                       R20 R19 K75 ["layoutOrder"]
      319 DUPTABLE                         R20 K80 [{"header", "Divider"}]
      320 GETUPVAL                         R21 0
      321 GETTABLEKS                       R21 R21 K18 ["createElement"]
      323 GETUPVAL                         R22 20
      324 DUPTABLE                         R23 K84 [{["LayoutOrder"], ["scrollingFrameRef"], ["scroll"], ["tag"] = "size-full-1000 auto-x"}]
      325 GETTABLEKS                       R24 R0 K19 ["LayoutOrder"]
      327 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      329 GETTABLEKS                       R24 R0 K81 ["scrollingFrameRef"]
      331 SETTABLEKS                       R24 R23 K81 ["scrollingFrameRef"]
      333 DUPTABLE                         R24 K90 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = False, ["scrollBarVisibility"]}]
      334 GETIMPORT                        R25 K93 [Enum.AutomaticSize.XY]
      336 SETTABLEKS                       R25 R24 K85 ["AutomaticCanvasSize"]
      338 GETIMPORT                        R25 K95 [Enum.ScrollingDirection.X]
      340 SETTABLEKS                       R25 R24 K86 ["ScrollingDirection"]
      342 GETUPVAL                         R25 21
      343 GETTABLEKS                       R25 R25 K15 ["None"]
      345 SETTABLEKS                       R25 R24 K89 ["scrollBarVisibility"]
      347 SETTABLEKS                       R24 R23 K82 ["scroll"]
      349 DUPTABLE                         R24 K97 [{"Children"}]
      350 GETUPVAL                         R25 0
      351 GETTABLEKS                       R25 R25 K18 ["createElement"]
      353 GETUPVAL                         R26 10
      354 DUPTABLE                         R27 K99 [{["tag"] = "row align-y-center size-full-1000 auto-x"}]
      355 MOVE                             R28 R16
      356 CALL                             R25 3 1
      357 SETTABLEKS                       R25 R24 K96 ["Children"]
      359 CALL                             R21 3 1
      360 SETTABLEKS                       R21 R20 K24 ["header"]
      362 GETUPVAL                         R21 0
      363 GETTABLEKS                       R21 R21 K18 ["createElement"]
      365 GETUPVAL                         R22 17
      366 DUPTABLE                         R23 K101 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      367 MOVE                             R24 R6
      368 CALL                             R24 0 1
      369 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      371 GETUPVAL                         R24 13
      372 GETTABLEKS                       R24 R24 K41 ["Enums"]
      374 GETTABLEKS                       R24 R24 K102 ["Orientation"]
      376 GETTABLEKS                       R24 R24 K103 ["Horizontal"]
      378 SETTABLEKS                       R24 R23 K60 ["orientation"]
      380 CALL                             R21 2 1
      381 SETTABLEKS                       R21 R20 K64 ["Divider"]
      383 CALL                             R17 3 -1
      384 RETURN                           R17 -1

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
       39 GETTABLEKS                       R6 R3 K13 ["Enums"]
       41 GETTABLEKS                       R6 R6 K14 ["ControlState"]
       43 GETTABLEKS                       R7 R3 K15 ["Divider"]
       45 GETTABLEKS                       R8 R3 K16 ["IconButton"]
       47 GETTABLEKS                       R9 R3 K17 ["Menu"]
       49 GETTABLEKS                       R10 R3 K13 ["Enums"]
       51 GETTABLEKS                       R10 R10 K18 ["PopoverAlign"]
       53 GETTABLEKS                       R11 R3 K13 ["Enums"]
       55 GETTABLEKS                       R11 R11 K19 ["PopoverSide"]
       57 GETTABLEKS                       R12 R3 K20 ["ScrollView"]
       59 GETTABLEKS                       R13 R3 K21 ["Text"]
       61 GETTABLEKS                       R14 R3 K22 ["View"]
       63 GETTABLEKS                       R15 R3 K13 ["Enums"]
       65 GETTABLEKS                       R15 R15 K23 ["Visibility"]
       67 GETTABLEKS                       R16 R3 K13 ["Enums"]
       69 GETTABLEKS                       R16 R16 K24 ["Orientation"]
       71 GETIMPORT                        R17 K5 [require]
       73 GETTABLEKS                       R18 R0 K25 ["Src"]
       75 GETTABLEKS                       R18 R18 K11 ["Contexts"]
       77 GETTABLEKS                       R18 R18 K26 ["FilterConfiguration"]
       79 CALL                             R17 1 1
       80 GETIMPORT                        R18 K5 [require]
       82 GETTABLEKS                       R19 R0 K25 ["Src"]
       84 GETTABLEKS                       R19 R19 K27 ["Util"]
       86 GETTABLEKS                       R19 R19 K28 ["Constants"]
       88 GETTABLEKS                       R19 R19 K29 ["FilterToSchema"]
       90 CALL                             R18 1 1
       91 GETIMPORT                        R19 K5 [require]
       93 GETTABLEKS                       R20 R0 K25 ["Src"]
       95 GETTABLEKS                       R20 R20 K27 ["Util"]
       97 GETTABLEKS                       R20 R20 K30 ["Menus"]
       99 GETTABLEKS                       R20 R20 K31 ["getFilterMenu"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R21 R0 K25 ["Src"]
      106 GETTABLEKS                       R21 R21 K27 ["Util"]
      108 GETTABLEKS                       R21 R21 K32 ["getSchemas"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K5 [require]
      113 GETTABLEKS                       R22 R0 K25 ["Src"]
      115 GETTABLEKS                       R22 R22 K11 ["Contexts"]
      117 GETTABLEKS                       R22 R22 K33 ["InputConfiguration"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K5 [require]
      122 GETTABLEKS                       R23 R0 K25 ["Src"]
      124 GETTABLEKS                       R23 R23 K34 ["Hooks"]
      126 GETTABLEKS                       R23 R23 K35 ["Context"]
      128 GETTABLEKS                       R23 R23 K36 ["useContextOrder"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K5 [require]
      133 GETTABLEKS                       R24 R0 K25 ["Src"]
      135 GETTABLEKS                       R24 R24 K11 ["Contexts"]
      137 GETTABLEKS                       R24 R24 K37 ["DatamodelConfiguration"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K5 [require]
      142 GETTABLEKS                       R25 R0 K25 ["Src"]
      144 GETTABLEKS                       R25 R25 K38 ["Types"]
      146 CALL                             R24 1 1
      147 DUPCLOSURE                       R25 K39 [PROTO_6]
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R15
      170 RETURN                           R25 1
