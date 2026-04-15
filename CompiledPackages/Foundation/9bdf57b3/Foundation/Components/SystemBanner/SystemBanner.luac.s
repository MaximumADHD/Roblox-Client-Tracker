PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationSystemBannerUseSharedAlertActions"]
        3 JUMPIFNOT                        R0 ; [+57]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["createElement"]
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K7 [{"actions", "testId", "LayoutOrder", "tag", "padding"}]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K2 ["actions"]
       12 SETTABLEKS                       R3 R2 K2 ["actions"]
       14 LOADK                            R4 K8 ["%*--actions"]
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K3 ["testId"]
       18 NAMECALL                         R4 R4 K9 ["format"]
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 SETTABLEKS                       R3 R2 K3 ["testId"]
       24 LOADN                            R3 3
       25 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       27 NEWTABLE                         R3 4 0
       29 LOADB                            R4 1
       30 SETTABLEKS                       R4 R3 K10 ["row gap-small auto-xy"]
       32 GETUPVAL                         R4 4
       33 SETTABLEKS                       R4 R3 K11 ["align-x-left"]
       35 GETUPVAL                         R5 4
       36 NOT                              R4 R5
       37 SETTABLEKS                       R4 R3 K12 ["align-x-right"]
       39 SETTABLEKS                       R3 R2 K5 ["tag"]
       41 GETUPVAL                         R4 4
       42 JUMPIFNOT                        R4 ; [+13]
       43 DUPTABLE                         R3 K14 [{"top"}]
       44 GETIMPORT                        R4 K17 [UDim.new]
       46 LOADN                            R5 0
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R7 R8 K18 ["Gap"]
       50 GETTABLEKS                       R6 R7 K19 ["Small"]
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K13 ["top"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R3
       57 SETTABLEKS                       R3 R2 K6 ["padding"]
       59 CALL                             R0 2 1
       60 RETURN                           R0 1
       61 LOADNIL                          R0
       62 GETUPVAL                         R2 3
       63 GETTABLEKS                       R1 R2 K2 ["actions"]
       65 JUMPIFNOT                        R1 ; [+65]
       66 GETUPVAL                         R3 3
       67 GETTABLEKS                       R2 R3 K2 ["actions"]
       69 LENGTH                           R1 R2
       70 LOADN                            R2 0
       71 JUMPIFNOTLT                      R2 R1 ; [+59]
       73 NEWTABLE                         R0 0 0
       75 GETUPVAL                         R4 3
       76 GETTABLEKS                       R1 R4 K2 ["actions"]
       78 LOADNIL                          R2
       79 LOADNIL                          R3
       80 FORGPREP                         R1
       81 LOADN                            R6 3
       82 JUMPIFNOTLT                      R6 R4 ; [+12]
       84 GETUPVAL                         R6 6
       85 LOADK                            R9 K20 ["SystemBanner only supports up to %* actions"]
       86 LOADN                            R11 3
       87 NAMECALL                         R9 R9 K9 ["format"]
       89 CALL                             R9 2 1
       90 MOVE                             R8 R9
       91 NAMECALL                         R6 R6 K21 ["warning"]
       93 CALL                             R6 2 0
       94 RETURN                           R0 1
       95 GETUPVAL                         R7 7
       96 GETTABLEKS                       R6 R7 K22 ["join"]
       98 MOVE                             R7 R5
       99 DUPTABLE                         R8 K24 [{"LayoutOrder", "size", "testId"}]
      100 SETTABLEKS                       R4 R8 K4 ["LayoutOrder"]
      102 GETUPVAL                         R10 8
      103 GETTABLEKS                       R9 R10 K19 ["Small"]
      105 SETTABLEKS                       R9 R8 K23 ["size"]
      107 LOADK                            R10 K25 ["%*--action-%*"]
      108 GETUPVAL                         R13 3
      109 GETTABLEKS                       R12 R13 K3 ["testId"]
      111 MOVE                             R13 R4
      112 NAMECALL                         R10 R10 K9 ["format"]
      114 CALL                             R10 3 1
      115 MOVE                             R9 R10
      116 SETTABLEKS                       R9 R8 K3 ["testId"]
      118 CALL                             R6 2 1
      119 LOADK                            R8 K26 ["ActionButton"]
      120 MOVE                             R9 R4
      121 CONCAT                           R7 R8 R9
      122 GETUPVAL                         R9 1
      123 GETTABLEKS                       R8 R9 K1 ["createElement"]
      125 GETUPVAL                         R9 9
      126 MOVE                             R10 R6
      127 CALL                             R8 2 1
      128 SETTABLE                         R8 R0 R7
      129 FORGLOOP                         R1 2 ; [-49]
      131 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["variant"]
       10 GETTABLEKS                       R7 R2 K1 ["severity"]
       12 CALL                             R4 3 1
       13 GETUPVAL                         R6 4
       14 GETTABLEKS                       R5 R6 K2 ["useState"]
       16 LOADNIL                          R6
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 5
       19 GETTABLEKS                       R7 R8 K3 ["useComposedRef"]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 6
       25 MOVE                             R9 R5
       26 CALL                             R8 1 1
       27 LOADB                            R9 1
       28 GETUPVAL                         R11 7
       29 GETTABLEKS                       R10 R11 K4 ["XSmall"]
       31 JUMPIFEQ                         R8 R10 ; [+8]
       33 GETUPVAL                         R11 7
       34 GETTABLEKS                       R10 R11 K5 ["Small"]
       36 JUMPIFEQ                         R8 R10 ; [+2]
       38 LOADB                            R9 0 +1
       39 LOADB                            R9 1
       40 GETUPVAL                         R11 4
       41 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U11
       52 CAPTURE                          UPVAL U12
       53 CAPTURE                          UPVAL U13
       54 NEWTABLE                         R12 0 4
       56 GETTABLEKS                       R13 R2 K7 ["actions"]
       58 GETTABLEKS                       R14 R2 K8 ["testId"]
       60 MOVE                             R15 R9
       61 GETTABLEKS                       R17 R3 K9 ["Gap"]
       63 GETTABLEKS                       R16 R17 K5 ["Small"]
       65 SETLIST                          R12 R13 4 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R13 8
       69 GETTABLEKS                       R12 R13 K10 ["FoundationSystemBannerUseSharedAlertActions"]
       71 JUMPIF                           R12 ; [+49]
       72 JUMPIFNOT                        R10 ; [+48]
       73 GETUPVAL                         R12 4
       74 GETTABLEKS                       R11 R12 K11 ["createElement"]
       76 GETUPVAL                         R12 14
       77 DUPTABLE                         R13 K15 [{"tag", "padding", "LayoutOrder", "testId"}]
       78 NEWTABLE                         R14 4 0
       80 LOADB                            R15 1
       81 SETTABLEKS                       R15 R14 K16 ["row gap-small auto-xy"]
       83 SETTABLEKS                       R9 R14 K17 ["align-x-left"]
       85 NOT                              R15 R9
       86 SETTABLEKS                       R15 R14 K18 ["align-x-right"]
       88 SETTABLEKS                       R14 R13 K12 ["tag"]
       90 JUMPIFNOT                        R9 ; [+12]
       91 DUPTABLE                         R14 K20 [{"top"}]
       92 GETIMPORT                        R15 K23 [UDim.new]
       94 LOADN                            R16 0
       95 GETTABLEKS                       R18 R3 K9 ["Gap"]
       97 GETTABLEKS                       R17 R18 K5 ["Small"]
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K19 ["top"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R14
      104 SETTABLEKS                       R14 R13 K13 ["padding"]
      106 LOADN                            R14 3
      107 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      109 LOADK                            R15 K24 ["%*--actions"]
      110 GETTABLEKS                       R17 R2 K8 ["testId"]
      112 NAMECALL                         R15 R15 K25 ["format"]
      114 CALL                             R15 2 1
      115 MOVE                             R14 R15
      116 SETTABLEKS                       R14 R13 K8 ["testId"]
      118 MOVE                             R14 R10
      119 CALL                             R11 3 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R11
      122 GETUPVAL                         R13 4
      123 GETTABLEKS                       R12 R13 K11 ["createElement"]
      125 GETUPVAL                         R13 14
      126 GETUPVAL                         R14 15
      127 MOVE                             R15 R2
      128 DUPTABLE                         R16 K27 [{"tag", "ref"}]
      129 NEWTABLE                         R17 4 0
      131 GETTABLEKS                       R19 R4 K28 ["container"]
      133 GETTABLEKS                       R18 R19 K12 ["tag"]
      135 LOADB                            R19 1
      136 SETTABLE                         R19 R17 R18
      137 GETTABLEKS                       R19 R2 K29 ["description"]
      139 JUMPIFEQKNIL                     R19 ; [+2]
      141 LOADB                            R18 0 +1
      142 LOADB                            R18 1
      143 SETTABLEKS                       R18 R17 K30 ["align-y-center"]
      145 GETTABLEKS                       R19 R2 K29 ["description"]
      147 JUMPIFNOTEQKNIL                  R19 ; [+2]
      149 LOADB                            R18 0 +1
      150 LOADB                            R18 1
      151 SETTABLEKS                       R18 R17 K31 ["align-y-top"]
      153 SETTABLEKS                       R17 R16 K12 ["tag"]
      155 SETTABLEKS                       R7 R16 K26 ["ref"]
      157 CALL                             R14 2 1
      158 GETUPVAL                         R16 4
      159 GETTABLEKS                       R15 R16 K11 ["createElement"]
      161 GETUPVAL                         R17 16
      162 GETTABLEKS                       R16 R17 K32 ["Provider"]
      164 DUPTABLE                         R17 K34 [{"value"}]
      165 DUPTABLE                         R18 K36 [{"colorMode"}]
      166 GETTABLEKS                       R20 R4 K28 ["container"]
      168 GETTABLEKS                       R19 R20 K35 ["colorMode"]
      170 SETTABLEKS                       R19 R18 K35 ["colorMode"]
      172 SETTABLEKS                       R18 R17 K33 ["value"]
      174 DUPTABLE                         R18 K41 [{"Icon", "Content", "Actions", "Close"}]
      175 GETUPVAL                         R20 4
      176 GETTABLEKS                       R19 R20 K11 ["createElement"]
      178 GETUPVAL                         R20 17
      179 DUPTABLE                         R21 K45 [{"LayoutOrder", "name", "size", "variant", "style", "testId"}]
      180 LOADN                            R22 1
      181 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      183 GETUPVAL                         R23 18
      184 GETTABLEKS                       R24 R2 K1 ["severity"]
      186 GETTABLE                         R22 R23 R24
      187 SETTABLEKS                       R22 R21 K42 ["name"]
      189 GETUPVAL                         R23 19
      190 GETTABLEKS                       R22 R23 K46 ["Large"]
      192 SETTABLEKS                       R22 R21 K43 ["size"]
      194 GETUPVAL                         R23 20
      195 GETTABLEKS                       R22 R23 K47 ["Filled"]
      197 SETTABLEKS                       R22 R21 K0 ["variant"]
      199 GETTABLEKS                       R23 R4 K48 ["icon"]
      201 GETTABLEKS                       R22 R23 K44 ["style"]
      203 SETTABLEKS                       R22 R21 K44 ["style"]
      205 LOADK                            R23 K49 ["%*--icon"]
      206 GETTABLEKS                       R25 R2 K8 ["testId"]
      208 NAMECALL                         R23 R23 K25 ["format"]
      210 CALL                             R23 2 1
      211 MOVE                             R22 R23
      212 SETTABLEKS                       R22 R21 K8 ["testId"]
      214 CALL                             R19 2 1
      215 SETTABLEKS                       R19 R18 K37 ["Icon"]
      217 GETUPVAL                         R20 4
      218 GETTABLEKS                       R19 R20 K11 ["createElement"]
      220 GETUPVAL                         R20 14
      221 DUPTABLE                         R21 K50 [{"LayoutOrder", "tag", "testId"}]
      222 LOADN                            R22 2
      223 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      225 NEWTABLE                         R22 4 0
      227 LOADB                            R23 1
      228 SETTABLEKS                       R23 R22 K51 ["fill auto-xy"]
      230 SETTABLEKS                       R9 R22 K52 ["col"]
      232 NOT                              R23 R9
      233 SETTABLEKS                       R23 R22 K53 ["row"]
      235 SETTABLEKS                       R22 R21 K12 ["tag"]
      237 LOADK                            R23 K54 ["%*--content"]
      238 GETTABLEKS                       R25 R2 K8 ["testId"]
      240 NAMECALL                         R23 R23 K25 ["format"]
      242 CALL                             R23 2 1
      243 MOVE                             R22 R23
      244 SETTABLEKS                       R22 R21 K8 ["testId"]
      246 DUPTABLE                         R22 K56 [{"Text"}]
      247 GETUPVAL                         R24 4
      248 GETTABLEKS                       R23 R24 K11 ["createElement"]
      250 GETUPVAL                         R24 14
      251 DUPTABLE                         R25 K57 [{"LayoutOrder", "tag"}]
      252 LOADN                            R26 2
      253 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      255 LOADK                            R26 K58 ["col auto-xy"]
      256 SETTABLEKS                       R26 R25 K12 ["tag"]
      258 DUPTABLE                         R26 K61 [{"Title", "Description", "Actions"}]
      259 GETUPVAL                         R28 4
      260 GETTABLEKS                       R27 R28 K11 ["createElement"]
      262 GETUPVAL                         R28 21
      263 DUPTABLE                         R29 K63 [{"Text", "textStyle", "tag", "LayoutOrder", "testId"}]
      264 GETTABLEKS                       R30 R2 K64 ["title"]
      266 SETTABLEKS                       R30 R29 K55 ["Text"]
      268 GETTABLEKS                       R31 R4 K64 ["title"]
      270 GETTABLEKS                       R30 R31 K44 ["style"]
      272 SETTABLEKS                       R30 R29 K62 ["textStyle"]
      274 GETTABLEKS                       R31 R4 K64 ["title"]
      276 GETTABLEKS                       R30 R31 K12 ["tag"]
      278 SETTABLEKS                       R30 R29 K12 ["tag"]
      280 LOADN                            R30 1
      281 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      283 LOADK                            R31 K65 ["%*--title"]
      284 GETTABLEKS                       R33 R2 K8 ["testId"]
      286 NAMECALL                         R31 R31 K25 ["format"]
      288 CALL                             R31 2 1
      289 MOVE                             R30 R31
      290 SETTABLEKS                       R30 R29 K8 ["testId"]
      292 CALL                             R27 2 1
      293 SETTABLEKS                       R27 R26 K59 ["Title"]
      295 GETTABLEKS                       R28 R2 K29 ["description"]
      297 JUMPIFNOT                        R28 ; [+35]
      298 GETUPVAL                         R28 4
      299 GETTABLEKS                       R27 R28 K11 ["createElement"]
      301 GETUPVAL                         R28 21
      302 DUPTABLE                         R29 K63 [{"Text", "textStyle", "tag", "LayoutOrder", "testId"}]
      303 GETTABLEKS                       R30 R2 K29 ["description"]
      305 SETTABLEKS                       R30 R29 K55 ["Text"]
      307 GETTABLEKS                       R31 R4 K29 ["description"]
      309 GETTABLEKS                       R30 R31 K44 ["style"]
      311 SETTABLEKS                       R30 R29 K62 ["textStyle"]
      313 GETTABLEKS                       R31 R4 K29 ["description"]
      315 GETTABLEKS                       R30 R31 K12 ["tag"]
      317 SETTABLEKS                       R30 R29 K12 ["tag"]
      319 LOADN                            R30 2
      320 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      322 LOADK                            R31 K66 ["%*--description"]
      323 GETTABLEKS                       R33 R2 K8 ["testId"]
      325 NAMECALL                         R31 R31 K25 ["format"]
      327 CALL                             R31 2 1
      328 MOVE                             R30 R31
      329 SETTABLEKS                       R30 R29 K8 ["testId"]
      331 CALL                             R27 2 1
      332 JUMP                             ; [+1]
      333 LOADNIL                          R27
      334 SETTABLEKS                       R27 R26 K60 ["Description"]
      336 JUMPIFNOT                        R9 ; [+8]
      337 GETUPVAL                         R29 8
      338 GETTABLEKS                       R28 R29 K10 ["FoundationSystemBannerUseSharedAlertActions"]
      340 JUMPIFNOT                        R28 ; [+2]
      341 MOVE                             R27 R10
      342 JUMP                             ; [+3]
      343 MOVE                             R27 R11
      344 JUMP                             ; [+1]
      345 LOADNIL                          R27
      346 SETTABLEKS                       R27 R26 K39 ["Actions"]
      348 CALL                             R23 3 1
      349 SETTABLEKS                       R23 R22 K55 ["Text"]
      351 CALL                             R19 3 1
      352 SETTABLEKS                       R19 R18 K38 ["Content"]
      354 JUMPIF                           R9 ; [+8]
      355 GETUPVAL                         R21 8
      356 GETTABLEKS                       R20 R21 K10 ["FoundationSystemBannerUseSharedAlertActions"]
      358 JUMPIFNOT                        R20 ; [+2]
      359 MOVE                             R19 R10
      360 JUMP                             ; [+3]
      361 MOVE                             R19 R11
      362 JUMP                             ; [+1]
      363 LOADNIL                          R19
      364 SETTABLEKS                       R19 R18 K39 ["Actions"]
      366 GETTABLEKS                       R20 R2 K67 ["onClose"]
      368 JUMPIFEQKNIL                     R20 ; [+34]
      370 GETUPVAL                         R20 4
      371 GETTABLEKS                       R19 R20 K11 ["createElement"]
      373 GETUPVAL                         R20 22
      374 DUPTABLE                         R21 K69 [{"onActivated", "size", "variant", "LayoutOrder", "testId"}]
      375 GETTABLEKS                       R22 R2 K67 ["onClose"]
      377 SETTABLEKS                       R22 R21 K68 ["onActivated"]
      379 GETUPVAL                         R23 12
      380 GETTABLEKS                       R22 R23 K5 ["Small"]
      382 SETTABLEKS                       R22 R21 K43 ["size"]
      384 GETUPVAL                         R23 23
      385 GETTABLEKS                       R22 R23 K70 ["Utility"]
      387 SETTABLEKS                       R22 R21 K0 ["variant"]
      389 LOADN                            R22 4
      390 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      392 LOADK                            R23 K71 ["%*--close"]
      393 GETTABLEKS                       R25 R2 K8 ["testId"]
      395 NAMECALL                         R23 R23 K25 ["format"]
      397 CALL                             R23 2 1
      398 MOVE                             R22 R23
      399 SETTABLEKS                       R22 R21 K8 ["testId"]
      401 CALL                             R19 2 1
      402 JUMP                             ; [+1]
      403 LOADNIL                          R19
      404 SETTABLEKS                       R19 R18 K40 ["Close"]
      406 CALL                             R15 3 -1
      407 CALL                             R12 -1 -1
      408 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["AlertActions"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R9 R0 K10 ["Components"]
       35 GETTABLEKS                       R8 R9 K11 ["AlertActions"]
       37 GETTABLEKS                       R7 R8 K12 ["AlertConstants"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["AlertSeverity"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R10 K15 ["AlertVariant"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K13 ["Enums"]
       58 GETTABLEKS                       R10 R11 K16 ["Breakpoint"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R1 K17 ["BuilderIcons"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Components"]
       70 GETTABLEKS                       R12 R13 K18 ["Button"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K13 ["Enums"]
       77 GETTABLEKS                       R13 R14 K19 ["ButtonVariant"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K10 ["Components"]
       84 GETTABLEKS                       R14 R15 K20 ["CloseAffordance"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R16 R0 K13 ["Enums"]
       91 GETTABLEKS                       R15 R16 K21 ["CloseAffordanceVariant"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R17 R0 K22 ["Utility"]
       98 GETTABLEKS                       R16 R17 K23 ["Flags"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R18 R0 K10 ["Components"]
      105 GETTABLEKS                       R17 R18 K24 ["Icon"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETTABLEKS                       R19 R0 K13 ["Enums"]
      112 GETTABLEKS                       R18 R19 K25 ["IconSize"]
      114 CALL                             R17 1 1
      115 GETTABLEKS                       R18 R10 K26 ["IconVariant"]
      117 GETIMPORT                        R19 K6 [require]
      119 GETTABLEKS                       R21 R0 K13 ["Enums"]
      121 GETTABLEKS                       R20 R21 K27 ["InputSize"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETTABLEKS                       R22 R0 K22 ["Utility"]
      128 GETTABLEKS                       R21 R22 K28 ["Logger"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R24 R0 K29 ["Providers"]
      135 GETTABLEKS                       R23 R24 K30 ["Style"]
      137 GETTABLEKS                       R22 R23 K31 ["PresentationContext"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K6 [require]
      142 GETTABLEKS                       R24 R0 K10 ["Components"]
      144 GETTABLEKS                       R23 R24 K32 ["Text"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K6 [require]
      149 GETTABLEKS                       R25 R0 K10 ["Components"]
      151 GETTABLEKS                       R24 R25 K33 ["Types"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K6 [require]
      156 GETTABLEKS                       R26 R0 K10 ["Components"]
      158 GETTABLEKS                       R25 R26 K34 ["View"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K6 [require]
      163 GETTABLEKS                       R29 R0 K29 ["Providers"]
      165 GETTABLEKS                       R28 R29 K35 ["Responsive"]
      167 GETTABLEKS                       R27 R28 K36 ["Hooks"]
      169 GETTABLEKS                       R26 R27 K37 ["useBreakpoint"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K6 [require]
      174 GETTABLEKS                       R29 R0 K29 ["Providers"]
      176 GETTABLEKS                       R28 R29 K30 ["Style"]
      178 GETTABLEKS                       R27 R28 K38 ["useTokens"]
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K6 [require]
      183 GETTABLEKS                       R29 R0 K22 ["Utility"]
      185 GETTABLEKS                       R28 R29 K39 ["withCommonProps"]
      187 CALL                             R27 1 1
      188 GETIMPORT                        R28 K6 [require]
      190 GETTABLEKS                       R30 R0 K22 ["Utility"]
      192 GETTABLEKS                       R29 R30 K40 ["withDefaults"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K6 [require]
      197 GETIMPORT                        R32 K1 [script]
      199 GETTABLEKS                       R31 R32 K4 ["Parent"]
      201 GETTABLEKS                       R30 R31 K41 ["useSystemBannerVariants"]
      203 CALL                             R29 1 1
      204 GETTABLEKS                       R31 R15 K42 ["FoundationSystemBannerUseSharedAlertActions"]
      206 JUMPIFNOT                        R31 ; [+3]
      207 GETTABLEKS                       R30 R6 K43 ["SEVERITY_TO_ICON"]
      209 JUMP                             ; [+18]
      210 NEWTABLE                         R30 4 0
      212 GETTABLEKS                       R31 R7 K44 ["Info"]
      214 LOADK                            R32 K45 ["circle-i"]
      215 SETTABLE                         R32 R30 R31
      216 GETTABLEKS                       R31 R7 K46 ["Warning"]
      218 LOADK                            R32 K47 ["triangle-exclamation"]
      219 SETTABLE                         R32 R30 R31
      220 GETTABLEKS                       R31 R7 K48 ["Success"]
      222 LOADK                            R32 K49 ["circle-check"]
      223 SETTABLE                         R32 R30 R31
      224 GETTABLEKS                       R31 R7 K50 ["Error"]
      226 LOADK                            R32 K51 ["circle-x"]
      227 SETTABLE                         R32 R30 R31
      228 DUPTABLE                         R31 K54 [{"variant", "testId"}]
      229 GETTABLEKS                       R32 R8 K55 ["Standard"]
      231 SETTABLEKS                       R32 R31 K52 ["variant"]
      233 LOADK                            R32 K56 ["--foundation-system-banner"]
      234 SETTABLEKS                       R32 R31 K53 ["testId"]
      236 DUPCLOSURE                       R32 K57 [PROTO_1]
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R31
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R9
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R5
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R19
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R27
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R30
      256 CAPTURE                          VAL R17
      257 CAPTURE                          VAL R18
      258 CAPTURE                          VAL R22
      259 CAPTURE                          VAL R13
      260 CAPTURE                          VAL R14
      261 GETTABLEKS                       R33 R3 K58 ["memo"]
      263 GETTABLEKS                       R34 R3 K59 ["forwardRef"]
      265 MOVE                             R35 R32
      266 CALL                             R34 1 -1
      267 CALL                             R33 -1 -1
      268 RETURN                           R33 -1
