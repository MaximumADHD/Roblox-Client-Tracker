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
       12 CALL                             R0 5 -1
       13 RETURN                           R0 -1

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
       23 GETUPVAL                         R6 5
       24 CALL                             R6 0 1
       25 JUMPIFNOT                        R6 ; [+8]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["useContext"]
       29 GETUPVAL                         R6 6
       30 GETTABLEKS                       R6 R6 K1 ["Context"]
       32 CALL                             R5 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R5
       35 GETUPVAL                         R6 7
       36 GETTABLEKS                       R6 R6 K2 ["createNextOrder"]
       38 CALL                             R6 0 1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K3 ["useState"]
       42 LOADB                            R8 0
       43 CALL                             R7 1 2
       44 GETUPVAL                         R9 7
       45 GETTABLEKS                       R9 R9 K4 ["useToggleState"]
       47 LOADB                            R10 0
       48 CALL                             R9 1 1
       49 GETUPVAL                         R10 7
       50 GETTABLEKS                       R10 R10 K5 ["useEventCallback"]
       52 NEWCLOSURE                       R11 P0
       53 CAPTURE                          VAL R8
       54 CAPTURE                          UPVAL U8
       55 CALL                             R10 1 1
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       59 NEWCLOSURE                       R12 P1
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R13 0 1
       63 GETTABLEKS                       R14 R0 K7 ["onChildAdded"]
       65 SETLIST                          R13 R14 1 [1]
       67 CALL                             R11 2 1
       68 GETUPVAL                         R12 7
       69 GETTABLEKS                       R12 R12 K5 ["useEventCallback"]
       71 NEWCLOSURE                       R13 P2
       72 CAPTURE                          VAL R9
       73 CALL                             R12 1 1
       74 GETUPVAL                         R13 7
       75 GETTABLEKS                       R13 R13 K5 ["useEventCallback"]
       77 NEWCLOSURE                       R14 P3
       78 CAPTURE                          VAL R9
       79 CALL                             R13 1 1
       80 GETUPVAL                         R14 7
       81 GETTABLEKS                       R14 R14 K5 ["useEventCallback"]
       83 NEWCLOSURE                       R15 P4
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          VAL R2
       86 CALL                             R14 1 1
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K8 ["useMemo"]
       90 NEWCLOSURE                       R16 P5
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R2
       96 NEWTABLE                         R17 0 5
       98 MOVE                             R18 R1
       99 MOVE                             R19 R4
      100 GETTABLEKS                       R20 R3 K9 ["getContext"]
      102 GETTABLEKS                       R21 R2 K10 ["contexts"]
      104 GETTABLEKS                       R22 R2 K11 ["schemas"]
      106 SETLIST                          R17 R18 5 [1]
      108 CALL                             R15 2 1
      109 NEWTABLE                         R16 4 0
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R17 R17 K12 ["createElement"]
      114 GETUPVAL                         R18 11
      115 DUPTABLE                         R19 K19 [{["LayoutOrder"], ["onStateChanged"], ["tag"] = "columns-tree row align-y-center padding-left-small padding-right-small", ["testId"] = "header"}]
      116 MOVE                             R20 R6
      117 CALL                             R20 0 1
      118 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      120 SETTABLEKS                       R10 R19 K14 ["onStateChanged"]
      122 DUPTABLE                         R20 K23 [{"TreeLabel", "AddContextButton", "FilterButton"}]
      123 GETUPVAL                         R21 0
      124 GETTABLEKS                       R21 R21 K12 ["createElement"]
      126 GETUPVAL                         R22 12
      127 DUPTABLE                         R23 K26 [{["LayoutOrder"], ["tag"] = "grow padding-small text-body-medium text-align-x-left", ["Text"]}]
      128 MOVE                             R24 R6
      129 CALL                             R24 0 1
      130 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      132 LOADK                            R26 K27 ["Header"]
      133 LOADK                            R27 K1 ["Context"]
      134 NAMECALL                         R24 R1 K28 ["getText"]
      136 CALL                             R24 3 1
      137 SETTABLEKS                       R24 R23 K25 ["Text"]
      139 CALL                             R21 2 1
      140 SETTABLEKS                       R21 R20 K20 ["TreeLabel"]
      142 MOVE                             R21 R7
      143 JUMPIFNOT                        R21 ; [+21]
      144 GETUPVAL                         R21 0
      145 GETTABLEKS                       R21 R21 K12 ["createElement"]
      147 GETUPVAL                         R22 13
      148 DUPTABLE                         R23 K34 [{["icon"] = "plus-small", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-add"}]
      149 MOVE                             R24 R6
      150 CALL                             R24 0 1
      151 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      153 SETTABLEKS                       R11 R23 K31 ["onActivated"]
      155 GETUPVAL                         R24 14
      156 GETTABLEKS                       R24 R24 K35 ["Enums"]
      158 GETTABLEKS                       R24 R24 K36 ["IconSize"]
      160 GETTABLEKS                       R24 R24 K37 ["Small"]
      162 SETTABLEKS                       R24 R23 K32 ["size"]
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K21 ["AddContextButton"]
      167 GETUPVAL                         R21 0
      168 GETTABLEKS                       R21 R21 K12 ["createElement"]
      170 GETUPVAL                         R22 15
      171 DUPTABLE                         R23 K44 [{["align"], ["isOpen"], ["items"], ["LayoutOrder"], ["onActivated"], ["onPressedOutside"], ["side"], ["testId"] = "header-filter"}]
      172 GETUPVAL                         R24 16
      173 GETTABLEKS                       R24 R24 K45 ["Start"]
      175 SETTABLEKS                       R24 R23 K38 ["align"]
      177 GETTABLEKS                       R24 R9 K46 ["enabled"]
      179 SETTABLEKS                       R24 R23 K39 ["isOpen"]
      181 SETTABLEKS                       R15 R23 K40 ["items"]
      183 MOVE                             R24 R6
      184 CALL                             R24 0 1
      185 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      187 SETTABLEKS                       R14 R23 K31 ["onActivated"]
      189 SETTABLEKS                       R13 R23 K41 ["onPressedOutside"]
      191 GETUPVAL                         R24 17
      192 GETTABLEKS                       R24 R24 K47 ["Bottom"]
      194 SETTABLEKS                       R24 R23 K42 ["side"]
      196 DUPTABLE                         R24 K49 [{"Filter"}]
      197 GETUPVAL                         R25 0
      198 GETTABLEKS                       R25 R25 K12 ["createElement"]
      200 GETUPVAL                         R26 13
      201 DUPTABLE                         R27 K52 [{["icon"] = "three-bars-horizontal-narrowing", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-filter-button"}]
      202 MOVE                             R28 R6
      203 CALL                             R28 0 1
      204 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      206 SETTABLEKS                       R12 R27 K31 ["onActivated"]
      208 GETUPVAL                         R28 14
      209 GETTABLEKS                       R28 R28 K35 ["Enums"]
      211 GETTABLEKS                       R28 R28 K36 ["IconSize"]
      213 GETTABLEKS                       R28 R28 K37 ["Small"]
      215 SETTABLEKS                       R28 R27 K32 ["size"]
      217 CALL                             R25 2 1
      218 SETTABLEKS                       R25 R24 K48 ["Filter"]
      220 CALL                             R21 3 1
      221 SETTABLEKS                       R21 R20 K22 ["FilterButton"]
      223 CALL                             R17 3 1
      224 SETTABLEKS                       R17 R16 K53 ["TreeHeader"]
      226 GETUPVAL                         R17 0
      227 GETTABLEKS                       R17 R17 K12 ["createElement"]
      229 GETUPVAL                         R18 18
      230 DUPTABLE                         R19 K56 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      231 MOVE                             R20 R6
      232 CALL                             R20 0 1
      233 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      235 GETUPVAL                         R20 19
      236 GETTABLEKS                       R20 R20 K57 ["Vertical"]
      238 SETTABLEKS                       R20 R19 K54 ["orientation"]
      240 CALL                             R17 2 1
      241 SETTABLEKS                       R17 R16 K58 ["Divider"]
      243 GETUPVAL                         R17 5
      244 CALL                             R17 0 1
      245 JUMPIFNOT                        R17 ; [+25]
      246 GETTABLEKS                       R17 R5 K59 ["datamodelType"]
      248 GETIMPORT                        R18 K63 [Enum.StudioDataModelType.PlayClient]
      250 JUMPIFNOTEQ                      R17 R18 ; [+20]
      252 GETUPVAL                         R17 0
      253 GETTABLEKS                       R17 R17 K12 ["createElement"]
      255 GETUPVAL                         R18 12
      256 DUPTABLE                         R19 K66 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"] = "schema-State", ["Text"]}]
      257 MOVE                             R20 R6
      258 CALL                             R20 0 1
      259 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      261 LOADK                            R22 K27 ["Header"]
      262 LOADK                            R23 K67 ["State"]
      263 NAMECALL                         R20 R1 K28 ["getText"]
      265 CALL                             R20 3 1
      266 SETTABLEKS                       R20 R19 K25 ["Text"]
      268 CALL                             R17 2 1
      269 SETTABLEKS                       R17 R16 K67 ["State"]
      271 GETUPVAL                         R17 20
      272 CALL                             R17 0 3
      273 FORGPREP                         R17
      274 GETTABLEKS                       R23 R2 K11 ["schemas"]
      276 GETTABLE                         R22 R23 R21
      277 JUMPIFEQKB                       R22 FALSE ; [+27]
      279 GETUPVAL                         R22 0
      280 GETTABLEKS                       R22 R22 K12 ["createElement"]
      282 GETUPVAL                         R23 12
      283 DUPTABLE                         R24 K68 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"], ["Text"]}]
      284 MOVE                             R25 R6
      285 CALL                             R25 0 1
      286 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      288 LOADK                            R26 K69 ["schema-%*"]
      289 MOVE                             R28 R21
      290 NAMECALL                         R26 R26 K70 ["format"]
      292 CALL                             R26 2 1
      293 MOVE                             R25 R26
      294 SETTABLEKS                       R25 R24 K17 ["testId"]
      296 LOADK                            R27 K71 ["Schema"]
      297 MOVE                             R28 R21
      298 NAMECALL                         R25 R1 K28 ["getText"]
      300 CALL                             R25 3 1
      301 SETTABLEKS                       R25 R24 K25 ["Text"]
      303 CALL                             R22 2 1
      304 SETTABLE                         R22 R16 R21
      305 FORGLOOP                         R17 2 ; [-32]
      307 GETUPVAL                         R17 0
      308 GETTABLEKS                       R17 R17 K12 ["createElement"]
      310 GETUPVAL                         R18 11
      311 DUPTABLE                         R19 K76 [{["layoutOrder"], ["tag"] = "col size-full-1000", ["ZIndex"] = 2}]
      312 GETTABLEKS                       R20 R0 K13 ["LayoutOrder"]
      314 SETTABLEKS                       R20 R19 K72 ["layoutOrder"]
      316 DUPTABLE                         R20 K77 [{"header", "Divider"}]
      317 GETUPVAL                         R21 0
      318 GETTABLEKS                       R21 R21 K12 ["createElement"]
      320 GETUPVAL                         R22 21
      321 DUPTABLE                         R23 K81 [{["LayoutOrder"], ["scrollingFrameRef"], ["scroll"], ["tag"] = "size-full-1000 auto-x"}]
      322 GETTABLEKS                       R24 R0 K13 ["LayoutOrder"]
      324 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      326 GETTABLEKS                       R24 R0 K78 ["scrollingFrameRef"]
      328 SETTABLEKS                       R24 R23 K78 ["scrollingFrameRef"]
      330 DUPTABLE                         R24 K87 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = False, ["scrollBarVisibility"]}]
      331 GETIMPORT                        R25 K90 [Enum.AutomaticSize.XY]
      333 SETTABLEKS                       R25 R24 K82 ["AutomaticCanvasSize"]
      335 GETIMPORT                        R25 K92 [Enum.ScrollingDirection.X]
      337 SETTABLEKS                       R25 R24 K83 ["ScrollingDirection"]
      339 GETUPVAL                         R25 22
      340 GETTABLEKS                       R25 R25 K93 ["None"]
      342 SETTABLEKS                       R25 R24 K86 ["scrollBarVisibility"]
      344 SETTABLEKS                       R24 R23 K79 ["scroll"]
      346 DUPTABLE                         R24 K95 [{"Children"}]
      347 GETUPVAL                         R25 0
      348 GETTABLEKS                       R25 R25 K12 ["createElement"]
      350 GETUPVAL                         R26 11
      351 DUPTABLE                         R27 K97 [{["tag"] = "row align-y-center size-full-1000 auto-x"}]
      352 MOVE                             R28 R16
      353 CALL                             R25 3 1
      354 SETTABLEKS                       R25 R24 K94 ["Children"]
      356 CALL                             R21 3 1
      357 SETTABLEKS                       R21 R20 K18 ["header"]
      359 GETUPVAL                         R21 0
      360 GETTABLEKS                       R21 R21 K12 ["createElement"]
      362 GETUPVAL                         R22 18
      363 DUPTABLE                         R23 K99 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      364 MOVE                             R24 R6
      365 CALL                             R24 0 1
      366 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      368 GETUPVAL                         R24 14
      369 GETTABLEKS                       R24 R24 K35 ["Enums"]
      371 GETTABLEKS                       R24 R24 K100 ["Orientation"]
      373 GETTABLEKS                       R24 R24 K101 ["Horizontal"]
      375 SETTABLEKS                       R24 R23 K54 ["orientation"]
      377 CALL                             R21 2 1
      378 SETTABLEKS                       R21 R20 K58 ["Divider"]
      380 CALL                             R17 3 -1
      381 RETURN                           R17 -1

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
      147 GETTABLEKS                       R25 R0 K25 ["Src"]
      149 GETTABLEKS                       R25 R25 K39 ["Flags"]
      151 GETIMPORT                        R26 K5 [require]
      153 GETTABLEKS                       R27 R25 K40 ["getFFlagIAMLiveDebugging"]
      155 CALL                             R26 1 1
      156 DUPCLOSURE                       R27 K41 [PROTO_6]
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R26
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R15
      180 RETURN                           R27 1
