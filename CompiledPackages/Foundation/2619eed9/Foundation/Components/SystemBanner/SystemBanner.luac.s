PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{"actions", "testId", "LayoutOrder", "tag", "padding"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["actions"]
        8 SETTABLEKS                       R3 R2 K1 ["actions"]
       10 LOADK                            R4 K7 ["%*--actions"]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["testId"]
       14 NAMECALL                         R4 R4 K8 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 SETTABLEKS                       R3 R2 K2 ["testId"]
       20 LOADN                            R3 3
       21 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       23 NEWTABLE                         R3 4 0
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K9 ["row gap-small auto-xy"]
       28 GETUPVAL                         R4 3
       29 SETTABLEKS                       R4 R3 K10 ["align-x-left"]
       31 GETUPVAL                         R5 3
       32 NOT                              R4 R5
       33 SETTABLEKS                       R4 R3 K11 ["align-x-right"]
       35 SETTABLEKS                       R3 R2 K4 ["tag"]
       37 GETUPVAL                         R4 3
       38 JUMPIFNOT                        R4 ; [+13]
       39 DUPTABLE                         R3 K13 [{"top"}]
       40 GETIMPORT                        R4 K16 [UDim.new]
       42 LOADN                            R5 0
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K17 ["Gap"]
       46 GETTABLEKS                       R6 R6 K18 ["Small"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K12 ["top"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R3
       53 SETTABLEKS                       R3 R2 K5 ["padding"]
       55 CALL                             R0 2 1
       56 RETURN                           R0 1

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
       27 LOADB                            R9 1
       28 GETUPVAL                         R10 7
       29 GETTABLEKS                       R10 R10 K4 ["XSmall"]
       31 JUMPIFEQ                         R8 R10 ; [+8]
       33 GETUPVAL                         R10 7
       34 GETTABLEKS                       R10 R10 K5 ["Small"]
       36 JUMPIFEQ                         R8 R10 ; [+2]
       38 LOADB                            R9 0 +1
       39 LOADB                            R9 1
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R3
       49 NEWTABLE                         R12 0 4
       51 GETTABLEKS                       R13 R2 K7 ["actions"]
       53 GETTABLEKS                       R14 R2 K8 ["testId"]
       55 MOVE                             R15 R9
       56 GETTABLEKS                       R16 R3 K9 ["Gap"]
       58 GETTABLEKS                       R16 R16 K5 ["Small"]
       60 SETLIST                          R12 R13 4 [1]
       62 CALL                             R10 2 1
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R11 R11 K10 ["createElement"]
       66 GETUPVAL                         R12 9
       67 GETUPVAL                         R13 10
       68 MOVE                             R14 R2
       69 DUPTABLE                         R15 K13 [{"tag", "ref"}]
       70 NEWTABLE                         R16 4 0
       72 GETTABLEKS                       R17 R4 K14 ["container"]
       74 GETTABLEKS                       R17 R17 K11 ["tag"]
       76 LOADB                            R18 1
       77 SETTABLE                         R18 R16 R17
       78 GETUPVAL                         R18 11
       79 GETTABLEKS                       R18 R18 K15 ["FoundationSystemBannerOptionalTitle"]
       81 JUMPIFNOT                        R18 ; [+12]
       82 LOADB                            R17 1
       83 GETTABLEKS                       R18 R2 K16 ["title"]
       85 JUMPIFEQKS                       R18 K17 [""] ; [+14]
       87 GETTABLEKS                       R18 R2 K18 ["description"]
       89 JUMPIFEQKNIL                     R18 ; [+2]
       91 LOADB                            R17 0 +1
       92 LOADB                            R17 1
       93 JUMP                             ; [+6]
       94 GETTABLEKS                       R18 R2 K18 ["description"]
       96 JUMPIFEQKNIL                     R18 ; [+2]
       98 LOADB                            R17 0 +1
       99 LOADB                            R17 1
      100 SETTABLEKS                       R17 R16 K19 ["align-y-center"]
      102 GETUPVAL                         R18 11
      103 GETTABLEKS                       R18 R18 K15 ["FoundationSystemBannerOptionalTitle"]
      105 JUMPIFNOT                        R18 ; [+12]
      106 LOADB                            R17 0
      107 GETTABLEKS                       R18 R2 K16 ["title"]
      109 JUMPIFEQKS                       R18 K17 [""] ; [+14]
      111 GETTABLEKS                       R18 R2 K18 ["description"]
      113 JUMPIFNOTEQKNIL                  R18 ; [+2]
      115 LOADB                            R17 0 +1
      116 LOADB                            R17 1
      117 JUMP                             ; [+6]
      118 GETTABLEKS                       R18 R2 K18 ["description"]
      120 JUMPIFNOTEQKNIL                  R18 ; [+2]
      122 LOADB                            R17 0 +1
      123 LOADB                            R17 1
      124 SETTABLEKS                       R17 R16 K20 ["align-y-top"]
      126 SETTABLEKS                       R16 R15 K11 ["tag"]
      128 SETTABLEKS                       R7 R15 K12 ["ref"]
      130 CALL                             R13 2 1
      131 GETUPVAL                         R14 4
      132 GETTABLEKS                       R14 R14 K10 ["createElement"]
      134 GETUPVAL                         R15 12
      135 GETTABLEKS                       R15 R15 K21 ["Provider"]
      137 DUPTABLE                         R16 K23 [{"value"}]
      138 DUPTABLE                         R17 K25 [{"colorMode"}]
      139 GETTABLEKS                       R18 R4 K14 ["container"]
      141 GETTABLEKS                       R18 R18 K24 ["colorMode"]
      143 SETTABLEKS                       R18 R17 K24 ["colorMode"]
      145 SETTABLEKS                       R17 R16 K22 ["value"]
      147 DUPTABLE                         R17 K30 [{"Icon", "Content", "Actions", "Close"}]
      148 GETUPVAL                         R18 4
      149 GETTABLEKS                       R18 R18 K10 ["createElement"]
      151 GETUPVAL                         R19 13
      152 DUPTABLE                         R20 K35 [{"LayoutOrder", "name", "size", "variant", "style", "testId"}]
      153 LOADN                            R21 1
      154 SETTABLEKS                       R21 R20 K31 ["LayoutOrder"]
      156 GETUPVAL                         R22 14
      157 GETTABLEKS                       R23 R2 K1 ["severity"]
      159 GETTABLE                         R21 R22 R23
      160 SETTABLEKS                       R21 R20 K32 ["name"]
      162 GETUPVAL                         R21 15
      163 GETTABLEKS                       R21 R21 K36 ["Large"]
      165 SETTABLEKS                       R21 R20 K33 ["size"]
      167 GETUPVAL                         R21 16
      168 GETTABLEKS                       R21 R21 K37 ["Filled"]
      170 SETTABLEKS                       R21 R20 K0 ["variant"]
      172 GETTABLEKS                       R21 R4 K38 ["icon"]
      174 GETTABLEKS                       R21 R21 K34 ["style"]
      176 SETTABLEKS                       R21 R20 K34 ["style"]
      178 LOADK                            R22 K39 ["%*--icon"]
      179 GETTABLEKS                       R24 R2 K8 ["testId"]
      181 NAMECALL                         R22 R22 K40 ["format"]
      183 CALL                             R22 2 1
      184 MOVE                             R21 R22
      185 SETTABLEKS                       R21 R20 K8 ["testId"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K26 ["Icon"]
      190 GETUPVAL                         R18 4
      191 GETTABLEKS                       R18 R18 K10 ["createElement"]
      193 GETUPVAL                         R19 9
      194 DUPTABLE                         R20 K41 [{"LayoutOrder", "tag", "testId"}]
      195 LOADN                            R21 2
      196 SETTABLEKS                       R21 R20 K31 ["LayoutOrder"]
      198 NEWTABLE                         R21 4 0
      200 LOADB                            R22 1
      201 SETTABLEKS                       R22 R21 K42 ["fill auto-xy"]
      203 SETTABLEKS                       R9 R21 K43 ["col"]
      205 NOT                              R22 R9
      206 SETTABLEKS                       R22 R21 K44 ["row"]
      208 SETTABLEKS                       R21 R20 K11 ["tag"]
      210 LOADK                            R22 K45 ["%*--content"]
      211 GETTABLEKS                       R24 R2 K8 ["testId"]
      213 NAMECALL                         R22 R22 K40 ["format"]
      215 CALL                             R22 2 1
      216 MOVE                             R21 R22
      217 SETTABLEKS                       R21 R20 K8 ["testId"]
      219 DUPTABLE                         R21 K47 [{"Text"}]
      220 GETUPVAL                         R22 4
      221 GETTABLEKS                       R22 R22 K10 ["createElement"]
      223 GETUPVAL                         R23 9
      224 DUPTABLE                         R24 K48 [{"LayoutOrder", "tag"}]
      225 LOADN                            R25 2
      226 SETTABLEKS                       R25 R24 K31 ["LayoutOrder"]
      228 LOADK                            R25 K49 ["col auto-xy"]
      229 SETTABLEKS                       R25 R24 K11 ["tag"]
      231 DUPTABLE                         R25 K52 [{"Title", "Description", "Actions"}]
      232 GETUPVAL                         R27 11
      233 GETTABLEKS                       R27 R27 K15 ["FoundationSystemBannerOptionalTitle"]
      235 JUMPIFNOT                        R27 ; [+41]
      236 GETTABLEKS                       R27 R2 K16 ["title"]
      238 JUMPIFEQKS                       R27 K17 [""] ; [+36]
      240 GETUPVAL                         R26 4
      241 GETTABLEKS                       R26 R26 K10 ["createElement"]
      243 GETUPVAL                         R27 17
      244 DUPTABLE                         R28 K54 [{"Text", "textStyle", "tag", "LayoutOrder", "testId"}]
      245 GETTABLEKS                       R29 R2 K16 ["title"]
      247 SETTABLEKS                       R29 R28 K46 ["Text"]
      249 GETTABLEKS                       R29 R4 K16 ["title"]
      251 GETTABLEKS                       R29 R29 K34 ["style"]
      253 SETTABLEKS                       R29 R28 K53 ["textStyle"]
      255 GETTABLEKS                       R29 R4 K16 ["title"]
      257 GETTABLEKS                       R29 R29 K11 ["tag"]
      259 SETTABLEKS                       R29 R28 K11 ["tag"]
      261 LOADN                            R29 1
      262 SETTABLEKS                       R29 R28 K31 ["LayoutOrder"]
      264 LOADK                            R30 K55 ["%*--title"]
      265 GETTABLEKS                       R32 R2 K8 ["testId"]
      267 NAMECALL                         R30 R30 K40 ["format"]
      269 CALL                             R30 2 1
      270 MOVE                             R29 R30
      271 SETTABLEKS                       R29 R28 K8 ["testId"]
      273 CALL                             R26 2 1
      274 JUMP                             ; [+36]
      275 LOADNIL                          R26
      276 JUMP                             ; [+34]
      277 GETUPVAL                         R26 4
      278 GETTABLEKS                       R26 R26 K10 ["createElement"]
      280 GETUPVAL                         R27 17
      281 DUPTABLE                         R28 K54 [{"Text", "textStyle", "tag", "LayoutOrder", "testId"}]
      282 GETTABLEKS                       R29 R2 K16 ["title"]
      284 SETTABLEKS                       R29 R28 K46 ["Text"]
      286 GETTABLEKS                       R29 R4 K16 ["title"]
      288 GETTABLEKS                       R29 R29 K34 ["style"]
      290 SETTABLEKS                       R29 R28 K53 ["textStyle"]
      292 GETTABLEKS                       R29 R4 K16 ["title"]
      294 GETTABLEKS                       R29 R29 K11 ["tag"]
      296 SETTABLEKS                       R29 R28 K11 ["tag"]
      298 LOADN                            R29 1
      299 SETTABLEKS                       R29 R28 K31 ["LayoutOrder"]
      301 LOADK                            R30 K55 ["%*--title"]
      302 GETTABLEKS                       R32 R2 K8 ["testId"]
      304 NAMECALL                         R30 R30 K40 ["format"]
      306 CALL                             R30 2 1
      307 MOVE                             R29 R30
      308 SETTABLEKS                       R29 R28 K8 ["testId"]
      310 CALL                             R26 2 1
      311 SETTABLEKS                       R26 R25 K50 ["Title"]
      313 GETTABLEKS                       R27 R2 K18 ["description"]
      315 JUMPIFNOT                        R27 ; [+35]
      316 GETUPVAL                         R26 4
      317 GETTABLEKS                       R26 R26 K10 ["createElement"]
      319 GETUPVAL                         R27 17
      320 DUPTABLE                         R28 K54 [{"Text", "textStyle", "tag", "LayoutOrder", "testId"}]
      321 GETTABLEKS                       R29 R2 K18 ["description"]
      323 SETTABLEKS                       R29 R28 K46 ["Text"]
      325 GETTABLEKS                       R29 R4 K18 ["description"]
      327 GETTABLEKS                       R29 R29 K34 ["style"]
      329 SETTABLEKS                       R29 R28 K53 ["textStyle"]
      331 GETTABLEKS                       R29 R4 K18 ["description"]
      333 GETTABLEKS                       R29 R29 K11 ["tag"]
      335 SETTABLEKS                       R29 R28 K11 ["tag"]
      337 LOADN                            R29 2
      338 SETTABLEKS                       R29 R28 K31 ["LayoutOrder"]
      340 LOADK                            R30 K56 ["%*--description"]
      341 GETTABLEKS                       R32 R2 K8 ["testId"]
      343 NAMECALL                         R30 R30 K40 ["format"]
      345 CALL                             R30 2 1
      346 MOVE                             R29 R30
      347 SETTABLEKS                       R29 R28 K8 ["testId"]
      349 CALL                             R26 2 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R26
      352 SETTABLEKS                       R26 R25 K51 ["Description"]
      354 JUMPIFNOT                        R9 ; [+2]
      355 MOVE                             R26 R10
      356 JUMP                             ; [+1]
      357 LOADNIL                          R26
      358 SETTABLEKS                       R26 R25 K28 ["Actions"]
      360 CALL                             R22 3 1
      361 SETTABLEKS                       R22 R21 K46 ["Text"]
      363 CALL                             R18 3 1
      364 SETTABLEKS                       R18 R17 K27 ["Content"]
      366 JUMPIF                           R9 ; [+2]
      367 MOVE                             R18 R10
      368 JUMP                             ; [+1]
      369 LOADNIL                          R18
      370 SETTABLEKS                       R18 R17 K28 ["Actions"]
      372 GETTABLEKS                       R19 R2 K57 ["onClose"]
      374 JUMPIFEQKNIL                     R19 ; [+34]
      376 GETUPVAL                         R18 4
      377 GETTABLEKS                       R18 R18 K10 ["createElement"]
      379 GETUPVAL                         R19 18
      380 DUPTABLE                         R20 K59 [{"onActivated", "size", "variant", "LayoutOrder", "testId"}]
      381 GETTABLEKS                       R21 R2 K57 ["onClose"]
      383 SETTABLEKS                       R21 R20 K58 ["onActivated"]
      385 GETUPVAL                         R21 19
      386 GETTABLEKS                       R21 R21 K5 ["Small"]
      388 SETTABLEKS                       R21 R20 K33 ["size"]
      390 GETUPVAL                         R21 20
      391 GETTABLEKS                       R21 R21 K60 ["Utility"]
      393 SETTABLEKS                       R21 R20 K0 ["variant"]
      395 LOADN                            R21 4
      396 SETTABLEKS                       R21 R20 K31 ["LayoutOrder"]
      398 LOADK                            R22 K61 ["%*--close"]
      399 GETTABLEKS                       R24 R2 K8 ["testId"]
      401 NAMECALL                         R22 R22 K40 ["format"]
      403 CALL                             R22 2 1
      404 MOVE                             R21 R22
      405 SETTABLEKS                       R21 R20 K8 ["testId"]
      407 CALL                             R18 2 1
      408 JUMP                             ; [+1]
      409 LOADNIL                          R18
      410 SETTABLEKS                       R18 R17 K29 ["Close"]
      412 CALL                             R14 3 -1
      413 CALL                             R11 -1 -1
      414 RETURN                           R11 -1

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
      187 DUPTABLE                         R28 K42 [{"variant", "testId"}]
      188 GETTABLEKS                       R29 R7 K43 ["Standard"]
      190 SETTABLEKS                       R29 R28 K40 ["variant"]
      192 LOADK                            R29 K44 ["--foundation-system-banner"]
      193 SETTABLEKS                       R29 R28 K41 ["testId"]
      195 DUPCLOSURE                       R29 K45 [PROTO_1]
      196 CAPTURE                          VAL R25
      197 CAPTURE                          VAL R28
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R26
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R12
      217 GETTABLEKS                       R30 R2 K46 ["memo"]
      219 GETTABLEKS                       R31 R2 K47 ["forwardRef"]
      221 MOVE                             R32 R29
      222 CALL                             R31 1 -1
      223 CALL                             R30 -1 -1
      224 RETURN                           R30 -1
