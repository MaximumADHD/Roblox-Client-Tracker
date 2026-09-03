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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["Hooks"]
        9 GETTABLEKS                       R1 R1 K2 ["useTokens"]
       11 CALL                             R1 0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["useContext"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["Context"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K5 ["quotaSummary"]
       21 GETTABLEKS                       R4 R2 K6 ["blockReason"]
       23 GETTABLEKS                       R5 R2 K7 ["openBuyRobux"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["useContext"]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R7 R7 K4 ["Context"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R8 R6 K8 ["selectedModel"]
       34 GETUPVAL                         R9 5
       35 GETTABLEKS                       R9 R9 K9 ["DEFAULT_STUDIO_MODEL"]
       37 JUMPIFEQ                         R8 R9 ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 GETUPVAL                         R8 6
       42 CALL                             R8 0 1
       43 GETTABLEKS                       R9 R8 K10 ["showUsage"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K11 ["useCallback"]
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R12 0 2
       53 MOVE                             R13 R9
       54 MOVE                             R14 R5
       55 SETLIST                          R12 R13 2 [1]
       57 CALL                             R10 2 1
       58 JUMPIFNOT                        R7 ; [+7]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K12 ["getBannerVariant"]
       62 MOVE                             R12 R3
       63 MOVE                             R13 R4
       64 CALL                             R11 2 1
       65 JUMP                             ; [+1]
       66 LOADNIL                          R11
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R12 R12 K13 ["useState"]
       70 LOADB                            R13 0
       71 CALL                             R12 1 2
       72 GETUPVAL                         R14 2
       73 GETTABLEKS                       R14 R14 K14 ["useRef"]
       75 MOVE                             R15 R11
       76 CALL                             R14 1 1
       77 GETUPVAL                         R15 2
       78 GETTABLEKS                       R15 R15 K15 ["useEffect"]
       80 NEWCLOSURE                       R16 P1
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R13
       84 NEWTABLE                         R17 0 1
       86 MOVE                             R18 R11
       87 SETLIST                          R17 R18 1 [1]
       89 CALL                             R15 2 0
       90 GETUPVAL                         R15 2
       91 GETTABLEKS                       R15 R15 K16 ["useMemo"]
       93 DUPCLOSURE                       R16 K17 [PROTO_2]
       94 CAPTURE                          UPVAL U7
       95 NEWTABLE                         R17 0 1
       97 GETUPVAL                         R18 7
       98 GETTABLEKS                       R18 R18 K18 ["locale"]
      100 SETLIST                          R17 R18 1 [1]
      102 CALL                             R15 2 1
      103 LOADNIL                          R16
      104 LOADNIL                          R17
      105 JUMPIFNOTEQKS                    R11 K19 ["LimitReached"] ; [+5]
      107 GETTABLEKS                       R16 R15 K20 ["ManageLimit"]
      109 MOVE                             R17 R9
      110 JUMP                             ; [+19]
      111 JUMPIFNOTEQKS                    R11 K21 ["FreeTrialExhausted"] ; [+5]
      113 GETTABLEKS                       R16 R15 K22 ["ViewUsage"]
      115 MOVE                             R17 R9
      116 JUMP                             ; [+13]
      117 JUMPIFNOTEQKS                    R11 K23 ["OutOfRobux"] ; [+12]
      119 GETUPVAL                         R18 0
      120 GETTABLEKS                       R18 R18 K24 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      122 JUMPIFNOT                        R18 ; [+4]
      123 GETTABLEKS                       R16 R15 K25 ["Buy"]
      125 MOVE                             R17 R10
      126 JUMP                             ; [+3]
      127 GETTABLEKS                       R16 R15 K22 ["ViewUsage"]
      129 MOVE                             R17 R9
      130 GETUPVAL                         R19 0
      131 GETTABLEKS                       R19 R19 K24 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      133 JUMPIFNOT                        R19 ; [+3]
      134 GETTABLEKS                       R18 R15 K21 ["FreeTrialExhausted"]
      136 JUMP                             ; [+2]
      137 GETTABLEKS                       R18 R15 K19 ["LimitReached"]
      139 JUMPIFNOTEQKS                    R11 K23 ["OutOfRobux"] ; [+4]
      141 GETTABLEKS                       R19 R15 K23 ["OutOfRobux"]
      143 JUMP                             ; [+15]
      144 JUMPIFNOTEQKS                    R11 K19 ["LimitReached"] ; [+4]
      146 GETTABLEKS                       R19 R15 K19 ["LimitReached"]
      148 JUMP                             ; [+10]
      149 JUMPIFNOTEQKS                    R11 K26 ["FreeUsageExhausted"] ; [+4]
      151 GETTABLEKS                       R19 R15 K26 ["FreeUsageExhausted"]
      153 JUMP                             ; [+5]
      154 JUMPIFNOTEQKS                    R11 K21 ["FreeTrialExhausted"] ; [+3]
      156 MOVE                             R19 R18
      157 JUMP                             ; [+1]
      158 LOADNIL                          R19
      159 LOADB                            R20 0
      160 JUMPIFEQKNIL                     R19 ; [+6]
      162 LOADB                            R21 0
      163 JUMPIFNOTEQKS                    R11 K26 ["FreeUsageExhausted"] ; [+2]
      165 MOVE                             R21 R12
      166 NOT                              R20 R21
      167 GETUPVAL                         R21 8
      168 CALL                             R21 0 1
      169 NEWTABLE                         R22 0 0
      171 JUMPIFNOT                        R20 ; [+227]
      172 JUMPIFNOT                        R16 ; [+8]
      173 LOADK                            R24 K27 ["%* <u>%*</u>"]
      174 MOVE                             R26 R19
      175 MOVE                             R27 R16
      176 NAMECALL                         R24 R24 K28 ["format"]
      178 CALL                             R24 3 1
      179 MOVE                             R23 R24
      180 JUMP                             ; [+1]
      181 MOVE                             R23 R19
      182 JUMPIFEQKS                       R11 K26 ["FreeUsageExhausted"] ; [+2]
      184 LOADB                            R24 0 +1
      185 LOADB                            R24 1
      186 GETUPVAL                         R25 9
      187 GETUPVAL                         R26 10
      188 DUPTABLE                         R27 K33 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["padding"], ["LayoutOrder"]}]
      189 DUPTABLE                         R28 K38 [{"top", "bottom", "left", "right"}]
      190 GETIMPORT                        R29 K41 [UDim.new]
      192 LOADN                            R30 0
      193 GETTABLEKS                       R31 R1 K42 ["Padding"]
      195 GETTABLEKS                       R31 R31 K43 ["Medium"]
      197 CALL                             R29 2 1
      198 SETTABLEKS                       R29 R28 K34 ["top"]
      200 GETIMPORT                        R29 K41 [UDim.new]
      202 LOADN                            R30 0
      203 GETTABLEKS                       R31 R1 K42 ["Padding"]
      205 GETTABLEKS                       R31 R31 K44 ["Small"]
      207 CALL                             R29 2 1
      208 SETTABLEKS                       R29 R28 K35 ["bottom"]
      210 GETIMPORT                        R29 K41 [UDim.new]
      212 LOADN                            R30 0
      213 GETTABLEKS                       R31 R1 K42 ["Padding"]
      215 GETTABLEKS                       R31 R31 K43 ["Medium"]
      217 CALL                             R29 2 1
      218 SETTABLEKS                       R29 R28 K36 ["left"]
      220 GETIMPORT                        R29 K41 [UDim.new]
      222 LOADN                            R30 0
      223 JUMPIFNOT                        R24 ; [+5]
      224 GETTABLEKS                       R31 R1 K42 ["Padding"]
      226 GETTABLEKS                       R31 R31 K43 ["Medium"]
      228 JUMP                             ; [+5]
      229 GETTABLEKS                       R32 R1 K42 ["Padding"]
      231 GETTABLEKS                       R32 R32 K46 ["XXLarge"]
      233 MULK                             R31 R32 K45 [2]
      234 CALL                             R29 2 1
      235 SETTABLEKS                       R29 R28 K37 ["right"]
      237 SETTABLEKS                       R28 R27 K31 ["padding"]
      239 MOVE                             R28 R21
      240 CALL                             R28 0 1
      241 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      243 DUPTABLE                         R28 K51 [{"Icon", "Message", "Spacer", "CloseButton"}]
      244 GETUPVAL                         R30 0
      245 GETTABLEKS                       R30 R30 K52 ["FFlagAssistantUseBuilderIcons"]
      247 JUMPIFNOT                        R30 ; [+29]
      248 GETUPVAL                         R29 9
      249 GETUPVAL                         R30 11
      250 DUPTABLE                         R31 K57 [{["name"], ["style"], ["size"], ["LayoutOrder"] = 1}]
      251 JUMPIFNOTEQKS                    R11 K26 ["FreeUsageExhausted"] ; [+5]
      253 GETUPVAL                         R32 12
      254 GETTABLEKS                       R32 R32 K58 ["Robux"]
      256 JUMP                             ; [+3]
      257 GETUPVAL                         R32 12
      258 GETTABLEKS                       R32 R32 K59 ["TriangleExclamation"]
      260 SETTABLEKS                       R32 R31 K53 ["name"]
      262 GETTABLEKS                       R32 R1 K60 ["Color"]
      264 GETTABLEKS                       R32 R32 K61 ["Content"]
      266 GETTABLEKS                       R32 R32 K62 ["Emphasis"]
      268 SETTABLEKS                       R32 R31 K54 ["style"]
      270 GETUPVAL                         R32 13
      271 GETTABLEKS                       R32 R32 K43 ["Medium"]
      273 SETTABLEKS                       R32 R31 K55 ["size"]
      275 CALL                             R29 2 1
      276 JUMP                             ; [+4]
      277 GETUPVAL                         R29 9
      278 GETUPVAL                         R30 14
      279 DUPTABLE                         R31 K66 [{["tag"] = "size-500-500 content-emphasis", ["Image"] = "icons/status/error_large", ["LayoutOrder"] = 1}]
      280 CALL                             R29 2 1
      281 SETTABLEKS                       R29 R28 K47 ["Icon"]
      283 GETUPVAL                         R29 9
      284 GETUPVAL                         R30 15
      285 DUPTABLE                         R31 K73 [{["tag"] = "shrink size-full-0 auto-y text-body-small text-wrap text-align-x-left", ["Text"], ["RichText"], ["onActivated"], ["stateLayer"], ["LayoutOrder"] = 2, ["testId"]}]
      286 SETTABLEKS                       R23 R31 K68 ["Text"]
      288 JUMPIFNOTEQKNIL                  R16 ; [+2]
      290 LOADB                            R32 0 +1
      291 LOADB                            R32 1
      292 SETTABLEKS                       R32 R31 K69 ["RichText"]
      294 SETTABLEKS                       R17 R31 K70 ["onActivated"]
      296 DUPTABLE                         R32 K75 [{"affordance"}]
      297 GETUPVAL                         R33 16
      298 GETTABLEKS                       R33 R33 K76 ["None"]
      300 SETTABLEKS                       R33 R32 K74 ["affordance"]
      302 SETTABLEKS                       R32 R31 K71 ["stateLayer"]
      304 JUMPIFNOT                        R16 ; [+6]
      305 GETUPVAL                         R32 17
      306 GETTABLEKS                       R32 R32 K77 ["Alert"]
      308 GETTABLEKS                       R32 R32 K78 ["Continue"]
      310 JUMP                             ; [+1]
      311 LOADNIL                          R32
      312 SETTABLEKS                       R32 R31 K72 ["testId"]
      314 CALL                             R29 2 1
      315 SETTABLEKS                       R29 R28 K48 ["Message"]
      317 GETUPVAL                         R29 9
      318 GETUPVAL                         R30 10
      319 DUPTABLE                         R31 K81 [{["tag"] = "fill", ["LayoutOrder"] = 3}]
      320 CALL                             R29 2 1
      321 SETTABLEKS                       R29 R28 K49 ["Spacer"]
      323 MOVE                             R29 R24
      324 JUMPIFNOT                        R29 ; [+50]
      325 GETUPVAL                         R30 0
      326 GETTABLEKS                       R30 R30 K52 ["FFlagAssistantUseBuilderIcons"]
      328 JUMPIFNOT                        R30 ; [+31]
      329 GETUPVAL                         R29 9
      330 GETUPVAL                         R30 18
      331 DUPTABLE                         R31 K85 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      332 GETUPVAL                         R32 12
      333 GETTABLEKS                       R32 R32 K86 ["XSmall"]
      335 SETTABLEKS                       R32 R31 K82 ["icon"]
      337 GETUPVAL                         R32 19
      338 GETTABLEKS                       R32 R32 K86 ["XSmall"]
      340 SETTABLEKS                       R32 R31 K55 ["size"]
      342 GETUPVAL                         R32 20
      343 GETTABLEKS                       R32 R32 K87 ["Utility"]
      345 SETTABLEKS                       R32 R31 K83 ["variant"]
      347 NEWCLOSURE                       R32 P3
      348 CAPTURE                          VAL R13
      349 SETTABLEKS                       R32 R31 K70 ["onActivated"]
      351 GETUPVAL                         R32 17
      352 GETTABLEKS                       R32 R32 K77 ["Alert"]
      354 GETTABLEKS                       R32 R32 K88 ["Close"]
      356 SETTABLEKS                       R32 R31 K72 ["testId"]
      358 CALL                             R29 2 1
      359 JUMP                             ; [+15]
      360 GETUPVAL                         R29 9
      361 GETUPVAL                         R30 21
      362 DUPTABLE                         R31 K93 [{["icon"] = "icons/navigation/close_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      363 NEWCLOSURE                       R32 P4
      364 CAPTURE                          VAL R13
      365 SETTABLEKS                       R32 R31 K70 ["onActivated"]
      367 GETUPVAL                         R32 17
      368 GETTABLEKS                       R32 R32 K77 ["Alert"]
      370 GETTABLEKS                       R32 R32 K88 ["Close"]
      372 SETTABLEKS                       R32 R31 K72 ["testId"]
      374 CALL                             R29 2 1
      375 SETTABLEKS                       R29 R28 K50 ["CloseButton"]
      377 CALL                             R25 3 1
      378 SETTABLEKS                       R25 R22 K61 ["Content"]
      380 GETUPVAL                         R25 9
      381 GETUPVAL                         R26 22
      382 DUPTABLE                         R27 K94 [{"variant", "LayoutOrder"}]
      383 GETUPVAL                         R28 1
      384 GETTABLEKS                       R28 R28 K95 ["Enums"]
      386 GETTABLEKS                       R28 R28 K96 ["DividerVariant"]
      388 GETTABLEKS                       R28 R28 K97 ["Default"]
      390 SETTABLEKS                       R28 R27 K83 ["variant"]
      392 MOVE                             R28 R21
      393 CALL                             R28 0 1
      394 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      396 CALL                             R25 2 1
      397 SETTABLEKS                       R25 R22 K98 ["Divider"]
      399 GETTABLEKS                       R23 R8 K99 ["root"]
      401 SETTABLEKS                       R23 R22 K100 ["DialogWidget"]
      403 GETUPVAL                         R23 9
      404 GETUPVAL                         R24 10
      405 DUPTABLE                         R25 K102 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      406 GETTABLEKS                       R26 R0 K32 ["LayoutOrder"]
      408 SETTABLEKS                       R26 R25 K32 ["LayoutOrder"]
      410 MOVE                             R26 R22
      411 CALL                             R23 3 -1
      412 RETURN                           R23 -1

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
       81 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useSettingsDialog"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R4 K24 ["Divider"]
       88 GETTABLEKS                       R13 R4 K25 ["Icon"]
       90 GETTABLEKS                       R14 R4 K26 ["IconButton"]
       92 GETTABLEKS                       R15 R4 K27 ["Image"]
       94 GETTABLEKS                       R16 R4 K28 ["Text"]
       96 GETTABLEKS                       R17 R4 K29 ["View"]
       98 GETTABLEKS                       R18 R4 K30 ["Enums"]
      100 GETTABLEKS                       R18 R18 K31 ["IconName"]
      102 GETTABLEKS                       R19 R4 K30 ["Enums"]
      104 GETTABLEKS                       R19 R19 K32 ["IconSize"]
      106 GETTABLEKS                       R20 R4 K30 ["Enums"]
      108 GETTABLEKS                       R20 R20 K33 ["InputSize"]
      110 GETTABLEKS                       R21 R4 K30 ["Enums"]
      112 GETTABLEKS                       R21 R21 K34 ["ButtonVariant"]
      114 GETTABLEKS                       R22 R4 K30 ["Enums"]
      116 GETTABLEKS                       R22 R22 K35 ["StateLayerAffordance"]
      118 GETTABLEKS                       R23 R7 K36 ["createNextOrder"]
      120 GETTABLEKS                       R24 R6 K37 ["createElement"]
      122 DUPCLOSURE                       R25 K38 [PROTO_5]
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R24
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R22
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R21
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R12
      146 GETTABLEKS                       R26 R6 K39 ["memo"]
      148 MOVE                             R27 R25
      149 CALL                             R26 1 -1
      150 RETURN                           R26 -1
