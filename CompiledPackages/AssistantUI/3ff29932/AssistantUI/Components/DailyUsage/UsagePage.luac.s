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
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["useContext"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["Context"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K2 ["quotaSummary"]
       14 GETTABLEKS                       R3 R1 K3 ["hasError"]
       16 GETTABLEKS                       R4 R1 K4 ["blockReason"]
       18 GETTABLEKS                       R5 R1 K5 ["setDailyLimit"]
       20 GETTABLEKS                       R6 R1 K6 ["openBuyRobux"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K0 ["useContext"]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K1 ["Context"]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R9 R7 K7 ["selectedModel"]
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R10 R10 K8 ["DEFAULT_STUDIO_MODEL"]
       34 JUMPIFEQ                         R9 R10 ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 GETUPVAL                         R9 5
       39 CALL                             R9 0 1
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       43 DUPCLOSURE                       R11 K10 [PROTO_0]
       44 CAPTURE                          UPVAL U6
       45 NEWTABLE                         R12 0 1
       47 GETUPVAL                         R13 6
       48 GETTABLEKS                       R13 R13 K11 ["locale"]
       50 SETLIST                          R12 R13 1 [1]
       52 CALL                             R10 2 1
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          VAL R9
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          VAL R10
       60 JUMPIF                           R2 ; [+66]
       61 GETUPVAL                         R12 7
       62 GETUPVAL                         R13 8
       63 DUPTABLE                         R14 K15 [{["tag"] = "col align-x-center size-full-0 auto-y", ["LayoutOrder"]}]
       64 GETTABLEKS                       R15 R0 K14 ["LayoutOrder"]
       66 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
       68 JUMPIFNOT                        R3 ; [+21]
       69 DUPTABLE                         R15 K18 [{"Header", "Status"}]
       70 MOVE                             R16 R11
       71 LOADNIL                          R17
       72 CALL                             R16 1 1
       73 SETTABLEKS                       R16 R15 K16 ["Header"]
       75 GETUPVAL                         R16 7
       76 GETUPVAL                         R17 10
       77 DUPTABLE                         R18 K21 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-warning", ["LayoutOrder"]}]
       78 GETTABLEKS                       R19 R10 K22 ["LoadUsageError"]
       80 SETTABLEKS                       R19 R18 K19 ["Text"]
       82 MOVE                             R19 R9
       83 CALL                             R19 0 1
       84 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K17 ["Status"]
       89 JUMP                             ; [+35]
       90 DUPTABLE                         R15 K24 [{"Header", "Loading"}]
       91 MOVE                             R16 R11
       92 LOADNIL                          R17
       93 CALL                             R16 1 1
       94 SETTABLEKS                       R16 R15 K16 ["Header"]
       96 GETUPVAL                         R16 7
       97 GETUPVAL                         R17 8
       98 DUPTABLE                         R18 K25 [{"LayoutOrder"}]
       99 MOVE                             R19 R9
      100 CALL                             R19 0 1
      101 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      103 DUPTABLE                         R19 K27 [{"Spinner"}]
      104 GETUPVAL                         R20 7
      105 GETUPVAL                         R21 11
      106 DUPTABLE                         R22 K30 [{"size", "testId"}]
      107 GETUPVAL                         R23 12
      108 GETTABLEKS                       R23 R23 K31 ["Medium"]
      110 SETTABLEKS                       R23 R22 K28 ["size"]
      112 GETUPVAL                         R23 9
      113 GETTABLEKS                       R23 R23 K32 ["DailyUsage"]
      115 GETTABLEKS                       R23 R23 K23 ["Loading"]
      117 SETTABLEKS                       R23 R22 K29 ["testId"]
      119 CALL                             R20 2 1
      120 SETTABLEKS                       R20 R19 K26 ["Spinner"]
      122 CALL                             R16 3 1
      123 SETTABLEKS                       R16 R15 K23 ["Loading"]
      125 CALL                             R12 3 -1
      126 RETURN                           R12 -1
      127 GETTABLEKS                       R12 R2 K33 ["limitSettings"]
      129 JUMPIF                           R12 ; [+2]
      130 NEWTABLE                         R12 0 0
      132 GETTABLEKS                       R14 R12 K34 ["additionalUsageEnabled"]
      134 JUMPIFEQKB                       R14 TRUE ; [+2]
      136 LOADB                            R13 0 +1
      137 LOADB                            R13 1
      138 GETTABLEKS                       R15 R2 K36 ["robuxBalance"]
      140 ORK                              R14 R15 K35 [0]
      141 GETUPVAL                         R16 13
      142 GETTABLEKS                       R16 R16 K37 ["FIntMinimumAssistantRobuxBalance"]
      144 JUMPIFLT                         R14 R16 ; [+2]
      146 LOADB                            R15 0 +1
      147 LOADB                            R15 1
      148 MOVE                             R16 R11
      149 GETUPVAL                         R17 7
      150 GETUPVAL                         R18 14
      151 DUPTABLE                         R19 K40 [{["robuxBalance"], ["isDisabled"], ["LayoutOrder"] = 3}]
      152 SETTABLEKS                       R14 R19 K36 ["robuxBalance"]
      154 NOT                              R20 R8
      155 SETTABLEKS                       R20 R19 K38 ["isDisabled"]
      157 CALL                             R17 2 -1
      158 CALL                             R16 -1 1
      159 GETUPVAL                         R17 7
      160 GETUPVAL                         R18 15
      161 DUPTABLE                         R19 K42 [{["quotaSummary"], ["LayoutOrder"] = 2}]
      162 SETTABLEKS                       R2 R19 K2 ["quotaSummary"]
      164 CALL                             R17 2 1
      165 GETUPVAL                         R18 7
      166 GETUPVAL                         R19 8
      167 DUPTABLE                         R20 K44 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      168 MOVE                             R21 R9
      169 CALL                             R21 0 1
      170 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      172 DUPTABLE                         R21 K46 [{"Header", "UsageBar"}]
      173 SETTABLEKS                       R16 R21 K16 ["Header"]
      175 SETTABLEKS                       R17 R21 K45 ["UsageBar"]
      177 CALL                             R18 3 1
      178 GETUPVAL                         R19 13
      179 GETTABLEKS                       R19 R19 K47 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      181 JUMPIFNOT                        R19 ; [+50]
      182 GETUPVAL                         R20 7
      183 GETUPVAL                         R21 8
      184 DUPTABLE                         R22 K50 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"] = 1}]
      185 DUPTABLE                         R23 K53 [{"AdditionalUsage", "DailyLimit"}]
      186 GETUPVAL                         R24 7
      187 GETUPVAL                         R25 16
      188 DUPTABLE                         R26 K56 [{["isCardActive"], ["isEnabled"], ["limitSettings"], ["robuxBalance"], ["setDailyLimit"], ["LayoutOrder"] = 1}]
      189 SETTABLEKS                       R8 R26 K54 ["isCardActive"]
      191 SETTABLEKS                       R13 R26 K55 ["isEnabled"]
      193 SETTABLEKS                       R12 R26 K33 ["limitSettings"]
      195 SETTABLEKS                       R14 R26 K36 ["robuxBalance"]
      197 SETTABLEKS                       R5 R26 K5 ["setDailyLimit"]
      199 CALL                             R24 2 1
      200 SETTABLEKS                       R24 R23 K51 ["AdditionalUsage"]
      202 GETUPVAL                         R24 7
      203 GETUPVAL                         R25 17
      204 DUPTABLE                         R26 K59 [{["isDisabled"], ["limitSettings"], ["robuxSpentToday"], ["robuxBalance"], ["blockReason"], ["nextResetEligibleTime"], ["setDailyLimit"], ["LayoutOrder"] = 2}]
      205 NOT                              R27 R8
      206 JUMPIF                           R27 ; [+1]
      207 NOT                              R27 R13
      208 SETTABLEKS                       R27 R26 K38 ["isDisabled"]
      210 SETTABLEKS                       R12 R26 K33 ["limitSettings"]
      212 GETTABLEKS                       R28 R2 K57 ["robuxSpentToday"]
      214 ORK                              R27 R28 K35 [0]
      215 SETTABLEKS                       R27 R26 K57 ["robuxSpentToday"]
      217 SETTABLEKS                       R14 R26 K36 ["robuxBalance"]
      219 SETTABLEKS                       R4 R26 K4 ["blockReason"]
      221 GETTABLEKS                       R27 R2 K58 ["nextResetEligibleTime"]
      223 SETTABLEKS                       R27 R26 K58 ["nextResetEligibleTime"]
      225 SETTABLEKS                       R5 R26 K5 ["setDailyLimit"]
      227 CALL                             R24 2 1
      228 SETTABLEKS                       R24 R23 K52 ["DailyLimit"]
      230 CALL                             R20 3 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R20
      233 JUMPIFNOT                        R19 ; [+9]
      234 JUMPIFNOT                        R15 ; [+8]
      235 JUMPIFNOT                        R8 ; [+7]
      236 GETUPVAL                         R21 7
      237 GETUPVAL                         R22 18
      238 DUPTABLE                         R23 K60 [{["openBuyRobux"], ["LayoutOrder"] = 2}]
      239 SETTABLEKS                       R6 R23 K6 ["openBuyRobux"]
      241 CALL                             R21 2 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R21
      244 JUMPIFNOT                        R19 ; [+14]
      245 GETUPVAL                         R22 7
      246 GETUPVAL                         R23 8
      247 DUPTABLE                         R24 K62 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      248 MOVE                             R25 R9
      249 CALL                             R25 0 1
      250 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      252 DUPTABLE                         R25 K65 [{"LimitSections", "OutOfRobux"}]
      253 SETTABLEKS                       R20 R25 K63 ["LimitSections"]
      255 SETTABLEKS                       R21 R25 K64 ["OutOfRobux"]
      257 CALL                             R22 3 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R22
      260 DUPTABLE                         R23 K68 [{"HeaderAndUsageBar", "LimitSectionsAndCard"}]
      261 SETTABLEKS                       R18 R23 K66 ["HeaderAndUsageBar"]
      263 SETTABLEKS                       R22 R23 K67 ["LimitSectionsAndCard"]
      265 GETUPVAL                         R24 7
      266 GETUPVAL                         R25 8
      267 DUPTABLE                         R26 K62 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      268 GETTABLEKS                       R27 R0 K14 ["LayoutOrder"]
      270 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      272 MOVE                             R27 R23
      273 CALL                             R24 3 -1
      274 RETURN                           R24 -1

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
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K26 ["FlagUtils"]
      121 GETTABLEKS                       R16 R16 K27 ["getIsCreditMeteringEnabled"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R16 R5 K28 ["Loading"]
      126 GETTABLEKS                       R17 R5 K29 ["Text"]
      128 GETTABLEKS                       R18 R5 K30 ["View"]
      130 GETTABLEKS                       R19 R5 K31 ["Enums"]
      132 GETTABLEKS                       R19 R19 K32 ["IconSize"]
      134 GETTABLEKS                       R20 R9 K33 ["createNextOrder"]
      136 GETTABLEKS                       R21 R8 K34 ["createElement"]
      138 DUPCLOSURE                       R22 K35 [PROTO_2]
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R7
      158 GETTABLEKS                       R23 R8 K36 ["memo"]
      160 MOVE                             R24 R22
      161 CALL                             R23 1 -1
      162 RETURN                           R23 -1
