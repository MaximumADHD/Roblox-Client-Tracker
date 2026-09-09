PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 DUPTABLE                         R0 K7 [{"FreeUsageExhausted", "OutOfRobux", "LimitReached", "FreeTrialExhausted", "ViewUsage", "ManageLimit", "Buy"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["CreditMetering"]
        3 LOADK                            R4 K9 ["BannerFreeUsageExhaustedSwitch"]
        4 NAMECALL                         R1 R1 K10 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FreeUsageExhausted"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K8 ["CreditMetering"]
       11 LOADK                            R4 K11 ["BannerOutOfRobux"]
       12 NAMECALL                         R1 R1 K10 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["OutOfRobux"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K8 ["CreditMetering"]
       19 LOADK                            R4 K12 ["BannerLimitReached"]
       20 NAMECALL                         R1 R1 K10 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["LimitReached"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K8 ["CreditMetering"]
       27 LOADK                            R4 K13 ["BannerFreeTrialExhausted"]
       28 NAMECALL                         R1 R1 K10 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["FreeTrialExhausted"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K8 ["CreditMetering"]
       35 LOADK                            R4 K4 ["ViewUsage"]
       36 NAMECALL                         R1 R1 K10 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["ViewUsage"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K8 ["CreditMetering"]
       43 LOADK                            R4 K5 ["ManageLimit"]
       44 NAMECALL                         R1 R1 K10 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["ManageLimit"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K8 ["CreditMetering"]
       51 LOADK                            R4 K6 ["Buy"]
       52 NAMECALL                         R1 R1 K10 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Buy"]
       57 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

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
       92 DUPCLOSURE                       R16 K16 [PROTO_2]
       93 CAPTURE                          UPVAL U7
       94 NEWTABLE                         R17 0 1
       96 GETUPVAL                         R18 7
       97 GETTABLEKS                       R18 R18 K17 ["locale"]
       99 SETLIST                          R17 R18 1 [1]
      101 CALL                             R15 2 1
      102 LOADNIL                          R16
      103 LOADNIL                          R17
      104 JUMPIFNOTEQKS                    R11 K18 ["LimitReached"] ; [+5]
      106 GETTABLEKS                       R16 R15 K19 ["ManageLimit"]
      108 MOVE                             R17 R9
      109 JUMP                             ; [+19]
      110 JUMPIFNOTEQKS                    R11 K20 ["FreeTrialExhausted"] ; [+5]
      112 GETTABLEKS                       R16 R15 K21 ["ViewUsage"]
      114 MOVE                             R17 R9
      115 JUMP                             ; [+13]
      116 JUMPIFNOTEQKS                    R11 K22 ["OutOfRobux"] ; [+12]
      118 GETUPVAL                         R18 8
      119 GETTABLEKS                       R18 R18 K23 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      121 JUMPIFNOT                        R18 ; [+4]
      122 GETTABLEKS                       R16 R15 K24 ["Buy"]
      124 MOVE                             R17 R10
      125 JUMP                             ; [+3]
      126 GETTABLEKS                       R16 R15 K21 ["ViewUsage"]
      128 MOVE                             R17 R9
      129 GETUPVAL                         R19 8
      130 GETTABLEKS                       R19 R19 K23 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      132 JUMPIFNOT                        R19 ; [+3]
      133 GETTABLEKS                       R18 R15 K20 ["FreeTrialExhausted"]
      135 JUMP                             ; [+2]
      136 GETTABLEKS                       R18 R15 K18 ["LimitReached"]
      138 JUMPIFNOTEQKS                    R11 K22 ["OutOfRobux"] ; [+4]
      140 GETTABLEKS                       R19 R15 K22 ["OutOfRobux"]
      142 JUMP                             ; [+15]
      143 JUMPIFNOTEQKS                    R11 K18 ["LimitReached"] ; [+4]
      145 GETTABLEKS                       R19 R15 K18 ["LimitReached"]
      147 JUMP                             ; [+10]
      148 JUMPIFNOTEQKS                    R11 K25 ["FreeUsageExhausted"] ; [+4]
      150 GETTABLEKS                       R19 R15 K25 ["FreeUsageExhausted"]
      152 JUMP                             ; [+5]
      153 JUMPIFNOTEQKS                    R11 K20 ["FreeTrialExhausted"] ; [+3]
      155 MOVE                             R19 R18
      156 JUMP                             ; [+1]
      157 LOADNIL                          R19
      158 LOADB                            R20 0
      159 JUMPIFEQKNIL                     R19 ; [+6]
      161 LOADB                            R21 0
      162 JUMPIFNOTEQKS                    R11 K25 ["FreeUsageExhausted"] ; [+2]
      164 MOVE                             R21 R12
      165 NOT                              R20 R21
      166 GETUPVAL                         R21 9
      167 CALL                             R21 0 1
      168 NEWTABLE                         R22 0 0
      170 JUMPIFNOT                        R20 ; [+227]
      171 JUMPIFNOT                        R16 ; [+8]
      172 LOADK                            R24 K26 ["%* <u>%*</u>"]
      173 MOVE                             R26 R19
      174 MOVE                             R27 R16
      175 NAMECALL                         R24 R24 K27 ["format"]
      177 CALL                             R24 3 1
      178 MOVE                             R23 R24
      179 JUMP                             ; [+1]
      180 MOVE                             R23 R19
      181 JUMPIFEQKS                       R11 K25 ["FreeUsageExhausted"] ; [+2]
      183 LOADB                            R24 0 +1
      184 LOADB                            R24 1
      185 GETUPVAL                         R25 10
      186 GETUPVAL                         R26 11
      187 DUPTABLE                         R27 K32 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["padding"], ["LayoutOrder"]}]
      188 DUPTABLE                         R28 K37 [{"top", "bottom", "left", "right"}]
      189 GETIMPORT                        R29 K40 [UDim.new]
      191 LOADN                            R30 0
      192 GETTABLEKS                       R31 R1 K41 ["Padding"]
      194 GETTABLEKS                       R31 R31 K42 ["Medium"]
      196 CALL                             R29 2 1
      197 SETTABLEKS                       R29 R28 K33 ["top"]
      199 GETIMPORT                        R29 K40 [UDim.new]
      201 LOADN                            R30 0
      202 GETTABLEKS                       R31 R1 K41 ["Padding"]
      204 GETTABLEKS                       R31 R31 K43 ["Small"]
      206 CALL                             R29 2 1
      207 SETTABLEKS                       R29 R28 K34 ["bottom"]
      209 GETIMPORT                        R29 K40 [UDim.new]
      211 LOADN                            R30 0
      212 GETTABLEKS                       R31 R1 K41 ["Padding"]
      214 GETTABLEKS                       R31 R31 K42 ["Medium"]
      216 CALL                             R29 2 1
      217 SETTABLEKS                       R29 R28 K35 ["left"]
      219 GETIMPORT                        R29 K40 [UDim.new]
      221 LOADN                            R30 0
      222 JUMPIFNOT                        R24 ; [+5]
      223 GETTABLEKS                       R31 R1 K41 ["Padding"]
      225 GETTABLEKS                       R31 R31 K42 ["Medium"]
      227 JUMP                             ; [+5]
      228 GETTABLEKS                       R32 R1 K41 ["Padding"]
      230 GETTABLEKS                       R32 R32 K45 ["XXLarge"]
      232 MULK                             R31 R32 K44 [2]
      233 CALL                             R29 2 1
      234 SETTABLEKS                       R29 R28 K36 ["right"]
      236 SETTABLEKS                       R28 R27 K30 ["padding"]
      238 MOVE                             R28 R21
      239 CALL                             R28 0 1
      240 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      242 DUPTABLE                         R28 K50 [{"Icon", "Message", "Spacer", "CloseButton"}]
      243 GETUPVAL                         R30 8
      244 GETTABLEKS                       R30 R30 K51 ["FFlagAssistantUseBuilderIcons"]
      246 JUMPIFNOT                        R30 ; [+29]
      247 GETUPVAL                         R29 10
      248 GETUPVAL                         R30 12
      249 DUPTABLE                         R31 K56 [{["name"], ["style"], ["size"], ["LayoutOrder"] = 1}]
      250 JUMPIFNOTEQKS                    R11 K25 ["FreeUsageExhausted"] ; [+5]
      252 GETUPVAL                         R32 13
      253 GETTABLEKS                       R32 R32 K57 ["Robux"]
      255 JUMP                             ; [+3]
      256 GETUPVAL                         R32 13
      257 GETTABLEKS                       R32 R32 K58 ["TriangleExclamation"]
      259 SETTABLEKS                       R32 R31 K52 ["name"]
      261 GETTABLEKS                       R32 R1 K59 ["Color"]
      263 GETTABLEKS                       R32 R32 K60 ["Content"]
      265 GETTABLEKS                       R32 R32 K61 ["Emphasis"]
      267 SETTABLEKS                       R32 R31 K53 ["style"]
      269 GETUPVAL                         R32 14
      270 GETTABLEKS                       R32 R32 K42 ["Medium"]
      272 SETTABLEKS                       R32 R31 K54 ["size"]
      274 CALL                             R29 2 1
      275 JUMP                             ; [+4]
      276 GETUPVAL                         R29 10
      277 GETUPVAL                         R30 15
      278 DUPTABLE                         R31 K65 [{["tag"] = "size-500-500 content-emphasis", ["Image"] = "icons/status/error_large", ["LayoutOrder"] = 1}]
      279 CALL                             R29 2 1
      280 SETTABLEKS                       R29 R28 K46 ["Icon"]
      282 GETUPVAL                         R29 10
      283 GETUPVAL                         R30 16
      284 DUPTABLE                         R31 K72 [{["tag"] = "shrink size-full-0 auto-y text-body-small text-wrap text-align-x-left", ["Text"], ["RichText"], ["onActivated"], ["stateLayer"], ["LayoutOrder"] = 2, ["testId"]}]
      285 SETTABLEKS                       R23 R31 K67 ["Text"]
      287 JUMPIFNOTEQKNIL                  R16 ; [+2]
      289 LOADB                            R32 0 +1
      290 LOADB                            R32 1
      291 SETTABLEKS                       R32 R31 K68 ["RichText"]
      293 SETTABLEKS                       R17 R31 K69 ["onActivated"]
      295 DUPTABLE                         R32 K74 [{"affordance"}]
      296 GETUPVAL                         R33 17
      297 GETTABLEKS                       R33 R33 K75 ["None"]
      299 SETTABLEKS                       R33 R32 K73 ["affordance"]
      301 SETTABLEKS                       R32 R31 K70 ["stateLayer"]
      303 JUMPIFNOT                        R16 ; [+6]
      304 GETUPVAL                         R32 18
      305 GETTABLEKS                       R32 R32 K76 ["Alert"]
      307 GETTABLEKS                       R32 R32 K77 ["Continue"]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R32
      311 SETTABLEKS                       R32 R31 K71 ["testId"]
      313 CALL                             R29 2 1
      314 SETTABLEKS                       R29 R28 K47 ["Message"]
      316 GETUPVAL                         R29 10
      317 GETUPVAL                         R30 11
      318 DUPTABLE                         R31 K80 [{["tag"] = "fill", ["LayoutOrder"] = 3}]
      319 CALL                             R29 2 1
      320 SETTABLEKS                       R29 R28 K48 ["Spacer"]
      322 MOVE                             R29 R24
      323 JUMPIFNOT                        R29 ; [+50]
      324 GETUPVAL                         R30 8
      325 GETTABLEKS                       R30 R30 K51 ["FFlagAssistantUseBuilderIcons"]
      327 JUMPIFNOT                        R30 ; [+31]
      328 GETUPVAL                         R29 10
      329 GETUPVAL                         R30 19
      330 DUPTABLE                         R31 K84 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      331 GETUPVAL                         R32 13
      332 GETTABLEKS                       R32 R32 K85 ["XSmall"]
      334 SETTABLEKS                       R32 R31 K81 ["icon"]
      336 GETUPVAL                         R32 20
      337 GETTABLEKS                       R32 R32 K85 ["XSmall"]
      339 SETTABLEKS                       R32 R31 K54 ["size"]
      341 GETUPVAL                         R32 21
      342 GETTABLEKS                       R32 R32 K86 ["Utility"]
      344 SETTABLEKS                       R32 R31 K82 ["variant"]
      346 NEWCLOSURE                       R32 P3
      347 CAPTURE                          VAL R13
      348 SETTABLEKS                       R32 R31 K69 ["onActivated"]
      350 GETUPVAL                         R32 18
      351 GETTABLEKS                       R32 R32 K76 ["Alert"]
      353 GETTABLEKS                       R32 R32 K87 ["Close"]
      355 SETTABLEKS                       R32 R31 K71 ["testId"]
      357 CALL                             R29 2 1
      358 JUMP                             ; [+15]
      359 GETUPVAL                         R29 10
      360 GETUPVAL                         R30 22
      361 DUPTABLE                         R31 K92 [{["icon"] = "icons/navigation/close_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      362 NEWCLOSURE                       R32 P4
      363 CAPTURE                          VAL R13
      364 SETTABLEKS                       R32 R31 K69 ["onActivated"]
      366 GETUPVAL                         R32 18
      367 GETTABLEKS                       R32 R32 K76 ["Alert"]
      369 GETTABLEKS                       R32 R32 K87 ["Close"]
      371 SETTABLEKS                       R32 R31 K71 ["testId"]
      373 CALL                             R29 2 1
      374 SETTABLEKS                       R29 R28 K49 ["CloseButton"]
      376 CALL                             R25 3 1
      377 SETTABLEKS                       R25 R22 K60 ["Content"]
      379 GETUPVAL                         R25 10
      380 GETUPVAL                         R26 23
      381 DUPTABLE                         R27 K93 [{"variant", "LayoutOrder"}]
      382 GETUPVAL                         R28 1
      383 GETTABLEKS                       R28 R28 K94 ["Enums"]
      385 GETTABLEKS                       R28 R28 K95 ["DividerVariant"]
      387 GETTABLEKS                       R28 R28 K96 ["Default"]
      389 SETTABLEKS                       R28 R27 K82 ["variant"]
      391 MOVE                             R28 R21
      392 CALL                             R28 0 1
      393 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      395 CALL                             R25 2 1
      396 SETTABLEKS                       R25 R22 K97 ["Divider"]
      398 GETTABLEKS                       R23 R8 K98 ["root"]
      400 SETTABLEKS                       R23 R22 K99 ["DialogWidget"]
      402 GETUPVAL                         R23 10
      403 GETUPVAL                         R24 11
      404 DUPTABLE                         R25 K101 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      405 GETTABLEKS                       R26 R0 K31 ["LayoutOrder"]
      407 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      409 MOVE                             R26 R22
      410 CALL                             R23 3 -1
      411 RETURN                           R23 -1

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
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["CustomIconButton"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K13 ["LLMProviderSelectionContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Parent"]
       55 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Resources"]
       69 GETTABLEKS                       R10 R10 K19 ["Localization"]
       71 GETTABLEKS                       R10 R10 K20 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K21 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["FlagUtils"]
       83 GETTABLEKS                       R12 R12 K23 ["getIsCreditMeteringEnabled"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K25 ["useSettingsDialog"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R4 K26 ["Divider"]
       95 GETTABLEKS                       R14 R4 K27 ["Icon"]
       97 GETTABLEKS                       R15 R4 K28 ["IconButton"]
       99 GETTABLEKS                       R16 R4 K29 ["Image"]
      101 GETTABLEKS                       R17 R4 K30 ["Text"]
      103 GETTABLEKS                       R18 R4 K31 ["View"]
      105 GETTABLEKS                       R19 R4 K32 ["Enums"]
      107 GETTABLEKS                       R19 R19 K33 ["IconName"]
      109 GETTABLEKS                       R20 R4 K32 ["Enums"]
      111 GETTABLEKS                       R20 R20 K34 ["IconSize"]
      113 GETTABLEKS                       R21 R4 K32 ["Enums"]
      115 GETTABLEKS                       R21 R21 K35 ["InputSize"]
      117 GETTABLEKS                       R22 R4 K32 ["Enums"]
      119 GETTABLEKS                       R22 R22 K36 ["ButtonVariant"]
      121 GETTABLEKS                       R23 R4 K32 ["Enums"]
      123 GETTABLEKS                       R23 R23 K37 ["StateLayerAffordance"]
      125 GETTABLEKS                       R24 R7 K38 ["createNextOrder"]
      127 GETTABLEKS                       R25 R6 K39 ["createElement"]
      129 DUPCLOSURE                       R26 K40 [PROTO_5]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R24
      140 CAPTURE                          VAL R25
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R13
      154 GETTABLEKS                       R27 R6 K41 ["memo"]
      156 MOVE                             R28 R26
      157 CALL                             R27 1 -1
      158 RETURN                           R27 -1
