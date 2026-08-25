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
      110 JUMP                             ; [+11]
      111 JUMPIFNOTEQKS                    R11 K21 ["FreeTrialExhausted"] ; [+5]
      113 GETTABLEKS                       R16 R15 K22 ["ViewUsage"]
      115 MOVE                             R17 R9
      116 JUMP                             ; [+5]
      117 JUMPIFNOTEQKS                    R11 K23 ["OutOfRobux"] ; [+4]
      119 GETTABLEKS                       R16 R15 K24 ["Buy"]
      121 MOVE                             R17 R10
      122 JUMPIFNOTEQKS                    R11 K23 ["OutOfRobux"] ; [+4]
      124 GETTABLEKS                       R18 R15 K23 ["OutOfRobux"]
      126 JUMP                             ; [+16]
      127 JUMPIFNOTEQKS                    R11 K19 ["LimitReached"] ; [+4]
      129 GETTABLEKS                       R18 R15 K19 ["LimitReached"]
      131 JUMP                             ; [+11]
      132 JUMPIFNOTEQKS                    R11 K25 ["FreeUsageExhausted"] ; [+4]
      134 GETTABLEKS                       R18 R15 K25 ["FreeUsageExhausted"]
      136 JUMP                             ; [+6]
      137 JUMPIFNOTEQKS                    R11 K21 ["FreeTrialExhausted"] ; [+4]
      139 GETTABLEKS                       R18 R15 K21 ["FreeTrialExhausted"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R18
      143 LOADB                            R19 0
      144 JUMPIFEQKNIL                     R18 ; [+6]
      146 LOADB                            R20 0
      147 JUMPIFNOTEQKS                    R11 K25 ["FreeUsageExhausted"] ; [+2]
      149 MOVE                             R20 R12
      150 NOT                              R19 R20
      151 GETUPVAL                         R20 8
      152 CALL                             R20 0 1
      153 NEWTABLE                         R21 0 0
      155 JUMPIFNOT                        R19 ; [+227]
      156 JUMPIFNOT                        R16 ; [+8]
      157 LOADK                            R23 K26 ["%* <u>%*</u>"]
      158 MOVE                             R25 R18
      159 MOVE                             R26 R16
      160 NAMECALL                         R23 R23 K27 ["format"]
      162 CALL                             R23 3 1
      163 MOVE                             R22 R23
      164 JUMP                             ; [+1]
      165 MOVE                             R22 R18
      166 JUMPIFEQKS                       R11 K25 ["FreeUsageExhausted"] ; [+2]
      168 LOADB                            R23 0 +1
      169 LOADB                            R23 1
      170 GETUPVAL                         R24 9
      171 GETUPVAL                         R25 10
      172 DUPTABLE                         R26 K32 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["padding"], ["LayoutOrder"]}]
      173 DUPTABLE                         R27 K37 [{"top", "bottom", "left", "right"}]
      174 GETIMPORT                        R28 K40 [UDim.new]
      176 LOADN                            R29 0
      177 GETTABLEKS                       R30 R1 K41 ["Padding"]
      179 GETTABLEKS                       R30 R30 K42 ["Medium"]
      181 CALL                             R28 2 1
      182 SETTABLEKS                       R28 R27 K33 ["top"]
      184 GETIMPORT                        R28 K40 [UDim.new]
      186 LOADN                            R29 0
      187 GETTABLEKS                       R30 R1 K41 ["Padding"]
      189 GETTABLEKS                       R30 R30 K43 ["Small"]
      191 CALL                             R28 2 1
      192 SETTABLEKS                       R28 R27 K34 ["bottom"]
      194 GETIMPORT                        R28 K40 [UDim.new]
      196 LOADN                            R29 0
      197 GETTABLEKS                       R30 R1 K41 ["Padding"]
      199 GETTABLEKS                       R30 R30 K42 ["Medium"]
      201 CALL                             R28 2 1
      202 SETTABLEKS                       R28 R27 K35 ["left"]
      204 GETIMPORT                        R28 K40 [UDim.new]
      206 LOADN                            R29 0
      207 JUMPIFNOT                        R23 ; [+5]
      208 GETTABLEKS                       R30 R1 K41 ["Padding"]
      210 GETTABLEKS                       R30 R30 K42 ["Medium"]
      212 JUMP                             ; [+5]
      213 GETTABLEKS                       R31 R1 K41 ["Padding"]
      215 GETTABLEKS                       R31 R31 K45 ["XXLarge"]
      217 MULK                             R30 R31 K44 [2]
      218 CALL                             R28 2 1
      219 SETTABLEKS                       R28 R27 K36 ["right"]
      221 SETTABLEKS                       R27 R26 K30 ["padding"]
      223 MOVE                             R27 R20
      224 CALL                             R27 0 1
      225 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      227 DUPTABLE                         R27 K50 [{"Icon", "Message", "Spacer", "CloseButton"}]
      228 GETUPVAL                         R29 0
      229 GETTABLEKS                       R29 R29 K51 ["FFlagAssistantUseBuilderIcons"]
      231 JUMPIFNOT                        R29 ; [+29]
      232 GETUPVAL                         R28 9
      233 GETUPVAL                         R29 11
      234 DUPTABLE                         R30 K56 [{["name"], ["style"], ["size"], ["LayoutOrder"] = 1}]
      235 JUMPIFNOTEQKS                    R11 K25 ["FreeUsageExhausted"] ; [+5]
      237 GETUPVAL                         R31 12
      238 GETTABLEKS                       R31 R31 K57 ["Robux"]
      240 JUMP                             ; [+3]
      241 GETUPVAL                         R31 12
      242 GETTABLEKS                       R31 R31 K58 ["TriangleExclamation"]
      244 SETTABLEKS                       R31 R30 K52 ["name"]
      246 GETTABLEKS                       R31 R1 K59 ["Color"]
      248 GETTABLEKS                       R31 R31 K60 ["Content"]
      250 GETTABLEKS                       R31 R31 K61 ["Emphasis"]
      252 SETTABLEKS                       R31 R30 K53 ["style"]
      254 GETUPVAL                         R31 13
      255 GETTABLEKS                       R31 R31 K42 ["Medium"]
      257 SETTABLEKS                       R31 R30 K54 ["size"]
      259 CALL                             R28 2 1
      260 JUMP                             ; [+4]
      261 GETUPVAL                         R28 9
      262 GETUPVAL                         R29 14
      263 DUPTABLE                         R30 K65 [{["tag"] = "size-500-500 content-emphasis", ["Image"] = "icons/status/error_large", ["LayoutOrder"] = 1}]
      264 CALL                             R28 2 1
      265 SETTABLEKS                       R28 R27 K46 ["Icon"]
      267 GETUPVAL                         R28 9
      268 GETUPVAL                         R29 15
      269 DUPTABLE                         R30 K72 [{["tag"] = "shrink size-full-0 auto-y text-body-small text-wrap text-align-x-left", ["Text"], ["RichText"], ["onActivated"], ["stateLayer"], ["LayoutOrder"] = 2, ["testId"]}]
      270 SETTABLEKS                       R22 R30 K67 ["Text"]
      272 JUMPIFNOTEQKNIL                  R16 ; [+2]
      274 LOADB                            R31 0 +1
      275 LOADB                            R31 1
      276 SETTABLEKS                       R31 R30 K68 ["RichText"]
      278 SETTABLEKS                       R17 R30 K69 ["onActivated"]
      280 DUPTABLE                         R31 K74 [{"affordance"}]
      281 GETUPVAL                         R32 16
      282 GETTABLEKS                       R32 R32 K75 ["None"]
      284 SETTABLEKS                       R32 R31 K73 ["affordance"]
      286 SETTABLEKS                       R31 R30 K70 ["stateLayer"]
      288 JUMPIFNOT                        R16 ; [+6]
      289 GETUPVAL                         R31 17
      290 GETTABLEKS                       R31 R31 K76 ["Alert"]
      292 GETTABLEKS                       R31 R31 K77 ["Continue"]
      294 JUMP                             ; [+1]
      295 LOADNIL                          R31
      296 SETTABLEKS                       R31 R30 K71 ["testId"]
      298 CALL                             R28 2 1
      299 SETTABLEKS                       R28 R27 K47 ["Message"]
      301 GETUPVAL                         R28 9
      302 GETUPVAL                         R29 10
      303 DUPTABLE                         R30 K80 [{["tag"] = "fill", ["LayoutOrder"] = 3}]
      304 CALL                             R28 2 1
      305 SETTABLEKS                       R28 R27 K48 ["Spacer"]
      307 MOVE                             R28 R23
      308 JUMPIFNOT                        R28 ; [+50]
      309 GETUPVAL                         R29 0
      310 GETTABLEKS                       R29 R29 K51 ["FFlagAssistantUseBuilderIcons"]
      312 JUMPIFNOT                        R29 ; [+31]
      313 GETUPVAL                         R28 9
      314 GETUPVAL                         R29 18
      315 DUPTABLE                         R30 K84 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      316 GETUPVAL                         R31 12
      317 GETTABLEKS                       R31 R31 K85 ["XSmall"]
      319 SETTABLEKS                       R31 R30 K81 ["icon"]
      321 GETUPVAL                         R31 19
      322 GETTABLEKS                       R31 R31 K85 ["XSmall"]
      324 SETTABLEKS                       R31 R30 K54 ["size"]
      326 GETUPVAL                         R31 20
      327 GETTABLEKS                       R31 R31 K86 ["Utility"]
      329 SETTABLEKS                       R31 R30 K82 ["variant"]
      331 NEWCLOSURE                       R31 P3
      332 CAPTURE                          VAL R13
      333 SETTABLEKS                       R31 R30 K69 ["onActivated"]
      335 GETUPVAL                         R31 17
      336 GETTABLEKS                       R31 R31 K76 ["Alert"]
      338 GETTABLEKS                       R31 R31 K87 ["Close"]
      340 SETTABLEKS                       R31 R30 K71 ["testId"]
      342 CALL                             R28 2 1
      343 JUMP                             ; [+15]
      344 GETUPVAL                         R28 9
      345 GETUPVAL                         R29 21
      346 DUPTABLE                         R30 K92 [{["icon"] = "icons/navigation/close_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      347 NEWCLOSURE                       R31 P4
      348 CAPTURE                          VAL R13
      349 SETTABLEKS                       R31 R30 K69 ["onActivated"]
      351 GETUPVAL                         R31 17
      352 GETTABLEKS                       R31 R31 K76 ["Alert"]
      354 GETTABLEKS                       R31 R31 K87 ["Close"]
      356 SETTABLEKS                       R31 R30 K71 ["testId"]
      358 CALL                             R28 2 1
      359 SETTABLEKS                       R28 R27 K49 ["CloseButton"]
      361 CALL                             R24 3 1
      362 SETTABLEKS                       R24 R21 K60 ["Content"]
      364 GETUPVAL                         R24 9
      365 GETUPVAL                         R25 22
      366 DUPTABLE                         R26 K93 [{"variant", "LayoutOrder"}]
      367 GETUPVAL                         R27 1
      368 GETTABLEKS                       R27 R27 K94 ["Enums"]
      370 GETTABLEKS                       R27 R27 K95 ["DividerVariant"]
      372 GETTABLEKS                       R27 R27 K96 ["Default"]
      374 SETTABLEKS                       R27 R26 K82 ["variant"]
      376 MOVE                             R27 R20
      377 CALL                             R27 0 1
      378 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      380 CALL                             R24 2 1
      381 SETTABLEKS                       R24 R21 K97 ["Divider"]
      383 GETTABLEKS                       R22 R8 K98 ["root"]
      385 SETTABLEKS                       R22 R21 K99 ["DialogWidget"]
      387 GETUPVAL                         R22 9
      388 GETUPVAL                         R23 10
      389 DUPTABLE                         R24 K101 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      390 GETTABLEKS                       R25 R0 K31 ["LayoutOrder"]
      392 SETTABLEKS                       R25 R24 K31 ["LayoutOrder"]
      394 MOVE                             R25 R21
      395 CALL                             R22 3 -1
      396 RETURN                           R22 -1

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
