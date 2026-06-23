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
       23 GETUPVAL                         R5 5
       24 GETTABLEKS                       R5 R5 K2 ["createNextOrder"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K3 ["useState"]
       30 LOADB                            R7 0
       31 CALL                             R6 1 2
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R8 R8 K4 ["useToggleState"]
       35 LOADB                            R9 0
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 5
       38 GETTABLEKS                       R9 R9 K5 ["useEventCallback"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          VAL R7
       42 CAPTURE                          UPVAL U6
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R12 0 1
       51 GETTABLEKS                       R13 R0 K7 ["onChildAdded"]
       53 SETLIST                          R12 R13 1 [1]
       55 CALL                             R10 2 1
       56 GETUPVAL                         R11 5
       57 GETTABLEKS                       R11 R11 K5 ["useEventCallback"]
       59 NEWCLOSURE                       R12 P2
       60 CAPTURE                          VAL R8
       61 CALL                             R11 1 1
       62 GETUPVAL                         R12 5
       63 GETTABLEKS                       R12 R12 K5 ["useEventCallback"]
       65 NEWCLOSURE                       R13 P3
       66 CAPTURE                          VAL R8
       67 CALL                             R12 1 1
       68 GETUPVAL                         R13 5
       69 GETTABLEKS                       R13 R13 K5 ["useEventCallback"]
       71 NEWCLOSURE                       R14 P4
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R2
       74 CALL                             R13 1 1
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R14 R14 K8 ["useMemo"]
       78 NEWCLOSURE                       R15 P5
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 NEWTABLE                         R16 0 5
       86 MOVE                             R17 R1
       87 MOVE                             R18 R4
       88 GETTABLEKS                       R19 R3 K9 ["getContext"]
       90 GETTABLEKS                       R20 R2 K10 ["contexts"]
       92 GETTABLEKS                       R21 R2 K11 ["schemas"]
       94 SETLIST                          R16 R17 5 [1]
       96 CALL                             R14 2 1
       97 NEWTABLE                         R15 2 0
       99 GETUPVAL                         R16 0
      100 GETTABLEKS                       R16 R16 K12 ["createElement"]
      102 GETUPVAL                         R17 9
      103 DUPTABLE                         R18 K17 [{"LayoutOrder", "onStateChanged", "tag", "testId"}]
      104 MOVE                             R19 R5
      105 CALL                             R19 0 1
      106 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      108 SETTABLEKS                       R9 R18 K14 ["onStateChanged"]
      110 LOADK                            R19 K18 ["columns-tree row align-y-center padding-left-small padding-right-small"]
      111 SETTABLEKS                       R19 R18 K15 ["tag"]
      113 LOADK                            R19 K19 ["header"]
      114 SETTABLEKS                       R19 R18 K16 ["testId"]
      116 DUPTABLE                         R19 K23 [{"TreeLabel", "AddContextButton", "FilterButton"}]
      117 GETUPVAL                         R20 0
      118 GETTABLEKS                       R20 R20 K12 ["createElement"]
      120 GETUPVAL                         R21 10
      121 DUPTABLE                         R22 K25 [{"LayoutOrder", "tag", "Text"}]
      122 MOVE                             R23 R5
      123 CALL                             R23 0 1
      124 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      126 LOADK                            R23 K26 ["text-align-x-left text-body-medium padding-small grow"]
      127 SETTABLEKS                       R23 R22 K15 ["tag"]
      129 LOADK                            R25 K27 ["Header"]
      130 LOADK                            R26 K1 ["Context"]
      131 NAMECALL                         R23 R1 K28 ["getText"]
      133 CALL                             R23 3 1
      134 SETTABLEKS                       R23 R22 K24 ["Text"]
      136 CALL                             R20 2 1
      137 SETTABLEKS                       R20 R19 K20 ["TreeLabel"]
      139 MOVE                             R20 R6
      140 JUMPIFNOT                        R20 ; [+27]
      141 GETUPVAL                         R20 0
      142 GETTABLEKS                       R20 R20 K12 ["createElement"]
      144 GETUPVAL                         R21 11
      145 DUPTABLE                         R22 K32 [{"icon", "LayoutOrder", "onActivated", "size", "testId"}]
      146 LOADK                            R23 K33 ["plus-small"]
      147 SETTABLEKS                       R23 R22 K29 ["icon"]
      149 MOVE                             R23 R5
      150 CALL                             R23 0 1
      151 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      153 SETTABLEKS                       R10 R22 K30 ["onActivated"]
      155 GETUPVAL                         R23 12
      156 GETTABLEKS                       R23 R23 K34 ["Enums"]
      158 GETTABLEKS                       R23 R23 K35 ["IconSize"]
      160 GETTABLEKS                       R23 R23 K36 ["Small"]
      162 SETTABLEKS                       R23 R22 K31 ["size"]
      164 LOADK                            R23 K37 ["header-add"]
      165 SETTABLEKS                       R23 R22 K16 ["testId"]
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K21 ["AddContextButton"]
      170 GETUPVAL                         R20 0
      171 GETTABLEKS                       R20 R20 K12 ["createElement"]
      173 GETUPVAL                         R21 13
      174 DUPTABLE                         R22 K43 [{"align", "isOpen", "items", "LayoutOrder", "onActivated", "onPressedOutside", "side", "testId"}]
      175 GETUPVAL                         R23 14
      176 GETTABLEKS                       R23 R23 K44 ["Start"]
      178 SETTABLEKS                       R23 R22 K38 ["align"]
      180 GETTABLEKS                       R23 R8 K45 ["enabled"]
      182 SETTABLEKS                       R23 R22 K39 ["isOpen"]
      184 SETTABLEKS                       R14 R22 K40 ["items"]
      186 MOVE                             R23 R5
      187 CALL                             R23 0 1
      188 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      190 SETTABLEKS                       R13 R22 K30 ["onActivated"]
      192 SETTABLEKS                       R12 R22 K41 ["onPressedOutside"]
      194 GETUPVAL                         R23 15
      195 GETTABLEKS                       R23 R23 K46 ["Bottom"]
      197 SETTABLEKS                       R23 R22 K42 ["side"]
      199 LOADK                            R23 K47 ["header-filter"]
      200 SETTABLEKS                       R23 R22 K16 ["testId"]
      202 DUPTABLE                         R23 K49 [{"Filter"}]
      203 GETUPVAL                         R24 0
      204 GETTABLEKS                       R24 R24 K12 ["createElement"]
      206 GETUPVAL                         R25 11
      207 DUPTABLE                         R26 K32 [{"icon", "LayoutOrder", "onActivated", "size", "testId"}]
      208 LOADK                            R27 K50 ["three-bars-horizontal-narrowing"]
      209 SETTABLEKS                       R27 R26 K29 ["icon"]
      211 MOVE                             R27 R5
      212 CALL                             R27 0 1
      213 SETTABLEKS                       R27 R26 K13 ["LayoutOrder"]
      215 SETTABLEKS                       R11 R26 K30 ["onActivated"]
      217 GETUPVAL                         R27 12
      218 GETTABLEKS                       R27 R27 K34 ["Enums"]
      220 GETTABLEKS                       R27 R27 K35 ["IconSize"]
      222 GETTABLEKS                       R27 R27 K36 ["Small"]
      224 SETTABLEKS                       R27 R26 K31 ["size"]
      226 LOADK                            R27 K51 ["header-filter-button"]
      227 SETTABLEKS                       R27 R26 K16 ["testId"]
      229 CALL                             R24 2 1
      230 SETTABLEKS                       R24 R23 K48 ["Filter"]
      232 CALL                             R20 3 1
      233 SETTABLEKS                       R20 R19 K22 ["FilterButton"]
      235 CALL                             R16 3 1
      236 SETTABLEKS                       R16 R15 K52 ["TreeHeader"]
      238 GETUPVAL                         R16 0
      239 GETTABLEKS                       R16 R16 K12 ["createElement"]
      241 GETUPVAL                         R17 16
      242 DUPTABLE                         R18 K54 [{"LayoutOrder", "orientation", "tag"}]
      243 MOVE                             R19 R5
      244 CALL                             R19 0 1
      245 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      247 GETUPVAL                         R19 17
      248 GETTABLEKS                       R19 R19 K55 ["Vertical"]
      250 SETTABLEKS                       R19 R18 K53 ["orientation"]
      252 LOADK                            R19 K56 ["auto-y"]
      253 SETTABLEKS                       R19 R18 K15 ["tag"]
      255 CALL                             R16 2 1
      256 SETTABLEKS                       R16 R15 K57 ["Divider"]
      258 GETUPVAL                         R16 18
      259 CALL                             R16 0 3
      260 FORGPREP                         R16
      261 GETTABLEKS                       R22 R2 K11 ["schemas"]
      263 GETTABLE                         R21 R22 R20
      264 JUMPIFEQKB                       R21 FALSE ; [+30]
      266 GETUPVAL                         R21 0
      267 GETTABLEKS                       R21 R21 K12 ["createElement"]
      269 GETUPVAL                         R22 10
      270 DUPTABLE                         R23 K58 [{"LayoutOrder", "tag", "testId", "Text"}]
      271 MOVE                             R24 R5
      272 CALL                             R24 0 1
      273 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      275 LOADK                            R24 K59 ["columns-input text-align-x-left text-body-medium padding-small"]
      276 SETTABLEKS                       R24 R23 K15 ["tag"]
      278 LOADK                            R25 K60 ["schema-%*"]
      279 MOVE                             R27 R20
      280 NAMECALL                         R25 R25 K61 ["format"]
      282 CALL                             R25 2 1
      283 MOVE                             R24 R25
      284 SETTABLEKS                       R24 R23 K16 ["testId"]
      286 LOADK                            R26 K62 ["Schema"]
      287 MOVE                             R27 R20
      288 NAMECALL                         R24 R1 K28 ["getText"]
      290 CALL                             R24 3 1
      291 SETTABLEKS                       R24 R23 K24 ["Text"]
      293 CALL                             R21 2 1
      294 SETTABLE                         R21 R15 R20
      295 FORGLOOP                         R16 2 ; [-35]
      297 GETUPVAL                         R16 0
      298 GETTABLEKS                       R16 R16 K12 ["createElement"]
      300 GETUPVAL                         R17 9
      301 DUPTABLE                         R18 K65 [{"layoutOrder", "tag", "ZIndex"}]
      302 GETTABLEKS                       R19 R0 K13 ["LayoutOrder"]
      304 SETTABLEKS                       R19 R18 K63 ["layoutOrder"]
      306 LOADK                            R19 K66 ["size-full-1000 col"]
      307 SETTABLEKS                       R19 R18 K15 ["tag"]
      309 LOADN                            R19 2
      310 SETTABLEKS                       R19 R18 K64 ["ZIndex"]
      312 DUPTABLE                         R19 K67 [{"header", "Divider"}]
      313 GETUPVAL                         R20 0
      314 GETTABLEKS                       R20 R20 K12 ["createElement"]
      316 GETUPVAL                         R21 19
      317 DUPTABLE                         R22 K70 [{"LayoutOrder", "scrollingFrameRef", "scroll", "tag"}]
      318 GETTABLEKS                       R23 R0 K13 ["LayoutOrder"]
      320 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      322 GETTABLEKS                       R23 R0 K68 ["scrollingFrameRef"]
      324 SETTABLEKS                       R23 R22 K68 ["scrollingFrameRef"]
      326 DUPTABLE                         R23 K75 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollingEnabled", "scrollBarVisibility"}]
      327 GETIMPORT                        R24 K79 [Enum.AutomaticSize.XY]
      329 SETTABLEKS                       R24 R23 K71 ["AutomaticCanvasSize"]
      331 GETIMPORT                        R24 K81 [Enum.ScrollingDirection.X]
      333 SETTABLEKS                       R24 R23 K72 ["ScrollingDirection"]
      335 LOADB                            R24 0
      336 SETTABLEKS                       R24 R23 K73 ["ScrollingEnabled"]
      338 GETUPVAL                         R24 20
      339 GETTABLEKS                       R24 R24 K82 ["None"]
      341 SETTABLEKS                       R24 R23 K74 ["scrollBarVisibility"]
      343 SETTABLEKS                       R23 R22 K69 ["scroll"]
      345 LOADK                            R23 K83 ["size-full-1000 auto-x"]
      346 SETTABLEKS                       R23 R22 K15 ["tag"]
      348 DUPTABLE                         R23 K85 [{"Children"}]
      349 GETUPVAL                         R24 0
      350 GETTABLEKS                       R24 R24 K12 ["createElement"]
      352 GETUPVAL                         R25 9
      353 DUPTABLE                         R26 K86 [{"tag"}]
      354 LOADK                            R27 K87 ["size-full-1000 auto-x row align-y-center table-header"]
      355 SETTABLEKS                       R27 R26 K15 ["tag"]
      357 MOVE                             R27 R15
      358 CALL                             R24 3 1
      359 SETTABLEKS                       R24 R23 K84 ["Children"]
      361 CALL                             R20 3 1
      362 SETTABLEKS                       R20 R19 K19 ["header"]
      364 GETUPVAL                         R20 0
      365 GETTABLEKS                       R20 R20 K12 ["createElement"]
      367 GETUPVAL                         R21 16
      368 DUPTABLE                         R22 K54 [{"LayoutOrder", "orientation", "tag"}]
      369 MOVE                             R23 R5
      370 CALL                             R23 0 1
      371 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      373 GETUPVAL                         R23 12
      374 GETTABLEKS                       R23 R23 K34 ["Enums"]
      376 GETTABLEKS                       R23 R23 K88 ["Orientation"]
      378 GETTABLEKS                       R23 R23 K89 ["Horizontal"]
      380 SETTABLEKS                       R23 R22 K53 ["orientation"]
      382 LOADK                            R23 K90 ["auto-x"]
      383 SETTABLEKS                       R23 R22 K15 ["tag"]
      385 CALL                             R20 2 1
      386 SETTABLEKS                       R20 R19 K57 ["Divider"]
      388 CALL                             R16 3 -1
      389 RETURN                           R16 -1

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
      135 GETTABLEKS                       R24 R24 K37 ["Types"]
      137 CALL                             R23 1 1
      138 DUPCLOSURE                       R24 K38 [PROTO_6]
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R22
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R15
      160 RETURN                           R24 1
