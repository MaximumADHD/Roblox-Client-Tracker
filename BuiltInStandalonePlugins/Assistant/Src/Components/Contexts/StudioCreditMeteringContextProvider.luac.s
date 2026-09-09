PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantCreditMeteringLogging"]
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R3 K3 ["[StudioCreditMeteringContextProvider] %*"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K4 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 GETVARARGS                       R3 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getV1QuotaSummaryAsync"]
        3 DUPTABLE                         R1 K3 [{["product"] = "2"}]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringAssistantDebugCreditMeteringBlockReason"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+33]
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+18]
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K2 ["Using mock quota for block reason \"%*\""]
       10 MOVE                             R6 R0
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 GETIMPORT                        R2 K6 [table.clone]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 3
       21 JUMPIFNOT                        R3 ; [+3]
       22 GETUPVAL                         R3 3
       23 SETTABLEKS                       R3 R2 K7 ["limitSettings"]
       25 RETURN                           R2 1
       26 GETIMPORT                        R2 K9 [warn]
       28 LOADK                            R6 K10 ["Unknown debug block reason \"%*\". "]
       29 MOVE                             R8 R0
       30 NAMECALL                         R6 R6 K3 ["format"]
       32 CALL                             R6 2 1
       33 MOVE                             R4 R6
       34 LOADK                            R5 K11 ["Valid values: FreeTrialExhausted, DailyLimitReached, InsufficientRobuxBalance"]
       35 CONCAT                           R3 R4 R5
       36 CALL                             R2 1 0
       37 GETUPVAL                         R1 2
       38 LOADK                            R2 K12 ["Fetching quota summary..."]
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 4
       41 GETTABLEKS                       R1 R1 K13 ["callWithOptions"]
       43 DUPCLOSURE                       R2 K14 [PROTO_4]
       44 CAPTURE                          UPVAL U5
       45 NEWTABLE                         R3 0 0
       47 CALL                             R1 2 1
       48 JUMPIF                           R1 ; [+6]
       49 GETIMPORT                        R2 K9 [warn]
       51 LOADK                            R3 K15 ["Failed to fetch quota summary: no response"]
       52 CALL                             R2 1 0
       53 LOADNIL                          R2
       54 RETURN                           R2 1
       55 GETTABLEKS                       R2 R1 K16 ["success"]
       57 JUMPIF                           R2 ; [+8]
       58 GETIMPORT                        R2 K9 [warn]
       60 LOADK                            R3 K17 ["Failed to fetch quota summary:"]
       61 GETTABLEKS                       R4 R1 K18 ["errorDetails"]
       63 CALL                             R2 2 0
       64 LOADNIL                          R2
       65 RETURN                           R2 1
       66 GETTABLEKS                       R2 R1 K19 ["data"]
       68 MOVE                             R3 R2
       69 JUMPIFNOT                        R3 ; [+2]
       70 GETTABLEKS                       R3 R2 K20 ["summary"]
       72 GETUPVAL                         R4 2
       73 LOADK                            R5 K21 ["Got quota summary:"]
       74 MOVE                             R6 R3
       75 CALL                             R4 2 0
       76 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fetchRobuxPackagesAsync"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_7:
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
       24 DUPCLOSURE                       R1 K5 [PROTO_6]
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
       63 LOADK                            R5 K15 ["Got %* Robux package(s) to display"]
       64 LENGTH                           R7 R2
       65 NAMECALL                         R5 R5 K16 ["format"]
       67 CALL                             R5 2 1
       68 MOVE                             R4 R5
       69 CALL                             R3 1 0
       70 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["putV1DailyLimitAsync"]
        3 DUPTABLE                         R1 K2 [{"body"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["body"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K15 [{[1] = , ["blockReason"] = , ["hasError"] = False, ["refreshQuotaSummary"], ["setDailyLimit"], ["openBuyRobux"], ["isBuyRobuxModalOpen"] = False, ["robuxPackages"] = , ["isFetchingRobuxPackages"] = False, ["robuxPackagesError"] = False, ["confirmBuyRobuxPackage"], ["closeBuyRobuxModal"], ["notifyPanelActivity"]}]
        1 DUPCLOSURE                       R1 K16 [PROTO_10]
        2 SETTABLEKS                       R1 R0 K5 ["refreshQuotaSummary"]
        4 DUPCLOSURE                       R1 K17 [PROTO_11]
        5 SETTABLEKS                       R1 R0 K6 ["setDailyLimit"]
        7 DUPCLOSURE                       R1 K18 [PROTO_12]
        8 SETTABLEKS                       R1 R0 K7 ["openBuyRobux"]
       10 DUPCLOSURE                       R1 K19 [PROTO_13]
       11 SETTABLEKS                       R1 R0 K12 ["confirmBuyRobuxPackage"]
       13 DUPCLOSURE                       R1 K20 [PROTO_14]
       14 SETTABLEKS                       R1 R0 K13 ["closeBuyRobuxModal"]
       16 DUPCLOSURE                       R1 K21 [PROTO_15]
       17 SETTABLEKS                       R1 R0 K14 ["notifyPanelActivity"]
       19 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["CreditMeteringContext should be available when NoOpProvider renders"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["useMemo"]
       10 DUPCLOSURE                       R2 K4 [PROTO_16]
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R0 1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["current"]
       19 JUMPIFEQ                         R1 R3 ; [+20]
       21 GETUPVAL                         R3 3
       22 LOADK                            R7 K2 ["Discarding superseded quota response (%*): "]
       23 ORK                              R9 R0 K3 ["unspecified"]
       24 NAMECALL                         R7 R7 K4 ["format"]
       26 CALL                             R7 2 1
       27 MOVE                             R5 R7
       28 LOADK                            R7 K5 ["request %* of %*"]
       29 MOVE                             R9 R1
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K0 ["current"]
       33 NAMECALL                         R7 R7 K4 ["format"]
       35 CALL                             R7 3 1
       36 MOVE                             R6 R7
       37 CONCAT                           R4 R5 R6
       38 CALL                             R3 1 0
       39 RETURN                           R0 0
       40 JUMPIFNOT                        R2 ; [+90]
       41 GETUPVAL                         R3 4
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 GETUPVAL                         R3 5
       45 LOADB                            R4 0
       46 CALL                             R3 1 0
       47 GETTABLEKS                       R3 R2 K6 ["limitSettings"]
       49 JUMPIFNOT                        R3 ; [+4]
       50 GETTABLEKS                       R3 R2 K6 ["limitSettings"]
       52 GETTABLEKS                       R3 R3 K7 ["additionalUsageEnabled"]
       54 GETUPVAL                         R4 3
       55 LOADK                            R9 K8 ["Refetched quota (%*): robuxBalance=%*, "]
       56 ORK                              R11 R0 K3 ["unspecified"]
       57 GETTABLEKS                       R12 R2 K9 ["robuxBalance"]
       59 NAMECALL                         R9 R9 K4 ["format"]
       61 CALL                             R9 3 1
       62 MOVE                             R6 R9
       63 LOADK                            R9 K10 ["freeTrialRemaining=%*, robuxSpentToday=%*, "]
       64 GETTABLEKS                       R11 R2 K11 ["freeTrialRemaining"]
       66 GETTABLEKS                       R12 R2 K12 ["robuxSpentToday"]
       68 NAMECALL                         R9 R9 K4 ["format"]
       70 CALL                             R9 3 1
       71 MOVE                             R7 R9
       72 LOADK                            R9 K13 ["allowed=%*, reason=%*, additionalUsageEnabled=%*"]
       73 GETTABLEKS                       R11 R2 K14 ["allowed"]
       75 GETTABLEKS                       R12 R2 K15 ["reason"]
       77 MOVE                             R13 R3
       78 NAMECALL                         R9 R9 K4 ["format"]
       80 CALL                             R9 4 1
       81 MOVE                             R8 R9
       82 CONCAT                           R5 R6 R8
       83 CALL                             R4 1 0
       84 GETUPVAL                         R4 6
       85 GETTABLEKS                       R4 R4 K0 ["current"]
       87 JUMPIFNOT                        R4 ; [+46]
       88 GETUPVAL                         R4 7
       89 GETTABLEKS                       R4 R4 K0 ["current"]
       91 JUMPIFEQKNIL                     R4 ; [+42]
       93 GETTABLEKS                       R5 R2 K9 ["robuxBalance"]
       95 ORK                              R4 R5 K16 [0]
       96 GETUPVAL                         R5 7
       97 GETTABLEKS                       R5 R5 K0 ["current"]
       99 JUMPIFEQ                         R4 R5 ; [+34]
      101 GETUPVAL                         R4 6
      102 LOADB                            R5 0
      103 SETTABLEKS                       R5 R4 K0 ["current"]
      105 GETUPVAL                         R4 8
      106 LOADB                            R5 0
      107 SETTABLEKS                       R5 R4 K0 ["current"]
      109 GETUPVAL                         R4 7
      110 LOADNIL                          R5
      111 SETTABLEKS                       R5 R4 K0 ["current"]
      113 GETUPVAL                         R4 9
      114 GETTABLEKS                       R4 R4 K0 ["current"]
      116 JUMPIFNOT                        R4 ; [+10]
      117 GETIMPORT                        R4 K19 [task.cancel]
      119 GETUPVAL                         R5 9
      120 GETTABLEKS                       R5 R5 K0 ["current"]
      122 CALL                             R4 1 0
      123 GETUPVAL                         R4 9
      124 LOADNIL                          R5
      125 SETTABLEKS                       R5 R4 K0 ["current"]
      127 GETUPVAL                         R4 3
      128 LOADK                            R5 K20 ["Quota changed after checkout; stopping post-checkout poll"]
      129 CALL                             R4 1 0
      130 RETURN                           R0 0
      131 GETUPVAL                         R3 5
      132 LOADB                            R4 1
      133 CALL                             R3 1 0
      134 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 ORK                              R2 R0 K0 ["explicit refresh"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["Refreshing on panel activity (%*)"]
        6 GETUPVAL                         R4 2
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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
       14 LOADK                            R3 K1 ["Returned to Studio (%*); refreshing quota"]
       15 MOVE                             R5 R0
       16 NAMECALL                         R3 R3 K2 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 3
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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
       31 LOADK                            R5 K4 ["Polling quota after checkout (%*/%*)"]
       32 MOVE                             R7 R2
       33 GETUPVAL                         R8 3
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 3 1
       37 MOVE                             R4 R5
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 5
       40 LOADK                            R4 K6 ["post-checkout poll"]
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 3
       43 JUMPIFNOTLT                      R2 R3 ; [+5]
       45 GETIMPORT                        R3 K2 [task.wait]
       47 GETUPVAL                         R4 6
       48 CALL                             R3 1 0
       49 FORNLOOP                         R0
       50 GETUPVAL                         R0 2
       51 GETTABLEKS                       R0 R0 K3 ["current"]
       53 JUMPIFNOT                        R0 ; [+11]
       54 GETUPVAL                         R0 7
       55 LOADB                            R1 1
       56 SETTABLEKS                       R1 R0 K3 ["current"]
       58 GETUPVAL                         R0 8
       59 LOADNIL                          R1
       60 SETTABLEKS                       R1 R0 K3 ["current"]
       62 GETUPVAL                         R0 4
       63 LOADK                            R1 K7 ["Post-checkout poll finished; Settings open or click will still refresh"]
       64 CALL                             R0 1 0
       65 RETURN                           R0 0

PROTO_32:
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
       48 LOADK                            R5 K12 ["Waiting %*s, then polling quota up to %* time(s) every %*s"]
       49 MOVE                             R7 R0
       50 MOVE                             R8 R2
       51 MOVE                             R9 R1
       52 NAMECALL                         R5 R5 K13 ["format"]
       54 CALL                             R5 4 1
       55 MOVE                             R4 R5
       56 CALL                             R3 1 0
       57 GETUPVAL                         R3 0
       58 GETIMPORT                        R4 K15 [task.spawn]
       60 NEWCLOSURE                       R5 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U0
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K0 ["current"]
       73 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["studio window focused"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetService"]
        3 LOADK                            R1 K1 ["UserInputService"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 DUPCLOSURE                       R1 K2 [PROTO_33]
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

PROTO_37:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["initial mount"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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
       12 JUMPIFEQ                         R1 R2 ; [+13]
       14 GETUPVAL                         R1 5
       15 LOADK                            R3 K1 ["Discarding superseded daily limit response: request %* of %*"]
       16 GETUPVAL                         R5 3
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K0 ["current"]
       20 NAMECALL                         R3 R3 K2 ["format"]
       22 CALL                             R3 3 1
       23 MOVE                             R2 R3
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 JUMPIFNOT                        R0 ; [+4]
       27 GETUPVAL                         R1 6
       28 LOADK                            R2 K3 ["daily limit saved"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 7
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["GetService"]
        8 LOADK                            R2 K2 ["GuiService"]
        9 CALL                             R1 1 1
       10 LOADK                            R3 K3 ["%*upgrades/paymentmethods?ap=%*"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K4 ["BASE_URL"]
       14 MOVE                             R6 R0
       15 NAMECALL                         R3 R3 K5 ["format"]
       17 CALL                             R3 3 1
       18 MOVE                             R2 R3
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R1 K6 ["OpenBrowserWindow"]
       22 CALL                             R3 2 0
       23 GETUPVAL                         R3 3
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K7 ["current"]
       27 GETUPVAL                         R3 4
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K7 ["current"]
       31 GETUPVAL                         R3 5
       32 GETUPVAL                         R5 6
       33 JUMPIFNOT                        R5 ; [+5]
       34 GETUPVAL                         R5 6
       35 GETTABLEKS                       R5 R5 K9 ["robuxBalance"]
       37 ORK                              R4 R5 K8 [0]
       38 JUMP                             ; [+1]
       39 LOADN                            R4 0
       40 SETTABLEKS                       R4 R3 K7 ["current"]
       42 GETUPVAL                         R3 7
       43 CALL                             R3 0 0
       44 GETUPVAL                         R3 8
       45 LOADB                            R4 0
       46 CALL                             R3 1 0
       47 GETUPVAL                         R3 9
       48 LOADK                            R7 K10 ["Opened the payment methods page for product %*; "]
       49 MOVE                             R9 R0
       50 NAMECALL                         R7 R7 K5 ["format"]
       52 CALL                             R7 2 1
       53 MOVE                             R5 R7
       54 LOADK                            R6 K11 ["quota will refresh on return to Studio, or after the post-checkout poll delay"]
       55 CONCAT                           R4 R5 R6
       56 CALL                             R3 1 0
       57 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["getBlockReason"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_48:
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

PROTO_49:
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
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R9
      107 GETUPVAL                         R20 1
      108 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      110 NEWCLOSURE                       R21 P5
      111 CAPTURE                          VAL R19
      112 NEWTABLE                         R22 0 0
      114 CALL                             R20 2 1
      115 GETUPVAL                         R21 1
      116 GETTABLEKS                       R21 R21 K6 ["useCallback"]
      118 NEWCLOSURE                       R22 P6
      119 CAPTURE                          VAL R20
      120 NEWTABLE                         R23 0 1
      122 MOVE                             R24 R20
      123 SETLIST                          R23 R24 1 [1]
      125 CALL                             R21 2 1
      126 GETUPVAL                         R22 1
      127 GETTABLEKS                       R22 R22 K6 ["useCallback"]
      129 NEWCLOSURE                       R23 P7
      130 CAPTURE                          VAL R8
      131 CAPTURE                          UPVAL U2
      132 CAPTURE                          VAL R20
      133 NEWTABLE                         R24 0 1
      135 MOVE                             R25 R20
      136 SETLIST                          R24 R25 1 [1]
      138 CALL                             R22 2 1
      139 GETUPVAL                         R23 1
      140 GETTABLEKS                       R23 R23 K6 ["useCallback"]
      142 NEWCLOSURE                       R24 P8
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 CAPTURE                          UPVAL U2
      146 CAPTURE                          VAL R22
      147 NEWTABLE                         R25 0 1
      149 MOVE                             R26 R22
      150 SETLIST                          R25 R26 1 [1]
      152 CALL                             R23 2 1
      153 GETUPVAL                         R24 1
      154 GETTABLEKS                       R24 R24 K6 ["useCallback"]
      156 NEWCLOSURE                       R25 P9
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R12
      161 CAPTURE                          UPVAL U2
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R23
      164 NEWTABLE                         R26 0 2
      166 MOVE                             R27 R22
      167 MOVE                             R28 R23
      168 SETLIST                          R26 R27 2 [1]
      170 CALL                             R24 2 1
      171 GETUPVAL                         R25 1
      172 GETTABLEKS                       R25 R25 K6 ["useCallback"]
      174 NEWCLOSURE                       R26 P10
      175 CAPTURE                          VAL R9
      176 CAPTURE                          UPVAL U3
      177 CAPTURE                          UPVAL U2
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R12
      182 NEWTABLE                         R27 0 0
      184 CALL                             R25 2 1
      185 GETUPVAL                         R26 1
      186 GETTABLEKS                       R26 R26 K5 ["useEffect"]
      188 NEWCLOSURE                       R27 P11
      189 CAPTURE                          UPVAL U5
      190 CAPTURE                          VAL R23
      191 NEWTABLE                         R28 0 1
      193 MOVE                             R29 R23
      194 SETLIST                          R28 R29 1 [1]
      196 CALL                             R26 2 0
      197 GETUPVAL                         R26 1
      198 GETTABLEKS                       R26 R26 K5 ["useEffect"]
      200 NEWCLOSURE                       R27 P12
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R21
      204 NEWTABLE                         R28 0 3
      206 MOVE                             R29 R1
      207 MOVE                             R30 R18
      208 MOVE                             R31 R21
      209 SETLIST                          R28 R29 3 [1]
      211 CALL                             R26 2 0
      212 GETUPVAL                         R26 1
      213 GETTABLEKS                       R26 R26 K5 ["useEffect"]
      215 NEWCLOSURE                       R27 P13
      216 CAPTURE                          VAL R20
      217 NEWTABLE                         R28 0 1
      219 MOVE                             R29 R20
      220 SETLIST                          R28 R29 1 [1]
      222 CALL                             R26 2 0
      223 GETUPVAL                         R26 1
      224 GETTABLEKS                       R26 R26 K6 ["useCallback"]
      226 NEWCLOSURE                       R27 P14
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R2
      230 CAPTURE                          UPVAL U3
      231 CAPTURE                          UPVAL U6
      232 CAPTURE                          UPVAL U7
      233 CAPTURE                          UPVAL U8
      234 CAPTURE                          VAL R17
      235 CAPTURE                          UPVAL U2
      236 CAPTURE                          VAL R20
      237 NEWTABLE                         R28 0 2
      239 MOVE                             R29 R1
      240 MOVE                             R30 R20
      241 SETLIST                          R28 R29 2 [1]
      243 CALL                             R26 2 1
      244 GETUPVAL                         R27 1
      245 GETTABLEKS                       R27 R27 K3 ["useState"]
      247 LOADNIL                          R28
      248 CALL                             R27 1 2
      249 GETUPVAL                         R29 1
      250 GETTABLEKS                       R29 R29 K3 ["useState"]
      252 LOADB                            R30 0
      253 CALL                             R29 1 2
      254 GETUPVAL                         R31 1
      255 GETTABLEKS                       R31 R31 K3 ["useState"]
      257 LOADB                            R32 0
      258 CALL                             R31 1 2
      259 GETUPVAL                         R33 1
      260 GETTABLEKS                       R33 R33 K4 ["useRef"]
      262 LOADN                            R34 0
      263 CALL                             R33 1 1
      264 GETUPVAL                         R34 1
      265 GETTABLEKS                       R34 R34 K6 ["useCallback"]
      267 NEWCLOSURE                       R35 P15
      268 CAPTURE                          VAL R33
      269 CAPTURE                          VAL R30
      270 CAPTURE                          VAL R32
      271 CAPTURE                          UPVAL U9
      272 CAPTURE                          VAL R17
      273 CAPTURE                          VAL R28
      274 NEWTABLE                         R36 0 0
      276 CALL                             R34 2 1
      277 GETUPVAL                         R35 1
      278 GETTABLEKS                       R35 R35 K6 ["useCallback"]
      280 NEWCLOSURE                       R36 P16
      281 CAPTURE                          UPVAL U3
      282 CAPTURE                          VAL R6
      283 CAPTURE                          VAL R29
      284 CAPTURE                          VAL R27
      285 CAPTURE                          VAL R31
      286 CAPTURE                          VAL R34
      287 NEWTABLE                         R37 0 4
      289 MOVE                             R38 R29
      290 MOVE                             R39 R27
      291 MOVE                             R40 R31
      292 MOVE                             R41 R34
      293 SETLIST                          R37 R38 4 [1]
      295 CALL                             R35 2 1
      296 GETUPVAL                         R36 1
      297 GETTABLEKS                       R36 R36 K6 ["useCallback"]
      299 NEWCLOSURE                       R37 P17
      300 CAPTURE                          VAL R6
      301 NEWTABLE                         R38 0 0
      303 CALL                             R36 2 1
      304 GETUPVAL                         R37 1
      305 GETTABLEKS                       R37 R37 K6 ["useCallback"]
      307 NEWCLOSURE                       R38 P18
      308 CAPTURE                          UPVAL U3
      309 CAPTURE                          UPVAL U5
      310 CAPTURE                          UPVAL U10
      311 CAPTURE                          VAL R11
      312 CAPTURE                          VAL R12
      313 CAPTURE                          VAL R10
      314 CAPTURE                          VAL R1
      315 CAPTURE                          VAL R25
      316 CAPTURE                          VAL R6
      317 CAPTURE                          UPVAL U2
      318 NEWTABLE                         R39 0 2
      320 MOVE                             R40 R1
      321 MOVE                             R41 R25
      322 SETLIST                          R39 R40 2 [1]
      324 CALL                             R37 2 1
      325 GETUPVAL                         R38 1
      326 GETTABLEKS                       R38 R38 K7 ["useMemo"]
      328 NEWCLOSURE                       R39 P19
      329 CAPTURE                          VAL R1
      330 CAPTURE                          UPVAL U0
      331 NEWTABLE                         R40 0 1
      333 MOVE                             R41 R1
      334 SETLIST                          R40 R41 1 [1]
      336 CALL                             R38 2 1
      337 GETUPVAL                         R39 1
      338 GETTABLEKS                       R39 R39 K7 ["useMemo"]
      340 NEWCLOSURE                       R40 P20
      341 CAPTURE                          VAL R1
      342 CAPTURE                          VAL R38
      343 CAPTURE                          VAL R3
      344 CAPTURE                          VAL R21
      345 CAPTURE                          VAL R26
      346 CAPTURE                          VAL R35
      347 CAPTURE                          VAL R5
      348 CAPTURE                          VAL R27
      349 CAPTURE                          VAL R29
      350 CAPTURE                          VAL R31
      351 CAPTURE                          VAL R37
      352 CAPTURE                          VAL R36
      353 CAPTURE                          VAL R24
      354 NEWTABLE                         R41 0 13
      356 MOVE                             R42 R1
      357 MOVE                             R43 R38
      358 MOVE                             R44 R3
      359 MOVE                             R45 R21
      360 MOVE                             R46 R26
      361 MOVE                             R47 R35
      362 MOVE                             R48 R5
      363 MOVE                             R49 R27
      364 MOVE                             R50 R29
      365 MOVE                             R51 R31
      366 MOVE                             R52 R37
      367 MOVE                             R53 R36
      368 MOVE                             R54 R24
      369 SETLIST                          R41 R42 13 [1]
      371 CALL                             R39 2 1
      372 GETUPVAL                         R40 11
      373 GETUPVAL                         R41 0
      374 GETTABLEKS                       R41 R41 K8 ["Provider"]
      376 DUPTABLE                         R42 K10 [{"value"}]
      377 SETTABLEKS                       R39 R42 K9 ["value"]
      379 GETTABLEKS                       R43 R0 K11 ["children"]
      381 CALL                             R40 3 -1
      382 RETURN                           R40 -1

PROTO_50:
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
       48 GETTABLEKS                       R7 R7 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Util"]
       57 GETTABLEKS                       R8 R8 K16 ["Services"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K8 ["Src"]
       64 GETTABLEKS                       R9 R9 K15 ["Util"]
       66 GETTABLEKS                       R9 R9 K17 ["StudioEndpointUtil"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R1 K18 ["Components"]
       71 GETTABLEKS                       R9 R9 K19 ["Contexts"]
       73 GETTABLEKS                       R9 R9 K20 ["CreditMeteringContext"]
       75 GETTABLEKS                       R10 R6 K21 ["createElement"]
       77 GETTABLEKS                       R11 R1 K22 ["FlagUtils"]
       79 GETTABLEKS                       R11 R11 K23 ["getIsCreditMeteringEnabled"]
       81 GETTABLEKS                       R12 R5 K24 ["CreditMeteringServiceAPI"]
       83 GETTABLEKS                       R13 R4 K25 ["Url"]
       85 GETTABLEKS                       R13 R13 K26 ["new"]
       87 LOADNIL                          R14
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K29 [DateTime.fromUnixTimestamp]
       91 GETIMPORT                        R16 K32 [DateTime.now]
       93 CALL                             R16 0 1
       94 GETTABLEKS                       R16 R16 K33 ["UnixTimestamp"]
       96 ADDK                             R15 R16 K30 [18000]
       97 CALL                             R14 1 1
       98 NAMECALL                         R14 R14 K34 ["ToIsoDate"]
      100 CALL                             R14 1 1
      101 DUPTABLE                         R15 K38 [{"FreeTrialExhausted", "DailyLimitReached", "InsufficientRobuxBalance"}]
      102 DUPTABLE                         R16 K55 [{["freeTrialDailyAllowance"] = 25, ["freeTrialRemaining"] = 0, ["freeTrialPctUsed"] = 1, ["nextResetEligibleTime"], ["robuxBalance"] = 500, ["limitSettings"], ["robuxSpentToday"] = 0, ["limitRemaining"] = 0, ["allowed"] = False, ["reason"] = "BLOCK_REASON_FREE_TRIAL_EXHAUSTED"}]
      103 SETTABLEKS                       R14 R16 K45 ["nextResetEligibleTime"]
      105 DUPTABLE                         R17 K59 [{["additionalUsageEnabled"] = False, ["dailyLimitSet"] = False, ["dailyLimit"] = 0}]
      106 SETTABLEKS                       R17 R16 K48 ["limitSettings"]
      108 SETTABLEKS                       R16 R15 K35 ["FreeTrialExhausted"]
      110 DUPTABLE                         R16 K61 [{["freeTrialDailyAllowance"] = 25, ["freeTrialRemaining"] = 0, ["freeTrialPctUsed"] = 1, ["nextResetEligibleTime"], ["robuxBalance"] = 500, ["limitSettings"], ["robuxSpentToday"] = 500, ["limitRemaining"] = 0, ["allowed"] = False, ["reason"] = "BLOCK_REASON_DAILY_LIMIT_REACHED"}]
      111 SETTABLEKS                       R14 R16 K45 ["nextResetEligibleTime"]
      113 DUPTABLE                         R17 K63 [{["additionalUsageEnabled"] = True, ["dailyLimitSet"] = True, ["dailyLimit"] = 500}]
      114 SETTABLEKS                       R17 R16 K48 ["limitSettings"]
      116 SETTABLEKS                       R16 R15 K36 ["DailyLimitReached"]
      118 DUPTABLE                         R16 K65 [{["freeTrialDailyAllowance"] = 25, ["freeTrialRemaining"] = 0, ["freeTrialPctUsed"] = 1, ["nextResetEligibleTime"], ["robuxBalance"] = 0, ["limitSettings"], ["robuxSpentToday"] = 500, ["limitRemaining"] = 0, ["allowed"] = False, ["reason"] = "BLOCK_REASON_INSUFFICIENT_ROBUX_BALANCE"}]
      119 SETTABLEKS                       R14 R16 K45 ["nextResetEligibleTime"]
      121 DUPTABLE                         R17 K66 [{["additionalUsageEnabled"] = True, ["dailyLimitSet"] = False, ["dailyLimit"] = 0}]
      122 SETTABLEKS                       R17 R16 K48 ["limitSettings"]
      124 SETTABLEKS                       R16 R15 K37 ["InsufficientRobuxBalance"]
      126 DUPCLOSURE                       R16 K67 [PROTO_0]
      127 NEWTABLE                         R17 0 4
      129 DUPTABLE                         R18 K73 [{["productId"] = 1, ["robuxAmount"] = 800, ["currencyAmountStr"] = "$9.99"}]
      130 DUPTABLE                         R19 K77 [{["productId"] = 2, ["robuxAmount"] = 1700, ["currencyAmountStr"] = "$19.99"}]
      131 DUPTABLE                         R20 K81 [{["productId"] = 3, ["robuxAmount"] = 4500, ["currencyAmountStr"] = "$49.99"}]
      132 DUPTABLE                         R21 K85 [{["productId"] = 4, ["robuxAmount"] = 10000, ["currencyAmountStr"] = "$99.99"}]
      133 SETLIST                          R17 R18 4 [1]
      135 LOADNIL                          R18
      136 DUPCLOSURE                       R19 K86 [PROTO_1]
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R15
      139 NEWCLOSURE                       R20 P2
      140 CAPTURE                          REF R18
      141 DUPCLOSURE                       R21 K87 [PROTO_3]
      142 CAPTURE                          VAL R3
      143 NEWCLOSURE                       R22 P4
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R21
      147 CAPTURE                          REF R18
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R12
      150 DUPCLOSURE                       R23 K88 [PROTO_7]
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R2
      157 DUPCLOSURE                       R24 K89 [PROTO_9]
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R12
      160 DUPCLOSURE                       R25 K90 [PROTO_17]
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R10
      164 NEWCLOSURE                       R26 P8
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R15
      172 CAPTURE                          REF R18
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R10
      177 DUPCLOSURE                       R27 K91 [PROTO_50]
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R26
      183 CLOSEUPVALS                      R18
      184 RETURN                           R27 1
