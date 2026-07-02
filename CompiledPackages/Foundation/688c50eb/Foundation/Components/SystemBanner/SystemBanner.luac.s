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
      152 DUPTABLE                         R20 K36 [{["LayoutOrder"] = 1, ["name"], ["size"], [4], ["style"], ["testId"]}]
      153 GETUPVAL                         R22 14
      154 GETTABLEKS                       R23 R2 K1 ["severity"]
      156 GETTABLE                         R21 R22 R23
      157 SETTABLEKS                       R21 R20 K33 ["name"]
      159 GETUPVAL                         R21 15
      160 GETTABLEKS                       R21 R21 K37 ["Large"]
      162 SETTABLEKS                       R21 R20 K34 ["size"]
      164 GETUPVAL                         R21 16
      165 GETTABLEKS                       R21 R21 K38 ["Filled"]
      167 SETTABLEKS                       R21 R20 K0 ["variant"]
      169 GETTABLEKS                       R21 R4 K39 ["icon"]
      171 GETTABLEKS                       R21 R21 K35 ["style"]
      173 SETTABLEKS                       R21 R20 K35 ["style"]
      175 LOADK                            R22 K40 ["%*--icon"]
      176 GETTABLEKS                       R24 R2 K8 ["testId"]
      178 NAMECALL                         R22 R22 K41 ["format"]
      180 CALL                             R22 2 1
      181 MOVE                             R21 R22
      182 SETTABLEKS                       R21 R20 K8 ["testId"]
      184 CALL                             R18 2 1
      185 SETTABLEKS                       R18 R17 K26 ["Icon"]
      187 GETUPVAL                         R18 4
      188 GETTABLEKS                       R18 R18 K10 ["createElement"]
      190 GETUPVAL                         R19 9
      191 DUPTABLE                         R20 K43 [{["LayoutOrder"] = 2, ["tag"], ["testId"]}]
      192 NEWTABLE                         R21 4 0
      194 LOADB                            R22 1
      195 SETTABLEKS                       R22 R21 K44 ["fill auto-xy"]
      197 SETTABLEKS                       R9 R21 K45 ["col"]
      199 NOT                              R22 R9
      200 SETTABLEKS                       R22 R21 K46 ["row"]
      202 SETTABLEKS                       R21 R20 K11 ["tag"]
      204 LOADK                            R22 K47 ["%*--content"]
      205 GETTABLEKS                       R24 R2 K8 ["testId"]
      207 NAMECALL                         R22 R22 K41 ["format"]
      209 CALL                             R22 2 1
      210 MOVE                             R21 R22
      211 SETTABLEKS                       R21 R20 K8 ["testId"]
      213 DUPTABLE                         R21 K49 [{"Text"}]
      214 GETUPVAL                         R22 4
      215 GETTABLEKS                       R22 R22 K10 ["createElement"]
      217 GETUPVAL                         R23 9
      218 DUPTABLE                         R24 K51 [{["LayoutOrder"] = 2, ["tag"] = "col auto-xy"}]
      219 DUPTABLE                         R25 K54 [{"Title", "Description", "Actions"}]
      220 GETUPVAL                         R27 11
      221 GETTABLEKS                       R27 R27 K15 ["FoundationSystemBannerOptionalTitle"]
      223 JUMPIFNOT                        R27 ; [+38]
      224 GETTABLEKS                       R27 R2 K16 ["title"]
      226 JUMPIFEQKS                       R27 K17 [""] ; [+33]
      228 GETUPVAL                         R26 4
      229 GETTABLEKS                       R26 R26 K10 ["createElement"]
      231 GETUPVAL                         R27 17
      232 DUPTABLE                         R28 K56 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      233 GETTABLEKS                       R29 R2 K16 ["title"]
      235 SETTABLEKS                       R29 R28 K48 ["Text"]
      237 GETTABLEKS                       R29 R4 K16 ["title"]
      239 GETTABLEKS                       R29 R29 K35 ["style"]
      241 SETTABLEKS                       R29 R28 K55 ["textStyle"]
      243 GETTABLEKS                       R29 R4 K16 ["title"]
      245 GETTABLEKS                       R29 R29 K11 ["tag"]
      247 SETTABLEKS                       R29 R28 K11 ["tag"]
      249 LOADK                            R30 K57 ["%*--title"]
      250 GETTABLEKS                       R32 R2 K8 ["testId"]
      252 NAMECALL                         R30 R30 K41 ["format"]
      254 CALL                             R30 2 1
      255 MOVE                             R29 R30
      256 SETTABLEKS                       R29 R28 K8 ["testId"]
      258 CALL                             R26 2 1
      259 JUMP                             ; [+33]
      260 LOADNIL                          R26
      261 JUMP                             ; [+31]
      262 GETUPVAL                         R26 4
      263 GETTABLEKS                       R26 R26 K10 ["createElement"]
      265 GETUPVAL                         R27 17
      266 DUPTABLE                         R28 K56 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      267 GETTABLEKS                       R29 R2 K16 ["title"]
      269 SETTABLEKS                       R29 R28 K48 ["Text"]
      271 GETTABLEKS                       R29 R4 K16 ["title"]
      273 GETTABLEKS                       R29 R29 K35 ["style"]
      275 SETTABLEKS                       R29 R28 K55 ["textStyle"]
      277 GETTABLEKS                       R29 R4 K16 ["title"]
      279 GETTABLEKS                       R29 R29 K11 ["tag"]
      281 SETTABLEKS                       R29 R28 K11 ["tag"]
      283 LOADK                            R30 K57 ["%*--title"]
      284 GETTABLEKS                       R32 R2 K8 ["testId"]
      286 NAMECALL                         R30 R30 K41 ["format"]
      288 CALL                             R30 2 1
      289 MOVE                             R29 R30
      290 SETTABLEKS                       R29 R28 K8 ["testId"]
      292 CALL                             R26 2 1
      293 SETTABLEKS                       R26 R25 K52 ["Title"]
      295 GETTABLEKS                       R27 R2 K18 ["description"]
      297 JUMPIFNOT                        R27 ; [+32]
      298 GETUPVAL                         R26 4
      299 GETTABLEKS                       R26 R26 K10 ["createElement"]
      301 GETUPVAL                         R27 17
      302 DUPTABLE                         R28 K58 [{["Text"], ["textStyle"], ["tag"], ["LayoutOrder"] = 2, ["testId"]}]
      303 GETTABLEKS                       R29 R2 K18 ["description"]
      305 SETTABLEKS                       R29 R28 K48 ["Text"]
      307 GETTABLEKS                       R29 R4 K18 ["description"]
      309 GETTABLEKS                       R29 R29 K35 ["style"]
      311 SETTABLEKS                       R29 R28 K55 ["textStyle"]
      313 GETTABLEKS                       R29 R4 K18 ["description"]
      315 GETTABLEKS                       R29 R29 K11 ["tag"]
      317 SETTABLEKS                       R29 R28 K11 ["tag"]
      319 LOADK                            R30 K59 ["%*--description"]
      320 GETTABLEKS                       R32 R2 K8 ["testId"]
      322 NAMECALL                         R30 R30 K41 ["format"]
      324 CALL                             R30 2 1
      325 MOVE                             R29 R30
      326 SETTABLEKS                       R29 R28 K8 ["testId"]
      328 CALL                             R26 2 1
      329 JUMP                             ; [+1]
      330 LOADNIL                          R26
      331 SETTABLEKS                       R26 R25 K53 ["Description"]
      333 JUMPIFNOT                        R9 ; [+2]
      334 MOVE                             R26 R10
      335 JUMP                             ; [+1]
      336 LOADNIL                          R26
      337 SETTABLEKS                       R26 R25 K28 ["Actions"]
      339 CALL                             R22 3 1
      340 SETTABLEKS                       R22 R21 K48 ["Text"]
      342 CALL                             R18 3 1
      343 SETTABLEKS                       R18 R17 K27 ["Content"]
      345 JUMPIF                           R9 ; [+2]
      346 MOVE                             R18 R10
      347 JUMP                             ; [+1]
      348 LOADNIL                          R18
      349 SETTABLEKS                       R18 R17 K28 ["Actions"]
      351 GETTABLEKS                       R19 R2 K60 ["onClose"]
      353 JUMPIFEQKNIL                     R19 ; [+31]
      355 GETUPVAL                         R18 4
      356 GETTABLEKS                       R18 R18 K10 ["createElement"]
      358 GETUPVAL                         R19 18
      359 DUPTABLE                         R20 K63 [{["onActivated"], ["size"], [3], ["LayoutOrder"] = 4, ["testId"]}]
      360 GETTABLEKS                       R21 R2 K60 ["onClose"]
      362 SETTABLEKS                       R21 R20 K61 ["onActivated"]
      364 GETUPVAL                         R21 19
      365 GETTABLEKS                       R21 R21 K5 ["Small"]
      367 SETTABLEKS                       R21 R20 K34 ["size"]
      369 GETUPVAL                         R21 20
      370 GETTABLEKS                       R21 R21 K64 ["Utility"]
      372 SETTABLEKS                       R21 R20 K0 ["variant"]
      374 LOADK                            R22 K65 ["%*--close"]
      375 GETTABLEKS                       R24 R2 K8 ["testId"]
      377 NAMECALL                         R22 R22 K41 ["format"]
      379 CALL                             R22 2 1
      380 MOVE                             R21 R22
      381 SETTABLEKS                       R21 R20 K8 ["testId"]
      383 CALL                             R18 2 1
      384 JUMP                             ; [+1]
      385 LOADNIL                          R18
      386 SETTABLEKS                       R18 R17 K29 ["Close"]
      388 CALL                             R14 3 -1
      389 CALL                             R11 -1 -1
      390 RETURN                           R11 -1

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
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R13
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
