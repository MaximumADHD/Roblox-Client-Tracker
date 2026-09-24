PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["freeTrialRemaining"]
        2 ORK                              R1 R2 K0 [0]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["FIntMinimumAssistantFreeTrialRemaining"]
        6 JUMPIFNOTLE                      R2 R1 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K3 ["limitSettings"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       15 JUMPIFNOT                        R3 ; [+4]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETTABLEKS                       R3 R2 K5 ["additionalUsageEnabled"]
       19 JUMPIF                           R3 ; [+2]
       20 LOADK                            R3 K6 ["FreeTrialExhausted"]
       21 RETURN                           R3 1
       22 GETTABLEKS                       R4 R0 K7 ["robuxBalance"]
       24 ORK                              R3 R4 K0 [0]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K8 ["FIntMinimumAssistantRobuxBalance"]
       28 JUMPIFNOTLT                      R3 R4 ; [+3]
       30 LOADK                            R4 K9 ["InsufficientRobuxBalance"]
       31 RETURN                           R4 1
       32 GETTABLEKS                       R5 R0 K10 ["limitRemaining"]
       34 ORK                              R4 R5 K0 [0]
       35 GETTABLEKS                       R5 R2 K11 ["dailyLimitSet"]
       37 JUMPIFNOT                        R5 ; [+5]
       38 LOADN                            R5 1
       39 JUMPIFNOTLT                      R4 R5 ; [+3]
       41 LOADK                            R5 K12 ["DailyLimitReached"]
       42 RETURN                           R5 1
       43 LOADNIL                          R5
       44 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["freeTrialRemaining"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["FIntMinimumAssistantFreeTrialRemaining"]
        7 JUMPIFLT                         R1 R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R0 K2 ["freeTrialPctUsed"]
       14 JUMPIFEQKNIL                     R2 ; [+13]
       16 LOADN                            R4 1
       17 JUMPIFNOTLT                      R4 R2 ; [+3]
       19 DIVK                             R3 R2 K3 [100]
       20 JUMP                             ; [+1]
       21 MOVE                             R3 R2
       22 LOADN                            R5 1
       23 JUMPIFLE                         R5 R3 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 RETURN                           R4 1
       28 LOADB                            R3 0
       29 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        9 JUMPIF                           R1 ; [+38]
       10 GETTABLEKS                       R1 R0 K1 ["allowed"]
       12 JUMPIFEQKB                       R1 FALSE ; [+31]
       14 GETTABLEKS                       R2 R0 K2 ["freeTrialRemaining"]
       16 JUMPIFEQKNIL                     R2 ; [+9]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["FIntMinimumAssistantFreeTrialRemaining"]
       21 JUMPIFLT                         R2 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 JUMP                             ; [+17]
       26 GETTABLEKS                       R3 R0 K4 ["freeTrialPctUsed"]
       28 JUMPIFEQKNIL                     R3 ; [+13]
       30 LOADN                            R5 1
       31 JUMPIFNOTLT                      R5 R3 ; [+3]
       33 DIVK                             R4 R3 K5 [100]
       34 JUMP                             ; [+1]
       35 MOVE                             R4 R3
       36 LOADN                            R5 1
       37 JUMPIFLE                         R5 R4 ; [+2]
       39 LOADB                            R1 0 +1
       40 LOADB                            R1 1
       41 JUMP                             ; [+1]
       42 LOADB                            R1 0
       43 JUMPIFNOT                        R1 ; [+2]
       44 LOADK                            R1 K6 ["FreeTrialExhausted"]
       45 RETURN                           R1 1
       46 LOADNIL                          R1
       47 RETURN                           R1 1
       48 GETUPVAL                         R1 1
       49 GETTABLEKS                       R1 R1 K7 ["FFlagAssistantCreditMeteringInferBlockReason"]
       51 JUMPIFNOT                        R1 ; [+46]
       52 GETTABLEKS                       R3 R0 K2 ["freeTrialRemaining"]
       54 ORK                              R2 R3 K8 [0]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K3 ["FIntMinimumAssistantFreeTrialRemaining"]
       58 JUMPIFNOTLE                      R3 R2 ; [+3]
       60 LOADNIL                          R1
       61 JUMP                             ; [+34]
       62 GETTABLEKS                       R3 R0 K9 ["limitSettings"]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       67 JUMPIFNOT                        R4 ; [+4]
       68 JUMPIFNOT                        R3 ; [+3]
       69 GETTABLEKS                       R4 R3 K10 ["additionalUsageEnabled"]
       71 JUMPIF                           R4 ; [+2]
       72 LOADK                            R1 K6 ["FreeTrialExhausted"]
       73 JUMP                             ; [+22]
       74 GETTABLEKS                       R5 R0 K11 ["robuxBalance"]
       76 ORK                              R4 R5 K8 [0]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K12 ["FIntMinimumAssistantRobuxBalance"]
       80 JUMPIFNOTLT                      R4 R5 ; [+3]
       82 LOADK                            R1 K13 ["InsufficientRobuxBalance"]
       83 JUMP                             ; [+12]
       84 GETTABLEKS                       R6 R0 K14 ["limitRemaining"]
       86 ORK                              R5 R6 K8 [0]
       87 GETTABLEKS                       R6 R3 K15 ["dailyLimitSet"]
       89 JUMPIFNOT                        R6 ; [+5]
       90 LOADN                            R6 1
       91 JUMPIFNOTLT                      R5 R6 ; [+3]
       93 LOADK                            R1 K16 ["DailyLimitReached"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R1
       96 JUMPIFNOT                        R1 ; [+1]
       97 RETURN                           R1 1
       98 GETTABLEKS                       R1 R0 K1 ["allowed"]
      100 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
      102 LOADNIL                          R1
      103 RETURN                           R1 1
      104 GETTABLEKS                       R1 R0 K1 ["allowed"]
      106 JUMPIFNOTEQKB                    R1 FALSE ; [+10]
      108 GETTABLEKS                       R1 R0 K17 ["reason"]
      110 JUMPIFNOT                        R1 ; [+6]
      111 GETUPVAL                         R2 2
      112 GETTABLEKS                       R3 R0 K17 ["reason"]
      114 GETTABLE                         R1 R2 R3
      115 JUMPIFNOT                        R1 ; [+1]
      116 RETURN                           R1 1
      117 GETTABLEKS                       R3 R0 K2 ["freeTrialRemaining"]
      119 ORK                              R2 R3 K8 [0]
      120 GETUPVAL                         R3 1
      121 GETTABLEKS                       R3 R3 K3 ["FIntMinimumAssistantFreeTrialRemaining"]
      123 JUMPIFNOTLE                      R3 R2 ; [+3]
      125 LOADNIL                          R1
      126 RETURN                           R1 1
      127 GETTABLEKS                       R3 R0 K9 ["limitSettings"]
      129 GETUPVAL                         R4 1
      130 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      132 JUMPIFNOT                        R4 ; [+4]
      133 JUMPIFNOT                        R3 ; [+3]
      134 GETTABLEKS                       R4 R3 K10 ["additionalUsageEnabled"]
      136 JUMPIF                           R4 ; [+2]
      137 LOADK                            R1 K6 ["FreeTrialExhausted"]
      138 RETURN                           R1 1
      139 GETTABLEKS                       R5 R0 K11 ["robuxBalance"]
      141 ORK                              R4 R5 K8 [0]
      142 GETUPVAL                         R5 1
      143 GETTABLEKS                       R5 R5 K12 ["FIntMinimumAssistantRobuxBalance"]
      145 JUMPIFNOTLT                      R4 R5 ; [+3]
      147 LOADK                            R1 K13 ["InsufficientRobuxBalance"]
      148 RETURN                           R1 1
      149 GETTABLEKS                       R6 R0 K14 ["limitRemaining"]
      151 ORK                              R5 R6 K8 [0]
      152 GETTABLEKS                       R6 R3 K15 ["dailyLimitSet"]
      154 JUMPIFNOT                        R6 ; [+5]
      155 LOADN                            R6 1
      156 JUMPIFNOTLT                      R5 R6 ; [+3]
      158 LOADK                            R1 K16 ["DailyLimitReached"]
      159 RETURN                           R1 1
      160 LOADNIL                          R1
      161 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 JUMPIF                           R0 ; [+2]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 2
       13 GETTABLE                         R1 R2 R0
       14 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        8 JUMPIF                           R2 ; [+9]
        9 JUMPIFEQKS                       R1 K1 ["InsufficientRobuxBalance"] ; [+5]
       11 JUMPIFEQKS                       R1 K2 ["DailyLimitReached"] ; [+3]
       13 JUMPIFNOTEQKS                    R1 K3 ["FreeTrialExhausted"] ; [+16]
       15 LOADK                            R2 K3 ["FreeTrialExhausted"]
       16 RETURN                           R2 1
       17 JUMP                             ; [+12]
       18 JUMPIFNOTEQKS                    R1 K1 ["InsufficientRobuxBalance"] ; [+3]
       20 LOADK                            R2 K4 ["OutOfRobux"]
       21 RETURN                           R2 1
       22 JUMPIFNOTEQKS                    R1 K2 ["DailyLimitReached"] ; [+3]
       24 LOADK                            R2 K5 ["LimitReached"]
       25 RETURN                           R2 1
       26 JUMPIFNOTEQKS                    R1 K3 ["FreeTrialExhausted"] ; [+3]
       28 LOADK                            R2 K3 ["FreeTrialExhausted"]
       29 RETURN                           R2 1
       30 JUMPIF                           R0 ; [+2]
       31 LOADNIL                          R2
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R0 K6 ["limitSettings"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       38 JUMPIFNOT                        R3 ; [+9]
       39 LOADB                            R3 0
       40 JUMPIFEQKNIL                     R2 ; [+7]
       42 GETTABLEKS                       R4 R2 K7 ["additionalUsageEnabled"]
       44 JUMPIFEQKB                       R4 TRUE ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 JUMPIFNOT                        R3 ; [+32]
       49 GETTABLEKS                       R5 R0 K8 ["freeTrialRemaining"]
       51 JUMPIFEQKNIL                     R5 ; [+9]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K9 ["FIntMinimumAssistantFreeTrialRemaining"]
       56 JUMPIFLT                         R5 R6 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 JUMP                             ; [+17]
       61 GETTABLEKS                       R6 R0 K10 ["freeTrialPctUsed"]
       63 JUMPIFEQKNIL                     R6 ; [+13]
       65 LOADN                            R8 1
       66 JUMPIFNOTLT                      R8 R6 ; [+3]
       68 DIVK                             R7 R6 K11 [100]
       69 JUMP                             ; [+1]
       70 MOVE                             R7 R6
       71 LOADN                            R8 1
       72 JUMPIFLE                         R8 R7 ; [+2]
       74 LOADB                            R4 0 +1
       75 LOADB                            R4 1
       76 JUMP                             ; [+1]
       77 LOADB                            R4 0
       78 JUMPIFNOT                        R4 ; [+2]
       79 LOADK                            R4 K12 ["FreeUsageExhausted"]
       80 RETURN                           R4 1
       81 LOADNIL                          R4
       82 RETURN                           R4 1

PROTO_5:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"value"}]
        5 GETTABLEKS                       R4 R0 K1 ["value"]
        7 SETTABLEKS                       R4 R3 K1 ["value"]
        9 GETTABLEKS                       R4 R0 K3 ["children"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["FlagUtils"]
       23 GETTABLEKS                       R4 R4 K10 ["getIsCreditMeteringEnabled"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["createElement"]
       28 DUPTABLE                         R5 K18 [{["BLOCK_REASON_FREE_TRIAL_EXHAUSTED"] = "FreeTrialExhausted", ["BLOCK_REASON_DAILY_LIMIT_REACHED"] = "DailyLimitReached", ["BLOCK_REASON_INSUFFICIENT_ROBUX_BALANCE"] = "InsufficientRobuxBalance"}]
       29 DUPCLOSURE                       R6 K19 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 DUPCLOSURE                       R7 K20 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 DUPCLOSURE                       R8 K21 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 DUPTABLE                         R9 K25 [{["FreeTrialExhausted"] = "free_trial_exhausted", ["DailyLimitReached"] = "daily_limit_reached", ["InsufficientRobuxBalance"] = "insufficient_robux_balance"}]
       38 DUPCLOSURE                       R10 K26 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R9
       42 DUPCLOSURE                       R11 K27 [PROTO_4]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 DUPTABLE                         R12 K43 [{["quotaSummary"] = , ["blockReason"] = , ["hasError"] = False, ["refreshQuotaSummary"], ["setDailyLimit"], ["openBuyRobux"], ["isBuyRobuxModalOpen"] = False, ["robuxPackages"] = , ["isFetchingRobuxPackages"] = False, ["robuxPackagesError"] = False, ["confirmBuyRobuxPackage"], ["closeBuyRobuxModal"], ["notifyPanelActivity"]}]
       46 DUPCLOSURE                       R13 K44 [PROTO_5]
       47 SETTABLEKS                       R13 R12 K33 ["refreshQuotaSummary"]
       49 DUPCLOSURE                       R13 K45 [PROTO_6]
       50 SETTABLEKS                       R13 R12 K34 ["setDailyLimit"]
       52 DUPCLOSURE                       R13 K46 [PROTO_7]
       53 SETTABLEKS                       R13 R12 K35 ["openBuyRobux"]
       55 DUPCLOSURE                       R13 K47 [PROTO_8]
       56 SETTABLEKS                       R13 R12 K40 ["confirmBuyRobuxPackage"]
       58 DUPCLOSURE                       R13 K48 [PROTO_9]
       59 SETTABLEKS                       R13 R12 K41 ["closeBuyRobuxModal"]
       61 DUPCLOSURE                       R13 K49 [PROTO_10]
       62 SETTABLEKS                       R13 R12 K42 ["notifyPanelActivity"]
       64 GETTABLEKS                       R13 R2 K50 ["createContext"]
       66 MOVE                             R14 R12
       67 CALL                             R13 1 1
       68 DUPCLOSURE                       R14 K51 [PROTO_11]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R13
       71 DUPTABLE                         R15 K57 [{"Context", "Provider", "getBlockReason", "getBannerVariant", "blockReasonToNextTurnBlockReason"}]
       72 SETTABLEKS                       R13 R15 K52 ["Context"]
       74 SETTABLEKS                       R14 R15 K53 ["Provider"]
       76 SETTABLEKS                       R8 R15 K54 ["getBlockReason"]
       78 SETTABLEKS                       R11 R15 K55 ["getBannerVariant"]
       80 SETTABLEKS                       R10 R15 K56 ["blockReasonToNextTurnBlockReason"]
       82 RETURN                           R15 1
