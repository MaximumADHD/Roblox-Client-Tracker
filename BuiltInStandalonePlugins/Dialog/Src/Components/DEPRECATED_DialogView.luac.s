PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 24
        5 CALL                             R1 2 1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [UDim.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SharedFlags"]
        3 GETTABLEKS                       R3 R3 K1 ["getFFlagStudioFoundationDialogComponent"]
        5 CALL                             R3 0 1
        6 NOT                              R2 R3
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["This version of the DialogView component is deprecated. Use the version from StudioFoundation"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 CALL                             R1 0 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K5 ["Hooks"]
       18 GETTABLEKS                       R2 R2 K6 ["useTokens"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R2
       23 GETTABLEKS                       R5 R0 K7 ["type"]
       25 CALL                             R3 2 1
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 GETUPVAL                         R8 4
       31 JUMPIFNOT                        R8 ; [+34]
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R9 R0 K8 ["image"]
       35 CALL                             R8 1 1
       36 MOVE                             R4 R8
       37 GETUPVAL                         R8 6
       38 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          REF R4
       42 NEWTABLE                         R10 0 1
       44 MOVE                             R11 R4
       45 SETLIST                          R10 R11 1 [1]
       47 CALL                             R8 2 1
       48 MOVE                             R5 R8
       49 GETUPVAL                         R8 6
       50 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          REF R5
       54 NEWTABLE                         R10 0 1
       56 MOVE                             R11 R5
       57 SETLIST                          R10 R11 1 [1]
       59 CALL                             R8 2 1
       60 MOVE                             R6 R8
       61 GETUPVAL                         R8 5
       62 GETTABLEKS                       R9 R0 K10 ["showIndeterminateProgressIndicator"]
       64 CALL                             R8 1 1
       65 MOVE                             R7 R8
       66 GETUPVAL                         R8 5
       67 GETTABLEKS                       R9 R0 K11 ["title"]
       69 CALL                             R8 1 1
       70 GETUPVAL                         R9 6
       71 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       73 NEWCLOSURE                       R10 P2
       74 CAPTURE                          VAL R8
       75 NEWTABLE                         R11 0 1
       77 MOVE                             R12 R8
       78 SETLIST                          R11 R12 1 [1]
       80 CALL                             R9 2 1
       81 GETUPVAL                         R10 5
       82 GETTABLEKS                       R11 R0 K12 ["description"]
       84 CALL                             R10 1 1
       85 GETUPVAL                         R11 6
       86 GETTABLEKS                       R11 R11 K9 ["useMemo"]
       88 NEWCLOSURE                       R12 P3
       89 CAPTURE                          VAL R10
       90 NEWTABLE                         R13 0 1
       92 MOVE                             R14 R10
       93 SETLIST                          R13 R14 1 [1]
       95 CALL                             R11 2 1
       96 GETUPVAL                         R12 7
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R13 R13 K13 ["View"]
      100 DUPTABLE                         R14 K20 [{["tag"] = "component-dialog-view col flex-y-between gap-small auto-y padding-x-large padding-y-medium bg-surface-200", ["onAbsoluteSizeChanged"], ["testId"] = "--dialog", ["Size"]}]
      101 GETTABLEKS                       R15 R0 K16 ["onAbsoluteSizeChanged"]
      103 SETTABLEKS                       R15 R14 K16 ["onAbsoluteSizeChanged"]
      105 GETUPVAL                         R16 8
      106 CALL                             R16 0 1
      107 JUMPIFNOT                        R16 ; [+8]
      108 GETIMPORT                        R15 K23 [UDim2.fromOffset]
      110 GETTABLEKS                       R17 R0 K25 ["width"]
      112 ORK                              R16 R17 K24 [350]
      113 LOADN                            R17 0
      114 CALL                             R15 2 1
      115 JUMP                             ; [+5]
      116 GETIMPORT                        R15 K23 [UDim2.fromOffset]
      118 LOADN                            R16 350
      119 LOADN                            R17 0
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K19 ["Size"]
      123 DUPTABLE                         R15 K28 [{"IconAndTextRow", "ButtonGroup"}]
      124 GETUPVAL                         R16 7
      125 GETUPVAL                         R17 2
      126 GETTABLEKS                       R17 R17 K13 ["View"]
      128 DUPTABLE                         R18 K31 [{["tag"] = "row flex-x-between items-start gap-medium size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      129 MOVE                             R19 R1
      130 CALL                             R19 0 1
      131 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      133 DUPTABLE                         R19 K35 [{"Image", "Icon", "TextColumn"}]
      134 GETUPVAL                         R21 4
      135 JUMPIFNOT                        R21 ; [+36]
      136 GETUPVAL                         R20 7
      137 GETUPVAL                         R21 2
      138 GETTABLEKS                       R21 R21 K32 ["Image"]
      140 DUPTABLE                         R22 K38 [{["Image"], ["Visible"], ["Size"], ["LayoutOrder"], ["testId"] = "--dialog-thumbnail"}]
      141 SETTABLEKS                       R4 R22 K32 ["Image"]
      143 SETTABLEKS                       R5 R22 K36 ["Visible"]
      145 GETIMPORT                        R23 K23 [UDim2.fromOffset]
      147 LOADN                            R24 36
      148 LOADN                            R25 36
      149 CALL                             R23 2 1
      150 SETTABLEKS                       R23 R22 K19 ["Size"]
      152 MOVE                             R23 R1
      153 CALL                             R23 0 1
      154 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      156 DUPTABLE                         R23 K40 [{"UICorner"}]
      157 GETUPVAL                         R24 7
      158 LOADK                            R25 K39 ["UICorner"]
      159 DUPTABLE                         R26 K42 [{"CornerRadius"}]
      160 GETIMPORT                        R27 K45 [UDim.new]
      162 LOADN                            R28 0
      163 LOADN                            R29 4
      164 CALL                             R27 2 1
      165 SETTABLEKS                       R27 R26 K41 ["CornerRadius"]
      167 CALL                             R24 2 1
      168 SETTABLEKS                       R24 R23 K39 ["UICorner"]
      170 CALL                             R20 3 1
      171 JUMPIF                           R20 ; [+1]
      172 LOADNIL                          R20
      173 SETTABLEKS                       R20 R19 K32 ["Image"]
      175 JUMPIFNOT                        R3 ; [+44]
      176 GETUPVAL                         R20 7
      177 GETUPVAL                         R21 2
      178 GETTABLEKS                       R21 R21 K33 ["Icon"]
      180 DUPTABLE                         R22 K51 [{["name"], ["size"], ["style"], ["variant"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-icon"}]
      181 GETTABLEKS                       R23 R3 K52 ["icon"]
      183 SETTABLEKS                       R23 R22 K46 ["name"]
      185 GETUPVAL                         R23 2
      186 GETTABLEKS                       R23 R23 K53 ["Enums"]
      188 GETTABLEKS                       R23 R23 K54 ["IconSize"]
      190 GETTABLEKS                       R23 R23 K55 ["Large"]
      192 SETTABLEKS                       R23 R22 K47 ["size"]
      194 GETTABLEKS                       R23 R3 K56 ["color"]
      196 SETTABLEKS                       R23 R22 K48 ["style"]
      198 GETUPVAL                         R23 2
      199 GETTABLEKS                       R23 R23 K53 ["Enums"]
      201 GETTABLEKS                       R23 R23 K57 ["IconVariant"]
      203 GETTABLEKS                       R23 R23 K58 ["Filled"]
      205 SETTABLEKS                       R23 R22 K49 ["variant"]
      207 GETUPVAL                         R24 4
      208 JUMPIFNOT                        R24 ; [+2]
      209 MOVE                             R23 R6
      210 JUMPIF                           R23 ; [+1]
      211 LOADNIL                          R23
      212 SETTABLEKS                       R23 R22 K36 ["Visible"]
      214 MOVE                             R23 R1
      215 CALL                             R23 0 1
      216 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      218 CALL                             R20 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R20
      221 SETTABLEKS                       R20 R19 K33 ["Icon"]
      223 GETUPVAL                         R20 7
      224 GETUPVAL                         R21 2
      225 GETTABLEKS                       R21 R21 K13 ["View"]
      227 DUPTABLE                         R22 K60 [{["tag"] = "col fill gap-medium auto-y", ["LayoutOrder"]}]
      228 MOVE                             R23 R1
      229 CALL                             R23 0 1
      230 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      232 DUPTABLE                         R23 K64 [{"Title", "Description", "Children"}]
      233 GETUPVAL                         R24 7
      234 GETUPVAL                         R25 2
      235 GETTABLEKS                       R25 R25 K65 ["Text"]
      237 DUPTABLE                         R26 K68 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left text-align-y-center", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-title"}]
      238 SETTABLEKS                       R8 R26 K65 ["Text"]
      240 SETTABLEKS                       R9 R26 K36 ["Visible"]
      242 MOVE                             R27 R1
      243 CALL                             R27 0 1
      244 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      246 CALL                             R24 2 1
      247 SETTABLEKS                       R24 R23 K61 ["Title"]
      249 GETUPVAL                         R24 7
      250 GETUPVAL                         R25 2
      251 GETTABLEKS                       R25 R25 K65 ["Text"]
      253 DUPTABLE                         R26 K71 [{["tag"] = "grow size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-description"}]
      254 SETTABLEKS                       R10 R26 K65 ["Text"]
      256 SETTABLEKS                       R11 R26 K36 ["Visible"]
      258 MOVE                             R27 R1
      259 CALL                             R27 0 1
      260 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      262 GETUPVAL                         R28 4
      263 JUMPIFNOT                        R28 ; [+51]
      264 DUPTABLE                         R27 K74 [{"ProgressSpinner", "SpinnerPadding"}]
      265 GETUPVAL                         R28 7
      266 GETUPVAL                         R29 2
      267 GETTABLEKS                       R29 R29 K75 ["Progress"]
      269 DUPTABLE                         R30 K79 [{["shape"], ["size"], ["Visible"], ["Position"], ["testId"] = "--dialog-progress"}]
      270 GETUPVAL                         R31 2
      271 GETTABLEKS                       R31 R31 K53 ["Enums"]
      273 GETTABLEKS                       R31 R31 K80 ["ProgressShape"]
      275 GETTABLEKS                       R31 R31 K81 ["Circle"]
      277 SETTABLEKS                       R31 R30 K76 ["shape"]
      279 GETUPVAL                         R31 2
      280 GETTABLEKS                       R31 R31 K53 ["Enums"]
      282 GETTABLEKS                       R31 R31 K82 ["ProgressSize"]
      284 GETTABLEKS                       R31 R31 K83 ["Small"]
      286 SETTABLEKS                       R31 R30 K47 ["size"]
      288 SETTABLEKS                       R7 R30 K36 ["Visible"]
      290 GETIMPORT                        R31 K84 [UDim2.new]
      292 LOADN                            R32 0
      293 LOADN                            R33 -24
      294 LOADN                            R34 0
      295 LOADN                            R35 1
      296 CALL                             R31 4 1
      297 SETTABLEKS                       R31 R30 K77 ["Position"]
      299 CALL                             R28 2 1
      300 SETTABLEKS                       R28 R27 K72 ["ProgressSpinner"]
      302 GETUPVAL                         R28 7
      303 LOADK                            R29 K85 ["UIPadding"]
      304 DUPTABLE                         R30 K87 [{"PaddingLeft"}]
      305 DUPCLOSURE                       R33 K88 [PROTO_8]
      306 NAMECALL                         R31 R7 K89 ["map"]
      308 CALL                             R31 2 1
      309 SETTABLEKS                       R31 R30 K86 ["PaddingLeft"]
      311 CALL                             R28 2 1
      312 SETTABLEKS                       R28 R27 K73 ["SpinnerPadding"]
      314 JUMPIF                           R27 ; [+1]
      315 LOADNIL                          R27
      316 CALL                             R24 3 1
      317 SETTABLEKS                       R24 R23 K62 ["Description"]
      319 GETUPVAL                         R25 8
      320 CALL                             R25 0 1
      321 JUMPIFNOT                        R25 ; [+34]
      322 GETUPVAL                         R25 6
      323 GETTABLEKS                       R25 R25 K63 ["Children"]
      325 GETTABLEKS                       R25 R25 K90 ["count"]
      327 GETTABLEKS                       R26 R0 K91 ["children"]
      329 CALL                             R25 1 1
      330 LOADN                            R26 0
      331 JUMPIFNOTLT                      R26 R25 ; [+24]
      333 GETUPVAL                         R24 7
      334 GETUPVAL                         R25 2
      335 GETTABLEKS                       R25 R25 K13 ["View"]
      337 DUPTABLE                         R26 K93 [{["tag"], ["LayoutOrder"], ["testId"] = "--dialog-children"}]
      338 NEWTABLE                         R27 2 0
      340 LOADB                            R28 1
      341 SETTABLEKS                       R28 R27 K94 ["col gap-medium size-full-0 auto-y"]
      343 GETUPVAL                         R28 9
      344 SETTABLEKS                       R28 R27 K95 ["padding-right-small"]
      346 SETTABLEKS                       R27 R26 K14 ["tag"]
      348 MOVE                             R27 R1
      349 CALL                             R27 0 1
      350 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      352 GETTABLEKS                       R27 R0 K91 ["children"]
      354 CALL                             R24 3 1
      355 JUMP                             ; [+1]
      356 LOADNIL                          R24
      357 SETTABLEKS                       R24 R23 K63 ["Children"]
      359 CALL                             R20 3 1
      360 SETTABLEKS                       R20 R19 K34 ["TextColumn"]
      362 CALL                             R16 3 1
      363 SETTABLEKS                       R16 R15 K26 ["IconAndTextRow"]
      365 GETUPVAL                         R16 7
      366 GETUPVAL                         R17 10
      367 DUPTABLE                         R18 K99 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
      368 MOVE                             R19 R1
      369 CALL                             R19 0 1
      370 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      372 GETTABLEKS                       R19 R0 K96 ["primaryAction"]
      374 SETTABLEKS                       R19 R18 K96 ["primaryAction"]
      376 GETTABLEKS                       R19 R0 K97 ["secondaryAction"]
      378 SETTABLEKS                       R19 R18 K97 ["secondaryAction"]
      380 GETTABLEKS                       R19 R0 K98 ["tertiaryAction"]
      382 SETTABLEKS                       R19 R18 K98 ["tertiaryAction"]
      384 CALL                             R16 2 1
      385 SETTABLEKS                       R16 R15 K27 ["ButtonGroup"]
      387 CALL                             R12 3 -1
      388 CLOSEUPVALS                      R4
      389 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["DEPRECATED_DialogButtonGroup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagDialogManagerAddEscapeTitleButton"]
       24 CALL                             R2 1 1
       25 CALL                             R2 0 1
       26 GETIMPORT                        R3 K5 [require]
       28 GETTABLEKS                       R4 R0 K11 ["Packages"]
       30 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K11 ["Packages"]
       37 GETTABLEKS                       R5 R5 K13 ["Framework"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K11 ["Packages"]
       44 GETTABLEKS                       R6 R6 K14 ["React"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R0 K11 ["Packages"]
       51 GETTABLEKS                       R7 R7 K15 ["StudioFoundation"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K16 ["Types"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R9 K9 ["Flags"]
       67 GETTABLEKS                       R9 R9 K17 ["getFFlagDialogManagerUpdateSemantics"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K6 ["Src"]
       74 GETTABLEKS                       R10 R10 K9 ["Flags"]
       76 GETTABLEKS                       R10 R10 K18 ["getFeatureStudioDialogManagerCustomDialogs"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K6 ["Src"]
       83 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       85 GETTABLEKS                       R11 R11 K20 ["DEPRECATED_useBindable"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K6 ["Src"]
       92 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       94 GETTABLEKS                       R12 R12 K21 ["DEPRECATED_useDialogIconProps"]
       96 CALL                             R11 1 1
       97 GETTABLEKS                       R12 R4 K22 ["Util"]
       99 GETTABLEKS                       R12 R12 K23 ["counter"]
      101 MOVE                             R13 R8
      102 CALL                             R13 0 1
      103 GETTABLEKS                       R14 R5 K24 ["createElement"]
      105 DUPCLOSURE                       R15 K25 [PROTO_9]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R1
      117 GETTABLEKS                       R16 R5 K26 ["memo"]
      119 MOVE                             R17 R15
      120 CALL                             R16 1 -1
      121 RETURN                           R16 -1
