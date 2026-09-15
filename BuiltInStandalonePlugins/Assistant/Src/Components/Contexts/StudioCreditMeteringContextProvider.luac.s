PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETIMPORT                        R2 K4 [DateTime.fromIsoDate]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 LOADN                            R4 0
       11 GETTABLEKS                       R6 R2 K5 ["UnixTimestamp"]
       13 GETIMPORT                        R7 K7 [DateTime.now]
       15 CALL                             R7 0 1
       16 GETTABLEKS                       R7 R7 K5 ["UnixTimestamp"]
       18 SUB                              R5 R6 R7
       19 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       21 GETIMPORT                        R3 K10 [math.max]
       23 CALL                             R3 2 1
       24 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringAssistantDebugCreditMeteringBlockReason"]
        3 LOADB                            R1 0
        4 JUMPIFEQKS                       R0 K1 [""] ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantCreditMeteringLogging"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R2 K3 ["[StudioCreditMeteringContextProvider] %*"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 1
       12 GETVARARGS                       R3 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getV1QuotaSummaryAsync"]
        3 DUPTABLE                         R1 K3 [{["product"] = "2"}]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringAssistantDebugCreditMeteringBlockReason"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+32]
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+17]
        8 GETUPVAL                         R2 2
        9 LOADK                            R3 K2 ["Using mock quota for block reason \"%*\""]
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 2 1
       14 CALL                             R2 1 0
       15 GETIMPORT                        R2 K6 [table.clone]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 3
       20 JUMPIFNOT                        R3 ; [+3]
       21 GETUPVAL                         R3 3
       22 SETTABLEKS                       R3 R2 K7 ["limitSettings"]
       24 RETURN                           R2 1
       25 GETIMPORT                        R2 K9 [warn]
       27 LOADK                            R6 K10 ["Unknown debug block reason \"%*\". "]
       28 MOVE                             R8 R0
       29 NAMECALL                         R6 R6 K3 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R4 R6
       33 LOADK                            R5 K11 ["Valid values: FreeTrialExhausted, DailyLimitReached, InsufficientRobuxBalance"]
       34 CONCAT                           R3 R4 R5
       35 CALL                             R2 1 0
       36 GETUPVAL                         R1 2
       37 LOADK                            R2 K12 ["Fetching quota summary..."]
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 4
       40 GETTABLEKS                       R1 R1 K13 ["callWithOptions"]
       42 DUPCLOSURE                       R2 K14 [PROTO_5]
       43 CAPTURE                          UPVAL U5
       44 NEWTABLE                         R3 0 0
       46 CALL                             R1 2 1
       47 JUMPIF                           R1 ; [+6]
       48 GETIMPORT                        R2 K9 [warn]
       50 LOADK                            R3 K15 ["Failed to fetch quota summary: no response"]
       51 CALL                             R2 1 0
       52 LOADNIL                          R2
       53 RETURN                           R2 1
       54 GETTABLEKS                       R2 R1 K16 ["success"]
       56 JUMPIF                           R2 ; [+8]
       57 GETIMPORT                        R2 K9 [warn]
       59 LOADK                            R3 K17 ["Failed to fetch quota summary:"]
       60 GETTABLEKS                       R4 R1 K18 ["errorDetails"]
       62 CALL                             R2 2 0
       63 LOADNIL                          R2
       64 RETURN                           R2 1
       65 GETTABLEKS                       R2 R1 K19 ["data"]
       67 MOVE                             R3 R2
       68 JUMPIFNOT                        R3 ; [+2]
       69 GETTABLEKS                       R3 R2 K20 ["summary"]
       71 GETUPVAL                         R4 2
       72 LOADK                            R5 K21 ["Got quota summary:"]
       73 MOVE                             R6 R3
       74 CALL                             R4 2 0
       75 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fetchRobuxPackagesAsync"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FStringAssistantDebugCreditMeteringBlockReason"]
        3 LOADB                            R0 0
        4 JUMPIFEQKS                       R1 K1 [""] ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 2
       14 LOADK                            R1 K2 ["Using mock Robux package list"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 3
       17 RETURN                           R0 1
       18 GETUPVAL                         R0 2
       19 LOADK                            R1 K3 ["Fetching Robux packages..."]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 4
       22 GETTABLEKS                       R0 R0 K4 ["callWithOptions"]
       24 DUPCLOSURE                       R1 K5 [PROTO_7]
       25 CAPTURE                          UPVAL U5
       26 NEWTABLE                         R2 0 0
       28 CALL                             R0 2 1
       29 JUMPIF                           R0 ; [+6]
       30 GETIMPORT                        R1 K7 [warn]
       32 LOADK                            R2 K8 ["Failed to fetch Robux packages: no response"]
       33 CALL                             R1 1 0
       34 LOADNIL                          R1
       35 RETURN                           R1 1
       36 GETTABLEKS                       R1 R0 K9 ["success"]
       38 JUMPIF                           R1 ; [+8]
       39 GETIMPORT                        R1 K7 [warn]
       41 LOADK                            R2 K10 ["Failed to fetch Robux packages:"]
       42 GETTABLEKS                       R3 R0 K11 ["errorDetails"]
       44 CALL                             R1 2 0
       45 LOADNIL                          R1
       46 RETURN                           R1 1
       47 GETTABLEKS                       R1 R0 K12 ["data"]
       49 JUMPIFNOT                        R1 ; [+4]
       50 GETTABLEKS                       R1 R0 K12 ["data"]
       52 GETTABLEKS                       R1 R1 K13 ["products"]
       54 JUMPIF                           R1 ; [+2]
       55 LOADNIL                          R2
       56 RETURN                           R2 1
       57 GETUPVAL                         R2 5
       58 GETTABLEKS                       R2 R2 K14 ["selectDisplayPackages"]
       60 MOVE                             R3 R1
       61 CALL                             R2 1 1
       62 GETUPVAL                         R3 2
       63 LOADK                            R4 K15 ["Got %* Robux package(s) to display"]
       64 LENGTH                           R6 R2
       65 NAMECALL                         R4 R4 K16 ["format"]
       67 CALL                             R4 2 1
       68 CALL                             R3 1 0
       69 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["putV1DailyLimitAsync"]
        3 DUPTABLE                         R1 K2 [{"body"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["body"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+6]
       10 GETIMPORT                        R2 K2 [warn]
       12 LOADK                            R3 K3 ["Failed to set daily limit: no response"]
       13 CALL                             R2 1 0
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R1 K4 ["success"]
       18 JUMPIF                           R2 ; [+8]
       19 GETIMPORT                        R2 K2 [warn]
       21 LOADK                            R3 K5 ["Failed to set daily limit:"]
       22 GETTABLEKS                       R4 R1 K6 ["errorDetails"]
       24 CALL                             R2 2 0
       25 LOADB                            R2 0
       26 RETURN                           R2 1
       27 LOADB                            R2 1
       28 RETURN                           R2 1

PROTO_11:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K15 [{[1] = , ["blockReason"] = , ["hasError"] = False, ["refreshQuotaSummary"], ["setDailyLimit"], ["openBuyRobux"], ["isBuyRobuxModalOpen"] = False, ["robuxPackages"] = , ["isFetchingRobuxPackages"] = False, ["robuxPackagesError"] = False, ["confirmBuyRobuxPackage"], ["closeBuyRobuxModal"], ["notifyPanelActivity"]}]
        1 DUPCLOSURE                       R1 K16 [PROTO_11]
        2 SETTABLEKS                       R1 R0 K5 ["refreshQuotaSummary"]
        4 DUPCLOSURE                       R1 K17 [PROTO_12]
        5 SETTABLEKS                       R1 R0 K6 ["setDailyLimit"]
        7 DUPCLOSURE                       R1 K18 [PROTO_13]
        8 SETTABLEKS                       R1 R0 K7 ["openBuyRobux"]
       10 DUPCLOSURE                       R1 K19 [PROTO_14]
       11 SETTABLEKS                       R1 R0 K12 ["confirmBuyRobuxPackage"]
       13 DUPCLOSURE                       R1 K20 [PROTO_15]
       14 SETTABLEKS                       R1 R0 K13 ["closeBuyRobuxModal"]
       16 DUPCLOSURE                       R1 K21 [PROTO_16]
       17 SETTABLEKS                       R1 R0 K14 ["notifyPanelActivity"]
       19 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["CreditMeteringContext should be available when NoOpProvider renders"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["useMemo"]
       10 DUPCLOSURE                       R2 K4 [PROTO_17]
       11 NEWTABLE                         R3 0 0
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["Provider"]
       18 DUPTABLE                         R4 K7 [{"value"}]
       19 SETTABLEKS                       R1 R4 K6 ["value"]
       21 GETTABLEKS                       R5 R0 K8 ["children"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K0 ["current"]
        8 GETUPVAL                         R1 2
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 JUMPIFNOT                        R1 ; [+10]
       16 GETIMPORT                        R1 K3 [task.cancel]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K0 ["current"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K0 ["current"]
       26 GETUPVAL                         R1 4
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETIMPORT                        R0 K3 [task.cancel]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K0 ["current"]
       21 JUMPIFNOT                        R0 ; [+10]
       22 GETIMPORT                        R0 K3 [task.cancel]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K0 ["current"]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 2
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K0 ["current"]
       32 GETUPVAL                         R0 3
       33 GETTABLEKS                       R0 R0 K0 ["current"]
       35 JUMPIFNOT                        R0 ; [+10]
       36 GETIMPORT                        R0 K3 [task.cancel]
       38 GETUPVAL                         R1 3
       39 GETTABLEKS                       R1 R1 K0 ["current"]
       41 CALL                             R0 1 0
       42 GETUPVAL                         R0 3
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K0 ["current"]
       46 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETUPVAL                         R0 2
        9 LOADK                            R1 K1 ["daily reset"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["nextResetEligibleTime"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R4 K2 [pcall]
        6 GETIMPORT                        R5 K5 [DateTime.fromIsoDate]
        8 MOVE                             R6 R2
        9 CALL                             R4 2 2
       10 JUMPIFNOT                        R4 ; [+1]
       11 JUMPIF                           R5 ; [+2]
       12 LOADNIL                          R3
       13 JUMP                             ; [+15]
       14 LOADN                            R7 0
       15 GETTABLEKS                       R9 R5 K6 ["UnixTimestamp"]
       17 GETIMPORT                        R10 K8 [DateTime.now]
       19 CALL                             R10 0 1
       20 GETTABLEKS                       R10 R10 K6 ["UnixTimestamp"]
       22 SUB                              R8 R9 R10
       23 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       25 GETIMPORT                        R6 K11 [math.max]
       27 CALL                             R6 2 1
       28 MOVE                             R3 R6
       29 JUMPIF                           R3 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K12 ["FIntAssistantCreditResetRefreshBufferSeconds"]
       34 ADD                              R5 R3 R4
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K13 ["current"]
       38 JUMPIFNOT                        R6 ; [+6]
       39 GETIMPORT                        R6 K16 [task.cancel]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K13 ["current"]
       44 CALL                             R6 1 0
       45 GETUPVAL                         R6 1
       46 GETIMPORT                        R7 K18 [task.delay]
       48 MOVE                             R8 R5
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R1
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K13 ["current"]
       56 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["current"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 GETUPVAL                         R2 1
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["current"]
       14 JUMPIF                           R3 ; [+10]
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+3]
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantCreditMeteringTelemetry"]
       21 JUMPIFNOT                        R3 ; [+1]
       22 RETURN                           R2 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["current"]
       28 JUMPIFEQ                         R1 R3 ; [+28]
       30 GETUPVAL                         R3 5
       31 LOADK                            R7 K3 ["Discarding superseded quota response (%*): "]
       32 ORK                              R9 R0 K4 ["unspecified"]
       33 NAMECALL                         R7 R7 K5 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R5 R7
       37 LOADK                            R6 K6 ["request %* of %*"]
       38 MOVE                             R8 R1
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K0 ["current"]
       42 NAMECALL                         R6 R6 K5 ["format"]
       44 CALL                             R6 3 1
       45 CONCAT                           R4 R5 R6
       46 CALL                             R3 1 0
       47 GETUPVAL                         R3 3
       48 CALL                             R3 0 1
       49 JUMPIFNOT                        R3 ; [+3]
       50 GETUPVAL                         R3 4
       51 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantCreditMeteringTelemetry"]
       53 JUMPIFNOT                        R3 ; [+1]
       54 RETURN                           R2 1
       55 LOADNIL                          R3
       56 RETURN                           R3 1
       57 JUMPIFNOT                        R2 ; [+89]
       58 GETUPVAL                         R3 6
       59 MOVE                             R4 R2
       60 CALL                             R3 1 0
       61 GETUPVAL                         R3 7
       62 LOADB                            R4 0
       63 CALL                             R3 1 0
       64 GETTABLEKS                       R3 R2 K7 ["limitSettings"]
       66 JUMPIFNOT                        R3 ; [+4]
       67 GETTABLEKS                       R3 R2 K7 ["limitSettings"]
       69 GETTABLEKS                       R3 R3 K8 ["additionalUsageEnabled"]
       71 GETUPVAL                         R4 5
       72 LOADK                            R9 K9 ["Refetched quota (%*): robuxBalance=%*, "]
       73 ORK                              R11 R0 K4 ["unspecified"]
       74 GETTABLEKS                       R12 R2 K10 ["robuxBalance"]
       76 NAMECALL                         R9 R9 K5 ["format"]
       78 CALL                             R9 3 1
       79 MOVE                             R6 R9
       80 LOADK                            R9 K11 ["freeTrialRemaining=%*, robuxSpentToday=%*, "]
       81 GETTABLEKS                       R11 R2 K12 ["freeTrialRemaining"]
       83 GETTABLEKS                       R12 R2 K13 ["robuxSpentToday"]
       85 NAMECALL                         R9 R9 K5 ["format"]
       87 CALL                             R9 3 1
       88 MOVE                             R7 R9
       89 LOADK                            R8 K14 ["allowed=%*, reason=%*, additionalUsageEnabled=%*"]
       90 GETTABLEKS                       R10 R2 K15 ["allowed"]
       92 GETTABLEKS                       R11 R2 K16 ["reason"]
       94 MOVE                             R12 R3
       95 NAMECALL                         R8 R8 K5 ["format"]
       97 CALL                             R8 4 1
       98 CONCAT                           R5 R6 R8
       99 CALL                             R4 1 0
      100 GETUPVAL                         R4 8
      101 GETTABLEKS                       R4 R4 K0 ["current"]
      103 JUMPIFNOT                        R4 ; [+46]
      104 GETUPVAL                         R4 9
      105 GETTABLEKS                       R4 R4 K0 ["current"]
      107 JUMPIFEQKNIL                     R4 ; [+42]
      109 GETTABLEKS                       R5 R2 K10 ["robuxBalance"]
      111 ORK                              R4 R5 K17 [0]
      112 GETUPVAL                         R5 9
      113 GETTABLEKS                       R5 R5 K0 ["current"]
      115 JUMPIFEQ                         R4 R5 ; [+34]
      117 GETUPVAL                         R4 8
      118 LOADB                            R5 0
      119 SETTABLEKS                       R5 R4 K0 ["current"]
      121 GETUPVAL                         R4 10
      122 LOADB                            R5 0
      123 SETTABLEKS                       R5 R4 K0 ["current"]
      125 GETUPVAL                         R4 9
      126 LOADNIL                          R5
      127 SETTABLEKS                       R5 R4 K0 ["current"]
      129 GETUPVAL                         R4 11
      130 GETTABLEKS                       R4 R4 K0 ["current"]
      132 JUMPIFNOT                        R4 ; [+10]
      133 GETIMPORT                        R4 K20 [task.cancel]
      135 GETUPVAL                         R5 11
      136 GETTABLEKS                       R5 R5 K0 ["current"]
      138 CALL                             R4 1 0
      139 GETUPVAL                         R4 11
      140 LOADNIL                          R5
      141 SETTABLEKS                       R5 R4 K0 ["current"]
      143 GETUPVAL                         R4 5
      144 LOADK                            R5 K21 ["Quota changed after checkout; stopping post-checkout poll"]
      145 CALL                             R4 1 0
      146 RETURN                           R2 1
      147 GETUPVAL                         R3 7
      148 LOADB                            R4 1
      149 CALL                             R3 1 0
      150 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["new"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 GETIMPORT                        R1 K4 [task.spawn]
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 LOADNIL                          R1
       21 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 ORK                              R2 R0 K0 ["explicit refresh"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K1 ["Refreshing on panel activity (%*)"]
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 2 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETIMPORT                        R1 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 GETIMPORT                        R2 K5 [task.delay]
       13 LOADK                            R3 K6 [0.3]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U2
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K0 ["current"]
       22 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 GETUPVAL                         R1 2
       14 LOADK                            R2 K1 ["Returned to Studio (%*); refreshing quota"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R2 R2 K2 ["format"]
       18 CALL                             R2 2 1
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 3
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_33:
        0 JUMPIFNOTEQKS                    R0 K0 ["settings dialog closed"] ; [+30]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["current"]
        8 JUMPIFNOT                        R1 ; [+21]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K1 ["current"]
       12 JUMPIFNOT                        R1 ; [+10]
       13 GETIMPORT                        R1 K4 [task.cancel]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K1 ["current"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 2
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K1 ["current"]
       23 GETUPVAL                         R1 3
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R1 K1 ["current"]
       27 GETUPVAL                         R1 4
       28 LOADK                            R2 K5 ["Settings closed; stopped post-checkout poll"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 JUMPIFNOTEQKS                    R0 K6 ["settings dialog activity"] ; [+13]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K1 ["current"]
       36 JUMPIFNOT                        R1 ; [+4]
       37 GETUPVAL                         R1 3
       38 LOADB                            R2 0
       39 SETTABLEKS                       R2 R1 K1 ["current"]
       41 GETUPVAL                         R1 5
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 6
       46 MOVE                             R2 R0
       47 CALL                             R1 1 0
       48 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLT                      R1 R0 ; [+5]
        4 GETIMPORT                        R0 K2 [task.wait]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["current"]
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["current"]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 LOADN                            R2 1
       18 GETUPVAL                         R0 3
       19 LOADN                            R1 1
       20 FORNPREP                         R0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["current"]
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K3 ["current"]
       28 JUMPIF                           R3 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 4
       31 LOADK                            R4 K4 ["Polling quota after checkout (%*/%*)"]
       32 MOVE                             R6 R2
       33 GETUPVAL                         R7 3
       34 NAMECALL                         R4 R4 K5 ["format"]
       36 CALL                             R4 3 1
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 5
       39 LOADK                            R4 K6 ["post-checkout poll"]
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 3
       42 JUMPIFNOTLT                      R2 R3 ; [+5]
       44 GETIMPORT                        R3 K2 [task.wait]
       46 GETUPVAL                         R4 6
       47 CALL                             R3 1 0
       48 FORNLOOP                         R0
       49 GETUPVAL                         R0 2
       50 GETTABLEKS                       R0 R0 K3 ["current"]
       52 JUMPIFNOT                        R0 ; [+11]
       53 GETUPVAL                         R0 7
       54 LOADB                            R1 1
       55 SETTABLEKS                       R1 R0 K3 ["current"]
       57 GETUPVAL                         R0 8
       58 LOADNIL                          R1
       59 SETTABLEKS                       R1 R0 K3 ["current"]
       61 GETUPVAL                         R0 4
       62 LOADK                            R1 K7 ["Post-checkout poll finished; Settings open or click will still refresh"]
       63 CALL                             R0 1 0
       64 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 LOADN                            R1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["FIntAssistantCreditMeteringPostCheckoutPollDelaySeconds"]
       18 FASTCALL2                        MATH_MAX R1 R2 ; [+3]
       20 GETIMPORT                        R0 K7 [math.max]
       22 CALL                             R0 2 1
       23 LOADN                            R2 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K8 ["FIntAssistantCreditMeteringPostCheckoutPollIntervalSeconds"]
       27 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       29 GETIMPORT                        R1 K7 [math.max]
       31 CALL                             R1 2 1
       32 LOADN                            R3 0
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K9 ["FIntAssistantCreditMeteringPostCheckoutPollMaxAttempts"]
       36 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       38 GETIMPORT                        R2 K7 [math.max]
       40 CALL                             R2 2 1
       41 JUMPIFNOTEQKN                    R2 K10 [0] ; [+5]
       43 GETUPVAL                         R3 2
       44 LOADK                            R4 K11 ["Post-checkout poll disabled (max attempts is 0)"]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 2
       48 LOADK                            R4 K12 ["Waiting %*s, then polling quota up to %* time(s) every %*s"]
       49 MOVE                             R6 R0
       50 MOVE                             R7 R2
       51 MOVE                             R8 R1
       52 NAMECALL                         R4 R4 K13 ["format"]
       54 CALL                             R4 4 1
       55 CALL                             R3 1 0
       56 GETUPVAL                         R3 0
       57 GETIMPORT                        R4 K15 [task.spawn]
       59 NEWCLOSURE                       R5 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U0
       69 CALL                             R4 1 1
       70 SETTABLEKS                       R4 R3 K0 ["current"]
       72 RETURN                           R0 0

PROTO_36:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["RBXScriptSignal"] ; [+3]
        7 LOADB                            R1 1
        8 RETURN                           R1 1
        9 LOADB                            R1 0
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+11]
       17 GETTABLEKS                       R3 R0 K4 ["Connect"]
       19 FASTCALL1                        TYPEOF R3 ; [+2]
       20 GETIMPORT                        R2 K1 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFEQKS                       R2 K5 ["function"] ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["studio window focused"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetService"]
        3 LOADK                            R1 K1 ["UserInputService"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 DUPCLOSURE                       R1 K2 [PROTO_36]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R4 R0 K3 ["WindowFocused"]
       12 FASTCALL1                        TYPEOF R4 ; [+3]
       13 MOVE                             R6 R4
       14 GETIMPORT                        R5 K5 [typeof]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K6 ["RBXScriptSignal"] ; [+3]
       19 LOADB                            R3 1
       20 JUMP                             ; [+18]
       21 LOADB                            R3 0
       22 FASTCALL1                        TYPEOF R4 ; [+3]
       23 MOVE                             R6 R4
       24 GETIMPORT                        R5 K5 [typeof]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K7 ["table"] ; [+11]
       29 GETTABLEKS                       R6 R4 K8 ["Connect"]
       31 FASTCALL1                        TYPEOF R6 ; [+2]
       32 GETIMPORT                        R5 K5 [typeof]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K9 ["function"] ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 JUMPIFNOT                        R3 ; [+12]
       40 MOVE                             R4 R2
       41 GETTABLEKS                       R5 R0 K3 ["WindowFocused"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          UPVAL U1
       45 NAMECALL                         R5 R5 K8 ["Connect"]
       47 CALL                             R5 2 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R3 K11 [table.insert]
       51 CALL                             R3 -1 0
       52 LENGTH                           R3 R2
       53 JUMPIFNOTEQKN                    R3 K12 [0] ; [+2]
       55 RETURN                           R0 0
       56 NEWCLOSURE                       R3 P2
       57 CAPTURE                          VAL R2
       58 RETURN                           R3 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["initial mount"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_42:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 1
        2 GETIMPORT                        R1 K2 [table.clone]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K3 ["limitSettings"]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K4 ["allowed"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K5 ["reason"]
       15 GETUPVAL                         R2 3
       16 SETTABLEKS                       R2 R1 K6 ["limitRemaining"]
       18 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 4
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 JUMPIFEQ                         R1 R2 ; [+12]
       14 GETUPVAL                         R1 5
       15 LOADK                            R2 K1 ["Discarding superseded daily limit response: request %* of %*"]
       16 GETUPVAL                         R4 3
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K0 ["current"]
       20 NAMECALL                         R2 R2 K2 ["format"]
       22 CALL                             R2 3 1
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 JUMPIFNOT                        R0 ; [+4]
       26 GETUPVAL                         R1 6
       27 LOADK                            R2 K3 ["daily limit saved"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 7
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U10
       35 CAPTURE                          UPVAL U11
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["current"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 GETUPVAL                         R3 1
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["limitSettings"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 GETUPVAL                         R4 1
       17 JUMPIFNOT                        R4 ; [+4]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["allowed"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 GETUPVAL                         R5 1
       24 JUMPIFNOT                        R5 ; [+4]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K4 ["reason"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 GETUPVAL                         R6 1
       31 JUMPIFNOT                        R6 ; [+4]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K5 ["limitRemaining"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R5
       37 GETUPVAL                         R6 1
       38 JUMPIFNOT                        R6 ; [+38]
       39 GETIMPORT                        R6 K8 [table.clone]
       41 GETUPVAL                         R7 1
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R0 R6 K2 ["limitSettings"]
       45 LOADNIL                          R7
       46 SETTABLEKS                       R7 R6 K3 ["allowed"]
       48 LOADNIL                          R7
       49 SETTABLEKS                       R7 R6 K4 ["reason"]
       51 GETTABLEKS                       R7 R0 K9 ["dailyLimitSet"]
       53 JUMPIFNOT                        R7 ; [+17]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K11 ["robuxSpentToday"]
       57 ORK                              R7 R8 K10 [0]
       58 LOADN                            R9 0
       59 GETTABLEKS                       R12 R0 K12 ["dailyLimit"]
       61 ORK                              R11 R12 K10 [0]
       62 SUB                              R10 R11 R7
       63 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       65 GETIMPORT                        R8 K15 [math.max]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R6 K5 ["limitRemaining"]
       70 JUMP                             ; [+3]
       71 LOADNIL                          R7
       72 SETTABLEKS                       R7 R6 K5 ["limitRemaining"]
       74 GETUPVAL                         R7 2
       75 MOVE                             R8 R6
       76 CALL                             R7 1 0
       77 GETUPVAL                         R7 3
       78 GETTABLEKS                       R7 R7 K16 ["FStringAssistantDebugCreditMeteringBlockReason"]
       80 LOADB                            R6 0
       81 JUMPIFEQKS                       R7 K17 [""] ; [+7]
       83 GETUPVAL                         R9 4
       84 GETTABLE                         R8 R9 R7
       85 JUMPIFNOTEQKNIL                  R8 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 JUMPIFNOT                        R6 ; [+2]
       90 SETUPVAL                         R0 5
       91 RETURN                           R0 0
       92 GETIMPORT                        R6 K20 [task.spawn]
       94 NEWCLOSURE                       R7 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          VAL R1
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R5
      107 CALL                             R6 1 0
      108 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+5]
        5 GETIMPORT                        R2 K3 [warn]
        7 LOADK                            R3 K4 ["Failed to fetch Robux packages:"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["current"]
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["current"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 4
       22 LOADB                            R3 0
       23 CALL                             R2 1 0
       24 JUMPIFNOT                        R0 ; [+5]
       25 JUMPIFNOT                        R1 ; [+4]
       26 GETUPVAL                         R2 5
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 6
       31 LOADB                            R3 1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETUPVAL                         R1 1
       10 LOADB                            R2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 GETIMPORT                        R1 K4 [task.spawn]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U2
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIF                           R0 ; [+5]
       10 GETUPVAL                         R0 3
       11 JUMPIFEQKNIL                     R0 ; [+4]
       13 GETUPVAL                         R0 4
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 5
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["GetService"]
        8 LOADK                            R2 K2 ["GuiService"]
        9 CALL                             R1 1 1
       10 LOADK                            R2 K3 ["%*upgrades/paymentmethods?ap=%*"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["BASE_URL"]
       14 MOVE                             R5 R0
       15 NAMECALL                         R2 R2 K5 ["format"]
       17 CALL                             R2 3 1
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R1 K6 ["OpenBrowserWindow"]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 3
       23 LOADB                            R4 1
       24 SETTABLEKS                       R4 R3 K7 ["current"]
       26 GETUPVAL                         R3 4
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K7 ["current"]
       30 GETUPVAL                         R3 5
       31 GETUPVAL                         R5 6
       32 JUMPIFNOT                        R5 ; [+5]
       33 GETUPVAL                         R5 6
       34 GETTABLEKS                       R5 R5 K9 ["robuxBalance"]
       36 ORK                              R4 R5 K8 [0]
       37 JUMP                             ; [+1]
       38 LOADN                            R4 0
       39 SETTABLEKS                       R4 R3 K7 ["current"]
       41 GETUPVAL                         R3 7
       42 CALL                             R3 0 0
       43 GETUPVAL                         R3 8
       44 LOADB                            R4 0
       45 CALL                             R3 1 0
       46 GETUPVAL                         R3 9
       47 LOADK                            R7 K10 ["Opened the payment methods page for product %*; "]
       48 MOVE                             R9 R0
       49 NAMECALL                         R7 R7 K5 ["format"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 LOADK                            R6 K11 ["quota will refresh on return to Studio, or after the post-checkout poll delay"]
       54 CONCAT                           R4 R5 R6
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["getBlockReason"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_51:
        0 DUPTABLE                         R0 K13 [{"quotaSummary", "blockReason", "hasError", "refreshQuotaSummary", "setDailyLimit", "openBuyRobux", "isBuyRobuxModalOpen", "robuxPackages", "isFetchingRobuxPackages", "robuxPackagesError", "confirmBuyRobuxPackage", "closeBuyRobuxModal", "notifyPanelActivity"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["quotaSummary"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["blockReason"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["hasError"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["refreshQuotaSummary"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setDailyLimit"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["openBuyRobux"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["isBuyRobuxModalOpen"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["robuxPackages"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["isFetchingRobuxPackages"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["robuxPackagesError"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["confirmBuyRobuxPackage"]
       34 GETUPVAL                         R1 11
       35 SETTABLEKS                       R1 R0 K11 ["closeBuyRobuxModal"]
       37 GETUPVAL                         R1 12
       38 SETTABLEKS                       R1 R0 K12 ["notifyPanelActivity"]
       40 RETURN                           R0 1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["CreditMeteringContext should be available when CreditMeteringProvider renders"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["useState"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useState"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K3 ["useState"]
       20 LOADB                            R6 0
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K4 ["useRef"]
       25 LOADNIL                          R8
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K4 ["useRef"]
       30 LOADNIL                          R9
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K4 ["useRef"]
       35 LOADNIL                          R10
       36 CALL                             R9 1 1
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K4 ["useRef"]
       40 LOADNIL                          R11
       41 CALL                             R10 1 1
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K4 ["useRef"]
       45 LOADB                            R12 0
       46 CALL                             R11 1 1
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K4 ["useRef"]
       50 LOADB                            R13 0
       51 CALL                             R12 1 1
       52 NEWCLOSURE                       R13 P0
       53 CAPTURE                          VAL R9
       54 NEWCLOSURE                       R14 P1
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R12
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R9
       59 CAPTURE                          UPVAL U2
       60 GETUPVAL                         R15 1
       61 GETTABLEKS                       R15 R15 K4 ["useRef"]
       63 LOADN                            R16 0
       64 CALL                             R15 1 1
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R16 R16 K4 ["useRef"]
       68 LOADN                            R17 0
       69 CALL                             R16 1 1
       70 GETUPVAL                         R17 1
       71 GETTABLEKS                       R17 R17 K4 ["useRef"]
       73 LOADB                            R18 1
       74 CALL                             R17 1 1
       75 GETUPVAL                         R18 1
       76 GETTABLEKS                       R18 R18 K5 ["useEffect"]
       78 NEWCLOSURE                       R19 P2
       79 CAPTURE                          VAL R17
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 NEWTABLE                         R20 0 0
       85 CALL                             R18 2 0
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R18 R18 K6 ["useCallback"]
       89 NEWCLOSURE                       R19 P3
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R17
       93 NEWTABLE                         R20 0 0
       95 CALL                             R18 2 1
       96 NEWCLOSURE                       R19 P4
       97 CAPTURE                          VAL R15
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          VAL R17
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R9
      109 GETUPVAL                         R20 1
      110 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      112 NEWCLOSURE                       R21 P5
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          VAL R19
      117 NEWTABLE                         R22 0 0
      119 CALL                             R20 2 1
      120 GETUPVAL                         R21 1
      121 GETTABLEKS                       R21 R21 K6 ["useCallback"]
      123 NEWCLOSURE                       R22 P6
      124 CAPTURE                          VAL R20
      125 NEWTABLE                         R23 0 1
      127 MOVE                             R24 R20
      128 SETLIST                          R23 R24 1 [1]
      130 CALL                             R21 2 1
      131 GETUPVAL                         R22 1
      132 GETTABLEKS                       R22 R22 K6 ["useCallback"]
      134 NEWCLOSURE                       R23 P7
      135 CAPTURE                          VAL R8
      136 CAPTURE                          UPVAL U2
      137 CAPTURE                          VAL R20
      138 NEWTABLE                         R24 0 1
      140 MOVE                             R25 R20
      141 SETLIST                          R24 R25 1 [1]
      143 CALL                             R22 2 1
      144 GETUPVAL                         R23 1
      145 GETTABLEKS                       R23 R23 K6 ["useCallback"]
      147 NEWCLOSURE                       R24 P8
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R12
      150 CAPTURE                          UPVAL U2
      151 CAPTURE                          VAL R22
      152 NEWTABLE                         R25 0 1
      154 MOVE                             R26 R22
      155 SETLIST                          R25 R26 1 [1]
      157 CALL                             R23 2 1
      158 GETUPVAL                         R24 1
      159 GETTABLEKS                       R24 R24 K6 ["useCallback"]
      161 NEWCLOSURE                       R25 P9
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R12
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R23
      169 NEWTABLE                         R26 0 2
      171 MOVE                             R27 R22
      172 MOVE                             R28 R23
      173 SETLIST                          R26 R27 2 [1]
      175 CALL                             R24 2 1
      176 GETUPVAL                         R25 1
      177 GETTABLEKS                       R25 R25 K6 ["useCallback"]
      179 NEWCLOSURE                       R26 P10
      180 CAPTURE                          VAL R9
      181 CAPTURE                          UPVAL U3
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R12
      187 NEWTABLE                         R27 0 0
      189 CALL                             R25 2 1
      190 GETUPVAL                         R26 1
      191 GETTABLEKS                       R26 R26 K5 ["useEffect"]
      193 NEWCLOSURE                       R27 P11
      194 CAPTURE                          UPVAL U7
      195 CAPTURE                          VAL R23
      196 NEWTABLE                         R28 0 1
      198 MOVE                             R29 R23
      199 SETLIST                          R28 R29 1 [1]
      201 CALL                             R26 2 0
      202 GETUPVAL                         R26 1
      203 GETTABLEKS                       R26 R26 K5 ["useEffect"]
      205 NEWCLOSURE                       R27 P12
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R21
      209 NEWTABLE                         R28 0 3
      211 MOVE                             R29 R1
      212 MOVE                             R30 R18
      213 MOVE                             R31 R21
      214 SETLIST                          R28 R29 3 [1]
      216 CALL                             R26 2 0
      217 GETUPVAL                         R26 1
      218 GETTABLEKS                       R26 R26 K5 ["useEffect"]
      220 NEWCLOSURE                       R27 P13
      221 CAPTURE                          VAL R20
      222 NEWTABLE                         R28 0 1
      224 MOVE                             R29 R20
      225 SETLIST                          R28 R29 1 [1]
      227 CALL                             R26 2 0
      228 GETUPVAL                         R26 1
      229 GETTABLEKS                       R26 R26 K6 ["useCallback"]
      231 NEWCLOSURE                       R27 P14
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R2
      235 CAPTURE                          UPVAL U3
      236 CAPTURE                          UPVAL U8
      237 CAPTURE                          UPVAL U9
      238 CAPTURE                          UPVAL U10
      239 CAPTURE                          VAL R17
      240 CAPTURE                          UPVAL U2
      241 CAPTURE                          VAL R20
      242 NEWTABLE                         R28 0 2
      244 MOVE                             R29 R1
      245 MOVE                             R30 R20
      246 SETLIST                          R28 R29 2 [1]
      248 CALL                             R26 2 1
      249 GETUPVAL                         R27 1
      250 GETTABLEKS                       R27 R27 K3 ["useState"]
      252 LOADNIL                          R28
      253 CALL                             R27 1 2
      254 GETUPVAL                         R29 1
      255 GETTABLEKS                       R29 R29 K3 ["useState"]
      257 LOADB                            R30 0
      258 CALL                             R29 1 2
      259 GETUPVAL                         R31 1
      260 GETTABLEKS                       R31 R31 K3 ["useState"]
      262 LOADB                            R32 0
      263 CALL                             R31 1 2
      264 GETUPVAL                         R33 1
      265 GETTABLEKS                       R33 R33 K4 ["useRef"]
      267 LOADN                            R34 0
      268 CALL                             R33 1 1
      269 GETUPVAL                         R34 1
      270 GETTABLEKS                       R34 R34 K6 ["useCallback"]
      272 NEWCLOSURE                       R35 P15
      273 CAPTURE                          VAL R33
      274 CAPTURE                          VAL R30
      275 CAPTURE                          VAL R32
      276 CAPTURE                          UPVAL U11
      277 CAPTURE                          VAL R17
      278 CAPTURE                          VAL R28
      279 NEWTABLE                         R36 0 0
      281 CALL                             R34 2 1
      282 GETUPVAL                         R35 1
      283 GETTABLEKS                       R35 R35 K6 ["useCallback"]
      285 NEWCLOSURE                       R36 P16
      286 CAPTURE                          UPVAL U3
      287 CAPTURE                          VAL R6
      288 CAPTURE                          VAL R29
      289 CAPTURE                          VAL R27
      290 CAPTURE                          VAL R31
      291 CAPTURE                          VAL R34
      292 NEWTABLE                         R37 0 4
      294 MOVE                             R38 R29
      295 MOVE                             R39 R27
      296 MOVE                             R40 R31
      297 MOVE                             R41 R34
      298 SETLIST                          R37 R38 4 [1]
      300 CALL                             R35 2 1
      301 GETUPVAL                         R36 1
      302 GETTABLEKS                       R36 R36 K6 ["useCallback"]
      304 NEWCLOSURE                       R37 P17
      305 CAPTURE                          VAL R6
      306 NEWTABLE                         R38 0 0
      308 CALL                             R36 2 1
      309 GETUPVAL                         R37 1
      310 GETTABLEKS                       R37 R37 K6 ["useCallback"]
      312 NEWCLOSURE                       R38 P18
      313 CAPTURE                          UPVAL U3
      314 CAPTURE                          UPVAL U7
      315 CAPTURE                          UPVAL U12
      316 CAPTURE                          VAL R11
      317 CAPTURE                          VAL R12
      318 CAPTURE                          VAL R10
      319 CAPTURE                          VAL R1
      320 CAPTURE                          VAL R25
      321 CAPTURE                          VAL R6
      322 CAPTURE                          UPVAL U2
      323 NEWTABLE                         R39 0 2
      325 MOVE                             R40 R1
      326 MOVE                             R41 R25
      327 SETLIST                          R39 R40 2 [1]
      329 CALL                             R37 2 1
      330 GETUPVAL                         R38 1
      331 GETTABLEKS                       R38 R38 K7 ["useMemo"]
      333 NEWCLOSURE                       R39 P19
      334 CAPTURE                          VAL R1
      335 CAPTURE                          UPVAL U0
      336 NEWTABLE                         R40 0 1
      338 MOVE                             R41 R1
      339 SETLIST                          R40 R41 1 [1]
      341 CALL                             R38 2 1
      342 GETUPVAL                         R39 1
      343 GETTABLEKS                       R39 R39 K7 ["useMemo"]
      345 NEWCLOSURE                       R40 P20
      346 CAPTURE                          VAL R1
      347 CAPTURE                          VAL R38
      348 CAPTURE                          VAL R3
      349 CAPTURE                          VAL R21
      350 CAPTURE                          VAL R26
      351 CAPTURE                          VAL R35
      352 CAPTURE                          VAL R5
      353 CAPTURE                          VAL R27
      354 CAPTURE                          VAL R29
      355 CAPTURE                          VAL R31
      356 CAPTURE                          VAL R37
      357 CAPTURE                          VAL R36
      358 CAPTURE                          VAL R24
      359 NEWTABLE                         R41 0 13
      361 MOVE                             R42 R1
      362 MOVE                             R43 R38
      363 MOVE                             R44 R3
      364 MOVE                             R45 R21
      365 MOVE                             R46 R26
      366 MOVE                             R47 R35
      367 MOVE                             R48 R5
      368 MOVE                             R49 R27
      369 MOVE                             R50 R29
      370 MOVE                             R51 R31
      371 MOVE                             R52 R37
      372 MOVE                             R53 R36
      373 MOVE                             R54 R24
      374 SETLIST                          R41 R42 13 [1]
      376 CALL                             R39 2 1
      377 GETUPVAL                         R40 13
      378 GETUPVAL                         R41 0
      379 GETTABLEKS                       R41 R41 K8 ["Provider"]
      381 DUPTABLE                         R42 K10 [{"value"}]
      382 SETTABLEKS                       R39 R42 K9 ["value"]
      384 GETTABLEKS                       R43 R0 K11 ["children"]
      386 CALL                             R40 3 -1
      387 RETURN                           R40 -1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["children"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+8]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 NEWTABLE                         R3 0 0
       12 GETTABLEKS                       R4 R0 K0 ["children"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 4
       18 NEWTABLE                         R3 0 0
       20 GETTABLEKS                       R4 R0 K0 ["children"]
       22 CALL                             R1 3 -1
       23 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Networking"]
       20 GETTABLEKS                       R3 R3 K10 ["FetchRobuxPackages"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["OpenApiCreditMeteringService"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["Promise"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Packages"]
       55 GETTABLEKS                       R8 R8 K15 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K8 ["Src"]
       62 GETTABLEKS                       R9 R9 K16 ["Util"]
       64 GETTABLEKS                       R9 R9 K17 ["Services"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K8 ["Src"]
       71 GETTABLEKS                       R10 R10 K16 ["Util"]
       73 GETTABLEKS                       R10 R10 K18 ["StudioEndpointUtil"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R1 K19 ["Components"]
       78 GETTABLEKS                       R10 R10 K20 ["Contexts"]
       80 GETTABLEKS                       R10 R10 K21 ["CreditMeteringContext"]
       82 GETTABLEKS                       R11 R7 K22 ["createElement"]
       84 GETTABLEKS                       R12 R1 K23 ["FlagUtils"]
       86 GETTABLEKS                       R12 R12 K24 ["getIsCreditMeteringEnabled"]
       88 DUPCLOSURE                       R13 K25 [PROTO_0]
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R3
       91 GETTABLEKS                       R14 R5 K26 ["CreditMeteringServiceAPI"]
       93 GETTABLEKS                       R15 R4 K27 ["Url"]
       95 GETTABLEKS                       R15 R15 K28 ["new"]
       97 LOADNIL                          R16
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K31 [DateTime.fromUnixTimestamp]
      101 GETIMPORT                        R18 K34 [DateTime.now]
      103 CALL                             R18 0 1
      104 GETTABLEKS                       R18 R18 K35 ["UnixTimestamp"]
      106 ADDK                             R17 R18 K32 [18000]
      107 CALL                             R16 1 1
      108 NAMECALL                         R16 R16 K36 ["ToIsoDate"]
      110 CALL                             R16 1 1
      111 DUPTABLE                         R17 K40 [{"FreeTrialExhausted", "DailyLimitReached", "InsufficientRobuxBalance"}]
      112 DUPTABLE                         R18 K57 [{["freeTrialDailyAllowance"] = 25, ["freeTrialRemaining"] = 0, ["freeTrialPctUsed"] = 1, ["nextResetEligibleTime"], ["robuxBalance"] = 500, ["limitSettings"], ["robuxSpentToday"] = 0, ["limitRemaining"] = 0, ["allowed"] = False, ["reason"] = "BLOCK_REASON_FREE_TRIAL_EXHAUSTED"}]
      113 SETTABLEKS                       R16 R18 K47 ["nextResetEligibleTime"]
      115 DUPTABLE                         R19 K61 [{["additionalUsageEnabled"] = False, ["dailyLimitSet"] = False, ["dailyLimit"] = 0}]
      116 SETTABLEKS                       R19 R18 K50 ["limitSettings"]
      118 SETTABLEKS                       R18 R17 K37 ["FreeTrialExhausted"]
      120 DUPTABLE                         R18 K63 [{["freeTrialDailyAllowance"] = 25, ["freeTrialRemaining"] = 0, ["freeTrialPctUsed"] = 1, ["nextResetEligibleTime"], ["robuxBalance"] = 500, ["limitSettings"], ["robuxSpentToday"] = 500, ["limitRemaining"] = 0, ["allowed"] = False, ["reason"] = "BLOCK_REASON_DAILY_LIMIT_REACHED"}]
      121 SETTABLEKS                       R16 R18 K47 ["nextResetEligibleTime"]
      123 DUPTABLE                         R19 K65 [{["additionalUsageEnabled"] = True, ["dailyLimitSet"] = True, ["dailyLimit"] = 500}]
      124 SETTABLEKS                       R19 R18 K50 ["limitSettings"]
      126 SETTABLEKS                       R18 R17 K38 ["DailyLimitReached"]
      128 DUPTABLE                         R18 K67 [{["freeTrialDailyAllowance"] = 25, ["freeTrialRemaining"] = 0, ["freeTrialPctUsed"] = 1, ["nextResetEligibleTime"], ["robuxBalance"] = 0, ["limitSettings"], ["robuxSpentToday"] = 500, ["limitRemaining"] = 0, ["allowed"] = False, ["reason"] = "BLOCK_REASON_INSUFFICIENT_ROBUX_BALANCE"}]
      129 SETTABLEKS                       R16 R18 K47 ["nextResetEligibleTime"]
      131 DUPTABLE                         R19 K68 [{["additionalUsageEnabled"] = True, ["dailyLimitSet"] = False, ["dailyLimit"] = 0}]
      132 SETTABLEKS                       R19 R18 K50 ["limitSettings"]
      134 SETTABLEKS                       R18 R17 K39 ["InsufficientRobuxBalance"]
      136 DUPCLOSURE                       R18 K69 [PROTO_1]
      137 NEWTABLE                         R19 0 4
      139 DUPTABLE                         R20 K75 [{["productId"] = 1, ["robuxAmount"] = 800, ["currencyAmountStr"] = "$9.99"}]
      140 DUPTABLE                         R21 K79 [{["productId"] = 2, ["robuxAmount"] = 1700, ["currencyAmountStr"] = "$19.99"}]
      141 DUPTABLE                         R22 K83 [{["productId"] = 3, ["robuxAmount"] = 4500, ["currencyAmountStr"] = "$49.99"}]
      142 DUPTABLE                         R23 K87 [{["productId"] = 4, ["robuxAmount"] = 10000, ["currencyAmountStr"] = "$99.99"}]
      143 SETLIST                          R19 R20 4 [1]
      145 LOADNIL                          R20
      146 DUPCLOSURE                       R21 K88 [PROTO_2]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R17
      149 NEWCLOSURE                       R22 P3
      150 CAPTURE                          REF R20
      151 DUPCLOSURE                       R23 K89 [PROTO_4]
      152 CAPTURE                          VAL R3
      153 NEWCLOSURE                       R24 P5
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R23
      157 CAPTURE                          REF R20
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R14
      160 DUPCLOSURE                       R25 K90 [PROTO_8]
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R2
      167 DUPCLOSURE                       R26 K91 [PROTO_10]
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R14
      170 DUPCLOSURE                       R27 K92 [PROTO_18]
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R11
      174 NEWCLOSURE                       R28 P9
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R17
      184 CAPTURE                          REF R20
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R11
      189 DUPCLOSURE                       R29 K93 [PROTO_53]
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R28
      195 CLOSEUPVALS                      R20
      196 RETURN                           R29 1
