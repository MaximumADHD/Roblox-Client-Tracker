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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       10 JUMPIF                           R1 ; [+38]
       11 GETTABLEKS                       R1 R0 K2 ["allowed"]
       13 JUMPIFEQKB                       R1 FALSE ; [+31]
       15 GETTABLEKS                       R2 R0 K3 ["freeTrialRemaining"]
       17 JUMPIFEQKNIL                     R2 ; [+9]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["FIntMinimumAssistantFreeTrialRemaining"]
       22 JUMPIFLT                         R2 R3 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 JUMP                             ; [+17]
       27 GETTABLEKS                       R3 R0 K5 ["freeTrialPctUsed"]
       29 JUMPIFEQKNIL                     R3 ; [+13]
       31 LOADN                            R5 1
       32 JUMPIFNOTLT                      R5 R3 ; [+3]
       34 DIVK                             R4 R3 K6 [100]
       35 JUMP                             ; [+1]
       36 MOVE                             R4 R3
       37 LOADN                            R5 1
       38 JUMPIFLE                         R5 R4 ; [+2]
       40 LOADB                            R1 0 +1
       41 LOADB                            R1 1
       42 JUMP                             ; [+1]
       43 LOADB                            R1 0
       44 JUMPIFNOT                        R1 ; [+2]
       45 LOADK                            R1 K7 ["FreeTrialExhausted"]
       46 RETURN                           R1 1
       47 LOADNIL                          R1
       48 RETURN                           R1 1
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K8 ["FFlagAssistantCreditMeteringInferBlockReason"]
       52 JUMPIFNOT                        R1 ; [+46]
       53 GETTABLEKS                       R3 R0 K3 ["freeTrialRemaining"]
       55 ORK                              R2 R3 K9 [0]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K4 ["FIntMinimumAssistantFreeTrialRemaining"]
       59 JUMPIFNOTLE                      R3 R2 ; [+3]
       61 LOADNIL                          R1
       62 JUMP                             ; [+34]
       63 GETTABLEKS                       R3 R0 K10 ["limitSettings"]
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       68 JUMPIFNOT                        R4 ; [+4]
       69 JUMPIFNOT                        R3 ; [+3]
       70 GETTABLEKS                       R4 R3 K11 ["additionalUsageEnabled"]
       72 JUMPIF                           R4 ; [+2]
       73 LOADK                            R1 K7 ["FreeTrialExhausted"]
       74 JUMP                             ; [+22]
       75 GETTABLEKS                       R5 R0 K12 ["robuxBalance"]
       77 ORK                              R4 R5 K9 [0]
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R5 R5 K13 ["FIntMinimumAssistantRobuxBalance"]
       81 JUMPIFNOTLT                      R4 R5 ; [+3]
       83 LOADK                            R1 K14 ["InsufficientRobuxBalance"]
       84 JUMP                             ; [+12]
       85 GETTABLEKS                       R6 R0 K15 ["limitRemaining"]
       87 ORK                              R5 R6 K9 [0]
       88 GETTABLEKS                       R6 R3 K16 ["dailyLimitSet"]
       90 JUMPIFNOT                        R6 ; [+5]
       91 LOADN                            R6 1
       92 JUMPIFNOTLT                      R5 R6 ; [+3]
       94 LOADK                            R1 K17 ["DailyLimitReached"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R1
       97 JUMPIFNOT                        R1 ; [+1]
       98 RETURN                           R1 1
       99 GETTABLEKS                       R1 R0 K2 ["allowed"]
      101 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
      103 LOADNIL                          R1
      104 RETURN                           R1 1
      105 GETTABLEKS                       R1 R0 K2 ["allowed"]
      107 JUMPIFNOTEQKB                    R1 FALSE ; [+10]
      109 GETTABLEKS                       R1 R0 K18 ["reason"]
      111 JUMPIFNOT                        R1 ; [+6]
      112 GETUPVAL                         R2 1
      113 GETTABLEKS                       R3 R0 K18 ["reason"]
      115 GETTABLE                         R1 R2 R3
      116 JUMPIFNOT                        R1 ; [+1]
      117 RETURN                           R1 1
      118 GETTABLEKS                       R3 R0 K3 ["freeTrialRemaining"]
      120 ORK                              R2 R3 K9 [0]
      121 GETUPVAL                         R3 0
      122 GETTABLEKS                       R3 R3 K4 ["FIntMinimumAssistantFreeTrialRemaining"]
      124 JUMPIFNOTLE                      R3 R2 ; [+3]
      126 LOADNIL                          R1
      127 RETURN                           R1 1
      128 GETTABLEKS                       R3 R0 K10 ["limitSettings"]
      130 GETUPVAL                         R4 0
      131 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      133 JUMPIFNOT                        R4 ; [+4]
      134 JUMPIFNOT                        R3 ; [+3]
      135 GETTABLEKS                       R4 R3 K11 ["additionalUsageEnabled"]
      137 JUMPIF                           R4 ; [+2]
      138 LOADK                            R1 K7 ["FreeTrialExhausted"]
      139 RETURN                           R1 1
      140 GETTABLEKS                       R5 R0 K12 ["robuxBalance"]
      142 ORK                              R4 R5 K9 [0]
      143 GETUPVAL                         R5 0
      144 GETTABLEKS                       R5 R5 K13 ["FIntMinimumAssistantRobuxBalance"]
      146 JUMPIFNOTLT                      R4 R5 ; [+3]
      148 LOADK                            R1 K14 ["InsufficientRobuxBalance"]
      149 RETURN                           R1 1
      150 GETTABLEKS                       R6 R0 K15 ["limitRemaining"]
      152 ORK                              R5 R6 K9 [0]
      153 GETTABLEKS                       R6 R3 K16 ["dailyLimitSet"]
      155 JUMPIFNOT                        R6 ; [+5]
      156 LOADN                            R6 1
      157 JUMPIFNOTLT                      R5 R6 ; [+3]
      159 LOADK                            R1 K17 ["DailyLimitReached"]
      160 RETURN                           R1 1
      161 LOADNIL                          R1
      162 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R2 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        9 JUMPIF                           R2 ; [+9]
       10 JUMPIFEQKS                       R1 K2 ["InsufficientRobuxBalance"] ; [+5]
       12 JUMPIFEQKS                       R1 K3 ["DailyLimitReached"] ; [+3]
       14 JUMPIFNOTEQKS                    R1 K4 ["FreeTrialExhausted"] ; [+16]
       16 LOADK                            R2 K4 ["FreeTrialExhausted"]
       17 RETURN                           R2 1
       18 JUMP                             ; [+12]
       19 JUMPIFNOTEQKS                    R1 K2 ["InsufficientRobuxBalance"] ; [+3]
       21 LOADK                            R2 K5 ["OutOfRobux"]
       22 RETURN                           R2 1
       23 JUMPIFNOTEQKS                    R1 K3 ["DailyLimitReached"] ; [+3]
       25 LOADK                            R2 K6 ["LimitReached"]
       26 RETURN                           R2 1
       27 JUMPIFNOTEQKS                    R1 K4 ["FreeTrialExhausted"] ; [+3]
       29 LOADK                            R2 K4 ["FreeTrialExhausted"]
       30 RETURN                           R2 1
       31 JUMPIF                           R0 ; [+2]
       32 LOADNIL                          R2
       33 RETURN                           R2 1
       34 GETTABLEKS                       R2 R0 K7 ["limitSettings"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       39 JUMPIFNOT                        R3 ; [+9]
       40 LOADB                            R3 0
       41 JUMPIFEQKNIL                     R2 ; [+7]
       43 GETTABLEKS                       R4 R2 K8 ["additionalUsageEnabled"]
       45 JUMPIFEQKB                       R4 TRUE ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 JUMPIFNOT                        R3 ; [+32]
       50 GETTABLEKS                       R5 R0 K9 ["freeTrialRemaining"]
       52 JUMPIFEQKNIL                     R5 ; [+9]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K10 ["FIntMinimumAssistantFreeTrialRemaining"]
       57 JUMPIFLT                         R5 R6 ; [+2]
       59 LOADB                            R4 0 +1
       60 LOADB                            R4 1
       61 JUMP                             ; [+17]
       62 GETTABLEKS                       R6 R0 K11 ["freeTrialPctUsed"]
       64 JUMPIFEQKNIL                     R6 ; [+13]
       66 LOADN                            R8 1
       67 JUMPIFNOTLT                      R8 R6 ; [+3]
       69 DIVK                             R7 R6 K12 [100]
       70 JUMP                             ; [+1]
       71 MOVE                             R7 R6
       72 LOADN                            R8 1
       73 JUMPIFLE                         R8 R7 ; [+2]
       75 LOADB                            R4 0 +1
       76 LOADB                            R4 1
       77 JUMP                             ; [+1]
       78 LOADB                            R4 0
       79 JUMPIFNOT                        R4 ; [+2]
       80 LOADK                            R4 K13 ["FreeUsageExhausted"]
       81 RETURN                           R4 1
       82 LOADNIL                          R4
       83 RETURN                           R4 1

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
       26 DUPCLOSURE                       R7 K19 [PROTO_2]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
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
       62 SETTABLEKS                       R7 R12 K47 ["getBlockReason"]
       64 SETTABLEKS                       R8 R12 K48 ["getBannerVariant"]
       66 RETURN                           R12 1
