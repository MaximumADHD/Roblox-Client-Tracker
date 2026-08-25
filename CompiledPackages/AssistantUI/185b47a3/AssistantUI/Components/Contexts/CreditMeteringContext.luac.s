PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["freeTrialRemaining"]
        2 ORK                              R1 R2 K0 [0]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["FIntMinimumAssistantFreeTrialRemaining"]
        6 JUMPIFNOTLE                      R2 R1 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K3 ["limitSettings"]
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R3 R2 K4 ["additionalUsageEnabled"]
       15 JUMPIF                           R3 ; [+2]
       16 LOADK                            R3 K5 ["FreeTrialExhausted"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R4 R0 K6 ["robuxBalance"]
       20 ORK                              R3 R4 K0 [0]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K7 ["FIntMinimumAssistantRobuxBalance"]
       24 JUMPIFNOTLT                      R3 R4 ; [+3]
       26 LOADK                            R4 K8 ["InsufficientRobuxBalance"]
       27 RETURN                           R4 1
       28 GETTABLEKS                       R5 R0 K9 ["limitRemaining"]
       30 ORK                              R4 R5 K0 [0]
       31 GETTABLEKS                       R5 R2 K10 ["dailyLimitSet"]
       33 JUMPIFNOT                        R5 ; [+5]
       34 LOADN                            R5 1
       35 JUMPIFNOTLT                      R4 R5 ; [+3]
       37 LOADK                            R5 K11 ["DailyLimitReached"]
       38 RETURN                           R5 1
       39 LOADNIL                          R5
       40 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMeteringInferBlockReason"]
       10 JUMPIFNOT                        R1 ; [+42]
       11 GETTABLEKS                       R3 R0 K3 ["freeTrialRemaining"]
       13 ORK                              R2 R3 K2 [0]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["FIntMinimumAssistantFreeTrialRemaining"]
       17 JUMPIFNOTLE                      R3 R2 ; [+3]
       19 LOADNIL                          R1
       20 JUMP                             ; [+30]
       21 GETTABLEKS                       R3 R0 K5 ["limitSettings"]
       23 JUMPIFNOT                        R3 ; [+3]
       24 GETTABLEKS                       R4 R3 K6 ["additionalUsageEnabled"]
       26 JUMPIF                           R4 ; [+2]
       27 LOADK                            R1 K7 ["FreeTrialExhausted"]
       28 JUMP                             ; [+22]
       29 GETTABLEKS                       R5 R0 K8 ["robuxBalance"]
       31 ORK                              R4 R5 K2 [0]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K9 ["FIntMinimumAssistantRobuxBalance"]
       35 JUMPIFNOTLT                      R4 R5 ; [+3]
       37 LOADK                            R1 K10 ["InsufficientRobuxBalance"]
       38 JUMP                             ; [+12]
       39 GETTABLEKS                       R6 R0 K11 ["limitRemaining"]
       41 ORK                              R5 R6 K2 [0]
       42 GETTABLEKS                       R6 R3 K12 ["dailyLimitSet"]
       44 JUMPIFNOT                        R6 ; [+5]
       45 LOADN                            R6 1
       46 JUMPIFNOTLT                      R5 R6 ; [+3]
       48 LOADK                            R1 K13 ["DailyLimitReached"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R1
       51 JUMPIFNOT                        R1 ; [+1]
       52 RETURN                           R1 1
       53 GETTABLEKS                       R1 R0 K14 ["allowed"]
       55 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
       57 LOADNIL                          R1
       58 RETURN                           R1 1
       59 GETTABLEKS                       R1 R0 K14 ["allowed"]
       61 JUMPIFNOTEQKB                    R1 FALSE ; [+10]
       63 GETTABLEKS                       R1 R0 K15 ["reason"]
       65 JUMPIFNOT                        R1 ; [+6]
       66 GETUPVAL                         R2 1
       67 GETTABLEKS                       R3 R0 K15 ["reason"]
       69 GETTABLE                         R1 R2 R3
       70 JUMPIFNOT                        R1 ; [+1]
       71 RETURN                           R1 1
       72 GETTABLEKS                       R3 R0 K3 ["freeTrialRemaining"]
       74 ORK                              R2 R3 K2 [0]
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K4 ["FIntMinimumAssistantFreeTrialRemaining"]
       78 JUMPIFNOTLE                      R3 R2 ; [+3]
       80 LOADNIL                          R1
       81 RETURN                           R1 1
       82 GETTABLEKS                       R3 R0 K5 ["limitSettings"]
       84 JUMPIFNOT                        R3 ; [+3]
       85 GETTABLEKS                       R4 R3 K6 ["additionalUsageEnabled"]
       87 JUMPIF                           R4 ; [+2]
       88 LOADK                            R1 K7 ["FreeTrialExhausted"]
       89 RETURN                           R1 1
       90 GETTABLEKS                       R5 R0 K8 ["robuxBalance"]
       92 ORK                              R4 R5 K2 [0]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K9 ["FIntMinimumAssistantRobuxBalance"]
       96 JUMPIFNOTLT                      R4 R5 ; [+3]
       98 LOADK                            R1 K10 ["InsufficientRobuxBalance"]
       99 RETURN                           R1 1
      100 GETTABLEKS                       R6 R0 K11 ["limitRemaining"]
      102 ORK                              R5 R6 K2 [0]
      103 GETTABLEKS                       R6 R3 K12 ["dailyLimitSet"]
      105 JUMPIFNOT                        R6 ; [+5]
      106 LOADN                            R6 1
      107 JUMPIFNOTLT                      R5 R6 ; [+3]
      109 LOADK                            R1 K13 ["DailyLimitReached"]
      110 RETURN                           R1 1
      111 LOADNIL                          R1
      112 RETURN                           R1 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R2 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R1 K1 ["InsufficientRobuxBalance"] ; [+3]
        8 LOADK                            R2 K2 ["OutOfRobux"]
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKS                    R1 K3 ["DailyLimitReached"] ; [+3]
       12 LOADK                            R2 K4 ["LimitReached"]
       13 RETURN                           R2 1
       14 JUMPIFNOTEQKS                    R1 K5 ["FreeTrialExhausted"] ; [+3]
       16 LOADK                            R2 K5 ["FreeTrialExhausted"]
       17 RETURN                           R2 1
       18 JUMPIF                           R0 ; [+2]
       19 LOADNIL                          R2
       20 RETURN                           R2 1
       21 GETTABLEKS                       R2 R0 K6 ["limitSettings"]
       23 LOADB                            R3 0
       24 JUMPIFEQKNIL                     R2 ; [+7]
       26 GETTABLEKS                       R4 R2 K7 ["additionalUsageEnabled"]
       28 JUMPIFEQKB                       R4 TRUE ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 JUMPIFNOT                        R3 ; [+32]
       33 GETTABLEKS                       R5 R0 K8 ["freeTrialRemaining"]
       35 JUMPIFEQKNIL                     R5 ; [+9]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K9 ["FIntMinimumAssistantFreeTrialRemaining"]
       40 JUMPIFLT                         R5 R6 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 JUMP                             ; [+17]
       45 GETTABLEKS                       R6 R0 K10 ["freeTrialPctUsed"]
       47 JUMPIFEQKNIL                     R6 ; [+13]
       49 LOADN                            R8 1
       50 JUMPIFNOTLT                      R8 R6 ; [+3]
       52 DIVK                             R7 R6 K11 [100]
       53 JUMP                             ; [+1]
       54 MOVE                             R7 R6
       55 LOADN                            R8 1
       56 JUMPIFLE                         R8 R7 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 JUMP                             ; [+1]
       61 LOADB                            R4 0
       62 JUMPIFNOT                        R4 ; [+2]
       63 LOADK                            R4 K12 ["FreeUsageExhausted"]
       64 RETURN                           R4 1
       65 LOADNIL                          R4
       66 RETURN                           R4 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
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
       19 GETTABLEKS                       R3 R2 K9 ["createElement"]
       21 DUPTABLE                         R4 K16 [{["BLOCK_REASON_FREE_TRIAL_EXHAUSTED"] = "FreeTrialExhausted", ["BLOCK_REASON_DAILY_LIMIT_REACHED"] = "DailyLimitReached", ["BLOCK_REASON_INSUFFICIENT_ROBUX_BALANCE"] = "InsufficientRobuxBalance"}]
       22 DUPCLOSURE                       R5 K17 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 DUPCLOSURE                       R6 K18 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R4
       27 DUPCLOSURE                       R7 K19 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R8 K20 [PROTO_3]
       30 CAPTURE                          VAL R1
       31 DUPTABLE                         R9 K36 [{["quotaSummary"] = , ["blockReason"] = , ["hasError"] = False, ["refreshQuotaSummary"], ["setDailyLimit"], ["openBuyRobux"], ["isBuyRobuxModalOpen"] = False, ["robuxPackages"] = , ["isFetchingRobuxPackages"] = False, ["robuxPackagesError"] = False, ["confirmBuyRobuxPackage"], ["closeBuyRobuxModal"], ["notifyPanelActivity"]}]
       32 DUPCLOSURE                       R10 K37 [PROTO_4]
       33 SETTABLEKS                       R10 R9 K26 ["refreshQuotaSummary"]
       35 DUPCLOSURE                       R10 K38 [PROTO_5]
       36 SETTABLEKS                       R10 R9 K27 ["setDailyLimit"]
       38 DUPCLOSURE                       R10 K39 [PROTO_6]
       39 SETTABLEKS                       R10 R9 K28 ["openBuyRobux"]
       41 DUPCLOSURE                       R10 K40 [PROTO_7]
       42 SETTABLEKS                       R10 R9 K33 ["confirmBuyRobuxPackage"]
       44 DUPCLOSURE                       R10 K41 [PROTO_8]
       45 SETTABLEKS                       R10 R9 K34 ["closeBuyRobuxModal"]
       47 DUPCLOSURE                       R10 K42 [PROTO_9]
       48 SETTABLEKS                       R10 R9 K35 ["notifyPanelActivity"]
       50 GETTABLEKS                       R10 R2 K43 ["createContext"]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 1
       54 DUPCLOSURE                       R11 K44 [PROTO_10]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R10
       57 DUPTABLE                         R12 K49 [{"Context", "Provider", "getBlockReason", "getBannerVariant"}]
       58 SETTABLEKS                       R10 R12 K45 ["Context"]
       60 SETTABLEKS                       R11 R12 K46 ["Provider"]
       62 SETTABLEKS                       R6 R12 K47 ["getBlockReason"]
       64 SETTABLEKS                       R8 R12 K48 ["getBannerVariant"]
       66 RETURN                           R12 1
