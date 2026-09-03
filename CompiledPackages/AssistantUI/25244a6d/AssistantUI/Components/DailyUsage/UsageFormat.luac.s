PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R0 ; [+2]
        5 LOADK                            R1 K1 [""]
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K4 [string.format]
        9 LOADK                            R2 K5 ["%d"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 1
       12 LOADN                            R2 1
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+10]
       16 GETIMPORT                        R3 K7 [string.gsub]
       18 MOVE                             R4 R1
       19 LOADK                            R5 K8 ["^(-?%d+)(%d%d%d)"]
       20 LOADK                            R6 K9 ["%1,%2"]
       21 CALL                             R3 3 2
       22 MOVE                             R1 R3
       23 MOVE                             R2 R4
       24 JUMPBACK                         ; [-12]
       25 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R0 ; [+2]
        5 LOADN                            R1 0
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["freeTrialDailyAllowance"]
        9 GETTABLEKS                       R2 R0 K2 ["freeTrialRemaining"]
       11 JUMPIFNOT                        R1 ; [+13]
       12 LOADN                            R3 0
       13 JUMPIFNOTLT                      R3 R1 ; [+11]
       15 JUMPIFNOT                        R2 ; [+9]
       16 SUB                              R5 R1 R2
       17 DIV                              R4 R5 R1
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R3 K5 [math.clamp]
       23 CALL                             R3 3 1
       24 RETURN                           R3 1
       25 GETTABLEKS                       R3 R0 K6 ["freeTrialPctUsed"]
       27 JUMPIFNOT                        R3 ; [+15]
       28 LOADN                            R5 1
       29 JUMPIFNOTLT                      R5 R3 ; [+3]
       31 DIVK                             R4 R3 K7 [100]
       32 JUMP                             ; [+1]
       33 MOVE                             R4 R3
       34 LOADN                            R7 0
       35 LOADN                            R8 1
       36 FASTCALL3                        MATH_CLAMP R4 R7 R8
       38 MOVE                             R6 R4
       39 GETIMPORT                        R5 K5 [math.clamp]
       41 CALL                             R5 3 1
       42 RETURN                           R5 1
       43 LOADN                            R4 0
       44 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R0 ; [+2]
        5 LOADN                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["getUsedFraction"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 MULK                             R3 R4 K2 [100]
       13 ADDK                             R2 R3 K1 [0.5]
       14 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       15 GETIMPORT                        R1 K6 [math.floor]
       17 CALL                             R1 1 1
       18 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [pcall]
        9 GETIMPORT                        R2 K5 [DateTime.fromIsoDate]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 2
       13 JUMPIFNOT                        R1 ; [+1]
       14 JUMPIF                           R2 ; [+2]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R2 K6 ["UnixTimestamp"]
       19 GETIMPORT                        R5 K8 [DateTime.now]
       21 CALL                             R5 0 1
       22 GETTABLEKS                       R5 R5 K6 ["UnixTimestamp"]
       24 SUB                              R3 R4 R5
       25 LOADN                            R4 0
       26 JUMPIFNOTLE                      R3 R4 ; [+3]
       28 LOADNIL                          R4
       29 RETURN                           R4 1
       30 DIVK                             R5 R3 K9 [3600]
       31 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       32 GETIMPORT                        R4 K12 [math.floor]
       34 CALL                             R4 1 1
       35 LOADN                            R5 1
       36 JUMPIFNOTLE                      R4 R5 ; [+8]
       38 GETUPVAL                         R5 1
       39 LOADK                            R7 K13 ["CreditMetering"]
       40 LOADK                            R8 K14 ["ResetsInOneHour"]
       41 NAMECALL                         R5 R5 K15 ["getText"]
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1
       45 GETUPVAL                         R5 1
       46 LOADK                            R7 K13 ["CreditMetering"]
       47 LOADK                            R8 K16 ["ResetsInHours"]
       48 DUPTABLE                         R9 K18 [{"hours"}]
       49 GETIMPORT                        R10 K21 [string.format]
       51 LOADK                            R11 K22 ["%d"]
       52 MOVE                             R12 R4
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K17 ["hours"]
       56 NAMECALL                         R5 R5 K15 ["getText"]
       58 CALL                             R5 4 -1
       59 RETURN                           R5 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Resources"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R4 R4 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R5 R4 K14 ["formatAmount"]
       36 DUPCLOSURE                       R5 K15 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R5 R4 K16 ["getUsedFraction"]
       40 DUPCLOSURE                       R5 K17 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R5 R4 K18 ["getPercentUsed"]
       45 DUPCLOSURE                       R5 K19 [PROTO_3]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K20 ["getResetText"]
       50 RETURN                           R4 1
