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
      170 JUMPIFNOT                        R20 ; [+197]
      171 JUMPIFNOT                        R16 ; [+7]
      172 LOADK                            R23 K26 ["%* <u>%*</u>"]
      173 MOVE                             R25 R19
      174 MOVE                             R26 R16
      175 NAMECALL                         R23 R23 K27 ["format"]
      177 CALL                             R23 3 1
      178 JUMP                             ; [+1]
      179 MOVE                             R23 R19
      180 JUMPIFEQKS                       R11 K25 ["FreeUsageExhausted"] ; [+2]
      182 LOADB                            R24 0 +1
      183 LOADB                            R24 1
      184 GETUPVAL                         R25 10
      185 GETUPVAL                         R26 11
      186 DUPTABLE                         R27 K32 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["padding"], ["LayoutOrder"]}]
      187 DUPTABLE                         R28 K37 [{"top", "bottom", "left", "right"}]
      188 GETIMPORT                        R29 K40 [UDim.new]
      190 LOADN                            R30 0
      191 GETTABLEKS                       R31 R1 K41 ["Padding"]
      193 GETTABLEKS                       R31 R31 K42 ["Medium"]
      195 CALL                             R29 2 1
      196 SETTABLEKS                       R29 R28 K33 ["top"]
      198 GETIMPORT                        R29 K40 [UDim.new]
      200 LOADN                            R30 0
      201 GETTABLEKS                       R31 R1 K41 ["Padding"]
      203 GETTABLEKS                       R31 R31 K43 ["Small"]
      205 CALL                             R29 2 1
      206 SETTABLEKS                       R29 R28 K34 ["bottom"]
      208 GETIMPORT                        R29 K40 [UDim.new]
      210 LOADN                            R30 0
      211 GETTABLEKS                       R31 R1 K41 ["Padding"]
      213 GETTABLEKS                       R31 R31 K42 ["Medium"]
      215 CALL                             R29 2 1
      216 SETTABLEKS                       R29 R28 K35 ["left"]
      218 GETIMPORT                        R29 K40 [UDim.new]
      220 LOADN                            R30 0
      221 JUMPIFNOT                        R24 ; [+5]
      222 GETTABLEKS                       R31 R1 K41 ["Padding"]
      224 GETTABLEKS                       R31 R31 K42 ["Medium"]
      226 JUMP                             ; [+5]
      227 GETTABLEKS                       R32 R1 K41 ["Padding"]
      229 GETTABLEKS                       R32 R32 K45 ["XXLarge"]
      231 MULK                             R31 R32 K44 [2]
      232 CALL                             R29 2 1
      233 SETTABLEKS                       R29 R28 K36 ["right"]
      235 SETTABLEKS                       R28 R27 K30 ["padding"]
      237 MOVE                             R28 R21
      238 CALL                             R28 0 1
      239 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      241 DUPTABLE                         R28 K50 [{"Icon", "Message", "Spacer", "CloseButton"}]
      242 GETUPVAL                         R29 10
      243 GETUPVAL                         R30 12
      244 DUPTABLE                         R31 K55 [{["name"], ["style"], ["size"], ["LayoutOrder"] = 1}]
      245 JUMPIFNOTEQKS                    R11 K25 ["FreeUsageExhausted"] ; [+5]
      247 GETUPVAL                         R32 13
      248 GETTABLEKS                       R32 R32 K56 ["Robux"]
      250 JUMP                             ; [+3]
      251 GETUPVAL                         R32 13
      252 GETTABLEKS                       R32 R32 K57 ["TriangleExclamation"]
      254 SETTABLEKS                       R32 R31 K51 ["name"]
      256 GETTABLEKS                       R32 R1 K58 ["Color"]
      258 GETTABLEKS                       R32 R32 K59 ["Content"]
      260 GETTABLEKS                       R32 R32 K60 ["Emphasis"]
      262 SETTABLEKS                       R32 R31 K52 ["style"]
      264 GETUPVAL                         R32 14
      265 GETTABLEKS                       R32 R32 K42 ["Medium"]
      267 SETTABLEKS                       R32 R31 K53 ["size"]
      269 CALL                             R29 2 1
      270 SETTABLEKS                       R29 R28 K46 ["Icon"]
      272 GETUPVAL                         R29 10
      273 GETUPVAL                         R30 15
      274 DUPTABLE                         R31 K67 [{["tag"] = "shrink size-full-0 auto-y text-body-small text-wrap text-align-x-left", ["Text"], ["RichText"], ["onActivated"], ["stateLayer"], ["LayoutOrder"] = 2, ["testId"]}]
      275 SETTABLEKS                       R23 R31 K62 ["Text"]
      277 JUMPIFNOTEQKNIL                  R16 ; [+2]
      279 LOADB                            R32 0 +1
      280 LOADB                            R32 1
      281 SETTABLEKS                       R32 R31 K63 ["RichText"]
      283 SETTABLEKS                       R17 R31 K64 ["onActivated"]
      285 DUPTABLE                         R32 K69 [{"affordance"}]
      286 GETUPVAL                         R33 16
      287 GETTABLEKS                       R33 R33 K70 ["None"]
      289 SETTABLEKS                       R33 R32 K68 ["affordance"]
      291 SETTABLEKS                       R32 R31 K65 ["stateLayer"]
      293 JUMPIFNOT                        R16 ; [+6]
      294 GETUPVAL                         R32 17
      295 GETTABLEKS                       R32 R32 K71 ["Alert"]
      297 GETTABLEKS                       R32 R32 K72 ["Continue"]
      299 JUMP                             ; [+1]
      300 LOADNIL                          R32
      301 SETTABLEKS                       R32 R31 K66 ["testId"]
      303 CALL                             R29 2 1
      304 SETTABLEKS                       R29 R28 K47 ["Message"]
      306 GETUPVAL                         R29 10
      307 GETUPVAL                         R30 11
      308 DUPTABLE                         R31 K75 [{["tag"] = "fill", ["LayoutOrder"] = 3}]
      309 CALL                             R29 2 1
      310 SETTABLEKS                       R29 R28 K48 ["Spacer"]
      312 MOVE                             R29 R24
      313 JUMPIFNOT                        R29 ; [+30]
      314 GETUPVAL                         R29 10
      315 GETUPVAL                         R30 18
      316 DUPTABLE                         R31 K79 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4, ["testId"]}]
      317 GETUPVAL                         R32 13
      318 GETTABLEKS                       R32 R32 K80 ["XSmall"]
      320 SETTABLEKS                       R32 R31 K76 ["icon"]
      322 GETUPVAL                         R32 19
      323 GETTABLEKS                       R32 R32 K80 ["XSmall"]
      325 SETTABLEKS                       R32 R31 K53 ["size"]
      327 GETUPVAL                         R32 20
      328 GETTABLEKS                       R32 R32 K81 ["Utility"]
      330 SETTABLEKS                       R32 R31 K77 ["variant"]
      332 NEWCLOSURE                       R32 P3
      333 CAPTURE                          VAL R13
      334 SETTABLEKS                       R32 R31 K64 ["onActivated"]
      336 GETUPVAL                         R32 17
      337 GETTABLEKS                       R32 R32 K71 ["Alert"]
      339 GETTABLEKS                       R32 R32 K82 ["Close"]
      341 SETTABLEKS                       R32 R31 K66 ["testId"]
      343 CALL                             R29 2 1
      344 SETTABLEKS                       R29 R28 K49 ["CloseButton"]
      346 CALL                             R25 3 1
      347 SETTABLEKS                       R25 R22 K59 ["Content"]
      349 GETUPVAL                         R25 10
      350 GETUPVAL                         R26 21
      351 DUPTABLE                         R27 K83 [{"variant", "LayoutOrder"}]
      352 GETUPVAL                         R28 1
      353 GETTABLEKS                       R28 R28 K84 ["Enums"]
      355 GETTABLEKS                       R28 R28 K85 ["DividerVariant"]
      357 GETTABLEKS                       R28 R28 K86 ["Default"]
      359 SETTABLEKS                       R28 R27 K77 ["variant"]
      361 MOVE                             R28 R21
      362 CALL                             R28 0 1
      363 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      365 CALL                             R25 2 1
      366 SETTABLEKS                       R25 R22 K87 ["Divider"]
      368 GETTABLEKS                       R23 R8 K88 ["root"]
      370 SETTABLEKS                       R23 R22 K89 ["DialogWidget"]
      372 GETUPVAL                         R23 10
      373 GETUPVAL                         R24 11
      374 DUPTABLE                         R25 K91 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      375 GETTABLEKS                       R26 R0 K31 ["LayoutOrder"]
      377 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      379 MOVE                             R26 R22
      380 CALL                             R23 3 -1
      381 RETURN                           R23 -1

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
      120 DUPCLOSURE                       R24 K38 [PROTO_4]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R22
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R12
      143 GETTABLEKS                       R25 R5 K39 ["memo"]
      145 MOVE                             R26 R24
      146 CALL                             R25 1 -1
      147 RETURN                           R25 -1
