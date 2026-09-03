PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Title", "LoadUsageError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["CreditMetering"]
        3 LOADK                            R4 K4 ["UsageTitle"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["CreditMetering"]
       11 LOADK                            R4 K1 ["LoadUsageError"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["LoadUsageError"]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{[1] = "row align-y-center size-full-0 auto-y padding-bottom-small", ["LayoutOrder"], ["testId"]}]
        3 GETUPVAL                         R4 2
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K5 ["DailyUsage"]
       10 GETTABLEKS                       R4 R4 K6 ["Header"]
       12 SETTABLEKS                       R4 R3 K3 ["testId"]
       14 DUPTABLE                         R4 K10 [{"Title", "Spacer", "Balance"}]
       15 GETUPVAL                         R5 0
       16 GETUPVAL                         R6 4
       17 DUPTABLE                         R7 K14 [{["Text"], [2] = "auto-xy text-title-large text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
       18 GETUPVAL                         R8 5
       19 GETTABLEKS                       R8 R8 K7 ["Title"]
       21 SETTABLEKS                       R8 R7 K11 ["Text"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K7 ["Title"]
       26 GETUPVAL                         R5 0
       27 GETUPVAL                         R6 1
       28 DUPTABLE                         R7 K17 [{[1] = "fill", ["LayoutOrder"] = 2}]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K8 ["Spacer"]
       32 SETTABLEKS                       R0 R4 K9 ["Balance"]
       34 CALL                             R1 3 -1
       35 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["useContext"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["Context"]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R2 R1 K3 ["quotaSummary"]
       15 GETTABLEKS                       R3 R1 K4 ["hasError"]
       17 GETTABLEKS                       R4 R1 K5 ["blockReason"]
       19 GETTABLEKS                       R5 R1 K6 ["setDailyLimit"]
       21 GETTABLEKS                       R6 R1 K7 ["openBuyRobux"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K1 ["useContext"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K2 ["Context"]
       29 CALL                             R7 1 1
       30 GETTABLEKS                       R9 R7 K8 ["selectedModel"]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K9 ["DEFAULT_STUDIO_MODEL"]
       35 JUMPIFEQ                         R9 R10 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 GETUPVAL                         R9 5
       40 CALL                             R9 0 1
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K10 ["useMemo"]
       44 DUPCLOSURE                       R11 K11 [PROTO_0]
       45 CAPTURE                          UPVAL U6
       46 NEWTABLE                         R12 0 1
       48 GETUPVAL                         R13 6
       49 GETTABLEKS                       R13 R13 K12 ["locale"]
       51 SETLIST                          R12 R13 1 [1]
       53 CALL                             R10 2 1
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          VAL R10
       61 JUMPIF                           R2 ; [+66]
       62 GETUPVAL                         R12 7
       63 GETUPVAL                         R13 8
       64 DUPTABLE                         R14 K16 [{["tag"] = "col align-x-center size-full-0 auto-y", ["LayoutOrder"]}]
       65 GETTABLEKS                       R15 R0 K15 ["LayoutOrder"]
       67 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
       69 JUMPIFNOT                        R3 ; [+21]
       70 DUPTABLE                         R15 K19 [{"Header", "Status"}]
       71 MOVE                             R16 R11
       72 LOADNIL                          R17
       73 CALL                             R16 1 1
       74 SETTABLEKS                       R16 R15 K17 ["Header"]
       76 GETUPVAL                         R16 7
       77 GETUPVAL                         R17 10
       78 DUPTABLE                         R18 K22 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-warning", ["LayoutOrder"]}]
       79 GETTABLEKS                       R19 R10 K23 ["LoadUsageError"]
       81 SETTABLEKS                       R19 R18 K20 ["Text"]
       83 MOVE                             R19 R9
       84 CALL                             R19 0 1
       85 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K18 ["Status"]
       90 JUMP                             ; [+35]
       91 DUPTABLE                         R15 K25 [{"Header", "Loading"}]
       92 MOVE                             R16 R11
       93 LOADNIL                          R17
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K17 ["Header"]
       97 GETUPVAL                         R16 7
       98 GETUPVAL                         R17 8
       99 DUPTABLE                         R18 K26 [{"LayoutOrder"}]
      100 MOVE                             R19 R9
      101 CALL                             R19 0 1
      102 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      104 DUPTABLE                         R19 K28 [{"Spinner"}]
      105 GETUPVAL                         R20 7
      106 GETUPVAL                         R21 11
      107 DUPTABLE                         R22 K31 [{"size", "testId"}]
      108 GETUPVAL                         R23 12
      109 GETTABLEKS                       R23 R23 K32 ["Medium"]
      111 SETTABLEKS                       R23 R22 K29 ["size"]
      113 GETUPVAL                         R23 9
      114 GETTABLEKS                       R23 R23 K33 ["DailyUsage"]
      116 GETTABLEKS                       R23 R23 K24 ["Loading"]
      118 SETTABLEKS                       R23 R22 K30 ["testId"]
      120 CALL                             R20 2 1
      121 SETTABLEKS                       R20 R19 K27 ["Spinner"]
      123 CALL                             R16 3 1
      124 SETTABLEKS                       R16 R15 K24 ["Loading"]
      126 CALL                             R12 3 -1
      127 RETURN                           R12 -1
      128 GETTABLEKS                       R12 R2 K34 ["limitSettings"]
      130 JUMPIF                           R12 ; [+2]
      131 NEWTABLE                         R12 0 0
      133 GETTABLEKS                       R14 R12 K35 ["additionalUsageEnabled"]
      135 JUMPIFEQKB                       R14 TRUE ; [+2]
      137 LOADB                            R13 0 +1
      138 LOADB                            R13 1
      139 GETTABLEKS                       R15 R2 K37 ["robuxBalance"]
      141 ORK                              R14 R15 K36 [0]
      142 GETUPVAL                         R16 0
      143 GETTABLEKS                       R16 R16 K38 ["FIntMinimumAssistantRobuxBalance"]
      145 JUMPIFLT                         R14 R16 ; [+2]
      147 LOADB                            R15 0 +1
      148 LOADB                            R15 1
      149 MOVE                             R16 R11
      150 GETUPVAL                         R17 7
      151 GETUPVAL                         R18 13
      152 DUPTABLE                         R19 K41 [{["robuxBalance"], ["isDisabled"], ["LayoutOrder"] = 3}]
      153 SETTABLEKS                       R14 R19 K37 ["robuxBalance"]
      155 NOT                              R20 R8
      156 SETTABLEKS                       R20 R19 K39 ["isDisabled"]
      158 CALL                             R17 2 -1
      159 CALL                             R16 -1 1
      160 GETUPVAL                         R17 7
      161 GETUPVAL                         R18 14
      162 DUPTABLE                         R19 K43 [{["quotaSummary"], ["LayoutOrder"] = 2}]
      163 SETTABLEKS                       R2 R19 K3 ["quotaSummary"]
      165 CALL                             R17 2 1
      166 GETUPVAL                         R18 7
      167 GETUPVAL                         R19 8
      168 DUPTABLE                         R20 K45 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      169 MOVE                             R21 R9
      170 CALL                             R21 0 1
      171 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      173 DUPTABLE                         R21 K47 [{"Header", "UsageBar"}]
      174 SETTABLEKS                       R16 R21 K17 ["Header"]
      176 SETTABLEKS                       R17 R21 K46 ["UsageBar"]
      178 CALL                             R18 3 1
      179 GETUPVAL                         R19 0
      180 GETTABLEKS                       R19 R19 K48 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      182 JUMPIFNOT                        R19 ; [+50]
      183 GETUPVAL                         R20 7
      184 GETUPVAL                         R21 8
      185 DUPTABLE                         R22 K51 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"] = 1}]
      186 DUPTABLE                         R23 K54 [{"AdditionalUsage", "DailyLimit"}]
      187 GETUPVAL                         R24 7
      188 GETUPVAL                         R25 15
      189 DUPTABLE                         R26 K57 [{["isCardActive"], ["isEnabled"], ["limitSettings"], ["robuxBalance"], ["setDailyLimit"], ["LayoutOrder"] = 1}]
      190 SETTABLEKS                       R8 R26 K55 ["isCardActive"]
      192 SETTABLEKS                       R13 R26 K56 ["isEnabled"]
      194 SETTABLEKS                       R12 R26 K34 ["limitSettings"]
      196 SETTABLEKS                       R14 R26 K37 ["robuxBalance"]
      198 SETTABLEKS                       R5 R26 K6 ["setDailyLimit"]
      200 CALL                             R24 2 1
      201 SETTABLEKS                       R24 R23 K52 ["AdditionalUsage"]
      203 GETUPVAL                         R24 7
      204 GETUPVAL                         R25 16
      205 DUPTABLE                         R26 K60 [{["isDisabled"], ["limitSettings"], ["robuxSpentToday"], ["robuxBalance"], ["blockReason"], ["nextResetEligibleTime"], ["setDailyLimit"], ["LayoutOrder"] = 2}]
      206 NOT                              R27 R8
      207 JUMPIF                           R27 ; [+1]
      208 NOT                              R27 R13
      209 SETTABLEKS                       R27 R26 K39 ["isDisabled"]
      211 SETTABLEKS                       R12 R26 K34 ["limitSettings"]
      213 GETTABLEKS                       R28 R2 K58 ["robuxSpentToday"]
      215 ORK                              R27 R28 K36 [0]
      216 SETTABLEKS                       R27 R26 K58 ["robuxSpentToday"]
      218 SETTABLEKS                       R14 R26 K37 ["robuxBalance"]
      220 SETTABLEKS                       R4 R26 K5 ["blockReason"]
      222 GETTABLEKS                       R27 R2 K59 ["nextResetEligibleTime"]
      224 SETTABLEKS                       R27 R26 K59 ["nextResetEligibleTime"]
      226 SETTABLEKS                       R5 R26 K6 ["setDailyLimit"]
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K53 ["DailyLimit"]
      231 CALL                             R20 3 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R20
      234 JUMPIFNOT                        R19 ; [+9]
      235 JUMPIFNOT                        R15 ; [+8]
      236 JUMPIFNOT                        R8 ; [+7]
      237 GETUPVAL                         R21 7
      238 GETUPVAL                         R22 17
      239 DUPTABLE                         R23 K61 [{["openBuyRobux"], ["LayoutOrder"] = 2}]
      240 SETTABLEKS                       R6 R23 K7 ["openBuyRobux"]
      242 CALL                             R21 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R21
      245 JUMPIFNOT                        R19 ; [+14]
      246 GETUPVAL                         R22 7
      247 GETUPVAL                         R23 8
      248 DUPTABLE                         R24 K63 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      249 MOVE                             R25 R9
      250 CALL                             R25 0 1
      251 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      253 DUPTABLE                         R25 K66 [{"LimitSections", "OutOfRobux"}]
      254 SETTABLEKS                       R20 R25 K64 ["LimitSections"]
      256 SETTABLEKS                       R21 R25 K65 ["OutOfRobux"]
      258 CALL                             R22 3 1
      259 JUMP                             ; [+1]
      260 LOADNIL                          R22
      261 DUPTABLE                         R23 K69 [{"HeaderAndUsageBar", "LimitSectionsAndCard"}]
      262 SETTABLEKS                       R18 R23 K67 ["HeaderAndUsageBar"]
      264 SETTABLEKS                       R22 R23 K68 ["LimitSectionsAndCard"]
      266 GETUPVAL                         R24 7
      267 GETUPVAL                         R25 8
      268 DUPTABLE                         R26 K63 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      269 GETTABLEKS                       R27 R0 K15 ["LayoutOrder"]
      271 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      273 MOVE                             R27 R23
      274 CALL                             R24 3 -1
      275 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AdditionalUsageSection"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K10 ["CreditMeteringContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["DailyLimitSection"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K12 ["Flags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Components"]
       50 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K14 ["LLMProviderSelectionContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K6 ["Parent"]
       61 GETTABLEKS                       R8 R8 K15 ["OutOfRobuxCard"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Parent"]
       68 GETTABLEKS                       R9 R9 K16 ["React"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Parent"]
       75 GETTABLEKS                       R10 R10 K17 ["ReactUtils"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETIMPORT                        R11 K1 [script]
       82 GETTABLEKS                       R11 R11 K6 ["Parent"]
       84 GETTABLEKS                       R11 R11 K18 ["RobuxBalanceChip"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K19 ["Util"]
       91 GETTABLEKS                       R12 R12 K20 ["TestIds"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K21 ["Resources"]
       98 GETTABLEKS                       R13 R13 K22 ["Localization"]
      100 GETTABLEKS                       R13 R13 K23 ["Translator"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K24 ["Types"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETIMPORT                        R15 K1 [script]
      112 GETTABLEKS                       R15 R15 K6 ["Parent"]
      114 GETTABLEKS                       R15 R15 K25 ["UsageBar"]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R15 R5 K26 ["Loading"]
      119 GETTABLEKS                       R16 R5 K27 ["Text"]
      121 GETTABLEKS                       R17 R5 K28 ["View"]
      123 GETTABLEKS                       R18 R5 K29 ["Enums"]
      125 GETTABLEKS                       R18 R18 K30 ["IconSize"]
      127 GETTABLEKS                       R19 R9 K31 ["createNextOrder"]
      129 GETTABLEKS                       R20 R8 K32 ["createElement"]
      131 DUPCLOSURE                       R21 K33 [PROTO_2]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R7
      150 GETTABLEKS                       R22 R8 K34 ["memo"]
      152 MOVE                             R23 R21
      153 CALL                             R22 1 -1
      154 RETURN                           R22 -1
