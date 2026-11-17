PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantCreditMeteringResetPeriod"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 1
        5 JUMPIFNOTEQKS                    R3 K1 ["FREE_TRIAL_RESET_PERIOD_WEEKLY"] ; [+3]
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R1 1
        9 JUMPIFNOTEQKS                    R3 K2 ["FREE_TRIAL_RESET_PERIOD_MONTHLY"] ; [+3]
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R2 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K14 [{[1], ["OutOfRobux"], ["LimitReached"], ["FreeTrialExhausted"], ["ViewUsage"], ["ManageLimit"], ["Buy"], ["FreeUsageExhaustedWeekly"] = , ["FreeUsageExhaustedMonthly"] = , ["OutOfRobuxWeekly"] = , ["OutOfRobuxMonthly"] = , ["FreeTrialExhaustedWeekly"] = , ["FreeTrialExhaustedMonthly"] = }]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K15 ["CreditMetering"]
        3 LOADK                            R4 K16 ["BannerFreeUsageExhaustedSwitch"]
        4 NAMECALL                         R1 R1 K17 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FreeUsageExhausted"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K15 ["CreditMetering"]
       11 LOADK                            R4 K18 ["BannerOutOfRobux"]
       12 NAMECALL                         R1 R1 K17 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["OutOfRobux"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K15 ["CreditMetering"]
       19 LOADK                            R4 K19 ["BannerLimitReached"]
       20 NAMECALL                         R1 R1 K17 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["LimitReached"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K15 ["CreditMetering"]
       27 LOADK                            R4 K20 ["BannerFreeTrialExhausted"]
       28 NAMECALL                         R1 R1 K17 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["FreeTrialExhausted"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K15 ["CreditMetering"]
       35 LOADK                            R4 K4 ["ViewUsage"]
       36 NAMECALL                         R1 R1 K17 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["ViewUsage"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K15 ["CreditMetering"]
       43 LOADK                            R4 K5 ["ManageLimit"]
       44 NAMECALL                         R1 R1 K17 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["ManageLimit"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K15 ["CreditMetering"]
       51 LOADK                            R4 K6 ["Buy"]
       52 NAMECALL                         R1 R1 K17 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Buy"]
       57 GETUPVAL                         R1 1
       58 GETTABLEKS                       R1 R1 K21 ["FFlagAssistantCreditMeteringResetPeriod"]
       60 JUMPIFNOT                        R1 ; [+48]
       61 GETUPVAL                         R1 0
       62 LOADK                            R3 K15 ["CreditMetering"]
       63 LOADK                            R4 K22 ["BannerFreeUsageExhaustedSwitchWeekly"]
       64 NAMECALL                         R1 R1 K17 ["getText"]
       66 CALL                             R1 3 1
       67 SETTABLEKS                       R1 R0 K7 ["FreeUsageExhaustedWeekly"]
       69 GETUPVAL                         R1 0
       70 LOADK                            R3 K15 ["CreditMetering"]
       71 LOADK                            R4 K23 ["BannerFreeUsageExhaustedSwitchMonthly"]
       72 NAMECALL                         R1 R1 K17 ["getText"]
       74 CALL                             R1 3 1
       75 SETTABLEKS                       R1 R0 K9 ["FreeUsageExhaustedMonthly"]
       77 GETUPVAL                         R1 0
       78 LOADK                            R3 K15 ["CreditMetering"]
       79 LOADK                            R4 K24 ["BannerOutOfRobuxWeekly"]
       80 NAMECALL                         R1 R1 K17 ["getText"]
       82 CALL                             R1 3 1
       83 SETTABLEKS                       R1 R0 K10 ["OutOfRobuxWeekly"]
       85 GETUPVAL                         R1 0
       86 LOADK                            R3 K15 ["CreditMetering"]
       87 LOADK                            R4 K25 ["BannerOutOfRobuxMonthly"]
       88 NAMECALL                         R1 R1 K17 ["getText"]
       90 CALL                             R1 3 1
       91 SETTABLEKS                       R1 R0 K11 ["OutOfRobuxMonthly"]
       93 GETUPVAL                         R1 0
       94 LOADK                            R3 K15 ["CreditMetering"]
       95 LOADK                            R4 K26 ["BannerFreeTrialExhaustedWeekly"]
       96 NAMECALL                         R1 R1 K17 ["getText"]
       98 CALL                             R1 3 1
       99 SETTABLEKS                       R1 R0 K12 ["FreeTrialExhaustedWeekly"]
      101 GETUPVAL                         R1 0
      102 LOADK                            R3 K15 ["CreditMetering"]
      103 LOADK                            R4 K27 ["BannerFreeTrialExhaustedMonthly"]
      104 NAMECALL                         R1 R1 K17 ["getText"]
      106 CALL                             R1 3 1
      107 SETTABLEKS                       R1 R0 K13 ["FreeTrialExhaustedMonthly"]
      109 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        8 GETTABLEKS                       R1 R1 K1 ["useTokens"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["useContext"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["Context"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K4 ["quotaSummary"]
       20 GETTABLEKS                       R4 R2 K5 ["blockReason"]
       22 GETTABLEKS                       R5 R2 K6 ["openBuyRobux"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K2 ["useContext"]
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K3 ["Context"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R6 K7 ["selectedModel"]
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R9 R9 K8 ["DEFAULT_STUDIO_MODEL"]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETUPVAL                         R8 6
       41 CALL                             R8 0 1
       42 GETTABLEKS                       R9 R8 K9 ["showUsage"]
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       47 NEWCLOSURE                       R11 P0
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R5
       50 NEWTABLE                         R12 0 2
       52 MOVE                             R13 R9
       53 MOVE                             R14 R5
       54 SETLIST                          R12 R13 2 [1]
       56 CALL                             R10 2 1
       57 JUMPIFNOT                        R7 ; [+7]
       58 GETUPVAL                         R11 3
       59 GETTABLEKS                       R11 R11 K11 ["getBannerVariant"]
       61 MOVE                             R12 R3
       62 MOVE                             R13 R4
       63 CALL                             R11 2 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R11
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R12 R12 K12 ["useState"]
       69 LOADB                            R13 0
       70 CALL                             R12 1 2
       71 GETUPVAL                         R14 2
       72 GETTABLEKS                       R14 R14 K13 ["useRef"]
       74 MOVE                             R15 R11
       75 CALL                             R14 1 1
       76 GETUPVAL                         R15 2
       77 GETTABLEKS                       R15 R15 K14 ["useEffect"]
       79 NEWCLOSURE                       R16 P1
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R13
       83 NEWTABLE                         R17 0 1
       85 MOVE                             R18 R11
       86 SETLIST                          R17 R18 1 [1]
       88 CALL                             R15 2 0
       89 GETUPVAL                         R15 2
       90 GETTABLEKS                       R15 R15 K15 ["useMemo"]
       92 DUPCLOSURE                       R16 K16 [PROTO_3]
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U8
       95 NEWTABLE                         R17 0 1
       97 GETUPVAL                         R18 7
       98 GETTABLEKS                       R18 R18 K17 ["locale"]
      100 SETLIST                          R17 R18 1 [1]
      102 CALL                             R15 2 1
      103 GETUPVAL                         R17 8
      104 GETTABLEKS                       R17 R17 K18 ["FFlagAssistantCreditMeteringResetPeriod"]
      106 JUMPIFNOT                        R17 ; [+4]
      107 JUMPIFNOT                        R3 ; [+3]
      108 GETTABLEKS                       R16 R3 K19 ["freeTrialResetPeriod"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R16
      112 GETTABLEKS                       R18 R15 K20 ["FreeUsageExhausted"]
      114 GETTABLEKS                       R19 R15 K21 ["FreeUsageExhaustedWeekly"]
      116 GETTABLEKS                       R20 R15 K22 ["FreeUsageExhaustedMonthly"]
      118 GETUPVAL                         R21 8
      119 GETTABLEKS                       R21 R21 K18 ["FFlagAssistantCreditMeteringResetPeriod"]
      121 JUMPIF                           R21 ; [+2]
      122 MOVE                             R17 R18
      123 JUMP                             ; [+11]
      124 JUMPIFNOTEQKS                    R16 K23 ["FREE_TRIAL_RESET_PERIOD_WEEKLY"] ; [+4]
      126 JUMPIFNOT                        R19 ; [+2]
      127 MOVE                             R17 R19
      128 JUMP                             ; [+6]
      129 JUMPIFNOTEQKS                    R16 K24 ["FREE_TRIAL_RESET_PERIOD_MONTHLY"] ; [+4]
      131 JUMPIFNOT                        R20 ; [+2]
      132 MOVE                             R17 R20
      133 JUMP                             ; [+1]
      134 MOVE                             R17 R18
      135 GETTABLEKS                       R19 R15 K25 ["OutOfRobux"]
      137 GETTABLEKS                       R20 R15 K26 ["OutOfRobuxWeekly"]
      139 GETTABLEKS                       R21 R15 K27 ["OutOfRobuxMonthly"]
      141 GETUPVAL                         R22 8
      142 GETTABLEKS                       R22 R22 K18 ["FFlagAssistantCreditMeteringResetPeriod"]
      144 JUMPIF                           R22 ; [+2]
      145 MOVE                             R18 R19
      146 JUMP                             ; [+11]
      147 JUMPIFNOTEQKS                    R16 K23 ["FREE_TRIAL_RESET_PERIOD_WEEKLY"] ; [+4]
      149 JUMPIFNOT                        R20 ; [+2]
      150 MOVE                             R18 R20
      151 JUMP                             ; [+6]
      152 JUMPIFNOTEQKS                    R16 K24 ["FREE_TRIAL_RESET_PERIOD_MONTHLY"] ; [+4]
      154 JUMPIFNOT                        R21 ; [+2]
      155 MOVE                             R18 R21
      156 JUMP                             ; [+1]
      157 MOVE                             R18 R19
      158 GETTABLEKS                       R20 R15 K28 ["FreeTrialExhausted"]
      160 GETTABLEKS                       R21 R15 K29 ["FreeTrialExhaustedWeekly"]
      162 GETTABLEKS                       R22 R15 K30 ["FreeTrialExhaustedMonthly"]
      164 GETUPVAL                         R23 8
      165 GETTABLEKS                       R23 R23 K18 ["FFlagAssistantCreditMeteringResetPeriod"]
      167 JUMPIF                           R23 ; [+2]
      168 MOVE                             R19 R20
      169 JUMP                             ; [+11]
      170 JUMPIFNOTEQKS                    R16 K23 ["FREE_TRIAL_RESET_PERIOD_WEEKLY"] ; [+4]
      172 JUMPIFNOT                        R21 ; [+2]
      173 MOVE                             R19 R21
      174 JUMP                             ; [+6]
      175 JUMPIFNOTEQKS                    R16 K24 ["FREE_TRIAL_RESET_PERIOD_MONTHLY"] ; [+4]
      177 JUMPIFNOT                        R22 ; [+2]
      178 MOVE                             R19 R22
      179 JUMP                             ; [+1]
      180 MOVE                             R19 R20
      181 LOADNIL                          R20
      182 LOADNIL                          R21
      183 JUMPIFNOTEQKS                    R11 K31 ["LimitReached"] ; [+5]
      185 GETTABLEKS                       R20 R15 K32 ["ManageLimit"]
      187 MOVE                             R21 R9
      188 JUMP                             ; [+19]
      189 JUMPIFNOTEQKS                    R11 K28 ["FreeTrialExhausted"] ; [+5]
      191 GETTABLEKS                       R20 R15 K33 ["ViewUsage"]
      193 MOVE                             R21 R9
      194 JUMP                             ; [+13]
      195 JUMPIFNOTEQKS                    R11 K25 ["OutOfRobux"] ; [+12]
      197 GETUPVAL                         R22 8
      198 GETTABLEKS                       R22 R22 K34 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      200 JUMPIFNOT                        R22 ; [+4]
      201 GETTABLEKS                       R20 R15 K35 ["Buy"]
      203 MOVE                             R21 R10
      204 JUMP                             ; [+3]
      205 GETTABLEKS                       R20 R15 K33 ["ViewUsage"]
      207 MOVE                             R21 R9
      208 GETUPVAL                         R23 8
      209 GETTABLEKS                       R23 R23 K34 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      211 JUMPIFNOT                        R23 ; [+2]
      212 MOVE                             R22 R19
      213 JUMP                             ; [+2]
      214 GETTABLEKS                       R22 R15 K31 ["LimitReached"]
      216 JUMPIFNOTEQKS                    R11 K25 ["OutOfRobux"] ; [+3]
      218 MOVE                             R23 R18
      219 JUMP                             ; [+14]
      220 JUMPIFNOTEQKS                    R11 K31 ["LimitReached"] ; [+4]
      222 GETTABLEKS                       R23 R15 K31 ["LimitReached"]
      224 JUMP                             ; [+9]
      225 JUMPIFNOTEQKS                    R11 K20 ["FreeUsageExhausted"] ; [+3]
      227 MOVE                             R23 R17
      228 JUMP                             ; [+5]
      229 JUMPIFNOTEQKS                    R11 K28 ["FreeTrialExhausted"] ; [+3]
      231 MOVE                             R23 R22
      232 JUMP                             ; [+1]
      233 LOADNIL                          R23
      234 LOADB                            R24 0
      235 JUMPIFEQKNIL                     R23 ; [+6]
      237 LOADB                            R25 0
      238 JUMPIFNOTEQKS                    R11 K20 ["FreeUsageExhausted"] ; [+2]
      240 MOVE                             R25 R12
      241 NOT                              R24 R25
      242 GETUPVAL                         R25 9
      243 CALL                             R25 0 1
      244 NEWTABLE                         R26 0 0
      246 JUMPIFNOT                        R24 ; [+197]
      247 JUMPIFNOT                        R20 ; [+7]
      248 LOADK                            R27 K36 ["%* <u>%*</u>"]
      249 MOVE                             R29 R23
      250 MOVE                             R30 R20
      251 NAMECALL                         R27 R27 K37 ["format"]
      253 CALL                             R27 3 1
      254 JUMP                             ; [+1]
      255 MOVE                             R27 R23
      256 JUMPIFEQKS                       R11 K20 ["FreeUsageExhausted"] ; [+2]
      258 LOADB                            R28 0 +1
      259 LOADB                            R28 1
      260 GETUPVAL                         R29 10
      261 GETUPVAL                         R30 11
      262 DUPTABLE                         R31 K42 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["padding"], ["LayoutOrder"]}]
      263 DUPTABLE                         R32 K47 [{"top", "bottom", "left", "right"}]
      264 GETIMPORT                        R33 K50 [UDim.new]
      266 LOADN                            R34 0
      267 GETTABLEKS                       R35 R1 K51 ["Padding"]
      269 GETTABLEKS                       R35 R35 K52 ["Medium"]
      271 CALL                             R33 2 1
      272 SETTABLEKS                       R33 R32 K43 ["top"]
      274 GETIMPORT                        R33 K50 [UDim.new]
      276 LOADN                            R34 0
      277 GETTABLEKS                       R35 R1 K51 ["Padding"]
      279 GETTABLEKS                       R35 R35 K53 ["Small"]
      281 CALL                             R33 2 1
      282 SETTABLEKS                       R33 R32 K44 ["bottom"]
      284 GETIMPORT                        R33 K50 [UDim.new]
      286 LOADN                            R34 0
      287 GETTABLEKS                       R35 R1 K51 ["Padding"]
      289 GETTABLEKS                       R35 R35 K52 ["Medium"]
      291 CALL                             R33 2 1
      292 SETTABLEKS                       R33 R32 K45 ["left"]
      294 GETIMPORT                        R33 K50 [UDim.new]
      296 LOADN                            R34 0
      297 JUMPIFNOT                        R28 ; [+5]
      298 GETTABLEKS                       R35 R1 K51 ["Padding"]
      300 GETTABLEKS                       R35 R35 K52 ["Medium"]
      302 JUMP                             ; [+5]
      303 GETTABLEKS                       R36 R1 K51 ["Padding"]
      305 GETTABLEKS                       R36 R36 K55 ["XXLarge"]
      307 MULK                             R35 R36 K54 [2]
      308 CALL                             R33 2 1
      309 SETTABLEKS                       R33 R32 K46 ["right"]
      311 SETTABLEKS                       R32 R31 K40 ["padding"]
      313 MOVE                             R32 R25
      314 CALL                             R32 0 1
      315 SETTABLEKS                       R32 R31 K41 ["LayoutOrder"]
      317 DUPTABLE                         R32 K60 [{"Icon", "Message", "Spacer", "CloseButton"}]
      318 GETUPVAL                         R33 10
      319 GETUPVAL                         R34 12
      320 DUPTABLE                         R35 K65 [{["name"], ["style"], ["size"], ["LayoutOrder"] = 1}]
      321 JUMPIFNOTEQKS                    R11 K20 ["FreeUsageExhausted"] ; [+5]
      323 GETUPVAL                         R36 13
      324 GETTABLEKS                       R36 R36 K66 ["Robux"]
      326 JUMP                             ; [+3]
      327 GETUPVAL                         R36 13
      328 GETTABLEKS                       R36 R36 K67 ["TriangleExclamation"]
      330 SETTABLEKS                       R36 R35 K61 ["name"]
      332 GETTABLEKS                       R36 R1 K68 ["Color"]
      334 GETTABLEKS                       R36 R36 K69 ["Content"]
      336 GETTABLEKS                       R36 R36 K70 ["Emphasis"]
      338 SETTABLEKS                       R36 R35 K62 ["style"]
      340 GETUPVAL                         R36 14
      341 GETTABLEKS                       R36 R36 K52 ["Medium"]
      343 SETTABLEKS                       R36 R35 K63 ["size"]
      345 CALL                             R33 2 1
      346 SETTABLEKS                       R33 R32 K56 ["Icon"]
      348 GETUPVAL                         R33 10
      349 GETUPVAL                         R34 15
      350 DUPTABLE                         R35 K77 [{["tag"] = "shrink size-full-0 auto-y text-body-small text-wrap text-align-x-left", ["Text"], ["RichText"], ["onActivated"], ["stateLayer"], ["LayoutOrder"] = 2, ["testId"]}]
      351 SETTABLEKS                       R27 R35 K72 ["Text"]
      353 JUMPIFNOTEQKNIL                  R20 ; [+2]
      355 LOADB                            R36 0 +1
      356 LOADB                            R36 1
      357 SETTABLEKS                       R36 R35 K73 ["RichText"]
      359 SETTABLEKS                       R21 R35 K74 ["onActivated"]
      361 DUPTABLE                         R36 K79 [{"affordance"}]
      362 GETUPVAL                         R37 16
      363 GETTABLEKS                       R37 R37 K80 ["None"]
      365 SETTABLEKS                       R37 R36 K78 ["affordance"]
      367 SETTABLEKS                       R36 R35 K75 ["stateLayer"]
      369 JUMPIFNOT                        R20 ; [+6]
      370 GETUPVAL                         R36 17
      371 GETTABLEKS                       R36 R36 K81 ["Alert"]
      373 GETTABLEKS                       R36 R36 K82 ["Continue"]
      375 JUMP                             ; [+1]
      376 LOADNIL                          R36
      377 SETTABLEKS                       R36 R35 K76 ["testId"]
      379 CALL                             R33 2 1
      380 SETTABLEKS                       R33 R32 K57 ["Message"]
      382 GETUPVAL                         R33 10
      383 GETUPVAL                         R34 11
      384 DUPTABLE                         R35 K85 [{["tag"] = "fill", ["LayoutOrder"] = 3}]
      385 CALL                             R33 2 1
      386 SETTABLEKS                       R33 R32 K58 ["Spacer"]
      388 MOVE                             R33 R28
      389 JUMPIFNOT                        R33 ; [+30]
      390 GETUPVAL                         R33 10
      391 GETUPVAL                         R34 18
      392 DUPTABLE                         R35 K89 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      393 GETUPVAL                         R36 13
      394 GETTABLEKS                       R36 R36 K90 ["XSmall"]
      396 SETTABLEKS                       R36 R35 K86 ["icon"]
      398 GETUPVAL                         R36 19
      399 GETTABLEKS                       R36 R36 K90 ["XSmall"]
      401 SETTABLEKS                       R36 R35 K63 ["size"]
      403 GETUPVAL                         R36 20
      404 GETTABLEKS                       R36 R36 K91 ["Utility"]
      406 SETTABLEKS                       R36 R35 K87 ["variant"]
      408 NEWCLOSURE                       R36 P3
      409 CAPTURE                          VAL R13
      410 SETTABLEKS                       R36 R35 K74 ["onActivated"]
      412 GETUPVAL                         R36 17
      413 GETTABLEKS                       R36 R36 K81 ["Alert"]
      415 GETTABLEKS                       R36 R36 K92 ["Close"]
      417 SETTABLEKS                       R36 R35 K76 ["testId"]
      419 CALL                             R33 2 1
      420 SETTABLEKS                       R33 R32 K59 ["CloseButton"]
      422 CALL                             R29 3 1
      423 SETTABLEKS                       R29 R26 K69 ["Content"]
      425 GETUPVAL                         R29 10
      426 GETUPVAL                         R30 21
      427 DUPTABLE                         R31 K93 [{"variant", "LayoutOrder"}]
      428 GETUPVAL                         R32 1
      429 GETTABLEKS                       R32 R32 K94 ["Enums"]
      431 GETTABLEKS                       R32 R32 K95 ["DividerVariant"]
      433 GETTABLEKS                       R32 R32 K96 ["Default"]
      435 SETTABLEKS                       R32 R31 K87 ["variant"]
      437 MOVE                             R32 R25
      438 CALL                             R32 0 1
      439 SETTABLEKS                       R32 R31 K41 ["LayoutOrder"]
      441 CALL                             R29 2 1
      442 SETTABLEKS                       R29 R26 K97 ["Divider"]
      444 GETTABLEKS                       R27 R8 K98 ["root"]
      446 SETTABLEKS                       R27 R26 K99 ["DialogWidget"]
      448 GETUPVAL                         R27 10
      449 GETUPVAL                         R28 11
      450 DUPTABLE                         R29 K101 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      451 GETTABLEKS                       R30 R0 K41 ["LayoutOrder"]
      453 SETTABLEKS                       R30 R29 K41 ["LayoutOrder"]
      455 MOVE                             R30 R26
      456 CALL                             R27 3 -1
      457 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["CreditMeteringContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["LLMProviderSelectionContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Util"]
       55 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Resources"]
       62 GETTABLEKS                       R9 R9 K18 ["Localization"]
       64 GETTABLEKS                       R9 R9 K19 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K20 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["FlagUtils"]
       76 GETTABLEKS                       R11 R11 K22 ["getIsCreditMeteringEnabled"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K24 ["useSettingsDialog"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R3 K25 ["Divider"]
       88 GETTABLEKS                       R13 R3 K26 ["Icon"]
       90 GETTABLEKS                       R14 R3 K27 ["IconButton"]
       92 GETTABLEKS                       R15 R3 K28 ["Text"]
       94 GETTABLEKS                       R16 R3 K29 ["View"]
       96 GETTABLEKS                       R17 R3 K30 ["Enums"]
       98 GETTABLEKS                       R17 R17 K31 ["IconName"]
      100 GETTABLEKS                       R18 R3 K30 ["Enums"]
      102 GETTABLEKS                       R18 R18 K32 ["IconSize"]
      104 GETTABLEKS                       R19 R3 K30 ["Enums"]
      106 GETTABLEKS                       R19 R19 K33 ["InputSize"]
      108 GETTABLEKS                       R20 R3 K30 ["Enums"]
      110 GETTABLEKS                       R20 R20 K34 ["ButtonVariant"]
      112 GETTABLEKS                       R21 R3 K30 ["Enums"]
      114 GETTABLEKS                       R21 R21 K35 ["StateLayerAffordance"]
      116 GETTABLEKS                       R22 R6 K36 ["createNextOrder"]
      118 GETTABLEKS                       R23 R5 K37 ["createElement"]
      120 DUPCLOSURE                       R24 K38 [PROTO_0]
      121 CAPTURE                          VAL R2
      122 DUPCLOSURE                       R25 K39 [PROTO_5]
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R23
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R12
      145 GETTABLEKS                       R26 R5 K40 ["memo"]
      147 MOVE                             R27 R25
      148 CALL                             R26 1 -1
      149 RETURN                           R26 -1
