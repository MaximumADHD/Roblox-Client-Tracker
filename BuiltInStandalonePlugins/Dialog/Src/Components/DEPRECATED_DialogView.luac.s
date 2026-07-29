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
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R5 R0 K8 ["image"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R7 0 1
       37 MOVE                             R8 R4
       38 SETLIST                          R7 R8 1 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R5
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 4
       53 GETTABLEKS                       R8 R0 K10 ["showIndeterminateProgressIndicator"]
       55 CALL                             R7 1 1
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R9 R0 K11 ["title"]
       59 CALL                             R8 1 1
       60 GETUPVAL                         R9 5
       61 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       63 NEWCLOSURE                       R10 P2
       64 CAPTURE                          VAL R8
       65 NEWTABLE                         R11 0 1
       67 MOVE                             R12 R8
       68 SETLIST                          R11 R12 1 [1]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 4
       72 GETTABLEKS                       R11 R0 K12 ["description"]
       74 CALL                             R10 1 1
       75 GETUPVAL                         R11 5
       76 GETTABLEKS                       R11 R11 K9 ["useMemo"]
       78 NEWCLOSURE                       R12 P3
       79 CAPTURE                          VAL R10
       80 NEWTABLE                         R13 0 1
       82 MOVE                             R14 R10
       83 SETLIST                          R13 R14 1 [1]
       85 CALL                             R11 2 1
       86 GETUPVAL                         R12 6
       87 GETUPVAL                         R13 2
       88 GETTABLEKS                       R13 R13 K13 ["View"]
       90 DUPTABLE                         R14 K20 [{["tag"] = "component-dialog-view col flex-y-between gap-small auto-y padding-x-large padding-y-medium bg-surface-200", ["onAbsoluteSizeChanged"], ["testId"] = "--dialog", ["Size"]}]
       91 GETTABLEKS                       R15 R0 K16 ["onAbsoluteSizeChanged"]
       93 SETTABLEKS                       R15 R14 K16 ["onAbsoluteSizeChanged"]
       95 GETIMPORT                        R15 K23 [UDim2.fromOffset]
       97 GETTABLEKS                       R17 R0 K25 ["width"]
       99 ORK                              R16 R17 K24 [350]
      100 LOADN                            R17 0
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K19 ["Size"]
      104 DUPTABLE                         R15 K28 [{"IconAndTextRow", "ButtonGroup"}]
      105 GETUPVAL                         R16 6
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R17 R17 K13 ["View"]
      109 DUPTABLE                         R18 K31 [{["tag"] = "row flex-x-between items-start gap-medium size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      110 MOVE                             R19 R1
      111 CALL                             R19 0 1
      112 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      114 DUPTABLE                         R19 K35 [{"Image", "Icon", "TextColumn"}]
      115 GETUPVAL                         R20 6
      116 GETUPVAL                         R21 2
      117 GETTABLEKS                       R21 R21 K32 ["Image"]
      119 DUPTABLE                         R22 K38 [{["Image"], ["Visible"], ["Size"], ["LayoutOrder"], ["testId"] = "--dialog-thumbnail"}]
      120 SETTABLEKS                       R4 R22 K32 ["Image"]
      122 SETTABLEKS                       R5 R22 K36 ["Visible"]
      124 GETIMPORT                        R23 K23 [UDim2.fromOffset]
      126 LOADN                            R24 36
      127 LOADN                            R25 36
      128 CALL                             R23 2 1
      129 SETTABLEKS                       R23 R22 K19 ["Size"]
      131 MOVE                             R23 R1
      132 CALL                             R23 0 1
      133 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      135 DUPTABLE                         R23 K40 [{"UICorner"}]
      136 GETUPVAL                         R24 6
      137 LOADK                            R25 K39 ["UICorner"]
      138 DUPTABLE                         R26 K42 [{"CornerRadius"}]
      139 GETIMPORT                        R27 K45 [UDim.new]
      141 LOADN                            R28 0
      142 LOADN                            R29 4
      143 CALL                             R27 2 1
      144 SETTABLEKS                       R27 R26 K41 ["CornerRadius"]
      146 CALL                             R24 2 1
      147 SETTABLEKS                       R24 R23 K39 ["UICorner"]
      149 CALL                             R20 3 1
      150 SETTABLEKS                       R20 R19 K32 ["Image"]
      152 JUMPIFNOT                        R3 ; [+39]
      153 GETUPVAL                         R20 6
      154 GETUPVAL                         R21 2
      155 GETTABLEKS                       R21 R21 K33 ["Icon"]
      157 DUPTABLE                         R22 K51 [{["name"], ["size"], ["style"], ["variant"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-icon"}]
      158 GETTABLEKS                       R23 R3 K52 ["icon"]
      160 SETTABLEKS                       R23 R22 K46 ["name"]
      162 GETUPVAL                         R23 2
      163 GETTABLEKS                       R23 R23 K53 ["Enums"]
      165 GETTABLEKS                       R23 R23 K54 ["IconSize"]
      167 GETTABLEKS                       R23 R23 K55 ["Large"]
      169 SETTABLEKS                       R23 R22 K47 ["size"]
      171 GETTABLEKS                       R23 R3 K56 ["color"]
      173 SETTABLEKS                       R23 R22 K48 ["style"]
      175 GETUPVAL                         R23 2
      176 GETTABLEKS                       R23 R23 K53 ["Enums"]
      178 GETTABLEKS                       R23 R23 K57 ["IconVariant"]
      180 GETTABLEKS                       R23 R23 K58 ["Filled"]
      182 SETTABLEKS                       R23 R22 K49 ["variant"]
      184 SETTABLEKS                       R6 R22 K36 ["Visible"]
      186 MOVE                             R23 R1
      187 CALL                             R23 0 1
      188 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      190 CALL                             R20 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R20
      193 SETTABLEKS                       R20 R19 K33 ["Icon"]
      195 GETUPVAL                         R20 6
      196 GETUPVAL                         R21 2
      197 GETTABLEKS                       R21 R21 K13 ["View"]
      199 DUPTABLE                         R22 K60 [{["tag"] = "col fill gap-medium auto-y", ["LayoutOrder"]}]
      200 MOVE                             R23 R1
      201 CALL                             R23 0 1
      202 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      204 DUPTABLE                         R23 K64 [{"Title", "Description", "Children"}]
      205 GETUPVAL                         R24 6
      206 GETUPVAL                         R25 2
      207 GETTABLEKS                       R25 R25 K65 ["Text"]
      209 DUPTABLE                         R26 K68 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left text-align-y-center", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-title"}]
      210 SETTABLEKS                       R8 R26 K65 ["Text"]
      212 SETTABLEKS                       R9 R26 K36 ["Visible"]
      214 MOVE                             R27 R1
      215 CALL                             R27 0 1
      216 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      218 CALL                             R24 2 1
      219 SETTABLEKS                       R24 R23 K61 ["Title"]
      221 GETUPVAL                         R24 6
      222 GETUPVAL                         R25 2
      223 GETTABLEKS                       R25 R25 K65 ["Text"]
      225 DUPTABLE                         R26 K71 [{["tag"] = "grow size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-description"}]
      226 SETTABLEKS                       R10 R26 K65 ["Text"]
      228 SETTABLEKS                       R11 R26 K36 ["Visible"]
      230 MOVE                             R27 R1
      231 CALL                             R27 0 1
      232 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      234 DUPTABLE                         R27 K74 [{"ProgressSpinner", "SpinnerPadding"}]
      235 GETUPVAL                         R28 6
      236 GETUPVAL                         R29 2
      237 GETTABLEKS                       R29 R29 K75 ["Progress"]
      239 DUPTABLE                         R30 K79 [{["shape"], ["size"], ["Visible"], ["Position"], ["testId"] = "--dialog-progress"}]
      240 GETUPVAL                         R31 2
      241 GETTABLEKS                       R31 R31 K53 ["Enums"]
      243 GETTABLEKS                       R31 R31 K80 ["ProgressShape"]
      245 GETTABLEKS                       R31 R31 K81 ["Circle"]
      247 SETTABLEKS                       R31 R30 K76 ["shape"]
      249 GETUPVAL                         R31 2
      250 GETTABLEKS                       R31 R31 K53 ["Enums"]
      252 GETTABLEKS                       R31 R31 K82 ["ProgressSize"]
      254 GETTABLEKS                       R31 R31 K83 ["Small"]
      256 SETTABLEKS                       R31 R30 K47 ["size"]
      258 SETTABLEKS                       R7 R30 K36 ["Visible"]
      260 GETIMPORT                        R31 K84 [UDim2.new]
      262 LOADN                            R32 0
      263 LOADN                            R33 -24
      264 LOADN                            R34 0
      265 LOADN                            R35 1
      266 CALL                             R31 4 1
      267 SETTABLEKS                       R31 R30 K77 ["Position"]
      269 CALL                             R28 2 1
      270 SETTABLEKS                       R28 R27 K72 ["ProgressSpinner"]
      272 GETUPVAL                         R28 6
      273 LOADK                            R29 K85 ["UIPadding"]
      274 DUPTABLE                         R30 K87 [{"PaddingLeft"}]
      275 DUPCLOSURE                       R33 K88 [PROTO_8]
      276 NAMECALL                         R31 R7 K89 ["map"]
      278 CALL                             R31 2 1
      279 SETTABLEKS                       R31 R30 K86 ["PaddingLeft"]
      281 CALL                             R28 2 1
      282 SETTABLEKS                       R28 R27 K73 ["SpinnerPadding"]
      284 CALL                             R24 3 1
      285 SETTABLEKS                       R24 R23 K62 ["Description"]
      287 GETUPVAL                         R25 5
      288 GETTABLEKS                       R25 R25 K63 ["Children"]
      290 GETTABLEKS                       R25 R25 K90 ["count"]
      292 GETTABLEKS                       R26 R0 K91 ["children"]
      294 CALL                             R25 1 1
      295 LOADN                            R26 0
      296 JUMPIFNOTLT                      R26 R25 ; [+24]
      298 GETUPVAL                         R24 6
      299 GETUPVAL                         R25 2
      300 GETTABLEKS                       R25 R25 K13 ["View"]
      302 DUPTABLE                         R26 K93 [{["tag"], ["LayoutOrder"], ["testId"] = "--dialog-children"}]
      303 NEWTABLE                         R27 2 0
      305 LOADB                            R28 1
      306 SETTABLEKS                       R28 R27 K94 ["col gap-medium size-full-0 auto-y"]
      308 LOADB                            R28 1
      309 SETTABLEKS                       R28 R27 K95 ["padding-right-small"]
      311 SETTABLEKS                       R27 R26 K14 ["tag"]
      313 MOVE                             R27 R1
      314 CALL                             R27 0 1
      315 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      317 GETTABLEKS                       R27 R0 K91 ["children"]
      319 CALL                             R24 3 1
      320 JUMP                             ; [+1]
      321 LOADNIL                          R24
      322 SETTABLEKS                       R24 R23 K63 ["Children"]
      324 CALL                             R20 3 1
      325 SETTABLEKS                       R20 R19 K34 ["TextColumn"]
      327 CALL                             R16 3 1
      328 SETTABLEKS                       R16 R15 K26 ["IconAndTextRow"]
      330 GETUPVAL                         R16 6
      331 GETUPVAL                         R17 7
      332 DUPTABLE                         R18 K99 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
      333 MOVE                             R19 R1
      334 CALL                             R19 0 1
      335 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      337 GETTABLEKS                       R19 R0 K96 ["primaryAction"]
      339 SETTABLEKS                       R19 R18 K96 ["primaryAction"]
      341 GETTABLEKS                       R19 R0 K97 ["secondaryAction"]
      343 SETTABLEKS                       R19 R18 K97 ["secondaryAction"]
      345 GETTABLEKS                       R19 R0 K98 ["tertiaryAction"]
      347 SETTABLEKS                       R19 R18 K98 ["tertiaryAction"]
      349 CALL                             R16 2 1
      350 SETTABLEKS                       R16 R15 K27 ["ButtonGroup"]
      352 CALL                             R12 3 -1
      353 RETURN                           R12 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       57 GETTABLEKS                       R8 R8 K16 ["DEPRECATED_useBindable"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Src"]
       64 GETTABLEKS                       R9 R9 K15 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K17 ["DEPRECATED_useDialogIconProps"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R3 K18 ["Util"]
       71 GETTABLEKS                       R9 R9 K19 ["counter"]
       73 GETTABLEKS                       R10 R4 K20 ["createElement"]
       75 DUPCLOSURE                       R11 K21 [PROTO_9]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 GETTABLEKS                       R12 R4 K22 ["memo"]
       86 MOVE                             R13 R11
       87 CALL                             R12 1 -1
       88 RETURN                           R12 -1
