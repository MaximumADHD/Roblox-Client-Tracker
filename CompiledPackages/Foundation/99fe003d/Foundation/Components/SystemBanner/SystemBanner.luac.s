PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{["actions"], ["testId"], ["LayoutOrder"] = 3, ["tag"], ["padding"]}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["actions"]
        8 SETTABLEKS                       R3 R2 K1 ["actions"]
       10 LOADK                            R4 K8 ["%*--actions"]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["testId"]
       14 NAMECALL                         R4 R4 K9 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 SETTABLEKS                       R3 R2 K2 ["testId"]
       20 NEWTABLE                         R3 4 0
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K10 ["row gap-small auto-xy"]
       25 GETUPVAL                         R4 3
       26 SETTABLEKS                       R4 R3 K11 ["align-x-left"]
       28 GETUPVAL                         R5 3
       29 NOT                              R4 R5
       30 SETTABLEKS                       R4 R3 K12 ["align-x-right"]
       32 SETTABLEKS                       R3 R2 K5 ["tag"]
       34 GETUPVAL                         R4 3
       35 JUMPIFNOT                        R4 ; [+13]
       36 DUPTABLE                         R3 K14 [{"top"}]
       37 GETIMPORT                        R4 K17 [UDim.new]
       39 LOADN                            R5 0
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R6 R6 K18 ["Gap"]
       43 GETTABLEKS                       R6 R6 K19 ["Small"]
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R3 K13 ["top"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R3
       50 SETTABLEKS                       R3 R2 K6 ["padding"]
       52 CALL                             R0 2 1
       53 RETURN                           R0 1

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
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K2 ["useState"]
       16 LOADNIL                          R6
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R7 R7 K3 ["useComposedRef"]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 6
       25 MOVE                             R9 R5
       26 CALL                             R8 1 1
       27 GETUPVAL                         R10 7
       28 GETTABLEKS                       R10 R10 K4 ["FoundationSystemBannerWrapActionsOnXSmall"]
       30 JUMPIFNOT                        R10 ; [+8]
       31 GETUPVAL                         R10 8
       32 GETTABLEKS                       R10 R10 K5 ["XSmall"]
       34 JUMPIFEQ                         R8 R10 ; [+2]
       36 LOADB                            R9 0 +1
       37 LOADB                            R9 1
       38 JUMP                             ; [+13]
       39 LOADB                            R9 1
       40 GETUPVAL                         R10 8
       41 GETTABLEKS                       R10 R10 K5 ["XSmall"]
       43 JUMPIFEQ                         R8 R10 ; [+8]
       45 GETUPVAL                         R10 8
       46 GETTABLEKS                       R10 R10 K6 ["Small"]
       48 JUMPIFEQ                         R8 R10 ; [+2]
       50 LOADB                            R9 0 +1
       51 LOADB                            R9 1
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       55 NEWCLOSURE                       R11 P0
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 NEWTABLE                         R12 0 4
       63 GETTABLEKS                       R13 R2 K8 ["actions"]
       65 GETTABLEKS                       R14 R2 K9 ["testId"]
       67 MOVE                             R15 R9
       68 GETTABLEKS                       R16 R3 K10 ["Gap"]
       70 GETTABLEKS                       R16 R16 K6 ["Small"]
       72 SETLIST                          R12 R13 4 [1]
       74 CALL                             R10 2 1
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R11 R11 K11 ["createElement"]
       78 GETUPVAL                         R12 10
       79 GETUPVAL                         R13 11
       80 MOVE                             R14 R2
       81 DUPTABLE                         R15 K14 [{"tag", "ref"}]
       82 NEWTABLE                         R16 4 0
       84 GETTABLEKS                       R17 R4 K15 ["container"]
       86 GETTABLEKS                       R17 R17 K12 ["tag"]
       88 LOADB                            R18 1
       89 SETTABLE                         R18 R16 R17
       90 GETUPVAL                         R18 7
       91 GETTABLEKS                       R18 R18 K16 ["FoundationSystemBannerOptionalTitle"]
       93 JUMPIFNOT                        R18 ; [+12]
       94 LOADB                            R17 1
       95 GETTABLEKS                       R18 R2 K17 ["title"]
       97 JUMPIFEQKS                       R18 K18 [""] ; [+14]
       99 GETTABLEKS                       R18 R2 K19 ["description"]
      101 JUMPIFEQKNIL                     R18 ; [+2]
      103 LOADB                            R17 0 +1
      104 LOADB                            R17 1
      105 JUMP                             ; [+6]
      106 GETTABLEKS                       R18 R2 K19 ["description"]
      108 JUMPIFEQKNIL                     R18 ; [+2]
      110 LOADB                            R17 0 +1
      111 LOADB                            R17 1
      112 SETTABLEKS                       R17 R16 K20 ["align-y-center"]
      114 GETUPVAL                         R18 7
      115 GETTABLEKS                       R18 R18 K16 ["FoundationSystemBannerOptionalTitle"]
      117 JUMPIFNOT                        R18 ; [+12]
      118 LOADB                            R17 0
      119 GETTABLEKS                       R18 R2 K17 ["title"]
      121 JUMPIFEQKS                       R18 K18 [""] ; [+14]
      123 GETTABLEKS                       R18 R2 K19 ["description"]
      125 JUMPIFNOTEQKNIL                  R18 ; [+2]
      127 LOADB                            R17 0 +1
      128 LOADB                            R17 1
      129 JUMP                             ; [+6]
      130 GETTABLEKS                       R18 R2 K19 ["description"]
      132 JUMPIFNOTEQKNIL                  R18 ; [+2]
      134 LOADB                            R17 0 +1
      135 LOADB                            R17 1
      136 SETTABLEKS                       R17 R16 K21 ["align-y-top"]
      138 SETTABLEKS                       R16 R15 K12 ["tag"]
      140 SETTABLEKS                       R7 R15 K13 ["ref"]
      142 CALL                             R13 2 1
      143 GETUPVAL                         R14 4
      144 GETTABLEKS                       R14 R14 K11 ["createElement"]
      146 GETUPVAL                         R15 12
      147 GETTABLEKS                       R15 R15 K22 ["Provider"]
      149 DUPTABLE                         R16 K24 [{"value"}]
      150 DUPTABLE                         R17 K26 [{"colorMode"}]
      151 GETTABLEKS                       R18 R4 K15 ["container"]
      153 GETTABLEKS                       R18 R18 K25 ["colorMode"]
      155 SETTABLEKS                       R18 R17 K25 ["colorMode"]
      157 SETTABLEKS                       R17 R16 K23 ["value"]
      159 DUPTABLE                         R17 K31 [{"Icon", "Content", "Actions", "Close"}]
      160 GETUPVAL                         R18 4
      161 GETTABLEKS                       R18 R18 K11 ["createElement"]
      163 GETUPVAL                         R19 13
      164 DUPTABLE                         R20 K37 [{["LayoutOrder"] = 1, ["name"], ["size"], [4], ["style"], ["testId"]}]
      165 GETUPVAL                         R22 14
      166 GETTABLEKS                       R23 R2 K1 ["severity"]
      168 GETTABLE                         R21 R22 R23
      169 SETTABLEKS                       R21 R20 K34 ["name"]
      171 GETUPVAL                         R21 15
      172 GETTABLEKS                       R21 R21 K38 ["Large"]
      174 SETTABLEKS                       R21 R20 K35 ["size"]
      176 GETUPVAL                         R21 16
      177 GETTABLEKS                       R21 R21 K39 ["Filled"]
      179 SETTABLEKS                       R21 R20 K0 ["variant"]
      181 GETTABLEKS                       R21 R4 K40 ["icon"]
      183 GETTABLEKS                       R21 R21 K36 ["style"]
      185 SETTABLEKS                       R21 R20 K36 ["style"]
      187 LOADK                            R22 K41 ["%*--icon"]
      188 GETTABLEKS                       R24 R2 K9 ["testId"]
      190 NAMECALL                         R22 R22 K42 ["format"]
      192 CALL                             R22 2 1
      193 MOVE                             R21 R22
      194 SETTABLEKS                       R21 R20 K9 ["testId"]
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K27 ["Icon"]
      199 GETUPVAL                         R18 4
      200 GETTABLEKS                       R18 R18 K11 ["createElement"]
      202 GETUPVAL                         R19 10
      203 DUPTABLE                         R20 K44 [{["LayoutOrder"] = 2, ["tag"], ["testId"]}]
      204 NEWTABLE                         R21 4 0
      206 LOADB                            R22 1
      207 SETTABLEKS                       R22 R21 K45 ["fill auto-xy"]
      209 SETTABLEKS                       R9 R21 K46 ["col"]
      211 NOT                              R22 R9
      212 SETTABLEKS                       R22 R21 K47 ["row"]
      214 SETTABLEKS                       R21 R20 K12 ["tag"]
      216 LOADK                            R22 K48 ["%*--content"]
      217 GETTABLEKS                       R24 R2 K9 ["testId"]
      219 NAMECALL                         R22 R22 K42 ["format"]
      221 CALL                             R22 2 1
      222 MOVE                             R21 R22
      223 SETTABLEKS                       R21 R20 K9 ["testId"]
      225 DUPTABLE                         R21 K50 [{"Text"}]
      226 GETUPVAL                         R22 4
      227 GETTABLEKS                       R22 R22 K11 ["createElement"]
      229 GETUPVAL                         R23 10
      230 DUPTABLE                         R24 K52 [{["LayoutOrder"] = 2, ["tag"] = "col auto-xy"}]
      231 DUPTABLE                         R25 K55 [{"Title", "Description", "Actions"}]
      232 GETUPVAL                         R27 7
      233 GETTABLEKS                       R27 R27 K16 ["FoundationSystemBannerOptionalTitle"]
      235 JUMPIFNOT                        R27 ; [+38]
      236 GETTABLEKS                       R27 R2 K17 ["title"]
      238 JUMPIFEQKS                       R27 K18 [""] ; [+33]
      240 GETUPVAL                         R26 4
      241 GETTABLEKS                       R26 R26 K11 ["createElement"]
      243 GETUPVAL                         R27 17
      244 DUPTABLE                         R28 K57 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      245 GETTABLEKS                       R29 R2 K17 ["title"]
      247 SETTABLEKS                       R29 R28 K49 ["Text"]
      249 GETTABLEKS                       R29 R4 K17 ["title"]
      251 GETTABLEKS                       R29 R29 K36 ["style"]
      253 SETTABLEKS                       R29 R28 K56 ["textStyle"]
      255 GETTABLEKS                       R29 R4 K17 ["title"]
      257 GETTABLEKS                       R29 R29 K12 ["tag"]
      259 SETTABLEKS                       R29 R28 K12 ["tag"]
      261 LOADK                            R30 K58 ["%*--title"]
      262 GETTABLEKS                       R32 R2 K9 ["testId"]
      264 NAMECALL                         R30 R30 K42 ["format"]
      266 CALL                             R30 2 1
      267 MOVE                             R29 R30
      268 SETTABLEKS                       R29 R28 K9 ["testId"]
      270 CALL                             R26 2 1
      271 JUMP                             ; [+33]
      272 LOADNIL                          R26
      273 JUMP                             ; [+31]
      274 GETUPVAL                         R26 4
      275 GETTABLEKS                       R26 R26 K11 ["createElement"]
      277 GETUPVAL                         R27 17
      278 DUPTABLE                         R28 K57 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      279 GETTABLEKS                       R29 R2 K17 ["title"]
      281 SETTABLEKS                       R29 R28 K49 ["Text"]
      283 GETTABLEKS                       R29 R4 K17 ["title"]
      285 GETTABLEKS                       R29 R29 K36 ["style"]
      287 SETTABLEKS                       R29 R28 K56 ["textStyle"]
      289 GETTABLEKS                       R29 R4 K17 ["title"]
      291 GETTABLEKS                       R29 R29 K12 ["tag"]
      293 SETTABLEKS                       R29 R28 K12 ["tag"]
      295 LOADK                            R30 K58 ["%*--title"]
      296 GETTABLEKS                       R32 R2 K9 ["testId"]
      298 NAMECALL                         R30 R30 K42 ["format"]
      300 CALL                             R30 2 1
      301 MOVE                             R29 R30
      302 SETTABLEKS                       R29 R28 K9 ["testId"]
      304 CALL                             R26 2 1
      305 SETTABLEKS                       R26 R25 K53 ["Title"]
      307 GETTABLEKS                       R27 R2 K19 ["description"]
      309 JUMPIFNOT                        R27 ; [+32]
      310 GETUPVAL                         R26 4
      311 GETTABLEKS                       R26 R26 K11 ["createElement"]
      313 GETUPVAL                         R27 17
      314 DUPTABLE                         R28 K59 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 2, ["testId"]}]
      315 GETTABLEKS                       R29 R2 K19 ["description"]
      317 SETTABLEKS                       R29 R28 K49 ["Text"]
      319 GETTABLEKS                       R29 R4 K19 ["description"]
      321 GETTABLEKS                       R29 R29 K36 ["style"]
      323 SETTABLEKS                       R29 R28 K56 ["textStyle"]
      325 GETTABLEKS                       R29 R4 K19 ["description"]
      327 GETTABLEKS                       R29 R29 K12 ["tag"]
      329 SETTABLEKS                       R29 R28 K12 ["tag"]
      331 LOADK                            R30 K60 ["%*--description"]
      332 GETTABLEKS                       R32 R2 K9 ["testId"]
      334 NAMECALL                         R30 R30 K42 ["format"]
      336 CALL                             R30 2 1
      337 MOVE                             R29 R30
      338 SETTABLEKS                       R29 R28 K9 ["testId"]
      340 CALL                             R26 2 1
      341 JUMP                             ; [+1]
      342 LOADNIL                          R26
      343 SETTABLEKS                       R26 R25 K54 ["Description"]
      345 JUMPIFNOT                        R9 ; [+2]
      346 MOVE                             R26 R10
      347 JUMP                             ; [+1]
      348 LOADNIL                          R26
      349 SETTABLEKS                       R26 R25 K29 ["Actions"]
      351 CALL                             R22 3 1
      352 SETTABLEKS                       R22 R21 K49 ["Text"]
      354 CALL                             R18 3 1
      355 SETTABLEKS                       R18 R17 K28 ["Content"]
      357 JUMPIF                           R9 ; [+2]
      358 MOVE                             R18 R10
      359 JUMP                             ; [+1]
      360 LOADNIL                          R18
      361 SETTABLEKS                       R18 R17 K29 ["Actions"]
      363 GETTABLEKS                       R19 R2 K61 ["onClose"]
      365 JUMPIFEQKNIL                     R19 ; [+31]
      367 GETUPVAL                         R18 4
      368 GETTABLEKS                       R18 R18 K11 ["createElement"]
      370 GETUPVAL                         R19 18
      371 DUPTABLE                         R20 K64 [{["onActivated"], ["size"], [3], ["LayoutOrder"] = 4, ["testId"]}]
      372 GETTABLEKS                       R21 R2 K61 ["onClose"]
      374 SETTABLEKS                       R21 R20 K62 ["onActivated"]
      376 GETUPVAL                         R21 19
      377 GETTABLEKS                       R21 R21 K6 ["Small"]
      379 SETTABLEKS                       R21 R20 K35 ["size"]
      381 GETUPVAL                         R21 20
      382 GETTABLEKS                       R21 R21 K65 ["Utility"]
      384 SETTABLEKS                       R21 R20 K0 ["variant"]
      386 LOADK                            R22 K66 ["%*--close"]
      387 GETTABLEKS                       R24 R2 K9 ["testId"]
      389 NAMECALL                         R22 R22 K42 ["format"]
      391 CALL                             R22 2 1
      392 MOVE                             R21 R22
      393 SETTABLEKS                       R21 R20 K9 ["testId"]
      395 CALL                             R18 2 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R18
      398 SETTABLEKS                       R18 R17 K30 ["Close"]
      400 CALL                             R14 3 -1
      401 CALL                             R11 -1 -1
      402 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["AlertActions"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K10 ["AlertActions"]
       32 GETTABLEKS                       R6 R6 K11 ["AlertConstants"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["AlertSeverity"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["AlertVariant"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Enums"]
       53 GETTABLEKS                       R9 R9 K15 ["Breakpoint"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R1 K16 ["BuilderIcons"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K12 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["ButtonVariant"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["CloseAffordance"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K12 ["Enums"]
       79 GETTABLEKS                       R13 R13 K19 ["CloseAffordanceVariant"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K20 ["Utility"]
       86 GETTABLEKS                       R14 R14 K21 ["Flags"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K9 ["Components"]
       93 GETTABLEKS                       R15 R15 K22 ["Icon"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K12 ["Enums"]
      100 GETTABLEKS                       R16 R16 K23 ["IconSize"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R16 R9 K24 ["IconVariant"]
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R0 K12 ["Enums"]
      109 GETTABLEKS                       R18 R18 K25 ["InputSize"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K26 ["Providers"]
      116 GETTABLEKS                       R19 R19 K27 ["Style"]
      118 GETTABLEKS                       R19 R19 K28 ["PresentationContext"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K6 [require]
      123 GETTABLEKS                       R20 R0 K9 ["Components"]
      125 GETTABLEKS                       R20 R20 K29 ["Text"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R21 R0 K9 ["Components"]
      132 GETTABLEKS                       R21 R21 K30 ["Types"]
      134 CALL                             R20 1 1
      135 GETIMPORT                        R21 K6 [require]
      137 GETTABLEKS                       R22 R0 K9 ["Components"]
      139 GETTABLEKS                       R22 R22 K31 ["View"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K6 [require]
      144 GETTABLEKS                       R23 R0 K26 ["Providers"]
      146 GETTABLEKS                       R23 R23 K32 ["Responsive"]
      148 GETTABLEKS                       R23 R23 K33 ["Hooks"]
      150 GETTABLEKS                       R23 R23 K34 ["useBreakpoint"]
      152 CALL                             R22 1 1
      153 GETIMPORT                        R23 K6 [require]
      155 GETTABLEKS                       R24 R0 K26 ["Providers"]
      157 GETTABLEKS                       R24 R24 K27 ["Style"]
      159 GETTABLEKS                       R24 R24 K35 ["useTokens"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K6 [require]
      164 GETTABLEKS                       R25 R0 K20 ["Utility"]
      166 GETTABLEKS                       R25 R25 K36 ["withCommonProps"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K6 [require]
      171 GETTABLEKS                       R26 R0 K20 ["Utility"]
      173 GETTABLEKS                       R26 R26 K37 ["withDefaults"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K6 [require]
      178 GETIMPORT                        R27 K1 [script]
      180 GETTABLEKS                       R27 R27 K4 ["Parent"]
      182 GETTABLEKS                       R27 R27 K38 ["useSystemBannerVariants"]
      184 CALL                             R26 1 1
      185 GETTABLEKS                       R27 R5 K39 ["SEVERITY_TO_ICON"]
      187 DUPTABLE                         R28 K43 [{["variant"], ["testId"] = "--foundation-system-banner"}]
      188 GETTABLEKS                       R29 R7 K44 ["Standard"]
      190 SETTABLEKS                       R29 R28 K40 ["variant"]
      192 DUPCLOSURE                       R29 K45 [PROTO_1]
      193 CAPTURE                          VAL R25
      194 CAPTURE                          VAL R28
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R26
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R27
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R12
      214 GETTABLEKS                       R30 R2 K46 ["memo"]
      216 GETTABLEKS                       R31 R2 K47 ["forwardRef"]
      218 MOVE                             R32 R29
      219 CALL                             R31 1 -1
      220 CALL                             R30 -1 -1
      221 RETURN                           R30 -1
