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
      125 DUPTABLE                         R19 K26 [{["LayoutOrder"], ["onStateChanged"], ["tag"] = "columns-tree row align-y-center padding-left-small padding-right-small", ["testId"] = "header"}]
      126 MOVE                             R20 R6
      127 CALL                             R20 0 1
      128 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      130 SETTABLEKS                       R10 R19 K21 ["onStateChanged"]
      132 DUPTABLE                         R20 K30 [{"TreeLabel", "AddContextButton", "FilterButton"}]
      133 GETUPVAL                         R21 0
      134 GETTABLEKS                       R21 R21 K19 ["createElement"]
      136 GETUPVAL                         R22 12
      137 DUPTABLE                         R23 K33 [{["LayoutOrder"], ["tag"] = "grow padding-small text-body-medium text-align-x-left", ["Text"]}]
      138 MOVE                             R24 R6
      139 CALL                             R24 0 1
      140 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      142 LOADK                            R26 K34 ["Header"]
      143 LOADK                            R27 K1 ["Context"]
      144 NAMECALL                         R24 R1 K35 ["getText"]
      146 CALL                             R24 3 1
      147 SETTABLEKS                       R24 R23 K32 ["Text"]
      149 CALL                             R21 2 1
      150 SETTABLEKS                       R21 R20 K27 ["TreeLabel"]
      152 MOVE                             R21 R7
      153 JUMPIFNOT                        R21 ; [+21]
      154 GETUPVAL                         R21 0
      155 GETTABLEKS                       R21 R21 K19 ["createElement"]
      157 GETUPVAL                         R22 13
      158 DUPTABLE                         R23 K41 [{["icon"] = "plus-small", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-add"}]
      159 MOVE                             R24 R6
      160 CALL                             R24 0 1
      161 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      163 SETTABLEKS                       R11 R23 K38 ["onActivated"]
      165 GETUPVAL                         R24 14
      166 GETTABLEKS                       R24 R24 K42 ["Enums"]
      168 GETTABLEKS                       R24 R24 K43 ["IconSize"]
      170 GETTABLEKS                       R24 R24 K44 ["Small"]
      172 SETTABLEKS                       R24 R23 K39 ["size"]
      174 CALL                             R21 2 1
      175 SETTABLEKS                       R21 R20 K28 ["AddContextButton"]
      177 GETUPVAL                         R21 0
      178 GETTABLEKS                       R21 R21 K19 ["createElement"]
      180 GETUPVAL                         R22 15
      181 DUPTABLE                         R23 K51 [{["align"], ["isOpen"], ["items"], ["LayoutOrder"], ["onActivated"], ["onPressedOutside"], ["side"], ["testId"] = "header-filter"}]
      182 GETUPVAL                         R24 16
      183 GETTABLEKS                       R24 R24 K52 ["Start"]
      185 SETTABLEKS                       R24 R23 K45 ["align"]
      187 GETTABLEKS                       R24 R9 K53 ["enabled"]
      189 SETTABLEKS                       R24 R23 K46 ["isOpen"]
      191 SETTABLEKS                       R15 R23 K47 ["items"]
      193 MOVE                             R24 R6
      194 CALL                             R24 0 1
      195 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      197 SETTABLEKS                       R14 R23 K38 ["onActivated"]
      199 SETTABLEKS                       R13 R23 K48 ["onPressedOutside"]
      201 GETUPVAL                         R24 17
      202 GETTABLEKS                       R24 R24 K54 ["Bottom"]
      204 SETTABLEKS                       R24 R23 K49 ["side"]
      206 DUPTABLE                         R24 K56 [{"Filter"}]
      207 GETUPVAL                         R25 0
      208 GETTABLEKS                       R25 R25 K19 ["createElement"]
      210 GETUPVAL                         R26 13
      211 DUPTABLE                         R27 K59 [{["icon"] = "three-bars-horizontal-narrowing", ["LayoutOrder"], ["onActivated"], ["size"], ["testId"] = "header-filter-button"}]
      212 MOVE                             R28 R6
      213 CALL                             R28 0 1
      214 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      216 SETTABLEKS                       R12 R27 K38 ["onActivated"]
      218 GETUPVAL                         R28 14
      219 GETTABLEKS                       R28 R28 K42 ["Enums"]
      221 GETTABLEKS                       R28 R28 K43 ["IconSize"]
      223 GETTABLEKS                       R28 R28 K44 ["Small"]
      225 SETTABLEKS                       R28 R27 K39 ["size"]
      227 CALL                             R25 2 1
      228 SETTABLEKS                       R25 R24 K55 ["Filter"]
      230 CALL                             R21 3 1
      231 SETTABLEKS                       R21 R20 K29 ["FilterButton"]
      233 CALL                             R17 3 1
      234 SETTABLEKS                       R17 R16 K60 ["TreeHeader"]
      236 GETUPVAL                         R17 0
      237 GETTABLEKS                       R17 R17 K19 ["createElement"]
      239 GETUPVAL                         R18 18
      240 DUPTABLE                         R19 K63 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      241 MOVE                             R20 R6
      242 CALL                             R20 0 1
      243 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      245 GETUPVAL                         R20 19
      246 GETTABLEKS                       R20 R20 K64 ["Vertical"]
      248 SETTABLEKS                       R20 R19 K61 ["orientation"]
      250 CALL                             R17 2 1
      251 SETTABLEKS                       R17 R16 K65 ["Divider"]
      253 GETTABLEKS                       R17 R5 K13 ["datamodelType"]
      255 GETIMPORT                        R18 K67 [Enum.StudioDataModelType.PlayClient]
      257 JUMPIFNOTEQ                      R17 R18 ; [+20]
      259 GETUPVAL                         R17 0
      260 GETTABLEKS                       R17 R17 K19 ["createElement"]
      262 GETUPVAL                         R18 12
      263 DUPTABLE                         R19 K70 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"] = "schema-State", ["Text"]}]
      264 MOVE                             R20 R6
      265 CALL                             R20 0 1
      266 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      268 LOADK                            R22 K34 ["Header"]
      269 LOADK                            R23 K71 ["State"]
      270 NAMECALL                         R20 R1 K35 ["getText"]
      272 CALL                             R20 3 1
      273 SETTABLEKS                       R20 R19 K32 ["Text"]
      275 CALL                             R17 2 1
      276 SETTABLEKS                       R17 R16 K71 ["State"]
      278 GETUPVAL                         R17 20
      279 CALL                             R17 0 3
      280 FORGPREP                         R17
      281 GETTABLEKS                       R23 R2 K11 ["schemas"]
      283 GETTABLE                         R22 R23 R21
      284 JUMPIFEQKB                       R22 FALSE ; [+26]
      286 GETUPVAL                         R22 0
      287 GETTABLEKS                       R22 R22 K19 ["createElement"]
      289 GETUPVAL                         R23 12
      290 DUPTABLE                         R24 K72 [{["LayoutOrder"], ["tag"] = "columns-input padding-small text-body-medium text-align-x-left", ["testId"], ["Text"]}]
      291 MOVE                             R25 R6
      292 CALL                             R25 0 1
      293 SETTABLEKS                       R25 R24 K20 ["LayoutOrder"]
      295 LOADK                            R25 K73 ["schema-%*"]
      296 MOVE                             R27 R21
      297 NAMECALL                         R25 R25 K74 ["format"]
      299 CALL                             R25 2 1
      300 SETTABLEKS                       R25 R24 K24 ["testId"]
      302 LOADK                            R27 K75 ["Schema"]
      303 MOVE                             R28 R21
      304 NAMECALL                         R25 R1 K35 ["getText"]
      306 CALL                             R25 3 1
      307 SETTABLEKS                       R25 R24 K32 ["Text"]
      309 CALL                             R22 2 1
      310 SETTABLE                         R22 R16 R21
      311 FORGLOOP                         R17 2 ; [-31]
      313 GETUPVAL                         R17 0
      314 GETTABLEKS                       R17 R17 K19 ["createElement"]
      316 GETUPVAL                         R18 11
      317 DUPTABLE                         R19 K80 [{["layoutOrder"], ["tag"] = "col size-full-1000", ["ZIndex"] = 2}]
      318 GETTABLEKS                       R20 R0 K20 ["LayoutOrder"]
      320 SETTABLEKS                       R20 R19 K76 ["layoutOrder"]
      322 DUPTABLE                         R20 K81 [{"header", "Divider"}]
      323 GETUPVAL                         R21 0
      324 GETTABLEKS                       R21 R21 K19 ["createElement"]
      326 GETUPVAL                         R22 21
      327 DUPTABLE                         R23 K85 [{["LayoutOrder"], ["scrollingFrameRef"], ["scroll"], ["tag"] = "size-full-1000 auto-x"}]
      328 GETTABLEKS                       R24 R0 K20 ["LayoutOrder"]
      330 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      332 GETTABLEKS                       R24 R0 K82 ["scrollingFrameRef"]
      334 SETTABLEKS                       R24 R23 K82 ["scrollingFrameRef"]
      336 DUPTABLE                         R24 K91 [{["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = False, ["scrollBarVisibility"]}]
      337 GETIMPORT                        R25 K94 [Enum.AutomaticSize.XY]
      339 SETTABLEKS                       R25 R24 K86 ["AutomaticCanvasSize"]
      341 GETIMPORT                        R25 K96 [Enum.ScrollingDirection.X]
      343 SETTABLEKS                       R25 R24 K87 ["ScrollingDirection"]
      345 GETUPVAL                         R25 22
      346 GETTABLEKS                       R25 R25 K16 ["None"]
      348 SETTABLEKS                       R25 R24 K90 ["scrollBarVisibility"]
      350 SETTABLEKS                       R24 R23 K83 ["scroll"]
      352 DUPTABLE                         R24 K98 [{"Children"}]
      353 GETUPVAL                         R25 0
      354 GETTABLEKS                       R25 R25 K19 ["createElement"]
      356 GETUPVAL                         R26 11
      357 DUPTABLE                         R27 K100 [{["tag"] = "row align-y-center size-full-1000 auto-x"}]
      358 MOVE                             R28 R16
      359 CALL                             R25 3 1
      360 SETTABLEKS                       R25 R24 K97 ["Children"]
      362 CALL                             R21 3 1
      363 SETTABLEKS                       R21 R20 K25 ["header"]
      365 GETUPVAL                         R21 0
      366 GETTABLEKS                       R21 R21 K19 ["createElement"]
      368 GETUPVAL                         R22 18
      369 DUPTABLE                         R23 K102 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      370 MOVE                             R24 R6
      371 CALL                             R24 0 1
      372 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      374 GETUPVAL                         R24 14
      375 GETTABLEKS                       R24 R24 K42 ["Enums"]
      377 GETTABLEKS                       R24 R24 K103 ["Orientation"]
      379 GETTABLEKS                       R24 R24 K104 ["Horizontal"]
      381 SETTABLEKS                       R24 R23 K61 ["orientation"]
      383 CALL                             R21 2 1
      384 SETTABLEKS                       R21 R20 K65 ["Divider"]
      386 CALL                             R17 3 -1
      387 RETURN                           R17 -1

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
       95 GETTABLEKS                       R20 R20 K30 ["Flags"]
       97 GETTABLEKS                       R20 R20 K31 ["getFFlagIAMSavedFilters"]
       99 CALL                             R19 1 1
      100 GETIMPORT                        R20 K5 [require]
      102 GETTABLEKS                       R21 R0 K25 ["Src"]
      104 GETTABLEKS                       R21 R21 K27 ["Util"]
      106 GETTABLEKS                       R21 R21 K32 ["Menus"]
      108 GETTABLEKS                       R21 R21 K33 ["getFilterMenu"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K5 [require]
      113 GETTABLEKS                       R22 R0 K25 ["Src"]
      115 GETTABLEKS                       R22 R22 K27 ["Util"]
      117 GETTABLEKS                       R22 R22 K34 ["getSchemas"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K5 [require]
      122 GETTABLEKS                       R23 R0 K25 ["Src"]
      124 GETTABLEKS                       R23 R23 K11 ["Contexts"]
      126 GETTABLEKS                       R23 R23 K35 ["InputConfiguration"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K5 [require]
      131 GETTABLEKS                       R24 R0 K25 ["Src"]
      133 GETTABLEKS                       R24 R24 K36 ["Hooks"]
      135 GETTABLEKS                       R24 R24 K37 ["Context"]
      137 GETTABLEKS                       R24 R24 K38 ["useContextOrder"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K5 [require]
      142 GETTABLEKS                       R25 R0 K25 ["Src"]
      144 GETTABLEKS                       R25 R25 K11 ["Contexts"]
      146 GETTABLEKS                       R25 R25 K39 ["DatamodelConfiguration"]
      148 CALL                             R24 1 1
      149 GETIMPORT                        R25 K5 [require]
      151 GETTABLEKS                       R26 R0 K25 ["Src"]
      153 GETTABLEKS                       R26 R26 K40 ["Types"]
      155 CALL                             R25 1 1
      156 DUPCLOSURE                       R26 K41 [PROTO_6]
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R24
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R15
      180 RETURN                           R26 1
